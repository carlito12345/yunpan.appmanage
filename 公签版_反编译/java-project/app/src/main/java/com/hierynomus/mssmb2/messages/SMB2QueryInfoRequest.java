package com.hierynomus.mssmb2.messages;

import com.hierynomus.msdtyp.SecurityInformation;
import com.hierynomus.msfscc.FileInformationClass;
import com.hierynomus.msfscc.FileSystemInformationClass;
import com.hierynomus.mssmb2.SMB2Dialect;
import com.hierynomus.mssmb2.SMB2FileId;
import com.hierynomus.mssmb2.SMB2MessageCommandCode;
import com.hierynomus.mssmb2.SMB2Packet;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.smb.SMBBuffer;
import java.util.Set;

/* loaded from: classes.dex */
public class SMB2QueryInfoRequest extends SMB2Packet {
    private static final long MAX_OUTPUT_BUFFER_LENGTH = 65536;
    private final SMB2FileId fileId;
    private final FileInformationClass fileInformationClass;
    private final FileSystemInformationClass fileSystemInformationClass;
    private final SMB2QueryInfoType infoType;
    private final byte[] inputBuffer;
    private final Set<SecurityInformation> securityInformation;

    public enum SMB2QueryInfoType implements EnumWithValue<SMB2QueryInfoType> {
        SMB2_0_INFO_FILE(1),
        SMB2_0_INFO_FILESYSTEM(2),
        SMB2_0_INFO_SECURITY(3),
        SMB2_0_INFO_QUOTA(4);

        private long value;

        SMB2QueryInfoType(long j10) {
            this.value = j10;
        }

        @Override // com.hierynomus.protocol.commons.EnumWithValue
        public long getValue() {
            return this.value;
        }
    }

    public SMB2QueryInfoRequest(SMB2Dialect sMB2Dialect, long j10, long j11, SMB2FileId sMB2FileId, SMB2QueryInfoType sMB2QueryInfoType, FileInformationClass fileInformationClass, FileSystemInformationClass fileSystemInformationClass, byte[] bArr, Set<SecurityInformation> set) {
        super(41, sMB2Dialect, SMB2MessageCommandCode.SMB2_QUERY_INFO, j10, j11);
        this.infoType = sMB2QueryInfoType;
        this.fileInformationClass = fileInformationClass;
        this.fileSystemInformationClass = fileSystemInformationClass;
        this.inputBuffer = bArr;
        this.securityInformation = set;
        this.fileId = sMB2FileId;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public void writeTo(SMBBuffer sMBBuffer) {
        sMBBuffer.putUInt16(this.structureSize);
        sMBBuffer.putByte((byte) this.infoType.getValue());
        int iOrdinal = this.infoType.ordinal();
        char c7 = 'h';
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                sMBBuffer.putByte((byte) this.fileSystemInformationClass.getValue());
                sMBBuffer.putUInt32(MAX_OUTPUT_BUFFER_LENGTH);
                sMBBuffer.putUInt16(0);
                sMBBuffer.putReserved2();
                sMBBuffer.putUInt32(0L);
                sMBBuffer.putUInt32(0L);
                sMBBuffer.putUInt32(0L);
                this.fileId.write(sMBBuffer);
            } else if (iOrdinal == 2) {
                sMBBuffer.putByte((byte) 0);
                sMBBuffer.putUInt32(MAX_OUTPUT_BUFFER_LENGTH);
                sMBBuffer.putUInt16(0);
                sMBBuffer.putReserved2();
                sMBBuffer.putUInt32(0L);
                sMBBuffer.putUInt32(EnumWithValue.EnumUtils.toLong(this.securityInformation));
                sMBBuffer.putUInt32(0L);
                this.fileId.write(sMBBuffer);
            } else {
                if (iOrdinal != 3) {
                    throw new IllegalStateException("Unknown SMB2QueryInfoType: " + this.infoType);
                }
                sMBBuffer.putByte((byte) 0);
                sMBBuffer.putUInt32(MAX_OUTPUT_BUFFER_LENGTH);
                sMBBuffer.putUInt16(0);
                sMBBuffer.putReserved2();
                sMBBuffer.putUInt32(this.inputBuffer.length);
                sMBBuffer.putUInt32(0L);
                sMBBuffer.putUInt32(0L);
                this.fileId.write(sMBBuffer);
            }
            c7 = 0;
        } else {
            sMBBuffer.putByte((byte) this.fileInformationClass.getValue());
            sMBBuffer.putUInt32(MAX_OUTPUT_BUFFER_LENGTH);
            if (this.fileInformationClass == FileInformationClass.FileFullEaInformation) {
                sMBBuffer.putUInt16(0);
                sMBBuffer.putReserved2();
                sMBBuffer.putUInt32(this.inputBuffer.length);
            } else {
                sMBBuffer.putUInt16(0);
                sMBBuffer.putReserved2();
                sMBBuffer.putUInt32(0L);
                c7 = 0;
            }
            sMBBuffer.putUInt32(0L);
            sMBBuffer.putUInt32(0L);
            this.fileId.write(sMBBuffer);
        }
        if (c7 > 0) {
            sMBBuffer.putRawBytes(this.inputBuffer);
        }
    }
}
