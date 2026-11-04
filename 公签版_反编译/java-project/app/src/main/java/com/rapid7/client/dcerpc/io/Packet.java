package com.rapid7.client.dcerpc.io;

/* loaded from: classes.dex */
public interface Packet {
    void marshal(PacketOutput packetOutput);

    void unmarshal(PacketInput packetInput);
}
