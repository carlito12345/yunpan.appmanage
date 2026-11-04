package com.hierynomus.protocol.commons.socket;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import javax.net.SocketFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class ProxySocketFactory extends SocketFactory {
    public static final int DEFAULT_CONNECT_TIMEOUT = 5000;
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) ProxySocketFactory.class);
    private int connectTimeout;
    private Proxy proxy;

    public ProxySocketFactory() {
        this(Proxy.NO_PROXY, 5000);
    }

    private static Proxy getHttpProxy(String str, int i10) {
        return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(str, i10));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() {
        return new Socket(this.proxy);
    }

    public ProxySocketFactory(String str, int i10) {
        this(getHttpProxy(str, i10), 5000);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10) {
        return createSocket(new InetSocketAddress(str, i10), (InetSocketAddress) null);
    }

    public ProxySocketFactory(Proxy proxy) {
        this(proxy, 5000);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10, InetAddress inetAddress, int i11) {
        return createSocket(new InetSocketAddress(str, i10), new InetSocketAddress(inetAddress, i11));
    }

    public ProxySocketFactory(int i10) {
        this(Proxy.NO_PROXY, i10);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10) {
        return createSocket(new InetSocketAddress(inetAddress, i10), (InetSocketAddress) null);
    }

    public ProxySocketFactory(Proxy proxy, int i10) {
        this.proxy = proxy;
        this.connectTimeout = i10;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10, InetAddress inetAddress2, int i11) {
        return createSocket(new InetSocketAddress(inetAddress, i10), new InetSocketAddress(inetAddress2, i11));
    }

    private Socket createSocket(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2) throws IOException {
        Socket socket = new Socket(this.proxy);
        if (inetSocketAddress2 != null) {
            socket.bind(inetSocketAddress2);
        }
        logger.debug("Connecting to {}", inetSocketAddress);
        socket.connect(inetSocketAddress, this.connectTimeout);
        return socket;
    }
}
