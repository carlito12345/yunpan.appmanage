package di;

import androidx.room.s;
import com.bumptech.glide.d;
import com.hsae.autosdk.source.SourceConst;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f4673a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4674b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4675c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4676d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f4677e;

    /* renamed from: f, reason: collision with root package name */
    public final int f4678f;

    /* renamed from: g, reason: collision with root package name */
    public int f4679g;

    /* renamed from: h, reason: collision with root package name */
    public int f4680h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f4681i;

    /* renamed from: j, reason: collision with root package name */
    public int f4682j;

    /* renamed from: k, reason: collision with root package name */
    public int f4683k;
    public final /* synthetic */ int l;

    /* renamed from: m, reason: collision with root package name */
    public final b f4684m;

    /* renamed from: n, reason: collision with root package name */
    public final int[] f4685n;

    /* renamed from: o, reason: collision with root package name */
    public final s f4686o;

    /* renamed from: p, reason: collision with root package name */
    public final int f4687p;

    /* renamed from: q, reason: collision with root package name */
    public final int f4688q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public int f4689s;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(int i10, int i11, int i12, int i13, int i14, yh.b bVar, int i15) {
        this(i10, i11, i12, i13, bVar);
        this.l = i15;
        switch (i15) {
            case 1:
                this(i10, i11, i12, i13, bVar);
                this.r = -1;
                this.f4684m = new b(i10, bVar);
                int i16 = i10 + 1;
                this.f4688q = i16;
                this.f4685n = bVar.b(i16, false);
                this.f4689s = i16;
                this.f4686o = new s(i13 - 1, 1);
                this.f4687p = i14 <= 0 ? (i13 / 4) + 4 : i14;
                break;
            default:
                this.r = -1;
                int i17 = i10 + 1;
                this.f4688q = i17;
                this.f4689s = i17;
                this.f4684m = new b(i10, bVar);
                this.f4685n = bVar.b(i17 * 2, false);
                this.f4686o = new s(i13 - 1, 1);
                this.f4687p = i14 <= 0 ? (i13 / 2) + 16 : i14;
                break;
        }
    }

    public static void g(int i10, int i11, int[] iArr) {
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = iArr[i12];
            if (i13 <= i11) {
                iArr[i12] = 0;
            } else {
                iArr[i12] = i13 - i11;
            }
        }
    }

    public final int a(int i10, int i11, byte[] bArr) {
        int i12 = this.f4679g;
        int i13 = this.f4678f;
        int i14 = this.f4674b;
        int i15 = i13 - i14;
        byte[] bArr2 = this.f4677e;
        if (i12 >= i15) {
            int i16 = ((i12 + 1) - this.f4673a) & (-16);
            System.arraycopy(bArr2, i16, bArr2, 0, this.f4682j - i16);
            this.f4679g -= i16;
            this.f4680h -= i16;
            this.f4682j -= i16;
        }
        int i17 = this.f4682j;
        int i18 = i13 - i17;
        if (i11 > i18) {
            i11 = i18;
        }
        System.arraycopy(bArr, i10, bArr2, i17, i11);
        int i19 = this.f4682j + i11;
        this.f4682j = i19;
        if (i19 >= i14) {
            this.f4680h = i19 - i14;
        }
        h();
        return i11;
    }

    public final int b(int i10) {
        return this.f4677e[this.f4679g - i10] & 255;
    }

    public final int c(int i10, int i11) {
        return this.f4677e[(this.f4679g + i10) - i11] & 255;
    }

    public int d() {
        int iE = e(this.f4676d);
        if (iE != 0) {
            int i10 = this.f4689s + 1;
            this.f4689s = i10;
            int i11 = this.f4688q;
            if (i10 == Integer.MAX_VALUE) {
                int i12 = Integer.MAX_VALUE - i11;
                b bVar = this.f4684m;
                g(1024, i12, bVar.f4692b);
                g(65536, i12, bVar.f4693c);
                g(bVar.f4695e, i12, bVar.f4694d);
                g(i11 * 2, i12, this.f4685n);
                this.f4689s -= i12;
            }
            int i13 = this.r + 1;
            this.r = i13;
            if (i13 == i11) {
                this.r = 0;
            }
        }
        return iE;
    }

    public final int e(int i10) {
        int i11 = this.f4679g + 1;
        this.f4679g = i11;
        int i12 = this.f4682j - i11;
        if (i12 >= i10) {
            return i12;
        }
        if (i12 >= 4 && this.f4681i) {
            return i12;
        }
        this.f4683k++;
        return 0;
    }

    public int f() {
        int iE = e(4);
        if (iE != 0) {
            int i10 = this.f4689s + 1;
            this.f4689s = i10;
            int i11 = this.f4688q;
            if (i10 == Integer.MAX_VALUE) {
                int i12 = Integer.MAX_VALUE - i11;
                b bVar = this.f4684m;
                g(1024, i12, bVar.f4692b);
                g(65536, i12, bVar.f4693c);
                g(bVar.f4695e, i12, bVar.f4694d);
                g(i11, i12, this.f4685n);
                this.f4689s -= i12;
            }
            int i13 = this.r + 1;
            this.r = i13;
            if (i13 == i11) {
                this.r = 0;
            }
        }
        return iE;
    }

    public final void h() {
        int i10;
        int i11 = this.f4683k;
        if (i11 <= 0 || (i10 = this.f4679g) >= this.f4680h) {
            return;
        }
        this.f4679g = i10 - i11;
        this.f4683k = 0;
        j(i11);
    }

    public final void i(yh.b bVar) {
        switch (this.l) {
            case 0:
                bVar.d(this.f4685n);
                b bVar2 = this.f4684m;
                bVar.d(bVar2.f4694d);
                bVar.d(bVar2.f4693c);
                bVar.d(bVar2.f4692b);
                bVar.c(this.f4677e);
                break;
            default:
                bVar.d(this.f4685n);
                b bVar3 = this.f4684m;
                bVar.d(bVar3.f4694d);
                bVar.d(bVar3.f4693c);
                bVar.d(bVar3.f4692b);
                bVar.c(this.f4677e);
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void j(int i10) {
        switch (this.l) {
            case 0:
                while (true) {
                    int i11 = i10 - 1;
                    if (i10 <= 0) {
                        break;
                    } else {
                        int iD = d();
                        int i12 = this.f4676d;
                        if (iD < i12) {
                            if (iD == 0) {
                            }
                            i10 = i11;
                        } else {
                            iD = i12;
                        }
                        int i13 = this.f4679g;
                        b bVar = this.f4684m;
                        bVar.a(i13, this.f4677e);
                        int i14 = bVar.f4694d[bVar.f4698h];
                        bVar.b(this.f4689s);
                        k(iD, i14);
                        i10 = i11;
                    }
                }
            default:
                while (true) {
                    int i15 = i10 - 1;
                    if (i10 <= 0) {
                        break;
                    } else {
                        if (f() != 0) {
                            int i16 = this.f4679g;
                            b bVar2 = this.f4684m;
                            bVar2.a(i16, this.f4677e);
                            this.f4685n[this.r] = bVar2.f4694d[bVar2.f4698h];
                            bVar2.b(this.f4689s);
                        }
                        i10 = i15;
                    }
                }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0076, code lost:
    
        r11[r4] = 0;
        r11[r3] = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007a, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void k(int i10, int i11) {
        int i12;
        int i13 = this.r;
        int i14 = this.f4687p;
        int i15 = 0;
        int i16 = 0;
        int i17 = (i13 << 1) + 1;
        int i18 = i13 << 1;
        int i19 = i11;
        while (true) {
            int i20 = this.f4689s - i19;
            int i21 = i14 - 1;
            int[] iArr = this.f4685n;
            if (i14 == 0 || i20 >= (i12 = this.f4688q)) {
                break;
            }
            int i22 = this.r;
            int i23 = i22 - i20;
            if (i20 <= i22) {
                i12 = 0;
            }
            int i24 = (i23 + i12) << 1;
            int iMin = Math.min(i15, i16);
            int i25 = this.f4679g;
            byte[] bArr = this.f4677e;
            if (bArr[(i25 + iMin) - i20] == bArr[i25 + iMin] && (iMin = d.A(bArr, i25, i20, iMin + 1, i10)) == i10) {
                iArr[i18] = iArr[i24];
                iArr[i17] = iArr[i24 + 1];
                return;
            }
            int i26 = this.f4679g;
            if ((bArr[(i26 + iMin) - i20] & 255) < (bArr[i26 + iMin] & 255)) {
                iArr[i18] = i19;
                int i27 = i24 + 1;
                i19 = iArr[i27];
                i18 = i27;
                i16 = iMin;
            } else {
                iArr[i17] = i19;
                i19 = iArr[i24];
                i17 = i24;
                i15 = iMin;
            }
            i14 = i21;
        }
    }

    public a(int i10, int i11, int i12, int i13, yh.b bVar) {
        this.f4679g = -1;
        this.f4680h = -1;
        this.f4681i = false;
        this.f4682j = 0;
        this.f4683k = 0;
        int i14 = i11 + i10;
        int i15 = i12 + SourceConst.IOCTL_AM_VOLUME;
        int iMin = i14 + i15 + Math.min((i10 / 2) + 262144, PKIFailureInfo.duplicateCertReq);
        this.f4678f = iMin;
        this.f4677e = bVar.a(iMin);
        this.f4673a = i14;
        this.f4674b = i15;
        this.f4675c = SourceConst.IOCTL_AM_VOLUME;
        this.f4676d = i13;
    }
}
