package com.hierynomus.protocol.transport;

import com.hierynomus.protocol.Packet;
import java.net.InetSocketAddress;

/* loaded from: classes.dex */
public interface TransportLayer<P extends Packet<?>> {
    void connect(InetSocketAddress inetSocketAddress);

    void disconnect();

    boolean isConnected();

    void write(P p2);
}
