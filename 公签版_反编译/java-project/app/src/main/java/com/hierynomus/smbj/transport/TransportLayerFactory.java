package com.hierynomus.smbj.transport;

import com.hierynomus.protocol.Packet;
import com.hierynomus.protocol.PacketData;
import com.hierynomus.protocol.transport.PacketHandlers;
import com.hierynomus.protocol.transport.TransportLayer;
import com.hierynomus.smbj.SmbConfig;

/* loaded from: classes.dex */
public interface TransportLayerFactory<D extends PacketData<?>, P extends Packet<?>> {
    TransportLayer<P> createTransportLayer(PacketHandlers<D, P> packetHandlers, SmbConfig smbConfig);
}
