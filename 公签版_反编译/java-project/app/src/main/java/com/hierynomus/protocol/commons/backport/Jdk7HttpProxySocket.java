package com.hierynomus.protocol.commons.backport;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hierynomus.protocol.commons.Charsets;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;

/* loaded from: classes.dex */
public class Jdk7HttpProxySocket extends Socket {
    private Proxy httpProxy;

    /* JADX WARN: Illegal instructions before constructor call */
    public Jdk7HttpProxySocket(Proxy proxy) {
        Proxy.Type type = proxy.type();
        Proxy.Type type2 = Proxy.Type.HTTP;
        super(type == type2 ? Proxy.NO_PROXY : proxy);
        this.httpProxy = null;
        if (proxy.type() == type2) {
            this.httpProxy = proxy;
        }
    }

    private void checkAndFlushProxyResponse() throws IOException {
        InputStream inputStream = getInputStream();
        byte[] bArr = new byte[512];
        int i10 = inputStream.read(bArr, 0, 512);
        if (i10 == 0) {
            throw new SocketException("Empty response from proxy");
        }
        String str = new String(bArr, 0, i10, HTTP.UTF_8);
        if (!str.contains("200")) {
            throw new SocketException("Fail to create Socket\nResponse was:".concat(str));
        }
        int iAvailable = inputStream.available();
        while (iAvailable > 0) {
            long j10 = iAvailable;
            iAvailable = (int) (j10 - inputStream.skip(j10));
        }
    }

    private void connectHttpProxy(SocketAddress socketAddress, int i10) throws IOException {
        super.connect(this.httpProxy.address(), i10);
        if (!(socketAddress instanceof InetSocketAddress)) {
            throw new SocketException("Expected an InetSocketAddress to connect to, got: " + socketAddress);
        }
        InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
        getOutputStream().write(("CONNECT " + inetSocketAddress.getHostName() + ":" + inetSocketAddress.getPort() + " HTTP/1.0\n\n").getBytes(Charsets.UTF_8));
        checkAndFlushProxyResponse();
    }

    @Override // java.net.Socket
    public void connect(SocketAddress socketAddress, int i10) throws IOException {
        if (this.httpProxy != null) {
            connectHttpProxy(socketAddress, i10);
        } else {
            super.connect(socketAddress, i10);
        }
    }
}
