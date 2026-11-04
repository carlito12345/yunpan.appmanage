package com.hierynomus.smbj.transport.tcp.async;

import com.hierynomus.protocol.PacketData;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.protocol.transport.PacketFactory;
import com.hierynomus.protocol.transport.PacketReceiver;
import java.io.EOFException;
import java.io.IOException;
import java.nio.channels.AsynchronousCloseException;
import java.nio.channels.AsynchronousSocketChannel;
import java.nio.channels.CompletionHandler;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class AsyncPacketReader<D extends PacketData<?>> {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) AsyncPacketReader.class);
    private final AsynchronousSocketChannel channel;
    private PacketReceiver<D> handler;
    private final PacketFactory<D> packetFactory;
    private String remoteHost;
    private int soTimeout = 0;
    private AtomicBoolean stopped = new AtomicBoolean(false);

    public AsyncPacketReader(AsynchronousSocketChannel asynchronousSocketChannel, PacketFactory<D> packetFactory, PacketReceiver<D> packetReceiver) {
        this.channel = asynchronousSocketChannel;
        this.packetFactory = packetFactory;
        this.handler = packetReceiver;
    }

    private void closeChannelQuietly() {
        try {
            this.channel.close();
        } catch (IOException e7) {
            logger.debug("{} while closing channel to {} on failure: {}", e7.getClass().getSimpleName(), this.remoteHost, e7.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAsyncFailure(Throwable th2) {
        if (isChannelClosedByOtherParty(th2)) {
            logger.trace("Channel to {} closed by other party, closing it locally.", this.remoteHost);
        } else {
            String simpleName = th2.getClass().getSimpleName();
            Logger logger2 = logger;
            logger2.error("{} on channel to {}, closing channel: {}", simpleName, this.remoteHost, th2.getMessage());
            logger2.debug("Exception was: ", th2);
        }
        closeChannelQuietly();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initiateNextRead(PacketBufferReader packetBufferReader) {
        if (this.stopped.get()) {
            logger.trace("Stopped, not initiating another read operation.");
        } else {
            logger.trace("Initiating next read");
            this.channel.read(packetBufferReader.getBuffer(), this.soTimeout, TimeUnit.MILLISECONDS, packetBufferReader, new CompletionHandler<Integer, PacketBufferReader>() { // from class: com.hierynomus.smbj.transport.tcp.async.AsyncPacketReader.1
                private void handleClosedReader() {
                    if (AsyncPacketReader.this.stopped.get()) {
                        return;
                    }
                    AsyncPacketReader.this.handleAsyncFailure(new EOFException("Connection closed by server"));
                }

                private void processPackets(PacketBufferReader packetBufferReader2) {
                    byte[] next = packetBufferReader2.readNext();
                    while (next != null) {
                        AsyncPacketReader.this.readAndHandlePacket(next);
                        next = packetBufferReader2.readNext();
                    }
                }

                @Override // java.nio.channels.CompletionHandler
                public void completed(Integer num, PacketBufferReader packetBufferReader2) {
                    AsyncPacketReader.logger.trace("Received {} bytes", num);
                    if (num.intValue() < 0) {
                        handleClosedReader();
                        return;
                    }
                    try {
                        processPackets(packetBufferReader2);
                        AsyncPacketReader.this.initiateNextRead(packetBufferReader2);
                    } catch (RuntimeException e7) {
                        AsyncPacketReader.this.handleAsyncFailure(e7);
                    }
                }

                @Override // java.nio.channels.CompletionHandler
                public void failed(Throwable th2, PacketBufferReader packetBufferReader2) {
                    AsyncPacketReader.this.handleAsyncFailure(th2);
                }
            });
        }
    }

    private boolean isChannelClosedByOtherParty(Throwable th2) {
        return th2 instanceof AsynchronousCloseException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readAndHandlePacket(byte[] bArr) {
        try {
            PacketData packetData = this.packetFactory.read(bArr);
            logger.trace("Received packet << {} >>", packetData);
            this.handler.handle(packetData);
        } catch (Buffer.BufferException | IOException e7) {
            handleAsyncFailure(e7);
        }
    }

    public void start(String str, int i10) {
        this.remoteHost = str;
        this.soTimeout = i10;
        initiateNextRead(new PacketBufferReader());
    }

    public void stop() {
        this.stopped.set(true);
    }
}
