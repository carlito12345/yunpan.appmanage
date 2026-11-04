package com.hierynomus.protocol.transport;

import com.hierynomus.protocol.PacketData;

/* loaded from: classes.dex */
public interface PacketReceiver<D extends PacketData<?>> {
    void handle(D d10);

    void handleError(Throwable th2);
}
