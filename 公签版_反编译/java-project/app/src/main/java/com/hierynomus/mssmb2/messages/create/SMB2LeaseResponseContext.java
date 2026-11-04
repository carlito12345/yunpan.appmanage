package com.hierynomus.mssmb2.messages.create;

import com.hierynomus.mssmb2.LeaseKey;
import com.hierynomus.mssmb2.SMB2LeaseState;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
public class SMB2LeaseResponseContext {
    private final int epoch;
    private final long flags;
    private final LeaseKey leaseKey;
    private final long leaseState;
    private final LeaseKey parentLeaseKey;

    /* renamed from: v2, reason: collision with root package name */
    private final boolean f3740v2;

    private SMB2LeaseResponseContext(boolean z, LeaseKey leaseKey, long j10, long j11, LeaseKey leaseKey2, int i10) {
        this.f3740v2 = z;
        this.leaseKey = leaseKey;
        this.leaseState = j10;
        this.flags = j11;
        this.parentLeaseKey = leaseKey2;
        this.epoch = i10;
    }

    public static SMB2LeaseResponseContext from(SMB2CreateContext sMB2CreateContext) {
        if (Arrays.equals(sMB2CreateContext.getName(), SMB2LeaseCreateContext.NAME)) {
            return read(sMB2CreateContext.getData());
        }
        throw new IllegalArgumentException("Not an RqLs create context");
    }

    public static SMB2LeaseResponseContext read(byte[] bArr) throws Buffer.BufferException {
        boolean z;
        int length = bArr.length;
        if (length == 32) {
            z = false;
        } else {
            if (length != 52) {
                throw new IllegalArgumentException("Malformed RqLs response: DataLength=" + bArr.length);
            }
            z = true;
        }
        SMBBuffer sMBBuffer = new SMBBuffer(bArr);
        LeaseKey leaseKey = new LeaseKey(sMBBuffer.readRawBytes(16));
        long uInt32 = sMBBuffer.readUInt32();
        long uInt322 = sMBBuffer.readUInt32();
        sMBBuffer.skip(8);
        if (!z) {
            return new SMB2LeaseResponseContext(false, leaseKey, uInt32, uInt322, null, 0);
        }
        LeaseKey leaseKey2 = new LeaseKey(sMBBuffer.readRawBytes(16));
        int uInt16 = sMBBuffer.readUInt16();
        sMBBuffer.skip(2);
        return new SMB2LeaseResponseContext(true, leaseKey, uInt32, uInt322, leaseKey2, uInt16);
    }

    public int getEpoch() {
        return this.epoch;
    }

    public long getFlags() {
        return this.flags;
    }

    public LeaseKey getLeaseKey() {
        return this.leaseKey;
    }

    public long getLeaseState() {
        return this.leaseState;
    }

    public LeaseKey getParentLeaseKey() {
        return this.parentLeaseKey;
    }

    public boolean isReadHandleGranted() {
        return SMB2LeaseState.isReadHandle(this.leaseState);
    }

    public boolean isV2() {
        return this.f3740v2;
    }
}
