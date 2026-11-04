package com.rapid7.client.dcerpc.io;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import v7.e;

/* loaded from: classes.dex */
public abstract class HexifyImpl implements Hexify {
    @Override // com.rapid7.client.dcerpc.io.Hexify
    public void fromHexString(String str) {
        unmarshal(new PacketInput(new ByteArrayInputStream(e.f16646d.a(str.replaceAll("\\s", "").toUpperCase()))));
    }

    @Override // com.rapid7.client.dcerpc.io.Hexify
    public String toHexString() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        marshal(new PacketOutput(byteArrayOutputStream));
        return e.f16646d.f().c(byteArrayOutputStream.toByteArray());
    }
}
