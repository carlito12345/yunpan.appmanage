package com.rapid7.client.dcerpc.dto;

import g.b;
import java.util.Arrays;
import v7.e;

/* loaded from: classes.dex */
public class SID {
    private final byte[] identifierAuthority;
    private final byte revision;
    private final long[] subAuthorities;

    public static class MalformedSIDStringException extends IllegalArgumentException {
        public MalformedSIDStringException(String str, String str2) {
            super(b.k(str, ": ", str2));
        }
    }

    public SID(byte b10, byte[] bArr, long[] jArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("Expecting non-null identifierAuthority");
        }
        if (bArr.length != 6) {
            throw new IllegalArgumentException(String.format("Expected 6 entries in identifierAuthority, got: %d", Integer.valueOf(bArr.length)));
        }
        if (jArr == null) {
            throw new IllegalArgumentException("Expecting non-null subAuthorities");
        }
        this.revision = b10;
        this.identifierAuthority = bArr;
        this.subAuthorities = jArr;
    }

    public static SID fromString(String str) throws NumberFormatException {
        byte[] bArrA;
        String[] strArrSplit = str.toUpperCase().trim().split("-");
        if (strArrSplit.length < 3) {
            throw new MalformedSIDStringException("Illegal SID format", str);
        }
        if (!strArrSplit[0].equals("S")) {
            throw new MalformedSIDStringException("SID must start with S", str);
        }
        try {
            byte b10 = (byte) Integer.parseInt(strArrSplit[1]);
            String str2 = strArrSplit[2];
            if (str2.toUpperCase().startsWith("0X")) {
                bArrA = e.f16646d.a(str2.substring(2, str2.length()));
            } else {
                long j10 = Long.parseLong(str2);
                bArrA = new byte[]{(byte) ((j10 >> 40) & 255), (byte) ((j10 >> 32) & 255), (byte) ((j10 >> 24) & 255), (byte) ((j10 >> 16) & 255), (byte) ((j10 >> 8) & 255), (byte) (j10 & 255)};
            }
            int length = strArrSplit.length - 3;
            long[] jArr = new long[length];
            for (int i10 = 0; i10 < length; i10++) {
                jArr[i10] = Long.parseLong(strArrSplit[i10 + 3]);
            }
            return new SID(b10, bArrA, jArr);
        } catch (NumberFormatException e7) {
            throw new MalformedSIDStringException("Unable to parse SID token: " + e7.getMessage(), str);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SID)) {
            return false;
        }
        SID sid = (SID) obj;
        return Byte.valueOf(getRevision()).equals(Byte.valueOf(sid.getRevision())) && Arrays.equals(getIdentifierAuthority(), sid.getIdentifierAuthority()) && Arrays.equals(getSubAuthorities(), sid.getSubAuthorities());
    }

    public byte[] getIdentifierAuthority() {
        return this.identifierAuthority;
    }

    public Long getRelativeID() {
        long[] jArr = this.subAuthorities;
        if (jArr.length == 0) {
            return null;
        }
        return Long.valueOf(jArr[jArr.length - 1]);
    }

    public byte getRevision() {
        return this.revision;
    }

    public long[] getSubAuthorities() {
        return this.subAuthorities;
    }

    public int hashCode() {
        return Arrays.hashCode(getSubAuthorities()) + ((Arrays.hashCode(getIdentifierAuthority()) + (Byte.valueOf(getRevision()).hashCode() * 31)) * 31);
    }

    public SID resolveRelativeID(long j10) {
        byte[] bArr = this.identifierAuthority;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        long[] jArr = this.subAuthorities;
        long[] jArrCopyOf = Arrays.copyOf(jArr, jArr.length + 1);
        jArrCopyOf[jArrCopyOf.length - 1] = j10;
        return new SID(this.revision, bArrCopyOf, jArrCopyOf);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("S-");
        sb2.append(this.revision & 255);
        sb2.append("-");
        byte[] bArr = this.identifierAuthority;
        if (bArr[0] == 0 && bArr[1] == 0) {
            long j10 = 0;
            long j11 = 0;
            for (int length = bArr.length - 1; length > 1; length--) {
                j10 += (this.identifierAuthority[length] & 255) << ((int) j11);
                j11 += 8;
            }
            sb2.append(j10);
        } else {
            sb2.append("0x");
            sb2.append(e.f16646d.c(this.identifierAuthority));
        }
        for (long j12 : getSubAuthorities()) {
            sb2.append("-");
            sb2.append(j12 & 4294967295L);
        }
        return sb2.toString();
    }
}
