package com.hierynomus.protocol.transport;

import com.hierynomus.protocol.Packet;
import com.hierynomus.protocol.commons.buffer.Buffer;

/* loaded from: classes.dex */
public interface PacketSerializer<P extends Packet<B>, B extends Buffer<B>> {
    B write(P p2);
}
