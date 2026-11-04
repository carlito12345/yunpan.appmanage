package o5;

import a2.k1;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class m implements f5.e {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f11602a = "Exif\u0000\u0000".getBytes(Charset.forName(HTTP.UTF_8));

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f11603b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    public static int e(l lVar, k1 k1Var) {
        int iC;
        short sH;
        try {
            int iC2 = lVar.c();
            if ((iC2 & 65496) != 65496 && iC2 != 19789 && iC2 != 18761) {
                return -1;
            }
            while (lVar.h() == 255 && (sH = lVar.h()) != 218 && sH != 217) {
                iC = lVar.c() - 2;
                if (sH == 225) {
                    break;
                }
                long j10 = iC;
                if (lVar.skip(j10) != j10) {
                    break;
                }
            }
            iC = -1;
            if (iC == -1) {
                return -1;
            }
            byte[] bArr = (byte[]) k1Var.e(byte[].class, iC);
            try {
                return g(lVar, bArr, iC);
            } finally {
                k1Var.i(bArr);
            }
        } catch (k unused) {
            return -1;
        }
    }

    public static ImageHeaderParser$ImageType f(l lVar) {
        try {
            int iC = lVar.c();
            if (iC == 65496) {
                return ImageHeaderParser$ImageType.JPEG;
            }
            int iH = (iC << 8) | lVar.h();
            if (iH == 4671814) {
                return ImageHeaderParser$ImageType.GIF;
            }
            int iH2 = (iH << 8) | lVar.h();
            if (iH2 == -1991225785) {
                lVar.skip(21L);
                try {
                    return lVar.h() >= 3 ? ImageHeaderParser$ImageType.PNG_A : ImageHeaderParser$ImageType.PNG;
                } catch (k unused) {
                    return ImageHeaderParser$ImageType.PNG;
                }
            }
            if (iH2 == 1380533830) {
                lVar.skip(4L);
                if (((lVar.c() << 16) | lVar.c()) != 1464156752) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int iC2 = (lVar.c() << 16) | lVar.c();
                if ((iC2 & (-256)) != 1448097792) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int i10 = iC2 & 255;
                if (i10 == 88) {
                    lVar.skip(4L);
                    short sH = lVar.h();
                    return (sH & 2) != 0 ? ImageHeaderParser$ImageType.ANIMATED_WEBP : (sH & 16) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
                }
                if (i10 != 76) {
                    return ImageHeaderParser$ImageType.WEBP;
                }
                lVar.skip(4L);
                return (lVar.h() & 8) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
            }
            if (((lVar.c() << 16) | lVar.c()) != 1718909296) {
                return ImageHeaderParser$ImageType.UNKNOWN;
            }
            int iC3 = (lVar.c() << 16) | lVar.c();
            if (iC3 == 1635150195) {
                return ImageHeaderParser$ImageType.ANIMATED_AVIF;
            }
            int i11 = 0;
            boolean z = iC3 == 1635150182;
            lVar.skip(4L);
            int i12 = iH2 - 16;
            if (i12 % 4 == 0) {
                while (i11 < 5 && i12 > 0) {
                    int iC4 = (lVar.c() << 16) | lVar.c();
                    if (iC4 == 1635150195) {
                        return ImageHeaderParser$ImageType.ANIMATED_AVIF;
                    }
                    if (iC4 == 1635150182) {
                        z = true;
                    }
                    i11++;
                    i12 -= 4;
                }
            }
            return z ? ImageHeaderParser$ImageType.AVIF : ImageHeaderParser$ImageType.UNKNOWN;
        } catch (k unused2) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
    }

    public static int g(l lVar, byte[] bArr, int i10) {
        short sE;
        int i11;
        int i12;
        if (lVar.n(i10, bArr) != i10) {
            return -1;
        }
        byte[] bArr2 = f11602a;
        boolean z = bArr != null && i10 > bArr2.length;
        if (z) {
            int i13 = 0;
            while (true) {
                if (i13 >= bArr2.length) {
                    break;
                }
                if (bArr[i13] != bArr2[i13]) {
                    z = false;
                    break;
                }
                i13++;
            }
        }
        if (!z) {
            return -1;
        }
        hf.b bVar = new hf.b(bArr, i10);
        short sE2 = bVar.e(6);
        ByteOrder byteOrder = sE2 != 18761 ? sE2 != 19789 ? ByteOrder.BIG_ENDIAN : ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN;
        ByteBuffer byteBuffer = bVar.f8202b;
        byteBuffer.order(byteOrder);
        int i14 = byteBuffer.remaining() - 10 >= 4 ? byteBuffer.getInt(10) : -1;
        short sE3 = bVar.e(i14 + 6);
        for (int i15 = 0; i15 < sE3; i15++) {
            int i16 = (i15 * 12) + i14 + 8;
            if (bVar.e(i16) == 274 && (sE = bVar.e(i16 + 2)) >= 1 && sE <= 12) {
                int i17 = i16 + 4;
                int i18 = byteBuffer.remaining() - i17 >= 4 ? byteBuffer.getInt(i17) : -1;
                if (i18 >= 0 && (i11 = i18 + f11603b[sE]) <= 4 && (i12 = i16 + 8) >= 0 && i12 <= byteBuffer.remaining() && i11 >= 0 && i11 + i12 <= byteBuffer.remaining()) {
                    return bVar.e(i12);
                }
            }
        }
        return -1;
    }

    @Override // f5.e
    public final ImageHeaderParser$ImageType a(ByteBuffer byteBuffer) {
        a6.h.c(byteBuffer, "Argument must not be null");
        return f(new hf.b(byteBuffer, 1));
    }

    @Override // f5.e
    public final int b(ByteBuffer byteBuffer, k1 k1Var) {
        hf.b bVar = new hf.b(byteBuffer, 1);
        a6.h.c(k1Var, "Argument must not be null");
        return e(bVar, k1Var);
    }

    @Override // f5.e
    public final ImageHeaderParser$ImageType c(InputStream inputStream) {
        return f(new l5.y(6, inputStream));
    }

    @Override // f5.e
    public final int d(InputStream inputStream, k1 k1Var) {
        l5.y yVar = new l5.y(6, inputStream);
        a6.h.c(k1Var, "Argument must not be null");
        return e(yVar, k1Var);
    }
}
