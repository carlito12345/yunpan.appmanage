package jg;

import j$.nio.charset.StandardCharsets;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import yh.c0;

/* loaded from: classes.dex */
public final class k extends d {

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f9911c = new byte[1];

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f9912b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(int i10) {
        super(Number.class);
        this.f9912b = i10;
        switch (i10) {
            case 1:
                super(a.class);
                break;
            case 2:
                super(Number.class);
                break;
            case 3:
                super(new Class[0]);
                break;
            case 4:
                super(Number.class);
                break;
            case 5:
                super(Number.class);
                break;
            case 6:
                super(yh.t.class, Number.class);
                break;
            case 7:
                super(yh.t.class, Number.class);
                break;
            default:
                break;
        }
    }

    public static int f(g gVar) throws IOException {
        byte[] bArr = gVar.f9906d;
        if (bArr == null) {
            throw new IOException("Missing LZMA2 properties");
        }
        if (bArr.length < 1) {
            throw new IOException("LZMA2 properties too short");
        }
        byte b10 = bArr[0];
        int i10 = b10 & 255;
        if ((b10 & 192) != 0) {
            throw new IOException("Unsupported LZMA2 property bits");
        }
        if (i10 > 40) {
            throw new IOException("Dictionary larger than 4GiB maximum size");
        }
        if (i10 == 40) {
            return -1;
        }
        return ((b10 & 1) | 2) << ((i10 / 2) + 11);
    }

    public static int g(g gVar) {
        long j10 = 0;
        for (int i10 = 0; i10 < 4; i10 = 1 + i10) {
            j10 |= (gVar.f9906d[r3] & 255) << (i10 * 8);
        }
        return (int) j10;
    }

