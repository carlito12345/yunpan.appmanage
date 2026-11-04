package com.hierynomus.smbj.transport.tcp.async;

import com.hierynomus.protocol.Packet;
import com.hierynomus.protocol.PacketData;
import com.hierynomus.protocol.transport.PacketHandlers;
import com.hierynomus.protocol.transport.TransportLayer;
import com.hierynomus.smbj.SmbConfig;
import com.hierynomus.smbj.common.SMBRuntimeException;
import com.hierynomus.smbj.transport.TransportLayerFactory;
import java.io.IOException;
import java.nio.channels.AsynchronousChannelGroup;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class AsyncDirectTcpTransportFactory<D extends PacketData<?>, P extends Packet<?>> implements TransportLayerFactory<D, P> {
    private static final AsynchronousChannelGroup DEFAULT_CHANNEL_GROUP = null;
    private final AsynchronousChannelGroup group;

    public AsyncDirectTcpTransportFactory() {
        this(DEFAULT_CHANNEL_GROUP);
    }

    private static AsynchronousChannelGroup createGroup(ExecutorService executorService) {
        try {
            return AsynchronousChannelGroup.withThreadPool(executorService);
        } catch (IOException e7) {
            throw new RuntimeException(e7);
        }
    }

    @Override // com.hierynomus.smbj.transport.TransportLayerFactory
    public TransportLayer<P> createTransportLayer(PacketHandlers<D, P> packetHandlers, SmbConfig smbConfig) {
        try {
            return new AsyncDirectTcpTransport(smbConfig.getSoTimeout(), packetHandlers, this.group);
        } catch (IOException e7) {
            throw new SMBRuntimeException(e7);
        }
    }

    public AsyncDirectTcpTransportFactory(ExecutorService executorService) {
        this(createGroup(executorService));
    }

    public AsyncDirectTcpTransportFactory(AsynchronousChannelGroup asynchronousChannelGroup) {
        this.group = asynchronousChannelGroup;
    }
}
