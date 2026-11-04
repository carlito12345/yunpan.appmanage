package com.rapid7.client.dcerpc.io.ndr;

import com.rapid7.client.dcerpc.io.PacketInput;

/* loaded from: classes.dex */
public interface Unmarshallable extends DataType {
    void unmarshalDeferrals(PacketInput packetInput);

    void unmarshalEntity(PacketInput packetInput);

    void unmarshalPreamble(PacketInput packetInput);
}
