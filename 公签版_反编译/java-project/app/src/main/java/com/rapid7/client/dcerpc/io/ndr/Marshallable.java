package com.rapid7.client.dcerpc.io.ndr;

import com.rapid7.client.dcerpc.io.PacketOutput;

/* loaded from: classes.dex */
public interface Marshallable extends DataType {
    void marshalDeferrals(PacketOutput packetOutput);

    void marshalEntity(PacketOutput packetOutput);

    void marshalPreamble(PacketOutput packetOutput);
}
