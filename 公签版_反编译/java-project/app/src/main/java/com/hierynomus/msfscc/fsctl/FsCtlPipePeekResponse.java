package com.hierynomus.msfscc.fsctl;

import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.protocol.commons.buffer.Buffer;

/* loaded from: classes.dex */
public class FsCtlPipePeekResponse {
    public static final int STRUCTURE_SIZE = 24;
    private byte[] data;
    private long messageLength;
    private long numberOfMessages;
    private long readDataAvailable;
    private PipeState state;

    public enum PipeState implements EnumWithValue<PipeState> {
        FILE_PIPE_CONNECTED_STATE(3),
        FILE_PIPE_CLOSING_STATE(4);

        private final int value;

        PipeState(int i10) {
            this.value = i10;
        }

        @Override // com.hierynomus.protocol.commons.EnumWithValue
        public long getValue() {
            return this.value;
        }
    }

    public FsCtlPipePeekResponse() {
    }

    public byte[] getData() {
        return this.data;
    }

    public long getMessageLength() {
        return this.messageLength;
    }

    public long getNumberOfMessages() {
        return this.numberOfMessages;
    }

    public long getReadDataAvailable() {
        return this.readDataAvailable;
    }

    public PipeState getState() {
        return this.state;
    }

    public void read(Buffer<?> buffer) {
        this.state = (PipeState) EnumWithValue.EnumUtils.valueOf(buffer.readUInt32(), PipeState.class, null);
        this.readDataAvailable = buffer.readUInt32();
        this.numberOfMessages = buffer.readUInt32();
        this.messageLength = buffer.readUInt32();
        this.data = buffer.readRawBytes(buffer.available());
    }

    public FsCtlPipePeekResponse(PipeState pipeState, long j10, long j11, long j12, byte[] bArr) {
        this.state = pipeState;
        this.readDataAvailable = j10;
        this.numberOfMessages = j11;
        this.messageLength = j12;
        this.data = bArr;
    }
}
