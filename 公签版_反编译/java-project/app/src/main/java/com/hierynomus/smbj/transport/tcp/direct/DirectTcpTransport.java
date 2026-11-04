package com.hierynomus.smbj.transport.tcp.direct;

import com.hierynomus.protocol.Packet;
import com.hierynomus.protocol.PacketData;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.protocol.commons.socket.ProxySocketFactory;
import com.hierynomus.protocol.transport.PacketHandlers;
import com.hierynomus.protocol.transport.TransportException;
import com.hierynomus.protocol.transport.TransportLayer;
import com.hierynomus.smbj.transport.PacketReader;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javax.net.SocketFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class DirectTcpTransport<D extends PacketData<?>, P extends Packet<?>> implements TransportLayer<P> {
    private static final int INITIAL_BUFFER_SIZE = 9000;
    private final PacketHandlers<D, P> handlers;
    private BufferedOutputStream output;
    private PacketReader<D> packetReaderThread;
    private int soTimeout;
    private Socket socket;
    private SocketFactory socketFactory;
    private final Logger logger = LoggerFactory.getLogger(getClass());
    private final ReentrantReadWriteLock lock = new ReentrantReadWriteLock();

    public DirectTcpTransport(SocketFactory socketFactory, int i10, PacketHandlers<D, P> packetHandlers) {
        new ProxySocketFactory();
        this.soTimeout = i10;
        this.socketFactory = socketFactory;
        this.handlers = packetHandlers;
    }

    private void initWithSocket(String str) throws SocketException {
        this.socket.setSoTimeout(this.soTimeout);
        this.output = new BufferedOutputStream(this.socket.getOutputStream(), INITIAL_BUFFER_SIZE);
        DirectTcpPacketReader directTcpPacketReader = new DirectTcpPacketReader(str, this.socket.getInputStream(), this.handlers.getPacketFactory(), this.handlers.getReceiver());
        this.packetReaderThread = directTcpPacketReader;
        directTcpPacketReader.start();
    }

    private void writeDirectTcpPacketHeader(int i10) throws IOException {
        this.output.write(0);
        this.output.write((byte) (i10 >> 16));
        this.output.write((byte) (i10 >> 8));
        this.output.write((byte) (i10 & 255));
    }

    private void writePacketData(Buffer<?> buffer) throws IOException {
        this.output.write(buffer.array(), buffer.rpos(), buffer.available());
    }

    @Override // com.hierynomus.protocol.transport.TransportLayer
    public void connect(InetSocketAddress inetSocketAddress) throws SocketException {
        String hostString = inetSocketAddress.getHostString();
        this.socket = this.socketFactory.createSocket(hostString, inetSocketAddress.getPort());
        initWithSocket(hostString);
    }

    @Override // com.hierynomus.protocol.transport.TransportLayer
    public void disconnect() {
        if (isConnected()) {
            this.lock.writeLock().lock();
            try {
                if (!isConnected()) {
                    this.lock.writeLock().unlock();
                    return;
                }
                this.packetReaderThread.stop();
                if (this.socket.getInputStream() != null) {
                    this.socket.getInputStream().close();
                }
                BufferedOutputStream bufferedOutputStream = this.output;
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                    this.output = null;
                }
                Socket socket = this.socket;
                if (socket != null) {
                    socket.close();
                    this.socket = null;
                }
                this.lock.writeLock().unlock();
            } catch (Throwable th2) {
                this.lock.writeLock().unlock();
                throw th2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001f  */
    @Override // com.hierynomus.protocol.transport.TransportLayer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isConnected() {
        boolean z;
        this.lock.readLock().lock();
        try {
            Socket socket = this.socket;
            if (socket == null || !socket.isConnected()) {
                z = false;
            } else if (!this.socket.isClosed()) {
                z = true;
            }
            return z;
        } finally {
            this.lock.readLock().unlock();
        }
    }

    public void setSoTimeout(int i10) {
        this.soTimeout = i10;
    }

    public void setSocketFactory(SocketFactory socketFactory) {
        this.socketFactory = socketFactory;
    }

    @Override // com.hierynomus.protocol.transport.TransportLayer
    public void write(P p2) throws TransportException {
        this.logger.trace("Acquiring write lock to send packet << {} >>", p2);
        if (!isConnected()) {
            throw new TransportException(String.format("Cannot write %s as transport is disconnected", p2));
        }
        this.lock.writeLock().lock();
        try {
            try {
                if (!isConnected()) {
                    throw new TransportException(String.format("Cannot write %s as transport got disconnected", p2));
                }
                this.logger.debug("Writing packet {}", p2);
                Buffer<?> bufferWrite = this.handlers.getSerializer().write(p2);
                writeDirectTcpPacketHeader(bufferWrite.available());
                writePacketData(bufferWrite);
                this.output.flush();
                this.logger.trace("Packet {} sent, lock released.", p2);
            } catch (IOException e7) {
                throw new TransportException(e7);
            }
        } finally {
            this.lock.writeLock().unlock();
        }
    }
}
