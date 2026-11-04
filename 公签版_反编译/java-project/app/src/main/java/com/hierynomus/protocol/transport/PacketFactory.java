package com.hierynomus.protocol.transport;

import com.hierynomus.protocol.PacketData;

/* loaded from: classes.dex */
public interface PacketFactory<D extends PacketData<?>> {
    boolean canHandle(byte[] bArr);

    D read(byte[] bArr);
}
