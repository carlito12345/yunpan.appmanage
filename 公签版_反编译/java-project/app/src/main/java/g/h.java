package g;

import a1.i;
import java.io.IOException;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class h implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f5926a;

    /* renamed from: b, reason: collision with root package name */
    public volatile transient String f5927b;

    public h(String str) throws IOException, NumberFormatException {
        int iIndexOf;
        String strSubstring;
        int length;
        int iG;
        this.f5926a = null;
        byte[] bArr = new byte[str.length()];
        int i10 = 0;
        int i11 = 0;
        int iIntValue = 0;
        int i12 = 0;
        do {
            try {
                iIndexOf = str.indexOf(46, i10);
                if (iIndexOf == -1) {
                    strSubstring = str.substring(i10);
                    length = str.length() - i10;
                } else {
                    strSubstring = str.substring(i10, iIndexOf);
                    length = iIndexOf - i10;
                }
                if (length > 9) {
                    BigInteger bigInteger = new BigInteger(strSubstring);
                    if (i11 != 0) {
                        if (i11 != 1) {
                            c(i11, bigInteger);
                        } else {
                            if (bigInteger.signum() == -1 || (iIntValue != 2 && bigInteger.compareTo(BigInteger.valueOf(39L)) == 1)) {
                                throw new IOException("ObjectIdentifier() -- Second oid component is invalid ");
                            }
                            bigInteger = bigInteger.add(BigInteger.valueOf(iIntValue * 40));
                        }
                        byte[] byteArray = bigInteger.toByteArray();
                        iG = h(byteArray.length, i12, byteArray, bArr);
                        i12 += iG;
                    } else {
                        if (bigInteger.signum() == -1 || bigInteger.compareTo(BigInteger.valueOf(2L)) == 1) {
                            throw new IOException("ObjectIdentifier() -- First oid component is invalid ");
                        }
                        iIntValue = bigInteger.intValue();
                    }
                } else {
                    int i13 = Integer.parseInt(strSubstring);
                    if (i11 != 0) {
                        if (i11 != 1) {
                            b(i11, i13);
                        } else {
                            if (i13 < 0 || (iIntValue != 2 && i13 > 39)) {
                                throw new IOException("ObjectIdentifier() -- Second oid component is invalid ");
                            }
                            i13 += iIntValue * 40;
                        }
                        iG = g(i13, i12, bArr);
                        i12 += iG;
                    } else {
                        if (i13 < 0 || i13 > 2) {
                            throw new IOException("ObjectIdentifier() -- First oid component is invalid ");
                        }
                        iIntValue = i13;
                    }
                }
                i10 = iIndexOf + 1;
                i11++;
            } catch (IOException e7) {
                throw e7;
            } catch (Exception e10) {
                throw new IOException(b.h(e10, new StringBuilder("ObjectIdentifier() -- Invalid format: ")), e10);
            }
        } while (iIndexOf != -1);
        if (i11 < 2) {
            throw new IOException("ObjectIdentifier() -- Must be at least two oid components ");
        }
        byte[] bArr2 = new byte[i12];
        this.f5926a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i12);
        this.f5927b = str;
    }

    public static void a(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (length < 1 || (bArr[length - 1] & 128) != 0) {
            throw new IOException("ObjectIdentifier() -- Invalid DER encoding, not ended");
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (bArr[i10] == Byte.MIN_VALUE && (i10 == 0 || (bArr[i10 - 1] & 128) == 0)) {
                throw new IOException("ObjectIdentifier() -- Invalid DER encoding, useless extra octet detected");
            }
        }
    }

    public static void b(int i10, int i11) throws IOException {
        if (i11 >= 0) {
            return;
        }
        throw new IOException("ObjectIdentifier() -- oid component #" + (i10 + 1) + " must be non-negative ");
    }

    public static void c(int i10, BigInteger bigInteger) throws IOException {
        if (bigInteger.signum() != -1) {
            return;
        }
        throw new IOException("ObjectIdentifier() -- oid component #" + (i10 + 1) + " must be non-negative ");
    }

    public static h d(int[] iArr) {
        try {
            return new h(iArr);
        } catch (IOException e7) {
            throw new RuntimeException(e7);
        }
    }

    public static byte[] f(byte[] bArr, int i10, int i11, int i12, int i13) {
        if (i12 == i13) {
            return (byte[]) bArr.clone();
        }
        int i14 = i11 * i12;
        int i15 = ((i14 + i13) - 1) / i13;
        byte[] bArr2 = new byte[i15];
        int i16 = (i15 * i13) - i14;
        int i17 = 0;
        while (i17 < i14) {
            int i18 = i12 - (i17 % i12);
            int i19 = i13 - (i16 % i13);
            int i20 = i18 > i19 ? i19 : i18;
            int i21 = i16 / i13;
            bArr2[i21] = (byte) (((((bArr[(i17 / i12) + i10] + 256) >> (i18 - i20)) & ((1 << i20) - 1)) << (i19 - i20)) | bArr2[i21]);
            i17 += i20;
            i16 += i20;
        }
        return bArr2;
    }

    public static int g(int i10, int i11, byte[] bArr) {
        return h(4, i11, new byte[]{(byte) (i10 >> 24), (byte) (i10 >> 16), (byte) (i10 >> 8), (byte) i10}, bArr);
    }

    public static int h(int i10, int i11, byte[] bArr, byte[] bArr2) {
        byte[] bArrF = f(bArr, 0, i10, 8, 7);
        int length = bArrF.length - 1;
        for (int length2 = bArrF.length - 2; length2 >= 0; length2--) {
            byte b10 = bArrF[length2];
            if (b10 != 0) {
                length = length2;
            }
            bArrF[length2] = (byte) (b10 | 128);
        }
        System.arraycopy(bArrF, length, bArr2, i11, bArrF.length - length);
        return bArrF.length - length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            return Arrays.equals(this.f5926a, ((h) obj).f5926a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f5926a);
    }

    public final String toString() {
        String str = this.f5927b;
        if (str != null) {
            return str;
        }
        int length = this.f5926a.length;
        StringBuffer stringBuffer = new StringBuffer(length * 4);
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if ((this.f5926a[i11] & 128) == 0) {
                if (i10 != 0) {
                    stringBuffer.append('.');
                }
                int i12 = (i11 - i10) + 1;
                if (i12 > 4) {
                    BigInteger bigInteger = new BigInteger(f(this.f5926a, i10, i12, 7, 8));
                    if (i10 == 0) {
                        stringBuffer.append("2.");
                        stringBuffer.append(bigInteger.subtract(BigInteger.valueOf(80L)));
                    } else {
                        stringBuffer.append(bigInteger);
                    }
                } else {
                    int i13 = 0;
                    for (int i14 = i10; i14 <= i11; i14++) {
                        i13 = (i13 << 7) | (this.f5926a[i14] & Byte.MAX_VALUE);
                    }
                    if (i10 != 0) {
                        stringBuffer.append(i13);
                    } else if (i13 < 80) {
                        stringBuffer.append(i13 / 40);
                        stringBuffer.append('.');
                        stringBuffer.append(i13 % 40);
                    } else {
                        stringBuffer.append("2.");
                        stringBuffer.append(i13 - 80);
                    }
                }
                i10 = i11 + 1;
            }
        }
        String string = stringBuffer.toString();
        this.f5927b = string;
        return string;
    }

    public h(int[] iArr) throws IOException {
        int iH;
        this.f5926a = null;
        if (iArr.length >= 2) {
            int i10 = iArr[0];
            if (i10 >= 0 && i10 <= 2) {
                int i11 = iArr[1];
                if (i11 >= 0 && (i10 == 2 || i11 <= 39)) {
                    for (int i12 = 2; i12 < iArr.length; i12++) {
                        b(i12, iArr[i12]);
                    }
                    int length = iArr.length;
                    byte[] bArr = new byte[(length * 5) + 1];
                    int i13 = iArr[1];
                    int i14 = iArr[0] * 40;
                    if (i13 < Integer.MAX_VALUE - i14) {
                        iH = g(i14 + i13, 0, bArr);
                    } else {
                        byte[] byteArray = BigInteger.valueOf(i13).add(BigInteger.valueOf(iArr[0] * 40)).toByteArray();
                        iH = h(byteArray.length, 0, byteArray, bArr);
                    }
                    for (int i15 = 2; i15 < length; i15++) {
                        iH += g(iArr[i15], iH, bArr);
                    }
                    byte[] bArr2 = new byte[iH];
                    this.f5926a = bArr2;
                    System.arraycopy(bArr, 0, bArr2, 0, iH);
                    return;
                }
                throw new IOException("ObjectIdentifier() -- Second oid component is invalid ");
            }
            throw new IOException("ObjectIdentifier() -- First oid component is invalid ");
        }
        throw new IOException("ObjectIdentifier() -- Must be at least two oid components ");
    }

    public h(i iVar) throws IOException {
        this.f5926a = null;
        byte b10 = (byte) (((e) iVar.f76b).read() & 255);
        if (b10 == 6) {
            e eVar = (e) iVar.f76b;
            int iQ = i.q(eVar.read(), eVar);
            byte[] bArr = new byte[iQ];
            this.f5926a = bArr;
            if (iQ != 0 && ((e) iVar.f76b).read(bArr) != iQ) {
                throw new IOException("short read of DER octet string");
            }
            a(this.f5926a);
            return;
        }
        throw new IOException(b.i("ObjectIdentifier() -- data isn't an object ID (tag = ", b10, ")"));
    }

    public h(e eVar) throws IOException {
        this.f5926a = null;
        eVar.mark(Integer.MAX_VALUE);
        byte[] bArr = new byte[eVar.available()];
        this.f5926a = bArr;
        if (bArr.length != 0 && eVar.read(bArr) != bArr.length) {
            throw new IOException("short read of DER octet string");
        }
        a(this.f5926a);
    }
}
