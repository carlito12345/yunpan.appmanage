package com.hierynomus.protocol;

import com.hierynomus.protocol.commons.buffer.Buffer;

/* loaded from: classes.dex */
public interface Packet<B extends Buffer<B>> {
    void read(B b10);

    void write(B b10);
}
