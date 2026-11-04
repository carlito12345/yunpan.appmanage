package com.hierynomus.smbj;

import com.hierynomus.protocol.commons.IOUtils;
import com.hierynomus.smbj.connection.Connection;
import com.hierynomus.smbj.event.ConnectionClosed;
import com.hierynomus.smbj.event.SMBEventBus;
import com.hierynomus.smbj.server.ServerList;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Closeable;
import java.io.IOException;
import java.util.Map;
import net.engio.mbassy.listener.Handler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class SMBClient implements Closeable {
    public static final int DEFAULT_PORT = 445;
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) SMBClient.class);
    private SMBEventBus bus;
    private SmbConfig config;
    private Map<String, Connection> connectionTable;
    private ServerList serverList;

    public SMBClient() {
        this(SmbConfig.createDefaultConfig());
    }

    @Handler
    private void connectionClosed(ConnectionClosed connectionClosed) {
        synchronized (this) {
            String str = connectionClosed.getHostname() + ":" + connectionClosed.getPort();
            this.connectionTable.remove(str);
            this.serverList.unregister(connectionClosed.getHostname());
            logger.debug("Connection to << {} >> closed", str);
        }
    }

    private Connection getEstablishedOrConnect(String str, int i10) {
        synchronized (this) {
            try {
                String str2 = str + ":" + i10;
                Connection connectionLease = this.connectionTable.get(str2);
                if (connectionLease != null) {
                    connectionLease = connectionLease.lease();
                }
                if (connectionLease != null && connectionLease.isConnected()) {
                    return connectionLease;
                }
                Connection connection = new Connection(this.config, this, this.bus, this.serverList);
                try {
                    connection.connect(str, i10);
                    this.connectionTable.put(str2, connection);
                    return connection;
                } catch (IOException e7) {
                    IOUtils.closeSilently(connection);
                    throw e7;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        logger.info("Going to close all remaining connections");
        for (Connection connection : this.connectionTable.values()) {
            try {
                connection.close(true);
            } catch (Exception e7) {
                logger.debug("Error closing connection to host {}", connection.getRemoteHostname());
                logger.debug("Exception was: ", (Throwable) e7);
            }
        }
    }

    public Connection connect(String str) {
        return getEstablishedOrConnect(str, DEFAULT_PORT);
    }

    public ServerList getServerList() {
        return this.serverList;
    }

    public SMBClient(SmbConfig smbConfig) {
        this(smbConfig, new SMBEventBus());
    }

    public Connection connect(String str, int i10) {
        return getEstablishedOrConnect(str, i10);
    }

    public SMBClient(SmbConfig smbConfig, SMBEventBus sMBEventBus) {
        this.connectionTable = new ConcurrentHashMap();
        this.serverList = new ServerList();
        this.config = smbConfig;
        this.bus = sMBEventBus;
        sMBEventBus.subscribe(this);
    }
}
