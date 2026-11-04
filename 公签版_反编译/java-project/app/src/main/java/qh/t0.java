package qh;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class t0 {

    /* renamed from: u, reason: collision with root package name */
    public static final char[] f13343u;

    /* renamed from: v, reason: collision with root package name */
    public static final int[] f13344v = {8364, 129, 8218, 402, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, 141, 381, 143, 144, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, CarSettingID.Recv.EMS_PEDAL_LEVEL, 382, 376};

    /* renamed from: a, reason: collision with root package name */
    public final b f13345a;

    /* renamed from: b, reason: collision with root package name */
    public final ph.k f13346b;

    /* renamed from: h, reason: collision with root package name */
    public final o0 f13352h;

    /* renamed from: i, reason: collision with root package name */
    public final n0 f13353i;

    /* renamed from: j, reason: collision with root package name */
    public p0 f13354j;

    /* renamed from: n, reason: collision with root package name */
    public final q0 f13357n;

    /* renamed from: o, reason: collision with root package name */
    public String f13358o;

    /* renamed from: p, reason: collision with root package name */
    public String f13359p;

    /* renamed from: q, reason: collision with root package name */
    public int f13360q;

    /* renamed from: c, reason: collision with root package name */
    public k3 f13347c = k3.f13293a;

    /* renamed from: d, reason: collision with root package name */
    public r0 f13348d = null;

    /* renamed from: e, reason: collision with root package name */
    public boolean f13349e = false;

    /* renamed from: f, reason: collision with root package name */
    public final kf.d f13350f = new kf.d(12, false);

    /* renamed from: k, reason: collision with root package name */
    public final j0 f13355k = new j0();
    public final l0 l = new l0();

    /* renamed from: m, reason: collision with root package name */
    public final k0 f13356m = new k0();
    public int r = 0;

    /* renamed from: s, reason: collision with root package name */
    public final int[] f13361s = new int[1];

    /* renamed from: t, reason: collision with root package name */
    public final int[] f13362t = new int[2];

    /* renamed from: g, reason: collision with root package name */
    public final int f13351g = 1;

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', ' ', '<', '&'};
        f13343u = cArr;
        Arrays.sort(cArr);
    }

    public t0(c cVar) {
        o0 o0Var = new o0(cVar);
        this.f13352h = o0Var;
        this.f13354j = o0Var;
        this.f13353i = new n0(cVar);
        this.f13357n = new q0(cVar);
        this.f13345a = cVar.f13234b;
        this.f13346b = cVar.f13233a.f13280b;
    }

    public final void a(k3 k3Var) {
        o(k3Var);
        this.f13345a.r();
    }

    public final void b(String str, Object... objArr) {
        ph.k kVar = this.f13346b;
        if (kVar.a()) {
            kVar.add(new ba.h(this.f13345a, String.format("Invalid character reference: ".concat(str), objArr)));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x01d9, code lost:
    
        if (r4.W('=', '-', '_') == false) goto L116;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int[] c(Character ch2, boolean z) throws IOException {
        char c7;
        int iIntValue;
        b bVar = this.f13345a;
        if (bVar.R()) {
            return null;
        }
        if (ch2 != null && ch2.charValue() == bVar.Q()) {
            return null;
        }
        char[] cArr = f13343u;
        bVar.A();
        if (!bVar.R() && Arrays.binarySearch(cArr, bVar.f13198c[bVar.f13199d]) >= 0) {
            return null;
        }
        if (bVar.f13200e - bVar.f13199d < 1024) {
            bVar.f13201f = 0;
        }
        bVar.A();
        bVar.f13203h = bVar.f13199d;
        boolean zT = bVar.T("#");
        String strJ = "";
        int[] iArr = this.f13361s;
        if (zT) {
            boolean zU = bVar.U("X");
            if (zU) {
                bVar.A();
                int i10 = bVar.f13199d;
                int i11 = bVar.f13200e;
                char[] cArr2 = bVar.f13198c;
                int i12 = i10;
                while (i12 < i11 && oh.f.h(cArr2[i12])) {
                    i12++;
                }
                bVar.f13199d = i12;
                if (i12 > i10) {
                    strJ = b.J(bVar.f13198c, bVar.f13196a, i10, i12 - i10);
                }
            } else {
                bVar.A();
                int i13 = bVar.f13199d;
                int i14 = bVar.f13200e;
                char[] cArr3 = bVar.f13198c;
                int i15 = i13;
                while (i15 < i14) {
                    char c10 = cArr3[i15];
                    if (c10 < '0' || c10 > '9') {
                        break;
                    }
                    i15++;
                }
                bVar.f13199d = i15;
                if (i15 > i13) {
                    strJ = b.J(bVar.f13198c, bVar.f13196a, i13, i15 - i13);
                }
            }
            if (strJ.isEmpty()) {
                b("numeric reference with no numerals", new Object[0]);
                bVar.c0();
                return null;
            }
            bVar.f13203h = -1;
            if (!bVar.T(";")) {
                b("missing semicolon on [&#%s]", strJ);
            }
            try {
                iIntValue = Integer.valueOf(strJ, zU ? 16 : 10).intValue();
            } catch (NumberFormatException unused) {
                iIntValue = -1;
            }
            if (iIntValue == -1 || iIntValue > 1114111) {
                b("character [%s] outside of valid range", Integer.valueOf(iIntValue));
                iArr[0] = 65533;
            } else {
                if (iIntValue >= 128 && iIntValue < 160) {
                    b("character [%s] is not a valid unicode code point", Integer.valueOf(iIntValue));
                    iIntValue = f13344v[iIntValue - 128];
                }
                iArr[0] = iIntValue;
            }
            return iArr;
        }
        bVar.A();
        int i16 = bVar.f13199d;
        while (true) {
            int i17 = bVar.f13199d;
            if (i17 >= bVar.f13200e || !oh.f.e(bVar.f13198c[i17])) {
                break;
            }
            bVar.f13199d++;
        }
        while (true) {
            int i18 = bVar.f13199d;
            if (i18 >= bVar.f13200e || !oh.f.g(bVar.f13198c[i18])) {
                break;
            }
            bVar.f13199d++;
        }
        String strJ2 = b.J(bVar.f13198c, bVar.f13196a, i16, bVar.f13199d - i16);
        boolean zV = bVar.V(';');
        char[] cArr4 = ph.n.f12733a;
        ph.m mVar = ph.m.base;
        int iBinarySearch = Arrays.binarySearch(mVar.f12729a, strJ2);
        if ((iBinarySearch >= 0 ? mVar.f12730b[iBinarySearch] : -1) == -1) {
            ph.m mVar2 = ph.m.extended;
            int iBinarySearch2 = Arrays.binarySearch(mVar2.f12729a, strJ2);
            if ((iBinarySearch2 >= 0 ? mVar2.f12730b[iBinarySearch2] : -1) == -1 || !zV) {
                bVar.c0();
                if (zV) {
                    b("invalid named reference [%s]", strJ2);
                }
                if (z) {
                    return null;
                }
                Iterator it = ph.n.f12735c.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    String str = (String) it.next();
                    if (strJ2.startsWith(str)) {
                        strJ = str;
                        break;
                    }
                }
                if (strJ.isEmpty()) {
                    return null;
                }
                bVar.T(strJ);
                strJ2 = strJ;
            }
        }
        if (z) {
            if (!bVar.X()) {
                if (!(bVar.R() ? false : oh.f.g(bVar.f13198c[bVar.f13199d]))) {
                }
            }
            bVar.c0();
            return null;
        }
        bVar.f13203h = -1;
        if (!bVar.T(";")) {
            b("missing semicolon on [&%s]", strJ2);
        }
        String str2 = (String) ph.n.f12734b.get(strJ2);
        int[] iArr2 = this.f13362t;
        if (str2 != null) {
            iArr2[0] = str2.codePointAt(0);
            iArr2[1] = str2.codePointAt(1);
            c7 = 2;
        } else {
            ph.m mVar3 = ph.m.extended;
            int iBinarySearch3 = Arrays.binarySearch(mVar3.f12729a, strJ2);
            int i19 = iBinarySearch3 >= 0 ? mVar3.f12730b[iBinarySearch3] : -1;
            if (i19 != -1) {
                iArr2[0] = i19;
                c7 = 1;
            } else {
                c7 = 0;
            }
        }
        if (c7 == 1) {
            iArr[0] = iArr2[0];
            return iArr;
        }
        if (c7 == 2) {
            return iArr2;
        }
        throw new nh.c("Unexpected characters returned for ".concat(strJ2));
    }

    public final p0 d(boolean z) {
        p0 p0Var;
        if (z) {
            p0Var = this.f13352h;
            p0Var.g();
        } else {
            p0Var = this.f13353i;
            p0Var.g();
        }
        this.f13354j = p0Var;
        return p0Var;
    }

    public final void e() {
        this.f13350f.reset();
    }

    public final void f(char c7) {
        j0 j0Var = this.f13355k;
        j0Var.f13291d.m(c7);
        j0Var.f13339b = this.r;
        j0Var.f13340c = this.f13345a.a0();
    }

    public final void g(String str) {
        j0 j0Var = this.f13355k;
        j0Var.f13291d.n(str);
        j0Var.f13339b = this.r;
        j0Var.f13340c = this.f13345a.a0();
    }

    public final void h(r0 r0Var) {
        if (this.f13349e) {
            throw new nh.c("Must be false");
        }
        this.f13348d = r0Var;
        this.f13349e = true;
        r0Var.f13339b = this.f13360q;
        b bVar = this.f13345a;
        r0Var.f13340c = bVar.a0();
        this.r = bVar.a0();
        int i10 = r0Var.f13338a;
        if (i10 == 2) {
            this.f13358o = ((o0) r0Var).f13330d.R();
            this.f13359p = null;
        } else if (i10 == 3) {
            n0 n0Var = (n0) r0Var;
            if (n0Var.f13333g != null) {
                Object[] objArr = {n0Var.m()};
                ph.k kVar = this.f13346b;
                if (kVar.a()) {
                    kVar.add(new ba.h(bVar, "Attributes incorrectly present on end tag [/%s]", objArr));
                }
            }
        }
    }

    public final void i() {
        h(this.f13356m);
    }

    public final void j() {
        h(this.l);
    }

    public final void k() {
        p0 p0Var = this.f13354j;
        if (p0Var.f13334h.C()) {
            p0Var.l();
        }
        h(this.f13354j);
    }

    public final void l(k3 k3Var) {
        ph.k kVar = this.f13346b;
        if (kVar.a()) {
            kVar.add(new ba.h(this.f13345a, "Unexpectedly reached end of file (EOF) in input state [%s]", new Object[]{k3Var}));
        }
    }

    public final void m(k3 k3Var) {
        ph.k kVar = this.f13346b;
        if (kVar.a()) {
            b bVar = this.f13345a;
            kVar.add(new ba.h(bVar, "Unexpected character '%s' in input state [%s]", new Object[]{Character.valueOf(bVar.Q()), k3Var}));
        }
    }

    public final boolean n() {
        return this.f13358o != null && this.f13354j.f13330d.R().equalsIgnoreCase(this.f13358o);
    }

    public final void o(k3 k3Var) {
        if (k3Var == k3.f13306h) {
            this.f13360q = this.f13345a.a0();
        }
        this.f13347c = k3Var;
    }
}