    public static byte[] h(int i10, byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            byte[] bArr3 = new byte[8];
            for (long j10 = 0; j10 < (1 << i10); j10++) {
                messageDigest.update(bArr2);
                messageDigest.update(bArr);
                messageDigest.update(bArr3);
                for (int i11 = 0; i11 < 8; i11++) {
                    byte b10 = (byte) (bArr3[i11] + 1);
                    bArr3[i11] = b10;
                    if (b10 != 0) {
                        break;
                    }
                }
            }
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e7) {
            throw new IllegalStateException("SHA-256 is unsupported by your Java implementation", e7);
        }
    }

    public static byte[] i(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        ByteBuffer byteBufferEncode = StandardCharsets.UTF_16LE.encode(CharBuffer.wrap(cArr));
        if (byteBufferEncode.hasArray()) {
            return byteBufferEncode.array();
        }
        byte[] bArr = new byte[byteBufferEncode.remaining()];
        byteBufferEncode.get(bArr);
        return bArr;
    }

    @Override // jg.d
    public final InputStream a(String str, InputStream inputStream, long j10, g gVar, byte[] bArr, int i10) throws IOException {
        switch (this.f9912b) {
            case 0:
                Inflater inflater = new Inflater(true);
                return new fh.c(new InflaterInputStream(new SequenceInputStream(inputStream, new ByteArrayInputStream(f9911c)), inflater), inflater);
            case 1:
                return new b(inputStream, gVar, str, bArr);
            case 2:
                return new ng.b(inputStream);
            case 3:
                return inputStream;
            case 4:
                return new og.a(inputStream);
            case 5:
                byte[] bArr2 = gVar.f9906d;
                int i11 = zg.a.b(bArr2) ? 1 : (bArr2[0] & 255) + 1;
                if (i11 < 1 || i11 > 256) {
                    throw new c0(da.b.a(i11, "Delta distance must be in the range [1, 256]: "));
                }
                yh.b bVar = yh.b.f19214a;
                return new yh.j(inputStream, i11);
            case 6:
                try {
                    int iF = f(gVar);
                    int iA = (yh.s.A(iF) / 1024) + 104;
                    if (iA <= i10) {
                        return new yh.s(inputStream, iF, yh.b.f19214a);
                    }
                    throw new hg.b(iA, i10);
                } catch (IllegalArgumentException e7) {
                    throw new IOException(e7);
                }
            default:
                byte[] bArr3 = gVar.f9906d;
                if (bArr3 == null) {
                    throw new IOException("Missing LZMA properties");
                }
                if (bArr3.length < 1) {
                    throw new IOException("LZMA properties too short");
                }
                byte b10 = bArr3[0];
                int iG = g(gVar);
                if (iG > 2147483632) {
                    throw new IOException(da.b.c("Dictionary larger than 4GiB maximum size used in ", str));
                }
                int i12 = yh.v.f19287k;
                if (iG < 0 || iG > 2147483632) {
                    throw new c0("LZMA dictionary is too big for this implementation");
                }
                int i13 = b10 & 255;
                if (i13 > 224) {
                    throw new yh.h("Invalid LZMA properties byte");
                }
                int i14 = i13 % 45;
                int i15 = i14 / 9;
                int i16 = i14 - (i15 * 9);
                if (i16 < 0 || i16 > 8 || i15 < 0 || i15 > 4) {
                    throw new IllegalArgumentException("Invalid lc or lp");
                }
                int iR = ((1536 << (i16 + i15)) / 1024) + (yh.v.r(iG) / 1024) + 10;
                if (iR > i10) {
                    throw new hg.b(iR, i10);
                }
                yh.v vVar = new yh.v(inputStream, j10, b10, iG);
                vVar.f19294g = true;
                return vVar;
        }
    }

    @Override // jg.d
    public OutputStream b(OutputStream outputStream, Object obj) throws IOException {
        yh.t tVar;
        yh.t tVar2;
        switch (this.f9912b) {
            case 0:
                Deflater deflater = new Deflater(d.e(9, obj), true);
                return new j(new DeflaterOutputStream(outputStream, deflater), deflater);
            case 1:
                return new c((a) obj, outputStream);
            case 2:
                return new ng.d(outputStream, d.e(9, obj));
            case 3:
                return outputStream;
            case 4:
            default:
                return super.b(outputStream, obj);
            case 5:
                try {
                    yh.k kVar = new yh.k(d.e(1, obj));
                    yh.q qVar = new yh.q(outputStream);
                    yh.b bVar = yh.b.f19214a;
                    return new yh.l(qVar, kVar);
                } catch (c0 e7) {
                    throw new IOException(e7.getMessage());
                }
            case 6:
                if (obj instanceof yh.t) {
                    tVar = (yh.t) obj;
                } else {
                    yh.t tVar3 = new yh.t();
                    tVar3.c(d.e(8388608, obj));
                    tVar = tVar3;
                }
                yh.q qVar2 = new yh.q(outputStream);
                tVar.getClass();
                return tVar.b(qVar2, yh.b.f19214a);
            case 7:
                if (obj instanceof yh.t) {
                    tVar2 = (yh.t) obj;
                } else {
                    yh.t tVar4 = new yh.t();
                    tVar4.c(d.e(8388608, obj));
                    tVar2 = tVar4;
                }
                return new rg.c((yh.p) new yh.w(outputStream, tVar2));
        }
    }

    @Override // jg.d
    public byte[] c(Object obj) {
        yh.t tVar;
        int i10 = 0;
        switch (this.f9912b) {
            case 1:
                a aVar = (a) obj;
                byte[] bArr = aVar.f9874a;
                int length = bArr.length + 2;
                byte[] bArr2 = aVar.f9875b;
                byte[] bArr3 = new byte[length + bArr2.length];
                bArr3[0] = (byte) ((bArr.length == 0 ? 0 : 128) | aVar.f9876c | (bArr2.length == 0 ? 0 : 64));
                if (bArr.length != 0 || bArr2.length != 0) {
                    bArr3[1] = (byte) (((bArr.length == 0 ? 0 : bArr.length - 1) << 4) | (bArr2.length == 0 ? 0 : bArr2.length - 1));
                    System.arraycopy(bArr, 0, bArr3, 2, bArr.length);
                    System.arraycopy(bArr2, 0, bArr3, aVar.f9874a.length + 2, bArr2.length);
                }
                return bArr3;
            case 2:
            case 3:
            case 4:
            default:
                return super.c(obj);
            case 5:
                return new byte[]{(byte) (d.e(1, obj) - 1)};
            case 6:
                int iE = obj instanceof yh.t ? ((yh.t) obj).f19266a : d.e(8388608, obj);
                int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(iE);
                return new byte[]{(byte) (((19 - iNumberOfLeadingZeros) * 2) + ((iE >>> (30 - iNumberOfLeadingZeros)) - 2))};
            case 7:
                if (obj instanceof yh.t) {
                    tVar = (yh.t) obj;
                } else {
                    yh.t tVar2 = new yh.t();
                    tVar2.c(d.e(8388608, obj));
                    tVar = tVar2;
                }
                byte b10 = (byte) ((((tVar.f19269d * 5) + tVar.f19268c) * 9) + tVar.f19267b);
                int i11 = tVar.f19266a;
                byte[] bArr4 = new byte[5];
                bArr4[0] = b10;
                long j10 = i11;
                while (i10 < 4) {
                    i10++;
                    bArr4[i10] = (byte) (255 & j10);
                    j10 >>= 8;
                }
                return bArr4;
        }
    }

    @Override // jg.d
    public Object d(g gVar) throws IOException {
        switch (this.f9912b) {
            case 5:
                byte[] bArr = gVar.f9906d;
                return Integer.valueOf(zg.a.b(bArr) ? 1 : 1 + (bArr[0] & 255));
            case 6:
                return Integer.valueOf(f(gVar));
            case 7:
                byte[] bArr2 = gVar.f9906d;
                if (bArr2 == null) {
                    throw new IOException("Missing LZMA properties");
                }
                if (bArr2.length < 1) {
                    throw new IOException("LZMA properties too short");
                }
                int i10 = bArr2[0] & 255;
                int i11 = i10 / 45;
                int i12 = i10 - (i11 * 45);
                int i13 = i12 / 9;
                int i14 = i12 - (i13 * 9);
                yh.t tVar = new yh.t();
                if (i11 < 0 || i11 > 4) {
                    throw new c0(da.b.a(i11, "pb must not exceed 4: "));
                }
                tVar.f19269d = i11;
                if (i14 < 0 || i13 < 0 || i14 > 4 || i13 > 4 || i14 + i13 > 4) {
                    throw new c0(android.support.v4.media.session.a.o("lc + lp must not exceed 4: ", i14, i13, " + "));
                }
                tVar.f19267b = i14;
                tVar.f19268c = i13;
                tVar.c(g(gVar));
                return tVar;
            default:
                return super.d(gVar);
        }
    }
}
