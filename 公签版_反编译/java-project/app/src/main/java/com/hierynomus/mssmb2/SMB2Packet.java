package com.hierynomus.mssmb2;

import com.hierynomus.mserref.NtStatus;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smb.SMBPacket;

/* loaded from: classes.dex */
public class SMB2Packet extends SMBPacket<SMB2PacketData, SMB2PacketHeader> {
    public static final int SINGLE_CREDIT_PAYLOAD_SIZE = 65536;
    private SMB2Error error;
    protected int structureSize;

    public SMB2Packet() {
        super(new SMB2PacketHeader());
    }

    @Override // com.hierynomus.smb.SMBPacket
    public SMBBuffer getBuffer() {
        return this.buffer;
    }

    public int getCreditsAssigned() {
        return getHeader().getCreditCharge();
    }

    public SMB2Error getError() {
        return this.error;
    }

    public int getMaxPayloadSize() {
        return 65536;
    }

    public SMB2Packet getPacket() {
        return this;
    }

    public long getSequenceNumber() {
        return ((SMB2PacketHeader) this.header).getMessageId();
    }

    public int getStructureSize() {
        return this.structureSize;
    }

    public boolean isIntermediateAsyncResponse() {
        return EnumWithValue.EnumUtils.isSet(((SMB2PacketHeader) this.header).getFlags(), SMB2MessageFlag.SMB2_FLAGS_ASYNC_COMMAND) && ((SMB2PacketHeader) this.header).getStatusCode() == NtStatus.STATUS_PENDING.getValue();
    }

    public final boolean isSuccess() {
        return this.error == null;
    }

    public final void readError(SMB2PacketData sMB2PacketData) {
        this.buffer = sMB2PacketData.getDataBuffer();
        this.header = sMB2PacketData.getHeader();
        this.error = new SMB2Error().read((SMB2PacketHeader) this.header, this.buffer);
        this.buffer.rpos(((SMB2PacketHeader) this.header).getMessageEndPosition());
    }

    public void readMessage(SMBBuffer sMBBuffer) {
        throw new UnsupportedOperationException("Should be implemented by specific message type");
    }

    public void setCreditsAssigned(int i10) {
        getHeader().setCreditCharge(i10);
    }

    public void setError(SMB2Error sMB2Error) {
        this.error = sMB2Error;
    }

    public String toString() {
        return ((SMB2PacketHeader) this.header).getMessage() + " with message id << " + ((SMB2PacketHeader) this.header).getMessageId() + " >>";
    }

    public void writeTo(SMBBuffer sMBBuffer) {
        throw new UnsupportedOperationException("Should be implemented by specific message type");
    }

    public SMB2Packet(int i10, SMB2Dialect sMB2Dialect, SMB2MessageCommandCode sMB2MessageCommandCode) {
        this(i10, sMB2Dialect, sMB2MessageCommandCode, 0L, 0L);
    }

    @Override // com.hierynomus.smb.SMBPacket
    public final void read(SMB2PacketData sMB2PacketData) {
        this.buffer = sMB2PacketData.getDataBuffer();
        this.header = sMB2PacketData.getHeader();
        readMessage(this.buffer);
        this.buffer.rpos(((SMB2PacketHeader) this.header).getMessageEndPosition());
    }

    @Override // com.hierynomus.protocol.Packet
    public void write(SMBBuffer sMBBuffer) {
        this.buffer = sMBBuffer;
        ((SMB2PacketHeader) this.header).writeTo(sMBBuffer);
        writeTo(sMBBuffer);
        ((SMB2PacketHeader) this.header).setMessageEndPosition(sMBBuffer.wpos());
    }

    public SMB2Packet(int i10, SMB2Dialect sMB2Dialect, SMB2MessageCommandCode sMB2MessageCommandCode, long j10) {
        this(i10, sMB2Dialect, sMB2MessageCommandCode, j10, 0L);
    }

    public SMB2Packet(int i10, SMB2Dialect sMB2Dialect, SMB2MessageCommandCode sMB2MessageCommandCode, long j10, long j11) {
        super(new SMB2PacketHeader());
        this.structureSize = i10;
        ((SMB2PacketHeader) this.header).setDialect(sMB2Dialect);
        ((SMB2PacketHeader) this.header).setMessageType(sMB2MessageCommandCode);
        ((SMB2PacketHeader) this.header).setSessionId(j10);
        ((SMB2PacketHeader) this.header).setTreeId(j11);
    }
}
