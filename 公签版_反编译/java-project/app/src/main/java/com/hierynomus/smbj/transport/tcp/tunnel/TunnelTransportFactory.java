package com.hierynomus.smbj.transport.tcp.tunnel;

import com.hierynomus.protocol.Packet;
import com.hierynomus.protocol.PacketData;
import com.hierynomus.protocol.transport.PacketHandlers;
import com.hierynomus.protocol.transport.TransportLayer;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.transport.TransportLayerFactory;

/* loaded from: classes.dex */
public class TunnelTransportFactory<D extends PacketData<?>, P extends Packet<?>> implements TransportLayerFactory<D, P> {
    private TransportLayerFactory<D, P> tunnelFactory;
    private String tunnelHost;
    private int tunnelPort;

    public TunnelTransportFactory(TransportLayerFactory<D, P> transportLayerFactory, String str, int i10) {
        this.tunnelFactory = transportLayerFactory;
        this.tunnelHost = str;
        this.tunnelPort = i10;
    }

    @Override // com.hierynomus.smbj.transport.TransportLayerFactory
    public TransportLayer<P> createTransportLayer(PacketHandlers<D, P> packetHandlers, SmbConfig smbConfig) {
        return new TunnelTransport(this.tunnelFactory.createTransportLayer(packetHandlers, smbConfig), this.tunnelHost, this.tunnelPort);
    }
}
