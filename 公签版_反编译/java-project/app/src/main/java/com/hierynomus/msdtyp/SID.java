package com.hierynomus.msdtyp;

import com.hierynomus.protocol.commons.ByteArrayUtils;
import com.hierynomus.protocol.commons.EnumWithValue;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.smb.SMBBuffer;
import da.b;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class SID {
    public static final SID EVERYONE = new SID((byte) 1, new byte[]{0, 0, 0, 0, 0, 1}, new long[]{0});
    private static final Pattern SID_REGEX = Pattern.compile("S-([0-9]+)-((?:0x[0-9a-fA-F]+)|(?:[0-9]+))(-[0-9]+)+");
    private byte revision;
    private byte[] sidIdentifierAuthority;
    private long[] subAuthorities;

    public enum SidType implements EnumWithValue<SidType> {
        SID_TYPE_NONE(0, "0"),
        SID_TYPE_USER(1, "User"),
        SID_TYPE_DOM_GRP(2, "Domain group"),
        SID_TYPE_DOMAIN(3, "Domain"),
        SID_TYPE_ALIAS(4, "Local group"),
        SID_TYPE_WKN_GRP(5, "Builtin group"),
        SID_TYPE_DELETED(6, "Deleted"),
        SID_TYPE_INVALID(7, "Invalid"),
        SID_TYPE_UNKNOWN(8, "Unknown"),
        SID_TYPE_COMPUTER(9, "Computer"),
        SID_TYPE_LABEL(10, "Label");

        private String name;
        private long value;

        SidType(long j10, String str) {
            this.value = j10;
            this.name = str;
        }

        public String getName() {
            return this.name;
        }

        @Override // com.hierynomus.protocol.commons.EnumWithValue
        public long getValue() {
            return this.value;
        }
    }

    public SID() {
    }

    public static SID fromString(String str) throws NumberFormatException {
        int i10 = 0;
        Matcher matcher = SID_REGEX.matcher(str);
        if (!matcher.matches()) {
            throw new IllegalArgumentException(b.c("Invalid SID literal: ", str));
        }
        int i11 = Integer.parseInt(matcher.group(1));
        String strGroup = matcher.group(2);
        long j10 = strGroup.startsWith("0x") ? Long.parseLong(strGroup.substring(2), 16) : Long.parseLong(strGroup);
        byte[] bArr = {(byte) ((j10 >> 40) & 255), (byte) ((j10 >> 32) & 255), (byte) ((j10 >> 24) & 255), (byte) ((j10 >> 16) & 255), (byte) ((j10 >> 8) & 255), (byte) (j10 & 255)};
        String[] strArrSplit = str.substring(matcher.end(2)).split("-");
        int length = strArrSplit.length - 1;
        long[] jArr = new long[length];
        while (i10 < length) {
            int i12 = i10 + 1;
            jArr[i10] = Long.parseLong(strArrSplit[i12]);
            i10 = i12;
        }
        return new SID((byte) i11, bArr, jArr);
    }

    public static SID read(SMBBuffer sMBBuffer) throws Buffer.BufferException {
        byte b10 = sMBBuffer.readByte();
        int i10 = sMBBuffer.readByte();
        byte[] rawBytes = sMBBuffer.readRawBytes(6);
        long[] jArr = new long[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            jArr[i11] = sMBBuffer.readUInt32();
        }
        return new SID(b10, rawBytes, jArr);
    }

    public int byteCount() {
        return (this.subAuthorities.length * 4) + 8;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SID sid = (SID) obj;
        if (this.revision == sid.revision && Arrays.equals(this.sidIdentifierAuthority, sid.sidIdentifierAuthority)) {
            return Arrays.equals(this.subAuthorities, sid.subAuthorities);
        }
        return false;
    }

    public byte getRevision() {
        return this.revision;
    }

    public byte[] getSidIdentifierAuthority() {
        return this.sidIdentifierAuthority;
    }

    public long[] getSubAuthorities() {
        return this.subAuthorities;
    }

    public int hashCode() {
        return Arrays.hashCode(this.subAuthorities) + ((Arrays.hashCode(this.sidIdentifierAuthority) + (this.revision * 31)) * 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("S-");
        sb2.append(this.revision & 255);
        sb2.append("-");
        byte[] bArr = this.sidIdentifierAuthority;
        if (bArr[0] == 0 && bArr[1] == 0) {
            long j10 = 0;
            long j11 = 0;
            for (int i10 = 5; i10 > 1; i10--) {
                j10 += (this.sidIdentifierAuthority[i10] & 255) << ((int) j11);
                j11 += 8;
            }
            sb2.append(j10);
        } else {
            sb2.append("0x");
            sb2.append(ByteArrayUtils.printHex(this.sidIdentifierAuthority, 0, 6));
        }
        for (long j12 : this.subAuthorities) {
            sb2.append("-");
            sb2.append(j12 & 4294967295L);
        }
        return sb2.toString();
    }

    public void write(SMBBuffer sMBBuffer) {
        sMBBuffer.putByte(this.revision);
        sMBBuffer.putByte((byte) this.subAuthorities.length);
        byte[] bArr = this.sidIdentifierAuthority;
        if (bArr.length > 6) {
            throw new IllegalArgumentException("The IdentifierAuthority can not be larger than 6 bytes");
        }
        sMBBuffer.putRawBytes(bArr);
        for (long j10 : this.subAuthorities) {
            sMBBuffer.putUInt32(j10);
        }
    }

    public SID(byte b10, byte[] bArr, long[] jArr) {
        this.revision = b10;
        this.sidIdentifierAuthority = bArr;
        this.subAuthorities = jArr;
    }
}
