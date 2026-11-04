package fg;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.android.apksig.internal.apk.v4.V4Signature;
import com.hsae.autosdk.p001os.SocConst;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes.dex */
public class l implements Serializable, Comparable {

    /* renamed from: d, reason: collision with root package name */
    public static final l f5854d = new l(new byte[0]);

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f5855a;

    /* renamed from: b, reason: collision with root package name */
    public transient int f5856b;

    /* renamed from: c, reason: collision with root package name */
    public transient String f5857c;

    public l(byte[] bArr) {
        ue.d.e(bArr, "data");
        this.f5855a = bArr;
    }

    public static final l c(String str) {
        int i10;
        char cCharAt;
        ue.d.e(str, "<this>");
        byte[] bArr = d0.f5840a;
        int length = str.length();
        while (length > 0 && ((cCharAt = str.charAt(length - 1)) == '=' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ' || cCharAt == '\t')) {
            length--;
        }
        int i11 = (int) ((length * 6) / 8);
        byte[] bArrCopyOf = new byte[i11];
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            if (i12 < length) {
                char cCharAt2 = str.charAt(i12);
                if ('A' <= cCharAt2 && cCharAt2 < '[') {
                    i10 = cCharAt2 - 'A';
                } else if ('a' <= cCharAt2 && cCharAt2 < '{') {
                    i10 = cCharAt2 - 'G';
                } else if ('0' <= cCharAt2 && cCharAt2 < ':') {
                    i10 = cCharAt2 + 4;
                } else if (cCharAt2 != '+' && cCharAt2 != '-') {
                    if (cCharAt2 != '/' && cCharAt2 != '_') {
                        if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != ' ' && cCharAt2 != '\t') {
                            break;
                        }
                        i12++;
                    } else {
                        i10 = 63;
                    }
                } else {
                    i10 = 62;
                }
                int i16 = i10 | (i14 << 6);
                i13++;
                if (i13 % 4 == 0) {
                    bArrCopyOf[i15] = (byte) (i16 >> 16);
                    int i17 = i15 + 2;
                    bArrCopyOf[i15 + 1] = (byte) (i16 >> 8);
                    i15 += 3;
                    bArrCopyOf[i17] = (byte) i16;
                }
                i14 = i16;
                i12++;
            } else {
                int i18 = i13 % 4;
                if (i18 != 1) {
                    if (i18 == 2) {
                        bArrCopyOf[i15] = (byte) ((i14 << 12) >> 16);
                        i15 = 1 + i15;
                    } else if (i18 == 3) {
                        int i19 = i14 << 6;
                        int i20 = 1 + i15;
                        bArrCopyOf[i15] = (byte) (i19 >> 16);
                        i15 += 2;
                        bArrCopyOf[i20] = (byte) (i19 >> 8);
                    }
                    if (i15 != i11) {
                        bArrCopyOf = Arrays.copyOf(bArrCopyOf, i15);
                        ue.d.d(bArrCopyOf, "copyOf(this, newSize)");
                    }
                }
            }
        }
        bArrCopyOf = null;
        if (bArrCopyOf != null) {
            return new l(bArrCopyOf);
        }
        return null;
    }

    public static final l d(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: ".concat(str).toString());
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) (gg.b.a(str.charAt(i11 + 1)) + (gg.b.a(str.charAt(i11)) << 4));
        }
        return new l(bArr);
    }

    public static final l l(byte... bArr) {
        ue.d.e(bArr, "data");
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        ue.d.d(bArrCopyOf, "copyOf(this, size)");
        return new l(bArrCopyOf);
    }

    public String a() {
        return d0.a(this.f5855a, d0.f5840a);
    }

    public String b() {
        return d0.a(this.f5855a, d0.f5841b);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002e A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002c A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int compareTo(Object obj) {
        l lVar = (l) obj;
        ue.d.e(lVar, "other");
        int iG = g();
        int iG2 = lVar.g();
        int iMin = Math.min(iG, iG2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int iJ = j(i10) & 255;
            int iJ2 = lVar.j(i10) & 255;
            if (iJ != iJ2) {
                return iJ < iJ2 ? -1 : 1;
            }
        }
        if (iG == iG2) {
            return 0;
        }
        if (iG < iG2) {
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            int iG = lVar.g();
            byte[] bArr = this.f5855a;
            if (iG == bArr.length && lVar.m(0, 0, bArr.length, bArr)) {
                return true;
            }
        }
        return false;
    }

    public l f(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(this.f5855a, 0, g());
        byte[] bArrDigest = messageDigest.digest();
        ue.d.d(bArrDigest, "digestBytes");
        return new l(bArrDigest);
    }

    public int g() {
        return this.f5855a.length;
    }

    public String h() {
        byte[] bArr = this.f5855a;
        char[] cArr = new char[bArr.length * 2];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = gg.b.f6164a;
            cArr[i10] = cArr2[(b10 >> 4) & 15];
            i10 += 2;
            cArr[i11] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public int hashCode() {
        int i10 = this.f5856b;
        if (i10 != 0) {
            return i10;
        }
        int iHashCode = Arrays.hashCode(this.f5855a);
        this.f5856b = iHashCode;
        return iHashCode;
    }

    public byte[] i() {
        return this.f5855a;
    }

    public byte j(int i10) {
        return this.f5855a[i10];
    }

    public boolean m(int i10, int i11, int i12, byte[] bArr) {
        ue.d.e(bArr, "other");
        if (i10 >= 0) {
            byte[] bArr2 = this.f5855a;
            if (i10 <= bArr2.length - i12 && i11 >= 0 && i11 <= bArr.length - i12 && e0.a(i10, bArr2, i11, bArr, i12)) {
                return true;
            }
        }
        return false;
    }

    public boolean n(l lVar, int i10) {
        ue.d.e(lVar, "other");
        return lVar.m(0, 0, i10, this.f5855a);
    }

    public l o() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f5855a;
            if (i10 >= bArr.length) {
                return this;
            }
            byte b10 = bArr[i10];
            if (b10 >= 65 && b10 <= 90) {
                byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                ue.d.d(bArrCopyOf, "copyOf(this, size)");
                bArrCopyOf[i10] = (byte) (b10 + HebrewProber.SPACE);
                for (int i11 = i10 + 1; i11 < bArrCopyOf.length; i11++) {
                    byte b11 = bArrCopyOf[i11];
                    if (b11 >= 65 && b11 <= 90) {
                        bArrCopyOf[i11] = (byte) (b11 + HebrewProber.SPACE);
                    }
                }
                return new l(bArrCopyOf);
            }
            i10++;
        }
    }

    public byte[] p() {
        byte[] bArr = this.f5855a;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        ue.d.d(bArrCopyOf, "copyOf(this, size)");
        return bArrCopyOf;
    }

    public final String q() {
        String str = this.f5857c;
        if (str != null) {
            return str;
        }
        byte[] bArrI = i();
        ue.d.e(bArrI, "<this>");
        String str2 = new String(bArrI, bf.a.f2815a);
        this.f5857c = str2;
        return str2;
    }

    public void r(i iVar, int i10) {
        ue.d.e(iVar, "buffer");
        iVar.V(this.f5855a, 0, i10);
    }

    public String toString() {
        l lVar;
        byte b10;
        int i10;
        byte[] bArr = this.f5855a;
        if (bArr.length == 0) {
            return "[size=0]";
        }
        int length = bArr.length;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        loop0: while (true) {
            if (i11 >= length) {
                break;
            }
            byte b11 = bArr[i11];
            if (b11 >= 0) {
                int i14 = i13 + 1;
                if (i13 == 64) {
                    break;
                }
                if ((b11 != 10 && b11 != 13 && ((b11 >= 0 && b11 < 32) || (Byte.MAX_VALUE <= b11 && b11 < 160))) || b11 == 65533) {
                    break;
                }
                i12 += b11 < 65536 ? 1 : 2;
                i11++;
                while (true) {
                    i13 = i14;
                    if (i11 < length && (b10 = bArr[i11]) >= 0) {
                        i11++;
                        i14 = i13 + 1;
                        if (i13 == 64) {
                            break loop0;
                        }
                        if ((b10 != 10 && b10 != 13 && ((b10 >= 0 && b10 < 32) || (Byte.MAX_VALUE <= b10 && b10 < 160))) || b10 == 65533) {
                            break loop0;
                        }
                        i12 += b10 < 65536 ? 1 : 2;
                    } else {
                        break;
                    }
                }
            } else if ((b11 >> 5) == -2) {
                int i15 = i11 + 1;
                if (length > i15) {
                    byte b12 = bArr[i15];
                    if ((b12 & 192) == 128) {
                        int i16 = (b12 ^ 3968) ^ (b11 << 6);
                        if (i16 >= 128) {
                            i10 = i13 + 1;
                            if (i13 == 64) {
                                break;
                            }
                            if ((i16 != 10 && i16 != 13 && ((i16 >= 0 && i16 < 32) || (127 <= i16 && i16 < 160))) || i16 == 65533) {
                                break;
                            }
                            i12 += i16 < 65536 ? 1 : 2;
                            i11 += 2;
                            i13 = i10;
                        } else if (i13 != 64) {
                            break;
                        }
                    } else if (i13 != 64) {
                        break;
                    }
                } else if (i13 != 64) {
                    break;
                }
            } else if ((b11 >> 4) == -2) {
                int i17 = i11 + 2;
                if (length > i17) {
                    byte b13 = bArr[i11 + 1];
                    if ((b13 & 192) == 128) {
                        byte b14 = bArr[i17];
                        if ((b14 & 192) == 128) {
                            int i18 = ((b14 ^ (-123008)) ^ (b13 << 6)) ^ (b11 << V4Signature.LOG2_BLOCK_SIZE_4096_BYTES);
                            if (i18 < 2048) {
                                if (i13 != 64) {
                                    break;
                                }
                            } else if (55296 > i18 || i18 >= 57344) {
                                i10 = i13 + 1;
                                if (i13 == 64) {
                                    break;
                                }
                                if ((i18 != 10 && i18 != 13 && ((i18 >= 0 && i18 < 32) || (127 <= i18 && i18 < 160))) || i18 == 65533) {
                                    break;
                                }
                                i12 += i18 < 65536 ? 1 : 2;
                                i11 += 3;
                                i13 = i10;
                            } else if (i13 != 64) {
                                break;
                            }
                        } else if (i13 != 64) {
                            break;
                        }
                    } else if (i13 != 64) {
                        break;
                    }
                } else if (i13 != 64) {
                    break;
                }
            } else if ((b11 >> 3) == -2) {
                int i19 = i11 + 3;
                if (length > i19) {
                    byte b15 = bArr[i11 + 1];
                    if ((b15 & 192) == 128) {
                        byte b16 = bArr[i11 + 2];
                        if ((b16 & 192) == 128) {
                            byte b17 = bArr[i19];
                            if ((b17 & 192) == 128) {
                                int i20 = (((b17 ^ 3678080) ^ (b16 << 6)) ^ (b15 << V4Signature.LOG2_BLOCK_SIZE_4096_BYTES)) ^ (b11 << SocConst.Upgrade.FLASH_DATA);
                                if (i20 > 1114111) {
                                    if (i13 != 64) {
                                        break;
                                    }
                                } else if (55296 > i20 || i20 >= 57344) {
                                    if (i20 >= 65536) {
                                        i10 = i13 + 1;
                                        if (i13 == 64) {
                                            break;
                                        }
                                        if ((i20 != 10 && i20 != 13 && ((i20 >= 0 && i20 < 32) || (127 <= i20 && i20 < 160))) || i20 == 65533) {
                                            break;
                                        }
                                        i12 += i20 < 65536 ? 1 : 2;
                                        i11 += 4;
                                        i13 = i10;
                                    } else if (i13 != 64) {
                                        break;
                                    }
                                } else if (i13 != 64) {
                                    break;
                                }
                            } else if (i13 != 64) {
                                break;
                            }
                        } else if (i13 != 64) {
                            break;
                        }
                    } else if (i13 != 64) {
                        break;
                    }
                } else if (i13 != 64) {
                    break;
                }
            } else if (i13 != 64) {
                break;
            }
        }
        i12 = -1;
        if (i12 != -1) {
            String strQ = q();
            String strSubstring = strQ.substring(0, i12);
            ue.d.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String strQ2 = bf.h.Q(bf.h.Q(bf.h.Q(strSubstring, "\\", "\\\\"), SignParameters.NEW_LINE, "\\n"), "\r", "\\r");
            if (i12 >= strQ.length()) {
                return "[text=" + strQ2 + ']';
            }
            return "[size=" + bArr.length + " text=" + strQ2 + "…]";
        }
        if (bArr.length <= 64) {
            return "[hex=" + h() + ']';
        }
        StringBuilder sb2 = new StringBuilder("[size=");
        sb2.append(bArr.length);
        sb2.append(" hex=");
        if (64 > bArr.length) {
            throw new IllegalArgumentException(("endIndex > length(" + bArr.length + ')').toString());
        }
        if (64 == bArr.length) {
            lVar = this;
        } else {
            q4.a.f(64, bArr.length);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, 64);
            ue.d.d(bArrCopyOfRange, "copyOfRange(...)");
            lVar = new l(bArrCopyOfRange);
        }
        sb2.append(lVar.h());
        sb2.append("…]");
        return sb2.toString();
    }
}
