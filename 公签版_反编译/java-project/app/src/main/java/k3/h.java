package k3;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.p001os.SocConst;
import i3.i;
import i3.j;
import java.util.ArrayList;
import java.util.List;
import u1.f0;
import u1.q;
import u7.e0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class h implements j {

    /* renamed from: h, reason: collision with root package name */
    public static final byte[] f10122h = {0, 7, 8, 15};

    /* renamed from: i, reason: collision with root package name */
    public static final byte[] f10123i = {0, 119, -120, -1};

    /* renamed from: j, reason: collision with root package name */
    public static final byte[] f10124j = {0, SocConst.Upgrade.FLASH_CMD, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* renamed from: a, reason: collision with root package name */
    public final Paint f10125a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f10126b;

    /* renamed from: c, reason: collision with root package name */
    public final Canvas f10127c;

    /* renamed from: d, reason: collision with root package name */
    public final b f10128d;

    /* renamed from: e, reason: collision with root package name */
    public final a f10129e;

    /* renamed from: f, reason: collision with root package name */
    public final g f10130f;

    /* renamed from: g, reason: collision with root package name */
    public Bitmap f10131g;

    public h(List list) {
        q qVar = new q((byte[]) list.get(0));
        int I = qVar.I();
        int I2 = qVar.I();
        Paint paint = new Paint();
        this.f10125a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f10126b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f10127c = new Canvas();
        this.f10128d = new b(719, 575, 0, 719, 0, 575);
        this.f10129e = new a(0, new int[]{0, -1, -16777216, -8421505}, c(), d());
        this.f10130f = new g(I, I2);
    }

    public static byte[] a(int i10, int i11, j3.f fVar) {
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            bArr[i12] = (byte) fVar.g(i11);
        }
        return bArr;
    }

    public static int[] c() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i10 = 1; i10 < 16; i10++) {
            if (i10 < 8) {
                iArr[i10] = f(255, (i10 & 1) != 0 ? 255 : 0, (i10 & 2) != 0 ? 255 : 0, (i10 & 4) != 0 ? 255 : 0);
            } else {
                iArr[i10] = f(255, (i10 & 1) != 0 ? 127 : 0, (i10 & 2) != 0 ? 127 : 0, (i10 & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    public static int[] d() {
        int i10;
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i11 = 0; i11 < 256; i11++) {
            if (i11 < 8) {
                iArr[i11] = f(63, (i11 & 1) != 0 ? 255 : 0, (i11 & 2) != 0 ? 255 : 0, (i11 & 4) == 0 ? 0 : 255);
            } else {
                int i12 = i11 & 136;
                int i13 = CarSettingID.Recv.BCM_HEAD_LIGHT_DELAY_CFG_ST;
                if (i12 == 0) {
                    int i14 = ((i11 & 1) != 0 ? 85 : 0) + ((i11 & 16) != 0 ? CarSettingID.Recv.BCM_HEAD_LIGHT_DELAY_CFG_ST : 0);
                    int i15 = ((i11 & 2) != 0 ? 85 : 0) + ((i11 & 32) != 0 ? CarSettingID.Recv.BCM_HEAD_LIGHT_DELAY_CFG_ST : 0);
                    i10 = (i11 & 4) == 0 ? 0 : 85;
                    if ((i11 & 64) == 0) {
                        i13 = 0;
                    }
                    iArr[i11] = f(255, i14, i15, i10 + i13);
                } else if (i12 == 8) {
                    int i16 = ((i11 & 1) != 0 ? 85 : 0) + ((i11 & 16) != 0 ? CarSettingID.Recv.BCM_HEAD_LIGHT_DELAY_CFG_ST : 0);
                    int i17 = ((i11 & 2) != 0 ? 85 : 0) + ((i11 & 32) != 0 ? CarSettingID.Recv.BCM_HEAD_LIGHT_DELAY_CFG_ST : 0);
                    i10 = (i11 & 4) == 0 ? 0 : 85;
                    if ((i11 & 64) == 0) {
                        i13 = 0;
                    }
                    iArr[i11] = f(127, i16, i17, i10 + i13);
                } else if (i12 == 128) {
                    iArr[i11] = f(255, ((i11 & 1) != 0 ? 43 : 0) + 127 + ((i11 & 16) != 0 ? 85 : 0), ((i11 & 2) != 0 ? 43 : 0) + 127 + ((i11 & 32) != 0 ? 85 : 0), ((i11 & 4) == 0 ? 0 : 43) + 127 + ((i11 & 64) == 0 ? 0 : 85));
                } else if (i12 == 136) {
                    iArr[i11] = f(255, ((i11 & 1) != 0 ? 43 : 0) + ((i11 & 16) != 0 ? 85 : 0), ((i11 & 2) != 0 ? 43 : 0) + ((i11 & 32) != 0 ? 85 : 0), ((i11 & 4) == 0 ? 0 : 43) + ((i11 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    public static int f(int i10, int i11, int i12, int i13) {
        return (i10 << 24) | (i11 << 16) | (i12 << 8) | i13;
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x01ea A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x021d A[LOOP:3: B:89:0x016c->B:119:0x021d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0144 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0218 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0117 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x014a A[LOOP:2: B:41:0x00aa->B:76:0x014a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x017b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void g(byte[] bArr, int[] iArr, int i10, int i11, int i12, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        int i13;
        boolean z;
        int iG;
        boolean z4;
        int iG2;
        int i14;
        byte[] bArr4;
        boolean z10;
        int i15;
        int iG3;
        int iG4;
        int i16;
        boolean z11;
        int iG5;
        j3.f fVar = new j3.f(bArr, bArr.length);
        int i17 = i11;
        int i18 = i12;
        byte[] bArrA = null;
        byte[] bArrA2 = null;
        byte[] bArrA3 = null;
        while (fVar.b() != 0) {
            int i19 = 8;
            int iG6 = fVar.g(8);
            if (iG6 != 240) {
                int i20 = 3;
                int i21 = 4;
                switch (iG6) {
                    case 16:
                        int i22 = 1;
                        if (i10 == 3) {
                            bArr3 = bArrA == null ? f10123i : bArrA;
                        } else if (i10 == 2) {
                            bArr3 = bArrA3 == null ? f10122h : bArrA3;
                        } else {
                            bArr2 = null;
                            i13 = i17;
                            z = false;
                            while (true) {
                                iG = fVar.g(2);
                                if (iG == 0) {
                                    z4 = z;
                                } else {
                                    if (fVar.f()) {
                                        z4 = z;
                                        iG2 = fVar.g(3) + 3;
                                        iG = fVar.g(2);
                                    } else if (fVar.f()) {
                                        z4 = z;
                                        iG = 0;
                                    } else {
                                        int iG7 = fVar.g(2);
                                        if (iG7 == 0) {
                                            iG = 0;
                                            z4 = true;
                                        } else if (iG7 == i22) {
                                            z4 = z;
                                            iG = 0;
                                            iG2 = 2;
                                        } else if (iG7 == 2) {
                                            z4 = z;
                                            iG2 = fVar.g(4) + 12;
                                            iG = fVar.g(2);
                                        } else if (iG7 != 3) {
                                            z4 = z;
                                            iG = 0;
                                        } else {
                                            z4 = z;
                                            iG2 = fVar.g(8) + 29;
                                            iG = fVar.g(2);
                                        }
                                        iG2 = 0;
                                    }
                                    if (iG2 == 0 || paint == null) {
                                        i14 = i13;
                                    } else {
                                        if (bArr2 != 0) {
                                            iG = bArr2[iG];
                                        }
                                        paint.setColor(iArr[iG]);
                                        i14 = i13;
                                        canvas.drawRect(i13, i18, i13 + iG2, i18 + 1, paint);
                                    }
                                    i13 = i14 + iG2;
                                    if (!z4) {
                                        fVar.c();
                                        break;
                                    } else {
                                        z = z4;
                                        i22 = 1;
                                    }
                                }
                                iG2 = 1;
                                if (iG2 == 0) {
                                    i14 = i13;
                                    i13 = i14 + iG2;
                                    if (!z4) {
                                    }
                                }
                            }
                        }
                        bArr2 = bArr3;
                        i13 = i17;
                        z = false;
                        while (true) {
                            iG = fVar.g(2);
                            if (iG == 0) {
                            }
                            iG2 = 1;
                            if (iG2 == 0) {
                            }
                            z = z4;
                            i22 = 1;
                        }
                    case 17:
                        if (i10 == 3) {
                            bArr4 = bArrA2 == null ? f10124j : bArrA2;
                        } else {
                            bArr4 = null;
                        }
                        i13 = i17;
                        boolean z12 = false;
                        while (true) {
                            int iG8 = fVar.g(i21);
                            if (iG8 != 0) {
                                z10 = z12;
                            } else if (fVar.f()) {
                                if (fVar.f()) {
                                    int iG9 = fVar.g(2);
                                    if (iG9 == 0) {
                                        z10 = z12;
                                        iG8 = 0;
                                    } else if (iG9 == 1) {
                                        z10 = z12;
                                        iG8 = 0;
                                        i15 = 2;
                                        if (i15 != 0) {
                                        }
                                    } else if (iG9 == 2) {
                                        iG3 = fVar.g(i21) + 9;
                                        iG4 = fVar.g(i21);
                                    } else if (iG9 != i20) {
                                        z10 = z12;
                                        iG8 = 0;
                                        i15 = 0;
                                        if (i15 != 0) {
                                        }
                                    } else {
                                        iG3 = fVar.g(i19) + 25;
                                        iG4 = fVar.g(i21);
                                    }
                                } else {
                                    iG3 = fVar.g(2) + i21;
                                    iG4 = fVar.g(i21);
                                }
                                z10 = z12;
                                i15 = iG3;
                                iG8 = iG4;
                                if (i15 != 0) {
                                }
                            } else {
                                int iG10 = fVar.g(i20);
                                if (iG10 != 0) {
                                    z10 = z12;
                                    i15 = iG10 + 2;
                                    iG8 = 0;
                                    if (i15 != 0 || paint == null) {
                                        i16 = i13;
                                    } else {
                                        if (bArr4 != 0) {
                                            iG8 = bArr4[iG8];
                                        }
                                        paint.setColor(iArr[iG8]);
                                        i16 = i13;
                                        canvas.drawRect(i13, i18, i13 + i15, i18 + 1, paint);
                                    }
                                    i13 = i16 + i15;
                                    if (!z10) {
                                        fVar.c();
                                        break;
                                    } else {
                                        z12 = z10;
                                        i21 = 4;
                                        i20 = 3;
                                        i19 = 8;
                                    }
                                } else {
                                    iG8 = 0;
                                    z10 = true;
                                    i15 = 0;
                                    if (i15 != 0) {
                                        i16 = i13;
                                        i13 = i16 + i15;
                                        if (!z10) {
                                        }
                                    }
                                }
                            }
                            i15 = 1;
                            if (i15 != 0) {
                            }
                        }
                    case 18:
                        int i23 = i17;
                        boolean z13 = false;
                        while (true) {
                            int iG11 = fVar.g(8);
                            if (iG11 != 0) {
                                z11 = z13;
                                iG5 = 1;
                            } else if (fVar.f()) {
                                z11 = z13;
                                iG5 = fVar.g(7);
                                iG11 = fVar.g(8);
                            } else {
                                int iG12 = fVar.g(7);
                                if (iG12 != 0) {
                                    z11 = z13;
                                    iG5 = iG12;
                                    iG11 = 0;
                                } else {
                                    iG11 = 0;
                                    z11 = true;
                                    iG5 = 0;
                                }
                            }
                            if (iG5 != 0 && paint != null) {
                                paint.setColor(iArr[iG11]);
                                canvas.drawRect(i23, i18, i23 + iG5, i18 + 1, paint);
                            }
                            i23 += iG5;
                            if (z11) {
                                i17 = i23;
                                continue;
                            } else {
                                z13 = z11;
                            }
                        }
                    default:
                        switch (iG6) {
                            case 32:
                                bArrA3 = a(4, 4, fVar);
                                break;
                            case 33:
                                bArrA = a(4, 8, fVar);
                                break;
                            case 34:
                                bArrA2 = a(16, 8, fVar);
                                break;
                            default:
                                continue;
                        }
                }
                i17 = i13;
            } else {
                i18 += 2;
                i17 = i11;
            }
        }
    }

    public static a h(j3.f fVar, int i10) {
        int iG;
        int i11;
        int iG2;
        int iG3;
        int iG4;
        int i12 = 8;
        int iG5 = fVar.g(8);
        fVar.o(8);
        int i13 = 2;
        int i14 = i10 - 2;
        int[] iArr = {0, -1, -16777216, -8421505};
        int[] iArrC = c();
        int[] iArrD = d();
        while (i14 > 0) {
            int iG6 = fVar.g(i12);
            int iG7 = fVar.g(i12);
            int[] iArr2 = (iG7 & 128) != 0 ? iArr : (iG7 & 64) != 0 ? iArrC : iArrD;
            if ((iG7 & 1) != 0) {
                iG3 = fVar.g(i12);
                iG4 = fVar.g(i12);
                iG = fVar.g(i12);
                iG2 = fVar.g(i12);
                i11 = i14 - 6;
            } else {
                int iG8 = fVar.g(6) << i13;
                int iG9 = fVar.g(4) << 4;
                iG = fVar.g(4) << 4;
                i11 = i14 - 4;
                iG2 = fVar.g(i13) << 6;
                iG3 = iG8;
                iG4 = iG9;
            }
            if (iG3 == 0) {
                iG4 = 0;
                iG = 0;
                iG2 = 255;
            }
            double d10 = iG3;
            double d11 = iG4 - 128;
            Double.isNaN(d11);
            Double.isNaN(d10);
            double d12 = iG - 128;
            Double.isNaN(d12);
            Double.isNaN(d10);
            Double.isNaN(d11);
            Double.isNaN(d12);
            Double.isNaN(d10);
            iArr2[iG6] = f((byte) (255 - (iG2 & 255)), f0.g((int) ((1.402d * d11) + d10), 0, 255), f0.g((int) ((d10 - (0.34414d * d12)) - (d11 * 0.71414d)), 0, 255), f0.g((int) ((d12 * 1.772d) + d10), 0, 255));
            i14 = i11;
            iG5 = iG5;
            iArrD = iArrD;
            i12 = 8;
            i13 = 2;
        }
        return new a(iG5, iArr, iArrC, iArrD);
    }

    public static c i(j3.f fVar) {
        byte[] bArr;
        int iG = fVar.g(16);
        fVar.o(4);
        int iG2 = fVar.g(2);
        boolean zF = fVar.f();
        fVar.o(1);
        byte[] bArr2 = f0.f15207b;
        if (iG2 != 1) {
            if (iG2 == 0) {
                int iG3 = fVar.g(16);
                int iG4 = fVar.g(16);
                if (iG3 > 0) {
                    bArr2 = new byte[iG3];
                    fVar.j(bArr2, iG3);
                }
                if (iG4 > 0) {
                    bArr = new byte[iG4];
                    fVar.j(bArr, iG4);
                }
            }
            return new c(bArr2, bArr, iG, zF);
        }
        fVar.o(fVar.g(8) * 16);
        bArr = bArr2;
        return new c(bArr2, bArr, iG, zF);
    }

    @Override // i3.j
    public final void b(byte[] bArr, int i10, int i11, i iVar, u1.f fVar) {
        g gVar;
        i3.a aVar;
        int i12;
        b bVar;
        ArrayList arrayList;
        int i13;
        g gVar2;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        e eVar;
        e eVar2;
        int i19;
        int iG;
        int i20;
        int i21;
        int i22 = 8;
        j3.f fVar2 = new j3.f(bArr, i10 + i11);
        fVar2.m(i10);
        while (true) {
            int iB = fVar2.b();
            gVar = this.f10130f;
            if (iB >= 48 && fVar2.g(i22) == 15) {
                int iG2 = fVar2.g(i22);
                int i23 = 16;
                int iG3 = fVar2.g(16);
                int iG4 = fVar2.g(16);
                int iD = fVar2.d() + iG4;
                if (iG4 * 8 > fVar2.b()) {
                    u1.a.p("Data field length exceeds limit");
                    fVar2.o(fVar2.b());
                } else {
                    switch (iG2) {
                        case 16:
                            if (iG3 == gVar.f10113a) {
                                a0.h hVar = gVar.f10121i;
                                fVar2.g(i22);
                                int iG5 = fVar2.g(4);
                                int iG6 = fVar2.g(2);
                                fVar2.o(2);
                                int i24 = iG4 - 2;
                                SparseArray sparseArray = new SparseArray();
                                while (i24 > 0) {
                                    int iG7 = fVar2.g(i22);
                                    fVar2.o(i22);
                                    i24 -= 6;
                                    sparseArray.put(iG7, new d(fVar2.g(16), fVar2.g(16)));
                                    i22 = 8;
                                }
                                a0.h hVar2 = new a0.h(iG5, iG6, sparseArray);
                                if (iG6 == 0) {
                                    if (hVar != null && hVar.f28b != iG5) {
                                        gVar.f10121i = hVar2;
                                        break;
                                    }
                                } else {
                                    gVar.f10121i = hVar2;
                                    gVar.f10115c.clear();
                                    gVar.f10116d.clear();
                                    gVar.f10117e.clear();
                                    break;
                                }
                            }
                            break;
                        case 17:
                            a0.h hVar3 = gVar.f10121i;
                            if (iG3 == gVar.f10113a && hVar3 != null) {
                                int iG8 = fVar2.g(i22);
                                fVar2.o(4);
                                boolean zF = fVar2.f();
                                fVar2.o(3);
                                int iG9 = fVar2.g(16);
                                int iG10 = fVar2.g(16);
                                fVar2.g(3);
                                int iG11 = fVar2.g(3);
                                fVar2.o(2);
                                int iG12 = fVar2.g(i22);
                                int iG13 = fVar2.g(i22);
                                int iG14 = fVar2.g(4);
                                int iG15 = fVar2.g(2);
                                fVar2.o(2);
                                int i25 = iG4 - 10;
                                SparseArray sparseArray2 = new SparseArray();
                                while (i25 > 0) {
                                    int iG16 = fVar2.g(i23);
                                    int iG17 = fVar2.g(2);
                                    fVar2.g(2);
                                    int iG18 = fVar2.g(12);
                                    fVar2.o(4);
                                    int iG19 = fVar2.g(12);
                                    int i26 = i25 - 6;
                                    if (iG17 == 1 || iG17 == 2) {
                                        fVar2.g(i22);
                                        fVar2.g(i22);
                                        i25 -= 8;
                                    } else {
                                        i25 = i26;
                                    }
                                    sparseArray2.put(iG16, new f(iG18, iG19));
                                    i23 = 16;
                                }
                                e eVar3 = new e(iG8, zF, iG9, iG10, iG11, iG12, iG13, iG14, iG15, sparseArray2);
                                SparseArray sparseArray3 = gVar.f10115c;
                                if (hVar3.f29c == 0 && (eVar2 = (e) sparseArray3.get(iG8)) != null) {
                                    int i27 = 0;
                                    while (true) {
                                        SparseArray sparseArray4 = eVar2.f10110j;
                                        if (i27 < sparseArray4.size()) {
                                            eVar3.f10110j.put(sparseArray4.keyAt(i27), (f) sparseArray4.valueAt(i27));
                                            i27++;
                                        }
                                    }
                                }
                                sparseArray3.put(eVar3.f10101a, eVar3);
                                break;
                            }
                            break;
                        case 18:
                            if (iG3 != gVar.f10113a) {
                                if (iG3 == gVar.f10114b) {
                                    a aVarH = h(fVar2, iG4);
                                    gVar.f10118f.put(aVarH.f10085a, aVarH);
                                    break;
                                }
                            } else {
                                a aVarH2 = h(fVar2, iG4);
                                gVar.f10116d.put(aVarH2.f10085a, aVarH2);
                                break;
                            }
                            break;
                        case 19:
                            if (iG3 != gVar.f10113a) {
                                if (iG3 == gVar.f10114b) {
                                    c cVarI = i(fVar2);
                                    gVar.f10119g.put(cVarI.f10095a, cVarI);
                                    break;
                                }
                            } else {
                                c cVarI2 = i(fVar2);
                                gVar.f10117e.put(cVarI2.f10095a, cVarI2);
                                break;
                            }
                            break;
                        case 20:
                            if (iG3 == gVar.f10113a) {
                                fVar2.o(4);
                                boolean zF2 = fVar2.f();
                                fVar2.o(3);
                                int iG20 = fVar2.g(16);
                                int iG21 = fVar2.g(16);
                                if (zF2) {
                                    int iG22 = fVar2.g(16);
                                    int iG23 = fVar2.g(16);
                                    int iG24 = fVar2.g(16);
                                    i19 = iG23;
                                    iG = fVar2.g(16);
                                    i21 = iG24;
                                    i20 = iG22;
                                } else {
                                    i19 = iG20;
                                    iG = iG21;
                                    i20 = 0;
                                    i21 = 0;
                                }
                                gVar.f10120h = new b(iG20, iG21, i20, i19, i21, iG);
                                break;
                            }
                            break;
                    }
                    fVar2.p(iD - fVar2.d());
                }
                i22 = 8;
            }
        }
        a0.h hVar4 = gVar.f10121i;
        if (hVar4 == null) {
            e0 e0Var = g0.f15471b;
            aVar = new i3.a(-9223372036854775807L, -9223372036854775807L, y0.f15549e);
        } else {
            b bVar2 = gVar.f10120h;
            if (bVar2 == null) {
                bVar2 = this.f10128d;
            }
            Bitmap bitmap = this.f10131g;
            Canvas canvas = this.f10127c;
            if (bitmap == null || bVar2.f10089a + 1 != bitmap.getWidth() || bVar2.f10090b + 1 != this.f10131g.getHeight()) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bVar2.f10089a + 1, bVar2.f10090b + 1, Bitmap.Config.ARGB_8888);
                this.f10131g = bitmapCreateBitmap;
                canvas.setBitmap(bitmapCreateBitmap);
            }
            ArrayList arrayList2 = new ArrayList();
            int i28 = 0;
            while (true) {
                SparseArray sparseArray5 = (SparseArray) hVar4.f30d;
                if (i28 < sparseArray5.size()) {
                    canvas.save();
                    d dVar = (d) sparseArray5.valueAt(i28);
                    e eVar4 = (e) gVar.f10115c.get(sparseArray5.keyAt(i28));
                    int i29 = dVar.f10099a + bVar2.f10091c;
                    int i30 = dVar.f10100b + bVar2.f10093e;
                    int iMin = Math.min(eVar4.f10103c + i29, bVar2.f10092d);
                    int i31 = eVar4.f10104d;
                    int i32 = i30 + i31;
                    canvas.clipRect(i29, i30, iMin, Math.min(i32, bVar2.f10094f));
                    SparseArray sparseArray6 = gVar.f10116d;
                    int i33 = eVar4.f10106f;
                    a aVar2 = (a) sparseArray6.get(i33);
                    if (aVar2 == null && (aVar2 = (a) gVar.f10118f.get(i33)) == null) {
                        aVar2 = this.f10129e;
                    }
                    int i34 = 0;
                    while (true) {
                        SparseArray sparseArray7 = eVar4.f10110j;
                        if (i34 < sparseArray7.size()) {
                            int iKeyAt = sparseArray7.keyAt(i34);
                            f fVar3 = (f) sparseArray7.valueAt(i34);
                            a0.h hVar5 = hVar4;
                            c cVar = (c) gVar.f10117e.get(iKeyAt);
                            if (cVar == null) {
                                cVar = (c) gVar.f10119g.get(iKeyAt);
                            }
                            if (cVar != null) {
                                Paint paint = cVar.f10096b ? null : this.f10125a;
                                gVar2 = gVar;
                                int i35 = fVar3.f10111a + i29;
                                int i36 = fVar3.f10112b + i30;
                                i13 = i28;
                                int i37 = eVar4.f10105e;
                                int i38 = i34;
                                int[] iArr = i37 == 3 ? aVar2.f10088d : i37 == 2 ? aVar2.f10087c : aVar2.f10086b;
                                i14 = i38;
                                arrayList = arrayList2;
                                bVar = bVar2;
                                i16 = i31;
                                i15 = i32;
                                i18 = i29;
                                i17 = i30;
                                eVar = eVar4;
                                Paint paint2 = paint;
                                g(cVar.f10097c, iArr, i37, i35, i36, paint2, canvas);
                                g(cVar.f10098d, iArr, i37, i35, i36 + 1, paint2, canvas);
                            } else {
                                bVar = bVar2;
                                arrayList = arrayList2;
                                i13 = i28;
                                gVar2 = gVar;
                                i14 = i34;
                                i15 = i32;
                                i16 = i31;
                                i17 = i30;
                                i18 = i29;
                                eVar = eVar4;
                            }
                            i34 = i14 + 1;
                            eVar4 = eVar;
                            i29 = i18;
                            hVar4 = hVar5;
                            gVar = gVar2;
                            i28 = i13;
                            bVar2 = bVar;
                            i31 = i16;
                            i32 = i15;
                            i30 = i17;
                            arrayList2 = arrayList;
                        } else {
                            a0.h hVar6 = hVar4;
                            b bVar3 = bVar2;
                            ArrayList arrayList3 = arrayList2;
                            int i39 = i28;
                            g gVar3 = gVar;
                            int i40 = i32;
                            int i41 = i31;
                            int i42 = i30;
                            int i43 = i29;
                            e eVar5 = eVar4;
                            boolean z = eVar5.f10102b;
                            int i44 = eVar5.f10103c;
                            if (z) {
                                int i45 = eVar5.f10105e;
                                int i46 = i45 == 3 ? aVar2.f10088d[eVar5.f10107g] : i45 == 2 ? aVar2.f10087c[eVar5.f10108h] : aVar2.f10086b[eVar5.f10109i];
                                Paint paint3 = this.f10126b;
                                paint3.setColor(i46);
                                i12 = i42;
                                canvas.drawRect(i43, i12, i43 + i44, i40, paint3);
                            } else {
                                i12 = i42;
                            }
                            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.f10131g, i43, i12, i44, i41);
                            float f10 = bVar3.f10089a;
                            float f11 = bVar3.f10090b;
                            arrayList3.add(new t1.b(null, null, null, bitmapCreateBitmap2, i12 / f11, 0, 0, i43 / f10, 0, Integer.MIN_VALUE, -3.4028235E38f, i44 / f10, i41 / f11, false, -16777216, Integer.MIN_VALUE, 0.0f, 0));
                            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                            canvas.restore();
                            i28 = i39 + 1;
                            hVar4 = hVar6;
                            gVar = gVar3;
                            arrayList2 = arrayList3;
                            bVar2 = bVar3;
                        }
                    }
                } else {
                    aVar = new i3.a(-9223372036854775807L, -9223372036854775807L, arrayList2);
                }
            }
        }
        fVar.accept(aVar);
    }

    @Override // i3.j
    public final /* synthetic */ i3.d e(int i10, int i11, byte[] bArr) {
        return g.b.a(this, bArr, i11);
    }

    @Override // i3.j
    public final void reset() {
        g gVar = this.f10130f;
        gVar.f10115c.clear();
        gVar.f10116d.clear();
        gVar.f10117e.clear();
        gVar.f10118f.clear();
        gVar.f10119g.clear();
        gVar.f10120h = null;
        gVar.f10121i = null;
    }
}
