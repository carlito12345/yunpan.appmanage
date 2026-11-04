package com.hierynomus.mssmb2.messages;

import com.hierynomus.msdtyp.AccessMask;
import com.hierynomus.msfscc.FileAttributes;
import com.hierynomus.mssmb2.SMB2CreateDisposition;
import com.hierynomus.mssmb2.SMB2CreateOptions;
import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2Functions;
import com.hierynomus.mssmb2.SMB2ImpersonationLevel;
import com.hierynomus.mssmb2.SMB2MessageCommandCode;
import com.hierynomus.mssmb2.SMB2OplockLevel;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.mssmb2.SMB2ShareAccess;
import com.hierynomus.mssmb2.messages.create.SMB2CreateContext;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.smb.SMBBuffer;
import com.hierynomus.smbj.common.SmbPath;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class SMB2CreateRequest extends SMB2Packet {
    private final Set<AccessMask> accessMask;
    private final List<SMB2CreateContext> createContexts;
    private final SMB2CreateDisposition createDisposition;
    private final Set<SMB2CreateOptions> createOptions;
    private final Set<FileAttributes> fileAttributes;
    private final SMB2ImpersonationLevel impersonationLevel;
    private final SmbPath path;
    private final SMB2OplockLevel requestedOplockLevel;
    private final Set<SMB2ShareAccess> shareAccess;

    public SMB2CreateRequest(SMB2Dialect sMB2Dialect, long j10, long j11, SMB2ImpersonationLevel sMB2ImpersonationLevel, Set<AccessMask> set, Set<FileAttributes> set2, Set<SMB2ShareAccess> set3, SMB2CreateDisposition sMB2CreateDisposition, Set<SMB2CreateOptions> set4, SmbPath smbPath) {
        this(sMB2Dialect, j10, j11, sMB2ImpersonationLevel, set, set2, set3, sMB2CreateDisposition, set4, smbPath, SMB2OplockLevel.SMB2_OPLOCK_LEVEL_NONE, Collections.emptyList());
    }

    public List<SMB2CreateContext> getCreateContexts() {
        return this.createContexts;
    }

    public SMB2CreateDisposition getCreateDisposition() {
        return this.createDisposition;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void writeTo(SMBBuffer sMBBuffer) {
        byte[] bArrUnicode;
        byte[] bArr;
        int length;
        int i10;
        sMBBuffer.putUInt16(this.structureSize);
        int i11 = 0;
        sMBBuffer.putByte((byte) 0);
        sMBBuffer.putByte((byte) this.requestedOplockLevel.getValue());
        sMBBuffer.putUInt32(this.impersonationLevel.getValue());
        sMBBuffer.putReserved(8);
        sMBBuffer.putReserved(8);
        sMBBuffer.putUInt32(EnumWithValue.EnumUtils.toLong(this.accessMask));
        sMBBuffer.putUInt32(EnumWithValue.EnumUtils.toLong(this.fileAttributes));
        sMBBuffer.putUInt32(EnumWithValue.EnumUtils.toLong(this.shareAccess));
        sMBBuffer.putUInt32(this.createDisposition.getValue());
        sMBBuffer.putUInt32(EnumWithValue.EnumUtils.toLong(this.createOptions));
        int i12 = this.structureSize + 63;
        String path = this.path.getPath();
        if (path == null || path.trim().length() == 0) {
            sMBBuffer.putUInt16(i12);
            sMBBuffer.putUInt16(0);
            bArrUnicode = new byte[1];
        } else {
            bArrUnicode = SMB2Functions.unicode(path);
            sMBBuffer.putUInt16(i12);
            sMBBuffer.putUInt16(bArrUnicode.length);
        }
        if (this.createContexts.isEmpty()) {
            bArr = null;
            length = 0;
            i10 = 0;
        } else {
            SMBBuffer sMBBuffer2 = new SMBBuffer();
            SMB2CreateContext.writeAll(sMBBuffer2, this.createContexts);
            byte[] compactData = sMBBuffer2.getCompactData();
            length = compactData.length;
            int length2 = i12 + bArrUnicode.length;
            int i13 = (length2 + 7) & (-8);
            int i14 = i13 - length2;
            bArr = compactData;
            i11 = i13;
            i10 = i14;
        }
        sMBBuffer.putUInt32(i11);
        sMBBuffer.putUInt32(length);
        sMBBuffer.putRawBytes(bArrUnicode);
        if (bArr != null) {
            sMBBuffer.putReserved(i10);
            sMBBuffer.putRawBytes(bArr);
        }
    }

    public SMB2CreateRequest(SMB2Dialect sMB2Dialect, long j10, long j11, SMB2ImpersonationLevel sMB2ImpersonationLevel, Set<AccessMask> set, Set<FileAttributes> set2, Set<SMB2ShareAccess> set3, SMB2CreateDisposition sMB2CreateDisposition, Set<SMB2CreateOptions> set4, SmbPath smbPath, SMB2OplockLevel sMB2OplockLevel, List<SMB2CreateContext> list) {
        super(57, sMB2Dialect, SMB2MessageCommandCode.SMB2_CREATE, j10, j11);
        this.impersonationLevel = (SMB2ImpersonationLevel) EnumWithValue.EnumUtils.ensureNotNull(sMB2ImpersonationLevel, SMB2ImpersonationLevel.Identification);
        this.accessMask = set;
        this.fileAttributes = EnumWithValue.EnumUtils.ensureNotNull(set2, FileAttributes.class);
        this.shareAccess = EnumWithValue.EnumUtils.ensureNotNull(set3, SMB2ShareAccess.class);
        this.createDisposition = (SMB2CreateDisposition) EnumWithValue.EnumUtils.ensureNotNull(sMB2CreateDisposition, SMB2CreateDisposition.FILE_OPEN_IF);
        this.createOptions = EnumWithValue.EnumUtils.ensureNotNull(set4, SMB2CreateOptions.class);
        this.path = smbPath;
        this.requestedOplockLevel = sMB2OplockLevel == null ? SMB2OplockLevel.SMB2_OPLOCK_LEVEL_NONE : sMB2OplockLevel;
        this.createContexts = list == null ? Collections.emptyList() : list;
    }
}
