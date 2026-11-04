package com.hierynomus.smbj.transport.tcp.direct;

import com.hierynomus.protocol.Packet;
import com.hierynomus.protocol.PacketData;
import com.hierynomus.protocol.transport.PacketHandlers;
import com.hierynomus.protocol.transport.TransportLayer;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.transport.TransportLayerFactory;

/* loaded from: classes.dex */
public class DirectTcpTransportFactory<D extends PacketData<?>, P extends Packet<?>> implements TransportLayerFactory<D, P> {
    @Override // com.hierynomus.smbj.transport.TransportLayerFactory
    public TransportLayer<P> createTransportLayer(PacketHandlers<D, P> packetHandlers, SmbConfig smbConfig) {
        return new DirectTcpTransport(smbConfig.getSocketFactory(), smbConfig.getSoTimeout(), packetHandlers);
    }
}
