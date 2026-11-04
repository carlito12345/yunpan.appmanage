package com.hierynomus.smbj.transport.tcp.async;

import com.hierynomus.protocol.Packet;
import com.hierynomus.protocol.PacketData;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.protocol.transport.PacketHandlers;
import com.hierynomus.protocol.transport.TransportException;
import com.hierynomus.protocol.transport.TransportLayer;
import com.hierynomus.smbj.common.SMBRuntimeException;
import com.hsae.autosdk.popup.constant.PopupConst;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.AsynchronousChannelGroup;
import java.nio.channels.AsynchronousSocketChannel;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.CompletionHandler;
import java.util.Queue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class AsyncDirectTcpTransport<D extends PacketData<?>, P extends Packet<?>> implements TransportLayer<P> {
    private static final int DEFAULT_CONNECT_TIMEOUT = 5000;
    private static final int DIRECT_HEADER_SIZE = 4;
    private final AtomicBoolean connected;
    private final PacketHandlers<D, P> handlers;
    private final Logger logger = LoggerFactory.getLogger(getClass());
    private final AsyncPacketReader<D> packetReader;
    private int soTimeout;
    private final AsynchronousSocketChannel socketChannel;
    private final Queue<ByteBuffer> writeQueue;
    private AtomicBoolean writingNow;

    public AsyncDirectTcpTransport(int i10, PacketHandlers<D, P> packetHandlers, AsynchronousChannelGroup asynchronousChannelGroup) throws IOException {
        this.soTimeout = i10;
        this.handlers = packetHandlers;
        AsynchronousSocketChannel asynchronousSocketChannelOpen = AsynchronousSocketChannel.open(asynchronousChannelGroup);
        this.socketChannel = asynchronousSocketChannelOpen;
        this.packetReader = new AsyncPacketReader<>(asynchronousSocketChannelOpen, packetHandlers.getPacketFactory(), packetHandlers.getReceiver());
        this.writeQueue = new LinkedBlockingQueue();
        this.connected = new AtomicBoolean(false);
        this.writingNow = new AtomicBoolean(false);
    }

    private ByteBuffer prepareBufferToSend(P p2) {
        Buffer bufferWrite = this.handlers.getSerializer().write(p2);
        int iAvailable = bufferWrite.available();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iAvailable + 4);
        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        byteBufferAllocate.putInt(bufferWrite.available());
        byteBufferAllocate.put(bufferWrite.array(), bufferWrite.rpos(), bufferWrite.available());
        byteBufferAllocate.flip();
        try {
            bufferWrite.skip(iAvailable);
            return byteBufferAllocate;
        } catch (Buffer.BufferException e7) {
            throw ((SMBRuntimeException) SMBRuntimeException.Wrapper.wrap(e7));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAsyncWrite() {
        if (!isConnected()) {
            throw new IllegalStateException("Transport is not connected");
        }
        this.socketChannel.write(this.writeQueue.peek(), this.soTimeout, TimeUnit.MILLISECONDS, null, new CompletionHandler<Integer, Object>() { // from class: com.hierynomus.smbj.transport.tcp.async.AsyncDirectTcpTransport.1
            private void startNextWriteIfWaiting() {
                synchronized (AsyncDirectTcpTransport.this) {
                    try {
                        ByteBuffer byteBuffer = (ByteBuffer) AsyncDirectTcpTransport.this.writeQueue.peek();
                        if (byteBuffer != null && byteBuffer.hasRemaining()) {
                            AsyncDirectTcpTransport.this.startAsyncWrite();
                        } else if (byteBuffer != null) {
                            AsyncDirectTcpTransport.this.writeQueue.remove();
                            startNextWriteIfWaiting();
                        } else {
                            AsyncDirectTcpTransport.this.writingNow.set(false);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }

            @Override // java.nio.channels.CompletionHandler
            public void failed(Throwable th2, Object obj) {
                try {
                    if (th2 instanceof ClosedChannelException) {
                        AsyncDirectTcpTransport.this.connected.set(false);
                    } else {
                        startNextWriteIfWaiting();
                    }
                    AsyncDirectTcpTransport.this.handlers.getReceiver().handleError(th2);
                } catch (Throwable th3) {
                    AsyncDirectTcpTransport.this.handlers.getReceiver().handleError(th2);
                    throw th3;
                }
            }

            @Override // java.nio.channels.CompletionHandler
            public void completed(Integer num, Object obj) {
                AsyncDirectTcpTransport.this.logger.trace("Written {} bytes to async transport", num);
                startNextWriteIfWaiting();
            }
        });
    }

    private void writeOrEnqueue(ByteBuffer byteBuffer) {
        synchronized (this) {
            try {
                this.writeQueue.add(byteBuffer);
                if (!this.writingNow.getAndSet(true)) {
                    startAsyncWrite();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.hierynomus.protocol.transport.TransportLayer
    public void connect(InetSocketAddress inetSocketAddress) throws ExecutionException, TransportException, InterruptedException, TimeoutException {
        String hostString = inetSocketAddress.getHostString();
        try {
            this.socketChannel.connect(inetSocketAddress).get(PopupConst.DURATION_POPUP, TimeUnit.MILLISECONDS);
            this.connected.set(true);
            this.packetReader.start(hostString, this.soTimeout);
        } catch (InterruptedException e7) {
            Thread.currentThread().interrupt();
            throw ((TransportException) TransportException.Wrapper.wrap(e7));
        } catch (ExecutionException e10) {
            e = e10;
            throw ((TransportException) TransportException.Wrapper.wrap(e));
        } catch (TimeoutException e11) {
            e = e11;
            throw ((TransportException) TransportException.Wrapper.wrap(e));
        }
    }

    @Override // com.hierynomus.protocol.transport.TransportLayer
    public void disconnect() {
        this.connected.set(false);
        this.socketChannel.close();
    }

    @Override // com.hierynomus.protocol.transport.TransportLayer
    public boolean isConnected() {
        return this.connected.get();
    }

    public void setSoTimeout(int i10) {
        this.soTimeout = i10;
    }

    @Override // com.hierynomus.protocol.transport.TransportLayer
    public void write(P p2) {
        ByteBuffer byteBufferPrepareBufferToSend = prepareBufferToSend(p2);
        this.logger.trace("Sending packet << {} >>", p2);
        writeOrEnqueue(byteBufferPrepareBufferToSend);
    }
}
