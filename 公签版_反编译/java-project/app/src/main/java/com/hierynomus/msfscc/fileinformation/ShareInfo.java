package com.hierynomus.msfscc.fileinformation;

import com.hierynomus.protocol.commons.buffer.Buffer;

/* loaded from: classes.dex */
public class ShareInfo {
    private final long actualAvailableAllocationUnits;
    private final long actualFreeSpace;
    private final long bytesPerSector;
    private final long callerAvailableAllocationUnits;
    private final long callerFreeSpace;
    private final long sectorsPerAllocationUnit;
    private final long totalAllocationUnits;
    private final long totalSpace;

    public ShareInfo(long j10, long j11, long j12, long j13, long j14) {
        this.totalAllocationUnits = j10;
        this.callerAvailableAllocationUnits = j11;
        this.actualAvailableAllocationUnits = j12;
        this.sectorsPerAllocationUnit = j13;
        this.bytesPerSector = j14;
        long j15 = j13 * j14;
        this.totalSpace = j10 * j15;
        this.callerFreeSpace = j11 * j15;
        this.actualFreeSpace = j12 * j15;
    }

    public static ShareInfo parseFsFullSizeInformation(Buffer.PlainBuffer plainBuffer) {
        return new ShareInfo(plainBuffer.readLong(), plainBuffer.readLong(), plainBuffer.readLong(), plainBuffer.readUInt32(), plainBuffer.readUInt32());
    }

    public long getAvailableAllocationUnits() {
        return this.actualAvailableAllocationUnits;
    }

    public long getBytesPerSector() {
        return this.bytesPerSector;
    }

    public long getCallerAvailableAllocationUnits() {
        return this.callerAvailableAllocationUnits;
    }

    public long getCallerFreeSpace() {
        return this.callerFreeSpace;
    }

    public long getFreeSpace() {
        return this.actualFreeSpace;
    }

    public long getSectorsPerAllocationUnit() {
        return this.sectorsPerAllocationUnit;
    }

    public long getTotalAllocationUnits() {
        return this.totalAllocationUnits;
    }

    public long getTotalSpace() {
        return this.totalSpace;
    }
}
