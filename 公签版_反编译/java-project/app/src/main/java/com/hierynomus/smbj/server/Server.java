package com.hierynomus.smbj.server;

import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2GlobalCapability;
import g.b;
import java.util.Set;
import java.util.UUID;

/* loaded from: classes.dex */
public class Server {
    private Set<SMB2GlobalCapability> capabilities;
    private SMB2Dialect dialectRevision;
    private boolean initialized = false;
    private int port;
    private int securityMode;
    private UUID serverGUID;
    private String serverName;

    public Server(String str, int i10) {
        this.serverName = str;
        this.port = i10;
    }

    public Set<SMB2GlobalCapability> getCapabilities() {
        return this.capabilities;
    }

    public SMB2Dialect getDialectRevision() {
        return this.dialectRevision;
    }

    public int getPort() {
        return this.port;
    }

    public int getSecurityMode() {
        return this.securityMode;
    }

    public UUID getServerGUID() {
        return this.serverGUID;
    }

    public String getServerName() {
        return this.serverName;
    }

    public void init(UUID uuid, SMB2Dialect sMB2Dialect, int i10, Set<SMB2GlobalCapability> set) {
        if (this.initialized) {
            throw new IllegalStateException(b.A("Server object '", this.serverName, "' already initialized"));
        }
        this.initialized = true;
        this.serverGUID = uuid;
        this.dialectRevision = sMB2Dialect;
        this.securityMode = i10;
        this.capabilities = set;
    }

    public boolean validate(Server server) {
        return server.getServerGUID().equals(this.serverGUID) && server.getDialectRevision().equals(this.dialectRevision) && (server.getSecurityMode() == this.securityMode) && server.getCapabilities().equals(this.capabilities);
    }
}
