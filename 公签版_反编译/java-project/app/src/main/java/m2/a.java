package m2;

import dd.c;
import f2.u0;
import j$.nio.charset.StandardCharsets;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import l2.c0;
import l2.j0;
import l2.k;
import l2.l;
import l2.n;
import l2.o;
import l2.p;
import l2.q;
import l2.s;
import l2.y;
import r1.e0;
import sb.e;
import u1.f0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class a implements o {

    /* renamed from: s, reason: collision with root package name */
    public static final int[] f10798s = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: t, reason: collision with root package name */
    public static final int[] f10799t = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};

    /* renamed from: u, reason: collision with root package name */
    public static final byte[] f10800u;

    /* renamed from: v, reason: collision with root package name */
    public static final byte[] f10801v;

    /* renamed from: c, reason: collision with root package name */
    public final n f10804c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f10805d;

    /* renamed from: e, reason: collision with root package name */
    public long f10806e;

    /* renamed from: f, reason: collision with root package name */
    public int f10807f;

    /* renamed from: g, reason: collision with root package name */
    public int f10808g;

    /* renamed from: h, reason: collision with root package name */
    public long f10809h;

    /* renamed from: j, reason: collision with root package name */
    public int f10811j;

    /* renamed from: k, reason: collision with root package name */
    public long f10812k;
    public u0 l;

    /* renamed from: m, reason: collision with root package name */
    public j0 f10813m;

    /* renamed from: n, reason: collision with root package name */
    public j0 f10814n;

    /* renamed from: o, reason: collision with root package name */
    public c0 f10815o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f10816p;

    /* renamed from: q, reason: collision with root package name */
    public long f10817q;
    public boolean r;

    /* renamed from: b, reason: collision with root package name */
    public final int f10803b = 0;

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f10802a = new byte[1];

    /* renamed from: i, reason: collision with root package name */
    public int f10810i = -1;

    static {
        String str = f0.f15206a;
        Charset charset = StandardCharsets.UTF_8;
        f10800u = "#!AMR\n".getBytes(charset);
        f10801v = "#!AMR-WB\n".getBytes(charset);
    }

    public a() {
        n nVar = new n();
        this.f10804c = nVar;
        this.f10814n = nVar;
    }

    @Override // l2.o
    public final o b() {
        return this;
    }

    @Override // l2.o
    public final void c(q qVar) {
        u0 u0Var = (u0) qVar;
        this.l = u0Var;
        j0 j0VarZ = u0Var.z(0, 1);
        this.f10813m = j0VarZ;
        this.f10814n = j0VarZ;
        u0Var.q();
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ee  */
    @Override // l2.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int d(p pVar, c cVar) throws r1.f0 {
        int i10;
        int i11;
        int iE;
        this.f10813m.getClass();
        String str = f0.f15206a;
        if (((l) pVar).f10499d == 0 && !i((l) pVar)) {
            throw r1.f0.a(null, "Could not find AMR header.");
        }
        if (!this.r) {
            this.r = true;
            boolean z = this.f10805d;
            String str2 = z ? "audio/amr-wb" : "audio/amr";
            String str3 = z ? "audio/amr-wb" : "audio/3gpp";
            int i12 = z ? 16000 : 8000;
            int i13 = z ? f10799t[8] : f10798s[7];
            j0 j0Var = this.f10813m;
            r1.o oVar = new r1.o();
            oVar.f13491m = e0.l(str2);
            oVar.f13492n = e0.l(str3);
            oVar.f13493o = i13;
            oVar.F = 1;
            oVar.G = i12;
            j0Var.g(new r1.p(oVar));
        }
        if (this.f10808g == 0) {
            try {
                int iH = h((l) pVar);
                this.f10807f = iH;
                this.f10808g = iH;
                if (this.f10810i == -1) {
                    this.f10809h = ((l) pVar).f10499d;
                    this.f10810i = iH;
                }
                if (this.f10810i == iH) {
                    this.f10811j++;
                }
                c0 c0Var = this.f10815o;
                if (c0Var instanceof y) {
                    y yVar = (y) c0Var;
                    long j10 = this.f10812k + this.f10806e + 20000;
                    long j11 = ((l) pVar).f10499d + iH;
                    e eVar = yVar.f10548b;
                    int i14 = eVar.f14472b;
                    if (i14 == 0 || j10 - eVar.c(i14 - 1) >= 100000) {
                        yVar.i(j10, j11);
                    }
                    if (this.f10816p && Math.abs(this.f10817q - j10) < 20000) {
                        this.f10816p = false;
                        this.f10814n = this.f10813m;
                    }
                }
                iE = this.f10814n.e(pVar, this.f10808g, true);
            } catch (EOFException unused) {
            }
            if (iE != -1) {
                i10 = -1;
            } else {
                int i15 = this.f10808g - iE;
                this.f10808g = i15;
                if (i15 <= 0) {
                    this.f10814n.b(this.f10812k + this.f10806e, 1, this.f10807f, 0, null);
                    this.f10806e += 20000;
                }
                i10 = 0;
            }
        } else {
            iE = this.f10814n.e(pVar, this.f10808g, true);
            if (iE != -1) {
            }
        }
        l lVar = (l) pVar;
        if (this.f10815o == null) {
            int i16 = this.f10803b;
            if ((i16 & 4) != 0) {
                this.f10815o = new y(-9223372036854775807L, new long[]{this.f10809h}, new long[]{0});
            } else if ((i16 & 1) == 0 || !((i11 = this.f10810i) == -1 || i11 == this.f10807f)) {
                this.f10815o = new s(-9223372036854775807L);
            } else if (this.f10811j >= 20 || i10 == -1) {
                k kVar = new k(lVar.f10498c, this.f10809h, (int) ((i11 * 8000000) / 20000), i11, (i16 & 2) != 0, true);
                this.f10815o = kVar;
                this.f10813m.d(kVar.f10486f);
            }
            c0 c0Var2 = this.f10815o;
            if (c0Var2 != null) {
                this.l.s(c0Var2);
            }
        }
        if (i10 == -1) {
            c0 c0Var3 = this.f10815o;
            if (c0Var3 instanceof y) {
                long j12 = this.f10812k + this.f10806e;
                ((y) c0Var3).f10549c = j12;
                this.l.s(c0Var3);
                this.f10813m.d(j12);
            }
        }
        return i10;
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        this.f10806e = 0L;
        this.f10807f = 0;
        this.f10808g = 0;
        this.f10817q = j11;
        c0 c0Var = this.f10815o;
        if (!(c0Var instanceof y)) {
            if (j10 == 0 || !(c0Var instanceof k)) {
                this.f10812k = 0L;
                return;
            } else {
                this.f10812k = (Math.max(0L, j10 - ((k) c0Var).f10482b) * 8000000) / r7.f10485e;
                return;
            }
        }
        y yVar = (y) c0Var;
        e eVar = yVar.f10548b;
        long jC = eVar.f14472b == 0 ? -9223372036854775807L : eVar.c(f0.b(yVar.f10547a, j10));
        this.f10812k = jC;
        if (Math.abs(this.f10817q - jC) < 20000) {
            return;
        }
        this.f10816p = true;
        this.f10814n = this.f10804c;
    }

    @Override // l2.o
    public final List f() {
        u7.e0 e0Var = g0.f15471b;
        return y0.f15549e;
    }

    @Override // l2.o
    public final boolean g(p pVar) {
        return i((l) pVar);
    }

    public final int h(l lVar) throws r1.f0 {
        boolean z;
        lVar.f10501f = 0;
        byte[] bArr = this.f10802a;
        lVar.c(bArr, 0, 1, false);
        byte b10 = bArr[0];
        if ((b10 & 131) > 0) {
            throw r1.f0.a(null, "Invalid padding bits for frame header " + ((int) b10));
        }
        int i10 = (b10 >> 3) & 15;
        if (i10 >= 0 && i10 <= 15 && (((z = this.f10805d) && (i10 < 10 || i10 > 13)) || (!z && (i10 < 12 || i10 > 14)))) {
            return z ? f10799t[i10] : f10798s[i10];
        }
        StringBuilder sb2 = new StringBuilder("Illegal AMR ");
        sb2.append(this.f10805d ? "WB" : "NB");
        sb2.append(" frame type ");
        sb2.append(i10);
        throw r1.f0.a(null, sb2.toString());
    }

    public final boolean i(l lVar) {
        lVar.f10501f = 0;
        byte[] bArr = f10800u;
        byte[] bArr2 = new byte[bArr.length];
        lVar.c(bArr2, 0, bArr.length, false);
        if (Arrays.equals(bArr2, bArr)) {
            this.f10805d = false;
            lVar.o(bArr.length, false);
            return true;
        }
        lVar.f10501f = 0;
        byte[] bArr3 = f10801v;
        byte[] bArr4 = new byte[bArr3.length];
        lVar.c(bArr4, 0, bArr3.length, false);
        if (!Arrays.equals(bArr4, bArr3)) {
            return false;
        }
        this.f10805d = true;
        lVar.o(bArr3.length, false);
        return true;
    }

    @Override // l2.o
    public final void a() {
    }
}
