package com.hierynomus.mssmb2.messages.create;

import com.hierynomus.mssmb2.LeaseKey;
import com.hierynomus.mssmb2.SMB2LeaseFlags;
import com.hierynomus.smb.SMBBuffer;

/* loaded from: classes.dex */
public class SMB2LeaseCreateContext {
    public static final byte[] NAME = {82, 113, 76, 115};
    private final long flags;
    private final LeaseKey leaseKey;
    private final long leaseState;
    private final LeaseKey parentLeaseKey;
    private final Version version;

    public enum Version {
        V1,
        V2
    }

    private SMB2LeaseCreateContext(Version version, LeaseKey leaseKey, long j10, LeaseKey leaseKey2) {
        this.version = version;
        this.leaseKey = leaseKey;
        this.leaseState = j10;
        boolean z = (leaseKey2 == null || leaseKey2.isAllZero()) ? false : true;
        this.parentLeaseKey = z ? leaseKey2 : null;
        this.flags = z ? SMB2LeaseFlags.SMB2_LEASE_FLAG_PARENT_LEASE_KEY_SET.getValue() : 0L;
    }

    public static SMB2LeaseCreateContext v1(LeaseKey leaseKey, long j10) {
        return new SMB2LeaseCreateContext(Version.V1, leaseKey, j10, null);
    }

    public static SMB2LeaseCreateContext v2(LeaseKey leaseKey, long j10, LeaseKey leaseKey2) {
        return new SMB2LeaseCreateContext(Version.V2, leaseKey, j10, leaseKey2);
    }

    public long getFlags() {
        return this.flags;
    }

    public Version getVersion() {
        return this.version;
    }

    public byte[] toBytes() {
        SMBBuffer sMBBuffer = new SMBBuffer();
        sMBBuffer.putRawBytes(this.leaseKey.getBytes());
        sMBBuffer.putUInt32(this.leaseState);
        sMBBuffer.putUInt32(this.flags);
        sMBBuffer.putReserved(8);
        if (this.version == Version.V2) {
            LeaseKey leaseKey = this.parentLeaseKey;
            sMBBuffer.putRawBytes(leaseKey != null ? leaseKey.getBytes() : new byte[16]);
            sMBBuffer.putUInt16(0);
            sMBBuffer.putReserved2();
        }
        return sMBBuffer.getCompactData();
    }

    public SMB2CreateContext toCreateContext() {
        return new SMB2CreateContext(NAME, toBytes());
    }
}
