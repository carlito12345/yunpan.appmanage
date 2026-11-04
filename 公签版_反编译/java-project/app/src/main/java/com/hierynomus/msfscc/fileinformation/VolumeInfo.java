package com.hierynomus.msfscc.fileinformation;

import com.hierynomus.msdtyp.FileTime;
import com.hierynomus.msdtyp.MsDataTypes;
import com.hierynomus.protocol.commons.Charsets;
import com.hierynomus.protocol.commons.buffer.Buffer;
import g.b;

/* loaded from: classes.dex */
public class VolumeInfo {
    private final boolean supportsObjects;
    private final FileTime volumeCreationTime;
    private final String volumeLabel;
    private final int volumeSerialNumber;

    public VolumeInfo(FileTime fileTime, int i10, boolean z, String str) {
        this.volumeCreationTime = fileTime;
        this.volumeSerialNumber = i10;
        this.supportsObjects = z;
        this.volumeLabel = str;
    }

    public static VolumeInfo parseFileFsVolumeInformation(Buffer.PlainBuffer plainBuffer) throws Buffer.BufferException {
        FileTime fileTime = MsDataTypes.readFileTime(plainBuffer);
        int uInt32AsInt = plainBuffer.readUInt32AsInt();
        long uInt32 = plainBuffer.readUInt32();
        boolean z = plainBuffer.readBoolean();
        plainBuffer.skip(1);
        return new VolumeInfo(fileTime, uInt32AsInt, z, plainBuffer.readString(Charsets.UTF_16LE, ((int) uInt32) / 2));
    }

    public FileTime getVolumeCreationTime() {
        return this.volumeCreationTime;
    }

    public String getVolumeLabel() {
        return this.volumeLabel;
    }

    public int getVolumeSerialNumber() {
        return this.volumeSerialNumber;
    }

    public boolean isSupportsObjects() {
        return this.supportsObjects;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("VolumeInfo{volumeCreationTime=");
        sb2.append(this.volumeCreationTime);
        sb2.append(", volumeSerialNumber=");
        sb2.append(this.volumeSerialNumber);
        sb2.append(", supportsObjects=");
        sb2.append(this.supportsObjects);
        sb2.append(", volumeLabel='");
        return b.l(this.volumeLabel, "'}", sb2);
    }
}
