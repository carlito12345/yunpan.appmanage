package com.hierynomus.smbj.transport;

import com.hierynomus.protocol.PacketData;
import com.hierynomus.protocol.transport.PacketReceiver;
import com.hierynomus.protocol.transport.TransportException;
import da.b;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public abstract class PacketReader<D extends PacketData<?>> implements Runnable {
    private PacketReceiver<D> handler;
    protected InputStream in;
    private final Logger logger = LoggerFactory.getLogger(getClass());
    private AtomicBoolean stopped = new AtomicBoolean(false);
    private Thread thread;

    public PacketReader(String str, InputStream inputStream, PacketReceiver<D> packetReceiver) {
        if (inputStream instanceof BufferedInputStream) {
            this.in = inputStream;
        } else {
            this.in = new BufferedInputStream(inputStream);
        }
        this.handler = packetReceiver;
        StringBuilder sbD = b.d("Packet Reader for ", str, ", Original Thread name: ");
        sbD.append(Thread.currentThread().getName());
        Thread thread = new Thread(this, sbD.toString());
        this.thread = thread;
        thread.setDaemon(true);
    }

    private void readPacket() {
        PacketData packetDataDoRead = doRead();
        this.logger.debug("Received packet {}", packetDataDoRead);
        this.handler.handle(packetDataDoRead);
    }

    public abstract D doRead();

    @Override // java.lang.Runnable
    public void run() {
        while (!Thread.currentThread().isInterrupted() && !this.stopped.get()) {
            try {
                readPacket();
            } catch (TransportException e7) {
                if (!this.stopped.get()) {
                    this.logger.info("PacketReader error, got exception.", (Throwable) e7);
                    this.handler.handleError(e7);
                    return;
                }
            }
        }
        if (this.stopped.get()) {
            this.logger.info("{} stopped.", this.thread);
        }
    }

    public void start() {
        this.logger.debug("Starting PacketReader on thread: {}", this.thread.getName());
        this.thread.start();
    }

    public void stop() {
        this.logger.debug("Stopping PacketReader...");
        this.stopped.set(true);
        this.thread.interrupt();
    }
}
