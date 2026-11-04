package com.hierynomus.smbj.transport.tcp.tunnel;

import com.hierynomus.protocol.Packet;
import com.hierynomus.protocol.transport.TransportLayer;
import java.net.InetSocketAddress;

/* loaded from: classes.dex */
public class TunnelTransport<P extends Packet<?>> implements TransportLayer<P> {
    private TransportLayer<P> tunnel;
    private String tunnelHost;
    private int tunnelPort;

    public TunnelTransport(TransportLayer<P> transportLayer, String str, int i10) {
        this.tunnel = transportLayer;
        this.tunnelHost = str;
        this.tunnelPort = i10;
    }

    @Override // com.hierynomus.protocol.transport.TransportLayer
    public void connect(InetSocketAddress inetSocketAddress) {
        this.tunnel.connect(new InetSocketAddress(this.tunnelHost, this.tunnelPort));
    }

    @Override // com.hierynomus.protocol.transport.TransportLayer
    public void disconnect() {
        this.tunnel.disconnect();
    }

    @Override // com.hierynomus.protocol.transport.TransportLayer
    public boolean isConnected() {
        return this.tunnel.isConnected();
    }

    @Override // com.hierynomus.protocol.transport.TransportLayer
    public void write(P p2) {
        this.tunnel.write(p2);
    }
}
