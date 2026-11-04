package com.hierynomus.protocol.transport;

import com.hierynomus.protocol.Packet;
import com.hierynomus.protocol.PacketData;

/* loaded from: classes.dex */
public class PacketHandlers<D extends PacketData<?>, P extends Packet<?>> {
    private final PacketFactory<D> packetFactory;
    private final PacketReceiver<D> receiver;
    private final PacketSerializer<P, ?> serializer;

    public PacketHandlers(PacketSerializer<P, ?> packetSerializer, PacketReceiver<D> packetReceiver, PacketFactory<D> packetFactory) {
        this.serializer = packetSerializer;
        this.receiver = packetReceiver;
        this.packetFactory = packetFactory;
    }

    public PacketFactory<D> getPacketFactory() {
        return this.packetFactory;
    }

    public PacketReceiver<D> getReceiver() {
        return this.receiver;
    }

    public PacketSerializer<P, ?> getSerializer() {
        return this.serializer;
    }
}
