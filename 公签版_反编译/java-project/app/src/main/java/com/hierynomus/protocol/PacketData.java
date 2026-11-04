package com.hierynomus.protocol;

import com.hierynomus.protocol.commons.buffer.Buffer;

/* loaded from: classes.dex */
public interface PacketData<B extends Buffer<B>> {
    B getDataBuffer();
}
