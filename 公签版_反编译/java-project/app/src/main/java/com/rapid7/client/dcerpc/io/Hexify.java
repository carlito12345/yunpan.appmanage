package com.rapid7.client.dcerpc.io;

/* loaded from: classes.dex */
public interface Hexify extends Packet {
    void fromHexString(String str);

    String toHexString();
}
