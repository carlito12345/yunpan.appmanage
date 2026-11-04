package com.hierynomus.mssmb2.messages;

import com.hierynomus.msfscc.FileInformationClass;
import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.mssmb2.SMB2MessageCommandCode;
import com.hierynomus.mssmb2.SMB2MultiCreditPacket;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.smb.SMBBuffer;
import java.util.Set;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public class SMB2QueryDirectoryRequest extends SMB2MultiCreditPacket {
    private final SMB2FileId fileId;
    private final long fileIndex;
    private FileInformationClass fileInformationClass;
    private final Set<SMB2QueryDirectoryFlags> flags;
    private final String searchPattern;

    public enum SMB2QueryDirectoryFlags implements EnumWithValue<SMB2QueryDirectoryFlags> {
        SMB2_RESTART_SCANS(1),
        SMB2_RETURN_SINGLE_ENTRY(2),
        SMB2_INDEX_SPECIFIED(4),
        SMB2_REOPEN(16);

        private long value;

        SMB2QueryDirectoryFlags(long j10) {
            this.value = j10;
        }

        @Override // com.hierynomus.protocol.commons.EnumWithValue
        public long getValue() {
            return this.value;
        }
    }

    public SMB2QueryDirectoryRequest(SMB2Dialect sMB2Dialect, long j10, long j11, SMB2FileId sMB2FileId, FileInformationClass fileInformationClass, Set<SMB2QueryDirectoryFlags> set, long j12, String str, int i10) {
        super(33, sMB2Dialect, SMB2MessageCommandCode.SMB2_QUERY_DIRECTORY, j10, j11, i10);
        this.fileInformationClass = fileInformationClass;
        this.flags = set;
        this.fileIndex = j12;
        this.fileId = sMB2FileId;
        this.searchPattern = str == null ? Marker.ANY_MARKER : str;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void writeTo(SMBBuffer sMBBuffer) {
        sMBBuffer.putUInt16(this.structureSize);
        sMBBuffer.putByte((byte) this.fileInformationClass.getValue());
        sMBBuffer.putByte((byte) EnumWithValue.EnumUtils.toLong(this.flags));
        sMBBuffer.putUInt32(this.fileIndex);
        this.fileId.write(sMBBuffer);
        sMBBuffer.putUInt16(96);
        sMBBuffer.putUInt16(this.searchPattern.length() * 2);
        sMBBuffer.putUInt32(Math.min(getMaxPayloadSize(), getCreditsAssigned() * 65536));
        sMBBuffer.putString(this.searchPattern);
    }
}
