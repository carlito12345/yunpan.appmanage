package com.hierynomus.smbj.transport.tcp.async;

import com.hierynomus.protocol.Packet;
import com.hsae.autosdk.core.NoConst;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public class PacketBufferReader {
    private static final int HEADER_SIZE = 4;
    private static final int NO_PACKET_LENGTH = -1;
    private static final int READ_BUFFER_CAPACITY = 9000;
    private byte[] currentPacketBytes;
    private int currentPacketLength = -1;
    private int currentPacketOffset = 0;
    private final ByteBuffer readBuffer;

    public <P extends Packet<?>> PacketBufferReader() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(READ_BUFFER_CAPACITY);
        this.readBuffer = byteBufferAllocate;
        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
    }

    private boolean isAwaitingHeader() {
        return this.currentPacketLength == -1;
    }

    private boolean isHeaderAvailable() {
        return this.readBuffer.remaining() >= 4;
    }

    private byte[] readPacketBody() {
        int iRemaining = this.currentPacketLength - this.currentPacketOffset;
        if (iRemaining > this.readBuffer.remaining()) {
            iRemaining = this.readBuffer.remaining();
        }
        this.readBuffer.get(this.currentPacketBytes, this.currentPacketOffset, iRemaining);
        int i10 = this.currentPacketOffset + iRemaining;
        this.currentPacketOffset = i10;
        if (i10 == this.currentPacketLength) {
            return this.currentPacketBytes;
        }
        return null;
    }

    private int readPacketHeader() {
        return this.readBuffer.getInt() & NoConst.I24;
    }

    public ByteBuffer getBuffer() {
        return this.readBuffer;
    }

    public byte[] readNext() {
        byte[] packetBody;
        this.readBuffer.flip();
        if (isAwaitingHeader() && isHeaderAvailable()) {
            int packetHeader = readPacketHeader();
            this.currentPacketLength = packetHeader;
            this.currentPacketBytes = new byte[packetHeader];
            packetBody = readPacketBody();
        } else {
            packetBody = !isAwaitingHeader() ? readPacketBody() : null;
        }
        this.readBuffer.compact();
        if (packetBody != null) {
            this.currentPacketBytes = null;
            this.currentPacketOffset = 0;
            this.currentPacketLength = -1;
        }
        return packetBody;
    }
}
