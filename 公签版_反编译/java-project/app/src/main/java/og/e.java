package og;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import eb.h;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class e implements Closeable {

    /* renamed from: f, reason: collision with root package name */
    public static final short[] f11787f = {96, 128, 160, 192, 224, 256, 288, 320, 353, 417, 481, 545, 610, 738, 866, 994, 1123, 1379, 1635, 1891, 2148, 2660, 3172, 3684, 4197, 5221, 6245, 7269, 112};

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f11788g = {16, 32, 48, 64, 81, 113, 146, CarSettingID.Recv.IFC_SGW_AVAIL, 275, 403, 532, 788, 1045, 1557, 2070, 3094, 4119, 6167, 8216, 12312, 16409, 24601, 32794, 49178, 65563, 98331, 131100, 196636, 262173, 393245, 524318, 786462};

    /* renamed from: h, reason: collision with root package name */
    public static final int[] f11789h = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f11790i;

    /* renamed from: j, reason: collision with root package name */
    public static final int[] f11791j;

    /* renamed from: a, reason: collision with root package name */
    public boolean f11792a;

    /* renamed from: c, reason: collision with root package name */
    public rg.a f11794c;

    /* renamed from: d, reason: collision with root package name */
    public final InputStream f11795d;

    /* renamed from: e, reason: collision with root package name */
    public final h f11796e = new h();

    /* renamed from: b, reason: collision with root package name */
    public d.b f11793b = new c();

    static {
        int[] iArr = new int[288];
        f11790i = iArr;
        Arrays.fill(iArr, 0, 144, 8);
        Arrays.fill(iArr, 144, 256, 9);
        Arrays.fill(iArr, 256, 280, 7);
        Arrays.fill(iArr, 280, 288, 8);
        int[] iArr2 = new int[32];
        Arrays.fill(iArr2, 5);
        f11791j = iArr2;
    }

    public e(InputStream inputStream) {
        this.f11794c = new rg.a(inputStream, ByteOrder.LITTLE_ENDIAN);
        this.f11795d = inputStream;
    }

    public static int J(rg.a aVar, a9.a aVar2) {
        while (aVar2 != null && aVar2.f472c == -1) {
            aVar2 = (a9.a) (K(aVar, 1) == 0 ? aVar2.f473d : aVar2.f474e);
        }
        if (aVar2 != null) {
            return aVar2.f472c;
        }
        return -1;
    }

    public static long K(rg.a aVar, int i10) throws IOException {
        long jR = aVar.r(i10);
        if (jR != -1) {
            return jR;
        }
        throw new EOFException("Truncated Deflate64 Stream");
    }

    public static a9.a r(int[] iArr) {
        int[] iArr2 = new int[65];
        int iMax = 0;
        for (int i10 : iArr) {
            if (i10 < 0 || i10 > 64) {
                throw new IllegalArgumentException(g.b.i("Invalid code ", i10, " in literal table"));
            }
            iMax = Math.max(iMax, i10);
            iArr2[i10] = iArr2[i10] + 1;
        }
        int i11 = iMax + 1;
        int[] iArrCopyOf = Arrays.copyOf(iArr2, i11);
        int[] iArr3 = new int[i11];
        int i12 = 0;
        for (int i13 = 0; i13 <= iMax; i13++) {
            i12 = (i12 + iArrCopyOf[i13]) << 1;
            iArr3[i13] = i12;
        }
        a9.a aVar = new a9.a(0, 7);
        for (int i14 = 0; i14 < iArr.length; i14++) {
            int i15 = iArr[i14];
            if (i15 != 0) {
                int i16 = i15 - 1;
                int i17 = iArr3[i16];
                a9.a aVar2 = aVar;
                for (int i18 = i16; i18 >= 0; i18--) {
                    int i19 = (1 << i18) & i17;
                    int i20 = aVar2.f471b;
                    if (i19 == 0) {
                        if (((a9.a) aVar2.f473d) == null && aVar2.f472c == -1) {
                            aVar2.f473d = new a9.a(i20 + 1, 7);
                        }
                        aVar2 = (a9.a) aVar2.f473d;
                    } else {
                        if (((a9.a) aVar2.f474e) == null && aVar2.f472c == -1) {
                            aVar2.f474e = new a9.a(i20 + 1, 7);
                        }
                        aVar2 = (a9.a) aVar2.f474e;
                    }
                    if (aVar2 == null) {
                        throw new IllegalStateException("node doesn't exist in Huffman tree");
                    }
                }
                aVar2.f472c = i14;
                aVar2.f473d = null;
                aVar2.f474e = null;
                iArr3[i16] = iArr3[i16] + 1;
            }
        }
        return aVar;
    }

    public final int A(int i10, int i11, byte[] bArr) {
        int iK;
        long jK;
        int i12 = 2;
        char c7 = 0;
        int i13 = -1;
        int i14 = 1;
        while (true) {
            if (this.f11792a && !this.f11793b.M()) {
                return i13;
            }
            if (this.f11793b.q0() == i14) {
                this.f11792a = K(this.f11794c, i14) == 1;
                int iK2 = (int) K(this.f11794c, i12);
                int i15 = 16;
                if (iK2 == 0) {
                    rg.a aVar = this.f11794c;
                    int i16 = aVar.f13773d % 8;
                    if (i16 > 0) {
                        aVar.A(i16);
                    }
                    long jK2 = K(this.f11794c, 16);
                    if ((65535 & (jK2 ^ 65535)) != K(this.f11794c, 16)) {
                        throw new IllegalStateException("Illegal LEN / NLEN values");
                    }
                    this.f11793b = new d(this, jK2);
                } else if (iK2 == i14) {
                    this.f11793b = new b(this, 4, f11790i, f11791j);
                } else {
                    if (iK2 != i12) {
                        throw new IllegalStateException(da.b.a(iK2, "Unsupported compression: "));
                    }
                    int[] iArr = new int[(int) (K(this.f11794c, 5) + 257)];
                    int[] iArr2 = new int[(int) (K(this.f11794c, 5) + 1)];
                    int[][] iArr3 = new int[i12][];
                    iArr3[c7] = iArr;
                    iArr3[i14] = iArr2;
                    rg.a aVar2 = this.f11794c;
                    int[] iArr4 = iArr3[c7];
                    int[] iArr5 = iArr3[i14];
                    int iK3 = (int) (K(aVar2, 4) + 4);
                    int[] iArr6 = new int[19];
                    for (int i17 = 0; i17 < iK3; i17 += i14) {
                        iArr6[f11789h[i17]] = (int) K(aVar2, 3);
                    }
                    a9.a aVarR = r(iArr6);
                    int length = iArr4.length + iArr5.length;
                    int[] iArr7 = new int[length];
                    int i18 = 0;
                    int i19 = 0;
                    int i20 = -1;
                    while (i18 < length) {
                        if (i19 > 0) {
                            iArr7[i18] = i20;
                            i19 += i13;
                            i18++;
                        } else {
                            int iJ = J(aVar2, aVarR);
                            if (iJ >= i15) {
                                switch (iJ) {
                                    case 16:
                                        iK = (int) (K(aVar2, 2) + 3);
                                        break;
                                    case 17:
                                        jK = K(aVar2, 3) + 3;
                                        iK = (int) jK;
                                        i20 = 0;
                                        break;
                                    case 18:
                                        jK = K(aVar2, 7) + 11;
                                        iK = (int) jK;
                                        i20 = 0;
                                        break;
                                    default:
                                        iK = i19;
                                        break;
                                }
                            } else {
                                iArr7[i18] = iJ;
                                iK = i19;
                                i18++;
                                i20 = iJ;
                            }
                            i19 = iK;
                            i13 = -1;
                            i15 = 16;
                        }
                    }
                    c7 = 0;
                    System.arraycopy(iArr7, 0, iArr4, 0, iArr4.length);
                    System.arraycopy(iArr7, iArr4.length, iArr5, 0, iArr5.length);
                    i14 = 1;
                    this.f11793b = new b(this, 3, iArr3[0], iArr3[1]);
                }
            } else {
                int iF0 = this.f11793b.f0(bArr, i10, i11);
                if (iF0 != 0) {
                    return iF0;
                }
            }
            i12 = 2;
            i13 = -1;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f11793b = new c();
        this.f11794c = null;
    }
}
