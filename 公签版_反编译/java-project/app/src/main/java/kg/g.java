package kg;

import ha.l2;
import j$.nio.charset.StandardCharsets;
import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final BigInteger f10319a = BigInteger.valueOf(-1);

    /* renamed from: b, reason: collision with root package name */
    public static final lg.a f10320b;

    /* renamed from: c, reason: collision with root package name */
    public static final l2 f10321c;

    static {
        Charset charsetDefaultCharset = Charset.defaultCharset();
        int i10 = sg.a.f14562a;
        if (charsetDefaultCharset == null) {
            charsetDefaultCharset = Charset.defaultCharset();
        }
        f10320b = new lg.a(charsetDefaultCharset);
        f10321c = new l2(15);
    }

    public static String a(int i10, int i11, byte[] bArr) {
        try {
            try {
                return b(bArr, i10, i11, f10320b);
            } catch (IOException unused) {
                return b(bArr, i10, i11, f10321c);
            }
        } catch (IOException e7) {
            throw new UncheckedIOException(e7);
        }
    }

    public static String b(byte[] bArr, int i10, int i11, lg.b bVar) {
        int i12 = 0;
        for (int i13 = i10; i12 < i11 && bArr[i13] != 0; i13++) {
            i12++;
        }
        if (i12 <= 0) {
            return "";
        }
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, i10, bArr2, 0, i12);
        return bVar.decode(bArr2);
    }

    public static long c(int i10, int i11, byte[] bArr) {
        int i12 = i10 + i11;
        if (i11 < 2) {
            throw new IllegalArgumentException(g.b.i("Length ", i11, " must be at least 2"));
        }
        long j10 = 0;
        if (bArr[i10] == 0) {
            return 0L;
        }
        int i13 = i10;
        while (i13 < i12 && bArr[i13] == 32) {
            i13++;
        }
        byte b10 = bArr[i12 - 1];
        while (i13 < i12 && (b10 == 0 || b10 == 32)) {
            b10 = bArr[i12 - 2];
            i12--;
        }
        while (i13 < i12) {
            byte b11 = bArr[i13];
            if (b11 < 48 || b11 > 55) {
                String strReplace = new String(bArr, i10, i11, Charset.defaultCharset()).replace("\u0000", "{NUL}");
                StringBuilder sbN = g.b.n("Invalid byte ", b11, " at offset ");
                sbN.append(i13 - i10);
                sbN.append(" in '");
                sbN.append(strReplace);
                sbN.append("' len=");
                sbN.append(i11);
                throw new IllegalArgumentException(sbN.toString());
            }
            j10 = (j10 << 3) + (b11 - 48);
            i13++;
        }
        return j10;
    }

    public static long d(int i10, int i11, byte[] bArr) {
        byte b10 = bArr[i10];
        if ((b10 & 128) == 0) {
            return c(i10, i11, bArr);
        }
        boolean z = b10 == -1;
        if (i11 >= 9) {
            int i12 = i11 - 1;
            byte[] bArr2 = new byte[i12];
            System.arraycopy(bArr, i10 + 1, bArr2, 0, i12);
            BigInteger bigInteger = new BigInteger(bArr2);
            if (z) {
                bigInteger = bigInteger.add(f10319a).not();
            }
            if (bigInteger.bitLength() <= 63) {
                long jLongValue = bigInteger.longValue();
                return z ? -jLongValue : jLongValue;
            }
            throw new IllegalArgumentException("At offset " + i10 + ", " + i11 + " byte binary number exceeds maximum signed long value");
        }
        if (i11 >= 9) {
            throw new IllegalArgumentException("At offset " + i10 + ", " + i11 + " byte binary number exceeds maximum signed long value");
        }
        long jPow = 0;
        for (int i13 = 1; i13 < i11; i13++) {
            jPow = (jPow << 8) + (bArr[i10 + i13] & 255);
        }
        if (z) {
            double d10 = i11 - 1;
            Double.isNaN(d10);
            jPow = (jPow - 1) ^ (((long) Math.pow(2.0d, d10 * 8.0d)) - 1);
        }
        return z ? -jPow : jPow;
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x0139, code lost:
    
        throw new java.io.IOException("Failed to read Paxheader. Encountered a non-number while reading length");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static HashMap e(d dVar, ArrayList arrayList, HashMap map, long j10) {
        int i10;
        int i11;
        int i12;
        long j11;
        HashMap map2 = new HashMap(map);
        int i13 = 0;
        Long lValueOf = null;
        loop0: do {
            int i14 = 0;
            int i15 = 0;
            while (true) {
                i10 = dVar.read();
                int i16 = -1;
                long j12 = 0;
                if (i10 == -1) {
                    break;
                }
                i14++;
                i13++;
                if (i10 == 10) {
                    i11 = -1;
                    break;
                }
                if (i10 == 32) {
                    yg.a aVar = new yg.a();
                    while (true) {
                        i12 = dVar.read();
                        if (i12 == i16) {
                            break;
                        }
                        i14++;
                        i13++;
                        if (i13 < 0 || (j10 >= j12 && i13 >= j10)) {
                            break;
                        }
                        if (i12 == 61) {
                            Charset charset = StandardCharsets.UTF_8;
                            String str = new String(aVar.A(), charset);
                            int i17 = i15 - i14;
                            if (i17 <= 1) {
                                map2.remove(str);
                            } else {
                                if (j10 >= j12 && i17 > j10 - i13) {
                                    throw new IOException(g.b.i("Paxheader value size ", i17, " exceeds size of header record"));
                                }
                                byte[] bArrA = rg.d.a(i17, dVar);
                                int length = bArrA.length;
                                if (length != i17) {
                                    throw new IOException(android.support.v4.media.session.a.o("Failed to read Paxheader. Expected ", i17, length, " bytes, read "));
                                }
                                i13 += i17;
                                int i18 = i17 - 1;
                                if (bArrA[i18] != 10) {
                                    throw new IOException("Failed to read Paxheader.Value should end with a newline");
                                }
                                String str2 = new String(bArrA, 0, i18, charset);
                                map2.put(str, str2);
                                if (str.equals("GNU.sparse.offset")) {
                                    if (lValueOf != null) {
                                        j11 = 0;
                                        arrayList.add(new f(lValueOf.longValue(), 0L));
                                    } else {
                                        j11 = 0;
                                    }
                                    try {
                                        lValueOf = Long.valueOf(str2);
                                        if (lValueOf.longValue() < j11) {
                                            throw new IOException("Failed to read Paxheader.GNU.sparse.offset contains negative value");
                                        }
                                    } catch (NumberFormatException unused) {
                                        throw new IOException("Failed to read Paxheader.GNU.sparse.offset contains a non-numeric value");
                                    }
                                }
                                if (str.equals("GNU.sparse.numbytes")) {
                                    if (lValueOf == null) {
                                        throw new IOException("Failed to read Paxheader.GNU.sparse.offset is expected before GNU.sparse.numbytes shows up.");
                                    }
                                    long jE = rg.b.e(str2);
                                    if (jE < 0) {
                                        throw new IOException("Failed to read Paxheader.GNU.sparse.numbytes contains negative value");
                                    }
                                    arrayList.add(new f(lValueOf.longValue(), jE));
                                    lValueOf = null;
                                }
                            }
                        } else {
                            aVar.write((byte) i12);
                            i16 = -1;
                            j12 = 0;
                        }
                    }
                    i10 = i12;
                } else {
                    if (i10 < 48 || i10 > 57) {
                        break loop0;
                    }
                    i15 = (i15 * 10) + (i10 - 48);
                }
            }
            i11 = -1;
        } while (i10 != i11);
        if (lValueOf != null) {
            arrayList.add(new f(lValueOf.longValue(), 0L));
        }
        return map2;
    }

    public static long[] f(InputStream inputStream) {
        long j10 = 0;
        long j11 = 0;
        while (true) {
            int i10 = inputStream.read();
            if (i10 == 10) {
                return new long[]{j11, j10 + 1};
            }
            j10++;
            if (i10 == -1) {
                throw new IOException("Unexpected EOF when reading parse information of 1.X PAX format");
            }
            if (i10 < 48 || i10 > 57) {
                break;
            }
            j11 = (j11 * 10) + (i10 - 48);
        }
        throw new IOException("Corrupted TAR archive. Non-numeric value in sparse headers block");
    }

    public static List g(int i10, int i11, byte[] bArr) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = (i12 * 24) + i10;
            try {
                long jD = d(i13, 12, bArr);
                long jD2 = d(i13 + 12, 12, bArr);
                f fVar = new f(jD, jD2);
                if (jD < 0) {
                    throw new IOException("Corrupted TAR archive, sparse entry with negative offset");
                }
                if (jD2 < 0) {
                    throw new IOException("Corrupted TAR archive, sparse entry with negative numbytes");
                }
                arrayList.add(fVar);
            } catch (IllegalArgumentException e7) {
                throw new IOException("Corrupted TAR archive, sparse entry is invalid", e7);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }
}
