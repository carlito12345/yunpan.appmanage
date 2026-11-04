package com.hierynomus.mssmb2.copy;

import com.hierynomus.smb.SMBBuffer;

/* loaded from: classes.dex */
public class CopyChunkResponse {
    private long chunkBytesWritten;
    private long chunksWritten;
    private long totalBytesWritten;

    public CopyChunkResponse() {
    }

    public long getChunkBytesWritten() {
        return this.chunkBytesWritten;
    }

    public long getChunksWritten() {
        return this.chunksWritten;
    }

    public long getTotalBytesWritten() {
        return this.totalBytesWritten;
    }

    public final void read(SMBBuffer sMBBuffer) {
        this.chunksWritten = sMBBuffer.readUInt32();
        this.chunkBytesWritten = sMBBuffer.readUInt32();
        this.totalBytesWritten = sMBBuffer.readUInt32();
    }

    public CopyChunkResponse(long j10, long j11, long j12) {
        this.chunksWritten = j10;
        this.chunkBytesWritten = j11;
        this.totalBytesWritten = j12;
    }
}
