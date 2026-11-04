package i0;

import android.view.ViewGroup;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public int f8314a;

    /* renamed from: b, reason: collision with root package name */
    public final l f8315b = new l();

    /* renamed from: c, reason: collision with root package name */
    public final k f8316c = new k();

    /* renamed from: d, reason: collision with root package name */
    public final j f8317d = new j();

    /* renamed from: e, reason: collision with root package name */
    public final m f8318e = new m();

    /* renamed from: f, reason: collision with root package name */
    public HashMap f8319f = new HashMap();

    public final void a(e eVar) {
        j jVar = this.f8317d;
        eVar.f8259e = jVar.f8335h;
        eVar.f8261f = jVar.f8337i;
        eVar.f8263g = jVar.f8339j;
        eVar.f8265h = jVar.f8341k;
        eVar.f8267i = jVar.l;
        eVar.f8269j = jVar.f8344m;
        eVar.f8271k = jVar.f8346n;
        eVar.l = jVar.f8348o;
        eVar.f8274m = jVar.f8350p;
        eVar.f8276n = jVar.f8351q;
        eVar.f8278o = jVar.r;
        eVar.f8283s = jVar.f8352s;
        eVar.f8284t = jVar.f8353t;
        eVar.f8285u = jVar.f8354u;
        eVar.f8286v = jVar.f8355v;
        ((ViewGroup.MarginLayoutParams) eVar).leftMargin = jVar.F;
        ((ViewGroup.MarginLayoutParams) eVar).rightMargin = jVar.G;
        ((ViewGroup.MarginLayoutParams) eVar).topMargin = jVar.H;
        ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = jVar.I;
        eVar.A = jVar.R;
        eVar.B = jVar.Q;
        eVar.f8288x = jVar.N;
        eVar.z = jVar.P;
        eVar.E = jVar.f8356w;
        eVar.F = jVar.f8357x;
        eVar.f8280p = jVar.z;
        eVar.f8282q = jVar.A;
        eVar.r = jVar.B;
        eVar.G = jVar.f8358y;
        eVar.T = jVar.C;
        eVar.U = jVar.D;
        eVar.I = jVar.T;
        eVar.H = jVar.U;
        eVar.K = jVar.W;
        eVar.J = jVar.V;
        eVar.W = jVar.f8343l0;
        eVar.X = jVar.f8345m0;
        eVar.L = jVar.X;
        eVar.M = jVar.Y;
        eVar.P = jVar.Z;
        eVar.Q = jVar.f8322a0;
        eVar.N = jVar.f8324b0;
        eVar.O = jVar.f8326c0;
        eVar.R = jVar.f8328d0;
        eVar.S = jVar.f8330e0;
        eVar.V = jVar.E;
        eVar.f8255c = jVar.f8331f;
        eVar.f8251a = jVar.f8327d;
        eVar.f8253b = jVar.f8329e;
        ((ViewGroup.MarginLayoutParams) eVar).width = jVar.f8323b;
        ((ViewGroup.MarginLayoutParams) eVar).height = jVar.f8325c;
        String str = jVar.f8342k0;
        if (str != null) {
            eVar.Y = str;
        }
        eVar.Z = jVar.f8349o0;
        eVar.setMarginStart(jVar.K);
        eVar.setMarginEnd(jVar.J);
        eVar.a();
    }

    public final Object clone() {
        i iVar = new i();
        j jVar = iVar.f8317d;
        jVar.getClass();
        j jVar2 = this.f8317d;
        jVar.f8321a = jVar2.f8321a;
        jVar.f8323b = jVar2.f8323b;
        jVar.f8325c = jVar2.f8325c;
        jVar.f8327d = jVar2.f8327d;
        jVar.f8329e = jVar2.f8329e;
        jVar.f8331f = jVar2.f8331f;
        jVar.f8333g = jVar2.f8333g;
        jVar.f8335h = jVar2.f8335h;
        jVar.f8337i = jVar2.f8337i;
        jVar.f8339j = jVar2.f8339j;
        jVar.f8341k = jVar2.f8341k;
        jVar.l = jVar2.l;
        jVar.f8344m = jVar2.f8344m;
        jVar.f8346n = jVar2.f8346n;
        jVar.f8348o = jVar2.f8348o;
        jVar.f8350p = jVar2.f8350p;
        jVar.f8351q = jVar2.f8351q;
        jVar.r = jVar2.r;
        jVar.f8352s = jVar2.f8352s;
        jVar.f8353t = jVar2.f8353t;
        jVar.f8354u = jVar2.f8354u;
        jVar.f8355v = jVar2.f8355v;
        jVar.f8356w = jVar2.f8356w;
        jVar.f8357x = jVar2.f8357x;
        jVar.f8358y = jVar2.f8358y;
        jVar.z = jVar2.z;
        jVar.A = jVar2.A;
        jVar.B = jVar2.B;
        jVar.C = jVar2.C;
        jVar.D = jVar2.D;
        jVar.E = jVar2.E;
        jVar.F = jVar2.F;
        jVar.G = jVar2.G;
        jVar.H = jVar2.H;
        jVar.I = jVar2.I;
        jVar.J = jVar2.J;
        jVar.K = jVar2.K;
        jVar.L = jVar2.L;
        jVar.M = jVar2.M;
        jVar.N = jVar2.N;
        jVar.O = jVar2.O;
        jVar.P = jVar2.P;
        jVar.Q = jVar2.Q;
        jVar.R = jVar2.R;
        jVar.S = jVar2.S;
        jVar.T = jVar2.T;
        jVar.U = jVar2.U;
        jVar.V = jVar2.V;
        jVar.W = jVar2.W;
        jVar.X = jVar2.X;
        jVar.Y = jVar2.Y;
        jVar.Z = jVar2.Z;
        jVar.f8322a0 = jVar2.f8322a0;
        jVar.f8324b0 = jVar2.f8324b0;
        jVar.f8326c0 = jVar2.f8326c0;
        jVar.f8328d0 = jVar2.f8328d0;
        jVar.f8330e0 = jVar2.f8330e0;
        jVar.f8332f0 = jVar2.f8332f0;
        jVar.f8334g0 = jVar2.f8334g0;
        jVar.f8336h0 = jVar2.f8336h0;
        jVar.f8342k0 = jVar2.f8342k0;
        int[] iArr = jVar2.f8338i0;
        if (iArr == null || jVar2.f8340j0 != null) {
            jVar.f8338i0 = null;
        } else {
            jVar.f8338i0 = Arrays.copyOf(iArr, iArr.length);
        }
        jVar.f8340j0 = jVar2.f8340j0;
        jVar.f8343l0 = jVar2.f8343l0;
        jVar.f8345m0 = jVar2.f8345m0;
        jVar.f8347n0 = jVar2.f8347n0;
        jVar.f8349o0 = jVar2.f8349o0;
        k kVar = iVar.f8316c;
        kVar.getClass();
        k kVar2 = this.f8316c;
        kVar2.getClass();
        kVar.f8360a = kVar2.f8360a;
        kVar.f8362c = kVar2.f8362c;
        kVar.f8364e = kVar2.f8364e;
        kVar.f8363d = kVar2.f8363d;
        l lVar = iVar.f8315b;
        l lVar2 = this.f8315b;
        lVar.f8369a = lVar2.f8369a;
        lVar.f8371c = lVar2.f8371c;
        lVar.f8372d = lVar2.f8372d;
        lVar.f8370b = lVar2.f8370b;
        m mVar = iVar.f8318e;
        mVar.getClass();
        m mVar2 = this.f8318e;
        mVar2.getClass();
        mVar.f8374a = mVar2.f8374a;
        mVar.f8375b = mVar2.f8375b;
        mVar.f8376c = mVar2.f8376c;
        mVar.f8377d = mVar2.f8377d;
        mVar.f8378e = mVar2.f8378e;
        mVar.f8379f = mVar2.f8379f;
        mVar.f8380g = mVar2.f8380g;
        mVar.f8381h = mVar2.f8381h;
        mVar.f8382i = mVar2.f8382i;
        mVar.f8383j = mVar2.f8383j;
        mVar.f8384k = mVar2.f8384k;
        mVar.l = mVar2.l;
        mVar.f8385m = mVar2.f8385m;
        iVar.f8314a = this.f8314a;
        return iVar;
    }
}
