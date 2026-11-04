package f0;

import android.view.View;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import g0.k;
import g0.m;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class d {
    public int A;
    public float B;
    public final int[] C;
    public float D;
    public boolean E;
    public boolean F;
    public int G;
    public int H;
    public final c I;
    public final c J;
    public final c K;
    public final c L;
    public final c M;
    public final c N;
    public final c O;
    public final c P;
    public final c[] Q;
    public final ArrayList R;
    public final boolean[] S;
    public d T;
    public int U;
    public int V;
    public float W;
    public int X;
    public int Y;
    public int Z;

    /* renamed from: a0, reason: collision with root package name */
    public int f5076a0;

    /* renamed from: b, reason: collision with root package name */
    public g0.c f5077b;

    /* renamed from: b0, reason: collision with root package name */
    public int f5078b0;

    /* renamed from: c, reason: collision with root package name */
    public g0.c f5079c;

    /* renamed from: c0, reason: collision with root package name */
    public int f5080c0;

    /* renamed from: d0, reason: collision with root package name */
    public float f5082d0;

    /* renamed from: e0, reason: collision with root package name */
    public float f5084e0;

    /* renamed from: f0, reason: collision with root package name */
    public View f5086f0;

    /* renamed from: g0, reason: collision with root package name */
    public int f5088g0;

    /* renamed from: h0, reason: collision with root package name */
    public String f5090h0;

    /* renamed from: i0, reason: collision with root package name */
    public int f5092i0;

    /* renamed from: j, reason: collision with root package name */
    public String f5093j;

    /* renamed from: j0, reason: collision with root package name */
    public int f5094j0;

    /* renamed from: k, reason: collision with root package name */
    public boolean f5095k;

    /* renamed from: k0, reason: collision with root package name */
    public final float[] f5096k0;
    public boolean l;

    /* renamed from: l0, reason: collision with root package name */
    public final d[] f5097l0;

    /* renamed from: m, reason: collision with root package name */
    public boolean f5098m;

    /* renamed from: m0, reason: collision with root package name */
    public final d[] f5099m0;

    /* renamed from: n, reason: collision with root package name */
    public boolean f5100n;

    /* renamed from: n0, reason: collision with root package name */
    public int f5101n0;

    /* renamed from: o, reason: collision with root package name */
    public int f5102o;

    /* renamed from: o0, reason: collision with root package name */
    public int f5103o0;

    /* renamed from: p, reason: collision with root package name */
    public int f5104p;

    /* renamed from: p0, reason: collision with root package name */
    public final int[] f5105p0;

    /* renamed from: q, reason: collision with root package name */
    public int f5106q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public int f5107s;

    /* renamed from: t, reason: collision with root package name */
    public final int[] f5108t;

    /* renamed from: u, reason: collision with root package name */
    public int f5109u;

    /* renamed from: v, reason: collision with root package name */
    public int f5110v;

    /* renamed from: w, reason: collision with root package name */
    public float f5111w;

    /* renamed from: x, reason: collision with root package name */
    public int f5112x;

    /* renamed from: y, reason: collision with root package name */
    public int f5113y;
    public float z;

    /* renamed from: a, reason: collision with root package name */
    public boolean f5075a = false;

    /* renamed from: d, reason: collision with root package name */
    public k f5081d = null;

    /* renamed from: e, reason: collision with root package name */
    public m f5083e = null;

    /* renamed from: f, reason: collision with root package name */
    public final boolean[] f5085f = {true, true};

    /* renamed from: g, reason: collision with root package name */
    public boolean f5087g = true;

    /* renamed from: h, reason: collision with root package name */
    public int f5089h = -1;

    /* renamed from: i, reason: collision with root package name */
    public int f5091i = -1;

    public d() {
        new HashMap();
        this.f5095k = false;
        this.l = false;
        this.f5098m = false;
        this.f5100n = false;
        this.f5102o = -1;
        this.f5104p = -1;
        this.f5106q = 0;
        this.r = 0;
        this.f5107s = 0;
        this.f5108t = new int[2];
        this.f5109u = 0;
        this.f5110v = 0;
        this.f5111w = 1.0f;
        this.f5112x = 0;
        this.f5113y = 0;
        this.z = 1.0f;
        this.A = -1;
        this.B = 1.0f;
        this.C = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.D = 0.0f;
        this.E = false;
        this.F = false;
        this.G = 0;
        this.H = 0;
        c cVar = new c(this, 2);
        this.I = cVar;
        c cVar2 = new c(this, 3);
        this.J = cVar2;
        c cVar3 = new c(this, 4);
        this.K = cVar3;
        c cVar4 = new c(this, 5);
        this.L = cVar4;
        c cVar5 = new c(this, 6);
        this.M = cVar5;
        c cVar6 = new c(this, 8);
        this.N = cVar6;
        c cVar7 = new c(this, 9);
        this.O = cVar7;
        c cVar8 = new c(this, 7);
        this.P = cVar8;
        this.Q = new c[]{cVar, cVar3, cVar2, cVar4, cVar5, cVar8};
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        this.S = new boolean[2];
        this.f5105p0 = new int[]{1, 1};
        this.T = null;
        this.U = 0;
        this.V = 0;
        this.W = 0.0f;
        this.X = -1;
        this.Y = 0;
        this.Z = 0;
        this.f5076a0 = 0;
        this.f5082d0 = 0.5f;
        this.f5084e0 = 0.5f;
        this.f5088g0 = 0;
        this.f5090h0 = null;
        this.f5092i0 = 0;
        this.f5094j0 = 0;
        this.f5096k0 = new float[]{-1.0f, -1.0f};
        this.f5097l0 = new d[]{null, null};
        this.f5099m0 = new d[]{null, null};
        this.f5101n0 = -1;
        this.f5103o0 = -1;
        arrayList.add(cVar);
        arrayList.add(cVar2);
        arrayList.add(cVar3);
        arrayList.add(cVar4);
        arrayList.add(cVar6);
        arrayList.add(cVar7);
        arrayList.add(cVar8);
        arrayList.add(cVar5);
    }

    public static void G(int i10, int i11, String str, StringBuilder sb2) {
        if (i10 == i11) {
            return;
        }
        sb2.append(str);
        sb2.append(" :   ");
        sb2.append(i10);
        sb2.append(",\n");
    }

    public static void H(StringBuilder sb2, String str, float f10, float f11) {
        if (f10 == f11) {
            return;
        }
        sb2.append(str);
        sb2.append(" :   ");
        sb2.append(f10);
        sb2.append(",\n");
    }

    public static void o(StringBuilder sb2, String str, int i10, int i11, int i12, int i13, int i14, float f10) {
        sb2.append(str);
        sb2.append(" :  {\n");
        G(i10, 0, "      size", sb2);
        G(i11, 0, "      min", sb2);
        G(i12, Integer.MAX_VALUE, "      max", sb2);
        G(i13, 0, "      matchMin", sb2);
        G(i14, 0, "      matchDef", sb2);
        H(sb2, "      matchPercent", f10, 1.0f);
        sb2.append("    },\n");
    }

    public static void p(StringBuilder sb2, String str, c cVar) {
        if (cVar.f5071f == null) {
            return;
        }
        sb2.append("    ");
        sb2.append(str);
        sb2.append(" : [ '");
        sb2.append(cVar.f5071f);
        sb2.append("'");
        if (cVar.f5073h != Integer.MIN_VALUE || cVar.f5072g != 0) {
            sb2.append(",");
            sb2.append(cVar.f5072g);
            if (cVar.f5073h != Integer.MIN_VALUE) {
                sb2.append(",");
                sb2.append(cVar.f5073h);
                sb2.append(",");
            }
        }
        sb2.append(" ] ,\n");
    }

    public boolean A() {
        return this.f5095k || (this.I.f5068c && this.K.f5068c);
    }

    public boolean B() {
        return this.l || (this.J.f5068c && this.L.f5068c);
    }

    public void C() {
        this.I.j();
        this.J.j();
        this.K.j();
        this.L.j();
        this.M.j();
        this.N.j();
        this.O.j();
        this.P.j();
        this.T = null;
        this.D = 0.0f;
        this.U = 0;
        this.V = 0;
        this.W = 0.0f;
        this.X = -1;
        this.Y = 0;
        this.Z = 0;
        this.f5076a0 = 0;
        this.f5078b0 = 0;
        this.f5080c0 = 0;
        this.f5082d0 = 0.5f;
        this.f5084e0 = 0.5f;
        int[] iArr = this.f5105p0;
        iArr[0] = 1;
        iArr[1] = 1;
        this.f5086f0 = null;
        this.f5088g0 = 0;
        this.f5092i0 = 0;
        this.f5094j0 = 0;
        float[] fArr = this.f5096k0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f5102o = -1;
        this.f5104p = -1;
        int[] iArr2 = this.C;
        iArr2[0] = Integer.MAX_VALUE;
        iArr2[1] = Integer.MAX_VALUE;
        this.r = 0;
        this.f5107s = 0;
        this.f5111w = 1.0f;
        this.z = 1.0f;
        this.f5110v = Integer.MAX_VALUE;
        this.f5113y = Integer.MAX_VALUE;
        this.f5109u = 0;
        this.f5112x = 0;
        this.A = -1;
        this.B = 1.0f;
        boolean[] zArr = this.f5085f;
        zArr[0] = true;
        zArr[1] = true;
        this.F = false;
        boolean[] zArr2 = this.S;
        zArr2[0] = false;
        zArr2[1] = false;
        this.f5087g = true;
        int[] iArr3 = this.f5108t;
        iArr3[0] = 0;
        iArr3[1] = 0;
        this.f5089h = -1;
        this.f5091i = -1;
    }

    public final void D() {
        d dVar = this.T;
        if (dVar != null && (dVar instanceof e)) {
            ((e) dVar).getClass();
        }
        ArrayList arrayList = this.R;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((c) arrayList.get(i10)).j();
        }
    }

    public final void E() {
        this.f5095k = false;
        this.l = false;
        this.f5098m = false;
        this.f5100n = false;
        ArrayList arrayList = this.R;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            c cVar = (c) arrayList.get(i10);
            cVar.f5068c = false;
            cVar.f5067b = 0;
        }
    }

    public void F(v3.f fVar) {
        this.I.k();
        this.J.k();
        this.K.k();
        this.L.k();
        this.M.k();
        this.P.k();
        this.N.k();
        this.O.k();
    }

    public final void I(int i10) {
        this.f5076a0 = i10;
        this.E = i10 > 0;
    }

    public final void J(int i10, int i11) {
        if (this.f5095k) {
            return;
        }
        this.I.l(i10);
        this.K.l(i11);
        this.Y = i10;
        this.U = i11 - i10;
        this.f5095k = true;
    }

    public final void K(int i10, int i11) {
        if (this.l) {
            return;
        }
        this.J.l(i10);
        this.L.l(i11);
        this.Z = i10;
        this.V = i11 - i10;
        if (this.E) {
            this.M.l(i10 + this.f5076a0);
        }
        this.l = true;
    }

    public final void L(int i10) {
        this.V = i10;
        int i11 = this.f5080c0;
        if (i10 < i11) {
            this.V = i11;
        }
    }

    public final void M(int i10) {
        this.f5105p0[0] = i10;
    }

    public final void N(int i10) {
        this.f5105p0[1] = i10;
    }

    public final void O(int i10) {
        this.U = i10;
        int i11 = this.f5078b0;
        if (i10 < i11) {
            this.U = i11;
        }
    }

    public void P(boolean z, boolean z4) {
        int i10;
        int i11;
        k kVar = this.f5081d;
        boolean z10 = z & kVar.f5976g;
        m mVar = this.f5083e;
        boolean z11 = z4 & mVar.f5976g;
        int i12 = kVar.f5977h.f5953g;
        int i13 = mVar.f5977h.f5953g;
        int i14 = kVar.f5978i.f5953g;
        int i15 = mVar.f5978i.f5953g;
        int i16 = i15 - i13;
        if (i14 - i12 < 0 || i16 < 0 || i12 == Integer.MIN_VALUE || i12 == Integer.MAX_VALUE || i13 == Integer.MIN_VALUE || i13 == Integer.MAX_VALUE || i14 == Integer.MIN_VALUE || i14 == Integer.MAX_VALUE || i15 == Integer.MIN_VALUE || i15 == Integer.MAX_VALUE) {
            i14 = 0;
            i15 = 0;
            i12 = 0;
            i13 = 0;
        }
        int i17 = i14 - i12;
        int i18 = i15 - i13;
        if (z10) {
            this.Y = i12;
        }
        if (z11) {
            this.Z = i13;
        }
        if (this.f5088g0 == 8) {
            this.U = 0;
            this.V = 0;
            return;
        }
        int[] iArr = this.f5105p0;
        if (z10) {
            if (iArr[0] == 1 && i17 < (i11 = this.U)) {
                i17 = i11;
            }
            this.U = i17;
            int i19 = this.f5078b0;
            if (i17 < i19) {
                this.U = i19;
            }
        }
        if (z11) {
            if (iArr[1] == 1 && i18 < (i10 = this.V)) {
                i18 = i10;
            }
            this.V = i18;
            int i20 = this.f5080c0;
            if (i18 < i20) {
                this.V = i20;
            }
        }
    }

    public void Q(d0.c cVar, boolean z) {
        int i10;
        int i11;
        m mVar;
        k kVar;
        c cVar2 = this.I;
        cVar.getClass();
        int iN = d0.c.n(cVar2);
        int iN2 = d0.c.n(this.J);
        int iN3 = d0.c.n(this.K);
        int iN4 = d0.c.n(this.L);
        if (z && (kVar = this.f5081d) != null) {
            g0.f fVar = kVar.f5977h;
            if (fVar.f5956j) {
                g0.f fVar2 = kVar.f5978i;
                if (fVar2.f5956j) {
                    iN = fVar.f5953g;
                    iN3 = fVar2.f5953g;
                }
            }
        }
        if (z && (mVar = this.f5083e) != null) {
            g0.f fVar3 = mVar.f5977h;
            if (fVar3.f5956j) {
                g0.f fVar4 = mVar.f5978i;
                if (fVar4.f5956j) {
                    iN2 = fVar3.f5953g;
                    iN4 = fVar4.f5953g;
                }
            }
        }
        int i12 = iN4 - iN2;
        if (iN3 - iN < 0 || i12 < 0 || iN == Integer.MIN_VALUE || iN == Integer.MAX_VALUE || iN2 == Integer.MIN_VALUE || iN2 == Integer.MAX_VALUE || iN3 == Integer.MIN_VALUE || iN3 == Integer.MAX_VALUE || iN4 == Integer.MIN_VALUE || iN4 == Integer.MAX_VALUE) {
            iN = 0;
            iN2 = 0;
            iN3 = 0;
            iN4 = 0;
        }
        int i13 = iN3 - iN;
        int i14 = iN4 - iN2;
        this.Y = iN;
        this.Z = iN2;
        if (this.f5088g0 == 8) {
            this.U = 0;
            this.V = 0;
            return;
        }
        int[] iArr = this.f5105p0;
        int i15 = iArr[0];
        if (i15 == 1 && i13 < (i11 = this.U)) {
            i13 = i11;
        }
        if (iArr[1] == 1 && i14 < (i10 = this.V)) {
            i14 = i10;
        }
        this.U = i13;
        this.V = i14;
        int i16 = this.f5080c0;
        if (i14 < i16) {
            this.V = i16;
        }
        int i17 = this.f5078b0;
        if (i13 < i17) {
            this.U = i17;
        }
        int i18 = this.f5110v;
        if (i18 > 0 && i15 == 3) {
            this.U = Math.min(this.U, i18);
        }
        int i19 = this.f5113y;
        if (i19 > 0 && iArr[1] == 3) {
            this.V = Math.min(this.V, i19);
        }
        int i20 = this.U;
        if (i13 != i20) {
            this.f5089h = i20;
        }
        int i21 = this.V;
        if (i14 != i21) {
            this.f5091i = i21;
        }
    }

    public final void a(e eVar, d0.c cVar, HashSet hashSet, int i10, boolean z) {
        if (z) {
            if (!hashSet.contains(this)) {
                return;
            }
            j.b(eVar, cVar, this);
            hashSet.remove(this);
            b(cVar, eVar.W(64));
        }
        if (i10 == 0) {
            HashSet hashSet2 = this.I.f5066a;
            if (hashSet2 != null) {
                Iterator it = hashSet2.iterator();
                while (it.hasNext()) {
                    ((c) it.next()).f5069d.a(eVar, cVar, hashSet, i10, true);
                }
            }
            HashSet hashSet3 = this.K.f5066a;
            if (hashSet3 != null) {
                Iterator it2 = hashSet3.iterator();
                while (it2.hasNext()) {
                    ((c) it2.next()).f5069d.a(eVar, cVar, hashSet, i10, true);
                }
                return;
            }
            return;
        }
        HashSet hashSet4 = this.J.f5066a;
        if (hashSet4 != null) {
            Iterator it3 = hashSet4.iterator();
            while (it3.hasNext()) {
                ((c) it3.next()).f5069d.a(eVar, cVar, hashSet, i10, true);
            }
        }
        HashSet hashSet5 = this.L.f5066a;
        if (hashSet5 != null) {
            Iterator it4 = hashSet5.iterator();
            while (it4.hasNext()) {
                ((c) it4.next()).f5069d.a(eVar, cVar, hashSet, i10, true);
            }
        }
        HashSet hashSet6 = this.M.f5066a;
        if (hashSet6 != null) {
            Iterator it5 = hashSet6.iterator();
            while (it5.hasNext()) {
                ((c) it5.next()).f5069d.a(eVar, cVar, hashSet, i10, true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x055d  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x05bf  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x05d5  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x05d9  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x0656  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x0659  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x06a7  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x06af  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x070c  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0714  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b(d0.c cVar, boolean z) {
        boolean z4;
        boolean z10;
        d dVar;
        d dVar2;
        c cVar2;
        boolean[] zArr;
        boolean z11;
        boolean z12;
        int[] iArr;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z13;
        int i14;
        char c7;
        boolean z14;
        c cVar3;
        int i15;
        int[] iArr2;
        c cVar4;
        c cVar5;
        c cVar6;
        d0.g gVar;
        d0.g gVar2;
        d0.g gVar3;
        d0.g gVar4;
        d0.g gVar5;
        int[] iArr3;
        int i16;
        int i17;
        char c10;
        d dVar3;
        d0.c cVar7;
        d0.g gVar6;
        d0.g gVar7;
        d0.g gVar8;
        boolean z15;
        d0.g gVar9;
        d0.g gVar10;
        d0.c cVar8;
        boolean z16;
        k kVar;
        int i18;
        boolean zX;
        boolean zY;
        boolean z17;
        k kVar2;
        m mVar;
        boolean z18;
        int i19;
        boolean z19;
        c cVar9 = this.I;
        d0.g gVarK = cVar.k(cVar9);
        c cVar10 = this.K;
        d0.g gVarK2 = cVar.k(cVar10);
        c cVar11 = this.J;
        d0.g gVarK3 = cVar.k(cVar11);
        c cVar12 = this.L;
        d0.g gVarK4 = cVar.k(cVar12);
        c cVar13 = this.M;
        d0.g gVarK5 = cVar.k(cVar13);
        d dVar4 = this.T;
        if (dVar4 != null) {
            int[] iArr4 = dVar4.f5105p0;
            if (iArr4[0] == 2) {
                i19 = 1;
                z19 = true;
            } else {
                i19 = 1;
                z19 = false;
            }
            boolean z20 = iArr4[i19] == 2;
            int i20 = this.f5106q;
            if (i20 == i19) {
                z10 = z19;
                z4 = false;
            } else if (i20 != 2) {
                if (i20 != 3) {
                    z4 = z20;
                    z10 = z19;
                }
                z4 = false;
                z10 = false;
            } else {
                z4 = z20;
                z10 = false;
            }
        } else {
            z4 = false;
            z10 = false;
        }
        int i21 = this.f5088g0;
        boolean[] zArr2 = this.S;
        if (i21 == 8) {
            ArrayList arrayList = this.R;
            int size = arrayList.size();
            int i22 = 0;
            while (true) {
                if (i22 < size) {
                    ArrayList arrayList2 = arrayList;
                    HashSet hashSet = ((c) arrayList.get(i22)).f5066a;
                    if (hashSet != null && hashSet.size() > 0) {
                        break;
                    }
                    i22++;
                    arrayList = arrayList2;
                } else if (!zArr2[0] && !zArr2[1]) {
                    return;
                }
            }
        }
        boolean z21 = this.f5095k;
        if (z21 || this.l) {
            if (z21) {
                cVar.d(gVarK, this.Y);
                cVar.d(gVarK2, this.Y + this.U);
                if (z10 && (dVar2 = this.T) != null) {
                    e eVar = (e) dVar2;
                    WeakReference weakReference = eVar.H0;
                    if (weakReference == null || weakReference.get() == null || cVar9.d() > ((c) eVar.H0.get()).d()) {
                        eVar.H0 = new WeakReference(cVar9);
                    }
                    WeakReference weakReference2 = eVar.J0;
                    if (weakReference2 == null || weakReference2.get() == null || cVar10.d() > ((c) eVar.J0.get()).d()) {
                        eVar.J0 = new WeakReference(cVar10);
                    }
                }
            }
            if (this.l) {
                cVar.d(gVarK3, this.Z);
                cVar.d(gVarK4, this.Z + this.V);
                HashSet hashSet2 = cVar13.f5066a;
                if (hashSet2 != null && hashSet2.size() > 0) {
                    cVar.d(gVarK5, this.Z + this.f5076a0);
                }
                if (z4 && (dVar = this.T) != null) {
                    e eVar2 = (e) dVar;
                    WeakReference weakReference3 = eVar2.G0;
                    if (weakReference3 == null || weakReference3.get() == null || cVar11.d() > ((c) eVar2.G0.get()).d()) {
                        eVar2.G0 = new WeakReference(cVar11);
                    }
                    WeakReference weakReference4 = eVar2.I0;
                    if (weakReference4 == null || weakReference4.get() == null || cVar12.d() > ((c) eVar2.I0.get()).d()) {
                        eVar2.I0 = new WeakReference(cVar12);
                    }
                }
            }
            if (this.f5095k && this.l) {
                this.f5095k = false;
                this.l = false;
                return;
            }
        }
        boolean[] zArr3 = this.f5085f;
        if (!z || (kVar2 = this.f5081d) == null || (mVar = this.f5083e) == null) {
            cVar2 = cVar13;
            zArr = zArr2;
        } else {
            zArr = zArr2;
            g0.f fVar = kVar2.f5977h;
            cVar2 = cVar13;
            if (fVar.f5956j && kVar2.f5978i.f5956j && mVar.f5977h.f5956j && mVar.f5978i.f5956j) {
                cVar.d(gVarK, fVar.f5953g);
                cVar.d(gVarK2, this.f5081d.f5978i.f5953g);
                cVar.d(gVarK3, this.f5083e.f5977h.f5953g);
                cVar.d(gVarK4, this.f5083e.f5978i.f5953g);
                cVar.d(gVarK5, this.f5083e.f5963k.f5953g);
                if (this.T == null) {
                    z18 = false;
                } else {
                    if (z10 && zArr3[0] && !x()) {
                        cVar.f(cVar.k(this.T.K), gVarK2, 0, 8);
                    }
                    if (z4 && zArr3[1] && !y()) {
                        z18 = false;
                        cVar.f(cVar.k(this.T.L), gVarK4, 0, 8);
                    }
                }
                this.f5095k = z18;
                this.l = z18;
                return;
            }
        }
        if (this.T != null) {
            if (w(0)) {
                ((e) this.T).R(this, 0);
                zX = true;
            } else {
                zX = x();
            }
            if (w(1)) {
                ((e) this.T).R(this, 1);
                zY = true;
            } else {
                zY = y();
            }
            if (!zX && z10 && this.f5088g0 != 8 && cVar9.f5071f == null && cVar10.f5071f == null) {
                z17 = zX;
                cVar.f(cVar.k(this.T.K), gVarK2, 0, 1);
            } else {
                z17 = zX;
            }
            if (!zY && z4 && this.f5088g0 != 8 && cVar11.f5071f == null && cVar12.f5071f == null && cVar2 == null) {
                cVar.f(cVar.k(this.T.L), gVarK4, 0, 1);
            }
            z11 = zY;
            z12 = z17;
        } else {
            z11 = false;
            z12 = false;
        }
        int i23 = this.U;
        int i24 = this.f5078b0;
        if (i23 >= i24) {
            i24 = i23;
        }
        int i25 = this.V;
        int i26 = this.f5080c0;
        if (i25 >= i26) {
            i26 = i25;
        }
        int[] iArr5 = this.f5105p0;
        int i27 = iArr5[0];
        int i28 = i24;
        boolean z22 = i27 != 3;
        int i29 = iArr5[1];
        int i30 = i26;
        boolean z23 = i29 != 3;
        int i31 = this.X;
        this.A = i31;
        float f10 = this.W;
        this.B = f10;
        int i32 = this.r;
        int i33 = this.f5107s;
        if (f10 > 0.0f) {
            iArr = iArr5;
            if (this.f5088g0 != 8) {
                if (i27 == 3 && i32 == 0) {
                    i32 = 3;
                }
                if (i29 == 3 && i33 == 0) {
                    i33 = 3;
                }
                if (i27 == 3 && i29 == 3 && i32 == 3 && i33 == 3) {
                    if (i31 == -1) {
                        if (z22 && !z23) {
                            this.A = 0;
                        } else if (!z22 && z23) {
                            this.A = 1;
                            if (i31 == -1) {
                                this.B = 1.0f / f10;
                            }
                        }
                    }
                    if (this.A == 0 && (!cVar11.h() || !cVar12.h())) {
                        this.A = 1;
                    } else if (this.A == 1 && (!cVar9.h() || !cVar10.h())) {
                        this.A = 0;
                    }
                    if (this.A == -1 && (!cVar11.h() || !cVar12.h() || !cVar9.h() || !cVar10.h())) {
                        if (cVar11.h() && cVar12.h()) {
                            this.A = 0;
                        } else if (cVar9.h() && cVar10.h()) {
                            this.B = 1.0f / this.B;
                            this.A = 1;
                        }
                    }
                    if (this.A == -1) {
                        int i34 = this.f5109u;
                        if (i34 > 0 && this.f5112x == 0) {
                            this.A = 0;
                        } else if (i34 == 0 && this.f5112x > 0) {
                            this.B = 1.0f / this.B;
                            this.A = 1;
                        }
                    }
                } else if (i27 == 3 && i32 == 3) {
                    this.A = 0;
                    i12 = (int) (f10 * i25);
                    if (i29 != 3) {
                        i11 = i33;
                        i13 = i30;
                        z13 = false;
                        i10 = 4;
                    } else {
                        i10 = i32;
                        i11 = i33;
                        i13 = i30;
                        z13 = true;
                    }
                } else {
                    if (i29 == 3 && i33 == 3) {
                        this.A = 1;
                        if (i31 == -1) {
                            this.B = 1.0f / f10;
                        }
                        i13 = (int) (this.B * i23);
                        i10 = i32;
                        if (i27 != 3) {
                            i12 = i28;
                            z13 = false;
                            i11 = 4;
                        } else {
                            i11 = i33;
                            i12 = i28;
                        }
                    }
                    z13 = true;
                }
                i10 = i32;
                i11 = i33;
                i12 = i28;
                i13 = i30;
                z13 = true;
            }
            int[] iArr6 = this.f5108t;
            iArr6[0] = i10;
            iArr6[1] = i11;
            if (!z13) {
                int i35 = this.A;
                i14 = -1;
                boolean z24 = i35 == 0 || i35 == -1;
                if (z13 && ((i18 = this.A) == 1 || i18 == i14)) {
                    c7 = 0;
                    z14 = true;
                } else {
                    c7 = 0;
                    z14 = false;
                }
                boolean z25 = iArr[c7] == 2 && (this instanceof e);
                int i36 = z25 ? 0 : i12;
                cVar3 = this.P;
                boolean z26 = !cVar3.h();
                boolean z27 = zArr[0];
                boolean z28 = zArr[1];
                i15 = this.f5102o;
                iArr2 = this.C;
                if (i15 == 2 || this.f5095k) {
                    cVar4 = cVar12;
                    cVar5 = cVar3;
                    cVar6 = cVar2;
                    gVar = gVarK3;
                    gVar2 = gVarK5;
                    gVar3 = gVarK4;
                    gVar4 = gVarK2;
                    gVar5 = gVarK;
                    iArr3 = iArr2;
                } else {
                    if (z && (kVar = this.f5081d) != null) {
                        g0.f fVar2 = kVar.f5977h;
                        if (fVar2.f5956j && kVar.f5978i.f5956j) {
                            if (z) {
                                cVar.d(gVarK, fVar2.f5953g);
                                cVar.d(gVarK2, this.f5081d.f5978i.f5953g);
                                if (this.T != null && z10 && zArr3[0] && !x()) {
                                    cVar.f(cVar.k(this.T.K), gVarK2, 0, 8);
                                }
                                gVar4 = gVarK2;
                                gVar5 = gVarK;
                                cVar4 = cVar12;
                                cVar5 = cVar3;
                                cVar6 = cVar2;
                                gVar = gVarK3;
                                gVar2 = gVarK5;
                                gVar3 = gVarK4;
                                iArr3 = iArr2;
                            } else {
                                cVar4 = cVar12;
                                cVar5 = cVar3;
                                cVar6 = cVar2;
                                gVar = gVarK3;
                                gVar2 = gVarK5;
                                gVar3 = gVarK4;
                                gVar4 = gVarK2;
                                gVar5 = gVarK;
                                iArr3 = iArr2;
                            }
                        }
                    }
                    d dVar5 = this.T;
                    d0.g gVarK6 = dVar5 != null ? cVar.k(dVar5.K) : null;
                    d dVar6 = this.T;
                    gVar2 = gVarK5;
                    cVar6 = cVar2;
                    gVar3 = gVarK4;
                    iArr3 = iArr2;
                    cVar4 = cVar12;
                    gVar = gVarK3;
                    gVar4 = gVarK2;
                    cVar5 = cVar3;
                    gVar5 = gVarK;
                    d(cVar, true, z10, z4, zArr3[0], dVar6 != null ? cVar.k(dVar6.I) : null, gVarK6, iArr[0], z25, this.I, this.K, this.Y, i36, this.f5078b0, iArr2[0], this.f5082d0, z24, iArr[1] == 3, z12, z11, z27, i10, i11, this.f5109u, this.f5110v, this.f5111w, z26);
                }
                if (z) {
                    dVar3 = this;
                    m mVar2 = dVar3.f5083e;
                    if (mVar2 != null) {
                        g0.f fVar3 = mVar2.f5977h;
                        if (fVar3.f5956j && mVar2.f5978i.f5956j) {
                            cVar7 = cVar;
                            gVar8 = gVar;
                            cVar7.d(gVar8, fVar3.f5953g);
                            gVar7 = gVar3;
                            cVar7.d(gVar7, dVar3.f5083e.f5978i.f5953g);
                            gVar6 = gVar2;
                            cVar7.d(gVar6, dVar3.f5083e.f5963k.f5953g);
                            d dVar7 = dVar3.T;
                            if (dVar7 == null || z11 || !z4) {
                                i16 = 8;
                                i17 = 0;
                                c10 = 1;
                            } else {
                                c10 = 1;
                                if (zArr3[1]) {
                                    i16 = 8;
                                    i17 = 0;
                                    cVar7.f(cVar7.k(dVar7.L), gVar7, 0, 8);
                                } else {
                                    i16 = 8;
                                    i17 = 0;
                                }
                            }
                            z15 = false;
                            if ((dVar3.f5104p != 2 ? false : z15) || dVar3.l) {
                                gVar9 = gVar7;
                                gVar10 = gVar8;
                            } else {
                                boolean z29 = iArr[c10] == 2 && (dVar3 instanceof e);
                                if (z29) {
                                    i13 = 0;
                                }
                                d dVar8 = dVar3.T;
                                d0.g gVarK7 = dVar8 != null ? cVar7.k(dVar8.L) : null;
                                d dVar9 = dVar3.T;
                                d0.g gVarK8 = dVar9 != null ? cVar7.k(dVar9.J) : null;
                                int i37 = dVar3.f5076a0;
                                if (i37 > 0 || dVar3.f5088g0 == i16) {
                                    c cVar14 = cVar6;
                                    if (cVar14.f5071f != null) {
                                        cVar7.e(gVar6, gVar8, i37, i16);
                                        cVar7.e(gVar6, cVar7.k(cVar14.f5071f), cVar14.e(), i16);
                                        if (z4) {
                                            cVar7.f(gVarK7, cVar7.k(cVar4), i17, 5);
                                        }
                                        z16 = false;
                                        gVar9 = gVar7;
                                        gVar10 = gVar8;
                                        d(cVar, false, z4, z10, zArr3[c10], gVarK8, gVarK7, iArr[c10], z29, dVar3.J, dVar3.L, dVar3.Z, i13, dVar3.f5080c0, iArr3[c10], dVar3.f5084e0, z14, iArr[i17] == 3, z11, z12, z28, i11, i10, dVar3.f5112x, dVar3.f5113y, dVar3.z, z16);
                                    } else {
                                        if (dVar3.f5088g0 == i16) {
                                            cVar7.e(gVar6, gVar8, cVar14.e(), i16);
                                        } else {
                                            cVar7.e(gVar6, gVar8, i37, i16);
                                        }
                                        z16 = z26;
                                        gVar9 = gVar7;
                                        gVar10 = gVar8;
                                        d(cVar, false, z4, z10, zArr3[c10], gVarK8, gVarK7, iArr[c10], z29, dVar3.J, dVar3.L, dVar3.Z, i13, dVar3.f5080c0, iArr3[c10], dVar3.f5084e0, z14, iArr[i17] == 3, z11, z12, z28, i11, i10, dVar3.f5112x, dVar3.f5113y, dVar3.z, z16);
                                    }
                                } else {
                                    z16 = z26;
                                    gVar9 = gVar7;
                                    gVar10 = gVar8;
                                    d(cVar, false, z4, z10, zArr3[c10], gVarK8, gVarK7, iArr[c10], z29, dVar3.J, dVar3.L, dVar3.Z, i13, dVar3.f5080c0, iArr3[c10], dVar3.f5084e0, z14, iArr[i17] == 3, z11, z12, z28, i11, i10, dVar3.f5112x, dVar3.f5113y, dVar3.z, z16);
                                }
                            }
                            if (z13) {
                                cVar8 = cVar;
                            } else if (this.A == 1) {
                                float f11 = this.B;
                                d0.b bVarL = cVar.l();
                                bVarL.f4209d.g(gVar9, -1.0f);
                                bVarL.f4209d.g(gVar10, 1.0f);
                                bVarL.f4209d.g(gVar4, f11);
                                bVarL.f4209d.g(gVar5, -f11);
                                cVar8 = cVar;
                                cVar8.c(bVarL);
                            } else {
                                cVar8 = cVar;
                                float f12 = this.B;
                                d0.b bVarL2 = cVar.l();
                                bVarL2.f4209d.g(gVar4, -1.0f);
                                bVarL2.f4209d.g(gVar5, 1.0f);
                                bVarL2.f4209d.g(gVar9, f12);
                                bVarL2.f4209d.g(gVar10, -f12);
                                cVar8.c(bVarL2);
                            }
                            if (cVar5.h()) {
                                c cVar15 = cVar5;
                                d dVar10 = cVar15.f5071f.f5069d;
                                float radians = (float) Math.toRadians(this.D + 90.0f);
                                int iE = cVar15.e();
                                d0.g gVarK9 = cVar8.k(i(2));
                                d0.g gVarK10 = cVar8.k(i(3));
                                d0.g gVarK11 = cVar8.k(i(4));
                                d0.g gVarK12 = cVar8.k(i(5));
                                d0.g gVarK13 = cVar8.k(dVar10.i(2));
                                d0.g gVarK14 = cVar8.k(dVar10.i(3));
                                d0.g gVarK15 = cVar8.k(dVar10.i(4));
                                d0.g gVarK16 = cVar8.k(dVar10.i(5));
                                d0.b bVarL3 = cVar.l();
                                double d10 = radians;
                                double dSin = Math.sin(d10);
                                double d11 = iE;
                                Double.isNaN(d11);
                                bVarL3.f4209d.g(gVarK14, 0.5f);
                                bVarL3.f4209d.g(gVarK16, 0.5f);
                                bVarL3.f4209d.g(gVarK10, -0.5f);
                                bVarL3.f4209d.g(gVarK12, -0.5f);
                                bVarL3.f4207b = -((float) (dSin * d11));
                                cVar8.c(bVarL3);
                                d0.b bVarL4 = cVar.l();
                                double dCos = Math.cos(d10);
                                Double.isNaN(d11);
                                bVarL4.f4209d.g(gVarK13, 0.5f);
                                bVarL4.f4209d.g(gVarK15, 0.5f);
                                bVarL4.f4209d.g(gVarK9, -0.5f);
                                bVarL4.f4209d.g(gVarK11, -0.5f);
                                bVarL4.f4207b = -((float) (dCos * d11));
                                cVar8.c(bVarL4);
                            }
                            this.f5095k = false;
                            this.l = false;
                        }
                    }
                    cVar7 = cVar;
                    gVar6 = gVar2;
                    gVar7 = gVar3;
                    gVar8 = gVar;
                    i16 = 8;
                    i17 = 0;
                    c10 = 1;
                } else {
                    i16 = 8;
                    i17 = 0;
                    c10 = 1;
                    dVar3 = this;
                    cVar7 = cVar;
                    gVar6 = gVar2;
                    gVar7 = gVar3;
                    gVar8 = gVar;
                }
                z15 = true;
                if (dVar3.f5104p != 2 ? false : z15) {
                    gVar9 = gVar7;
                    gVar10 = gVar8;
                }
                if (z13) {
                }
                if (cVar5.h()) {
                }
                this.f5095k = false;
                this.l = false;
            }
            i14 = -1;
            if (z13) {
                c7 = 0;
                z14 = false;
            }
            if (iArr[c7] == 2) {
            }
            if (z25) {
            }
            cVar3 = this.P;
            boolean z262 = !cVar3.h();
            boolean z272 = zArr[0];
            boolean z282 = zArr[1];
            i15 = this.f5102o;
            iArr2 = this.C;
            if (i15 == 2) {
                cVar4 = cVar12;
                cVar5 = cVar3;
                cVar6 = cVar2;
                gVar = gVarK3;
                gVar2 = gVarK5;
                gVar3 = gVarK4;
                gVar4 = gVarK2;
                gVar5 = gVarK;
                iArr3 = iArr2;
            }
            if (z) {
            }
            z15 = true;
            if (dVar3.f5104p != 2 ? false : z15) {
            }
            if (z13) {
            }
            if (cVar5.h()) {
            }
            this.f5095k = false;
            this.l = false;
        }
        iArr = iArr5;
        i10 = i32;
        i11 = i33;
        i12 = i28;
        i13 = i30;
        z13 = false;
        int[] iArr62 = this.f5108t;
        iArr62[0] = i10;
        iArr62[1] = i11;
        if (!z13) {
        }
        if (z13) {
        }
        if (iArr[c7] == 2) {
        }
        if (z25) {
        }
        cVar3 = this.P;
        boolean z2622 = !cVar3.h();
        boolean z2722 = zArr[0];
        boolean z2822 = zArr[1];
        i15 = this.f5102o;
        iArr2 = this.C;
        if (i15 == 2) {
        }
        if (z) {
        }
        z15 = true;
        if (dVar3.f5104p != 2 ? false : z15) {
        }
        if (z13) {
        }
        if (cVar5.h()) {
        }
        this.f5095k = false;
        this.l = false;
    }

    public boolean c() {
        return this.f5088g0 != 8;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0391 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x049d  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x04b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:311:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x04d1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:324:0x04e7  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0529  */
    /* JADX WARN: Removed duplicated region for block: B:353:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(d0.c cVar, boolean z, boolean z4, boolean z10, boolean z11, d0.g gVar, d0.g gVar2, int i10, boolean z12, c cVar2, c cVar3, int i11, int i12, int i13, int i14, float f10, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, int i15, int i16, int i17, int i18, float f11, boolean z18) {
        boolean z19;
        boolean z20;
        int iMin;
        boolean z21;
        int i19;
        int i20;
        boolean z22;
        boolean z23;
        d0.g gVarK;
        d0.g gVarK2;
        d0.g gVar3;
        d0.g gVar4;
        d0.g gVar5;
        d0.g gVar6;
        boolean z24;
        int i21;
        char c7;
        int i22;
        c cVar4;
        d0.g gVar7;
        int i23;
        d0.g gVar8;
        int i24;
        boolean z25;
        boolean z26;
        d0.g gVar9;
        int iE;
        boolean z27;
        int i25;
        int i26;
        boolean z28;
        d dVar;
        c cVar5;
        d0.g gVar10;
        d0.g gVar11;
        boolean z29;
        int i27;
        d dVar2;
        d dVar3;
        d0.g gVar12;
        d0.g gVar13;
        boolean z30;
        boolean z31;
        d0.g gVar14;
        d0.g gVar15;
        d dVar4;
        int iMax;
        HashSet hashSet;
        int i28;
        int i29;
        int i30;
        int i31;
        boolean z32;
        boolean z33;
        boolean z34;
        int i32;
        int i33;
        d0.g gVar16;
        int iE2;
        int i34 = i17;
        int i35 = i18;
        d0.g gVarK3 = cVar.k(cVar2);
        d0.g gVarK4 = cVar.k(cVar3);
        d0.g gVarK5 = cVar.k(cVar2.f5071f);
        d0.g gVarK6 = cVar.k(cVar3.f5071f);
        boolean zH = cVar2.h();
        boolean zH2 = cVar3.h();
        boolean zH3 = this.P.h();
        int i36 = zH2 ? (zH ? 1 : 0) + 1 : zH ? 1 : 0;
        if (zH3) {
            i36++;
        }
        int i37 = i36;
        int i38 = z13 ? 3 : i15;
        int iC = d0.f.c(i10);
        boolean z35 = (iC == 0 || iC == 1 || iC != 2 || i38 == 4) ? false : true;
        int i39 = this.f5089h;
        if (i39 == -1 || !z) {
            i39 = i12;
            z19 = z35;
        } else {
            this.f5089h = -1;
            z19 = false;
        }
        int i40 = this.f5091i;
        if (i40 == -1 || z) {
            z20 = z19;
        } else {
            this.f5091i = -1;
            i39 = i40;
            z20 = false;
        }
        int i41 = i39;
        if (this.f5088g0 == 8) {
            iMin = 0;
            z20 = false;
        } else {
            iMin = i41;
        }
        if (z18) {
            if (!zH && !zH2 && !zH3) {
                cVar.d(gVarK3, i11);
            } else if (zH && !zH2) {
                z21 = zH3;
                cVar.e(gVarK3, gVarK5, cVar2.e(), 8);
            }
            z21 = zH3;
        } else {
            z21 = zH3;
        }
        if (z20) {
            if (i37 == 2 || z13 || !(i38 == 1 || i38 == 0)) {
                if (i34 == -2) {
                    i34 = iMin;
                }
                if (i35 == -2) {
                    i35 = iMin;
                }
                if (iMin > 0 && i38 != 1) {
                    iMin = 0;
                }
                if (i34 > 0) {
                    cVar.f(gVarK4, gVarK3, i34, 8);
                    iMin = Math.max(iMin, i34);
                }
                if (i35 > 0) {
                    if (!z4 || i38 != 1) {
                        cVar.g(gVarK4, gVarK3, i35, 8);
                    }
                    iMin = Math.min(iMin, i35);
                }
                if (i38 == 1) {
                    if (z4) {
                        cVar.e(gVarK4, gVarK3, iMin, 8);
                    } else if (z15) {
                        cVar.e(gVarK4, gVarK3, iMin, 5);
                        cVar.g(gVarK4, gVarK3, iMin, 8);
                    } else {
                        cVar.e(gVarK4, gVarK3, iMin, 5);
                        cVar.g(gVarK4, gVarK3, iMin, 8);
                    }
                } else if (i38 == 2) {
                    int i42 = cVar2.f5070e;
                    if (i42 == 3 || i42 == 5) {
                        gVarK = cVar.k(this.T.i(3));
                        gVarK2 = cVar.k(this.T.i(5));
                    } else {
                        gVarK = cVar.k(this.T.i(2));
                        gVarK2 = cVar.k(this.T.i(4));
                    }
                    d0.b bVarL = cVar.l();
                    i19 = i37;
                    bVarL.f4209d.g(gVarK4, -1.0f);
                    bVarL.f4209d.g(gVarK3, 1.0f);
                    bVarL.f4209d.g(gVarK2, f11);
                    bVarL.f4209d.g(gVarK, -f11);
                    cVar.c(bVarL);
                    z23 = z11;
                    i20 = i34;
                    z22 = z4 ? false : z20;
                } else {
                    i19 = i37;
                    i20 = i34;
                    z22 = z20;
                    z23 = true;
                }
            } else {
                int iMax2 = Math.max(i34, iMin);
                if (i35 > 0) {
                    iMax2 = Math.min(i35, iMax2);
                }
                cVar.e(gVarK4, gVarK3, iMax2, 8);
                z23 = z11;
                i19 = i37;
                i20 = i34;
                z22 = false;
            }
            if (z18) {
                gVar3 = gVar;
                gVar4 = gVar2;
                gVar5 = gVarK4;
                gVar6 = gVarK3;
                z24 = z23;
                i21 = i19;
                c7 = 1;
                i22 = 2;
            } else if (z15) {
                gVar3 = gVar;
                gVar4 = gVar2;
                gVar5 = gVarK4;
                gVar6 = gVarK3;
                z24 = z23;
                i21 = i19;
                i22 = 2;
                c7 = 1;
            } else {
                if (!zH && !zH2 && !z21) {
                    cVar5 = cVar3;
                    gVar15 = gVarK4;
                    z29 = z23;
                    gVar14 = gVarK6;
                } else if (!zH || zH2) {
                    if (zH || !zH2) {
                        gVar7 = gVarK6;
                        if (zH && zH2) {
                            d dVar5 = cVar2.f5071f.f5069d;
                            d dVar6 = cVar3.f5071f.f5069d;
                            d dVar7 = this.T;
                            int i43 = 6;
                            if (z22) {
                                if (i38 != 0) {
                                    if (i38 == 2) {
                                        if ((dVar5 instanceof a) || (dVar6 instanceof a)) {
                                            i23 = i38;
                                            i24 = 5;
                                            z25 = true;
                                            z26 = true;
                                            z27 = false;
                                            i25 = 6;
                                            i26 = 4;
                                        } else {
                                            i23 = i38;
                                            i24 = 5;
                                            z25 = true;
                                            z26 = true;
                                            z27 = false;
                                            i25 = 6;
                                            i26 = 5;
                                        }
                                    } else if (i38 == 1) {
                                        i23 = i38;
                                        i24 = 8;
                                        z25 = true;
                                        z26 = true;
                                        z27 = false;
                                        i25 = 6;
                                        i26 = 4;
                                    } else if (i38 == 3) {
                                        i23 = i38;
                                        if (this.A == -1) {
                                            if (z16) {
                                                gVar8 = gVar2;
                                                i24 = 8;
                                                z25 = true;
                                                z26 = true;
                                                z27 = true;
                                                i25 = z4 ? 5 : 4;
                                            } else {
                                                gVar8 = gVar2;
                                                i24 = 8;
                                                z25 = true;
                                                z26 = true;
                                                z27 = true;
                                                i25 = 8;
                                            }
                                        } else if (z13) {
                                            if (i16 == 2 || i16 == 1) {
                                                i24 = 5;
                                                i30 = 4;
                                            } else {
                                                i24 = 8;
                                                i30 = 5;
                                            }
                                            i26 = i30;
                                            z25 = true;
                                            z26 = true;
                                            z27 = true;
                                            i25 = 6;
                                        } else if (i35 > 0) {
                                            gVar8 = gVar2;
                                            i24 = 5;
                                            z25 = true;
                                            z26 = true;
                                            z27 = true;
                                            i25 = 6;
                                        } else {
                                            if (i35 != 0 || i20 != 0) {
                                                gVar8 = gVar2;
                                                i24 = 5;
                                            } else if (z16) {
                                                i24 = (dVar5 == dVar7 || dVar6 == dVar7) ? 5 : 4;
                                                gVar8 = gVar2;
                                            } else {
                                                gVar8 = gVar2;
                                                i24 = 5;
                                                z25 = true;
                                                z26 = true;
                                                z27 = true;
                                                i25 = 6;
                                                i26 = 8;
                                                if (z26 && gVarK5 == gVar7 && dVar5 != dVar7) {
                                                    z26 = false;
                                                    z28 = false;
                                                } else {
                                                    z28 = true;
                                                }
                                                if (z25) {
                                                    dVar = dVar6;
                                                    cVar5 = cVar3;
                                                    gVar10 = gVar7;
                                                    gVar11 = gVarK4;
                                                    z29 = z23;
                                                    i27 = i20;
                                                    dVar2 = dVar7;
                                                    dVar3 = dVar5;
                                                    gVar12 = gVarK5;
                                                    gVar13 = gVarK3;
                                                    z30 = z4;
                                                } else {
                                                    if (z22 || z14 || z16 || gVarK5 != gVar || gVar7 != gVar8) {
                                                        z30 = z4;
                                                        i28 = i25;
                                                        i29 = i24;
                                                    } else {
                                                        z30 = false;
                                                        i29 = 8;
                                                        z28 = false;
                                                        i28 = 8;
                                                    }
                                                    dVar = dVar6;
                                                    cVar5 = cVar3;
                                                    z29 = z23;
                                                    dVar3 = dVar5;
                                                    i27 = i20;
                                                    gVar10 = gVar7;
                                                    gVar12 = gVarK5;
                                                    dVar2 = dVar7;
                                                    gVar11 = gVarK4;
                                                    gVar13 = gVarK3;
                                                    cVar.b(gVarK3, gVarK5, cVar2.e(), f10, gVar7, gVarK4, cVar3.e(), i28);
                                                    i24 = i29;
                                                }
                                                z31 = z28;
                                                if (this.f5088g0 != 8 && ((hashSet = cVar5.f5066a) == null || hashSet.size() <= 0)) {
                                                    return;
                                                }
                                                gVar14 = gVar10;
                                                if (z26) {
                                                    gVar15 = gVar11;
                                                } else {
                                                    if (z30 && gVar12 != gVar14 && !z22 && ((dVar3 instanceof a) || (dVar instanceof a))) {
                                                        i24 = 6;
                                                    }
                                                    cVar.f(gVar13, gVar12, cVar2.e(), i24);
                                                    gVar15 = gVar11;
                                                    cVar.g(gVar15, gVar14, -cVar3.e(), i24);
                                                }
                                                if (z30 || !z17 || (dVar3 instanceof a) || (dVar instanceof a)) {
                                                    dVar4 = dVar2;
                                                } else {
                                                    dVar4 = dVar2;
                                                    if (dVar != dVar4) {
                                                        i24 = 6;
                                                        iMax = 6;
                                                        z31 = true;
                                                    }
                                                    if (z31) {
                                                        if (z27 && (!z16 || z10)) {
                                                            if (dVar3 != dVar4 && dVar != dVar4) {
                                                                i43 = iMax;
                                                            }
                                                            if ((dVar3 instanceof h) || (dVar instanceof h)) {
                                                                i43 = 5;
                                                            }
                                                            if ((dVar3 instanceof a) || (dVar instanceof a)) {
                                                                i43 = 5;
                                                            }
                                                            iMax = Math.max(z16 ? 5 : i43, iMax);
                                                        }
                                                        int iMin2 = iMax;
                                                        if (z30) {
                                                            iMin2 = Math.min(i24, iMin2);
                                                            if (z13 && !z16 && (dVar3 == dVar4 || dVar == dVar4)) {
                                                                iMin2 = 4;
                                                            }
                                                        }
                                                        cVar.e(gVar13, gVar12, cVar2.e(), iMin2);
                                                        cVar.e(gVar15, gVar14, -cVar3.e(), iMin2);
                                                    }
                                                    if (z30) {
                                                        d0.g gVar17 = gVar12;
                                                        int iE3 = gVar == gVar17 ? cVar2.e() : 0;
                                                        if (gVar17 != gVar) {
                                                            cVar.f(gVar13, gVar, iE3, 5);
                                                        }
                                                    }
                                                    if (!z30 || !z22 || i13 != 0 || i27 != 0) {
                                                        i33 = 5;
                                                    } else if (z22 && i23 == 3) {
                                                        cVar.f(gVar15, gVar13, 0, 8);
                                                        i33 = 5;
                                                    } else {
                                                        cVar.f(gVar15, gVar13, 0, 5);
                                                        i33 = 5;
                                                    }
                                                }
                                                iMax = i26;
                                                if (z31) {
                                                }
                                                if (z30) {
                                                }
                                                if (!z30) {
                                                    i33 = 5;
                                                }
                                            }
                                            z25 = true;
                                            z26 = true;
                                            z27 = true;
                                            i25 = 6;
                                            i26 = 4;
                                            if (z26) {
                                                z28 = true;
                                                if (z25) {
                                                }
                                                z31 = z28;
                                                if (this.f5088g0 != 8) {
                                                }
                                                gVar14 = gVar10;
                                                if (z26) {
                                                }
                                                if (z30) {
                                                    dVar4 = dVar2;
                                                    iMax = i26;
                                                    if (z31) {
                                                    }
                                                    if (z30) {
                                                    }
                                                    if (!z30) {
                                                    }
                                                }
                                            }
                                        }
                                        i26 = 5;
                                        if (z26) {
                                        }
                                    } else {
                                        i23 = i38;
                                        gVar8 = gVar2;
                                        i24 = 5;
                                        z25 = false;
                                        z26 = false;
                                    }
                                    if (z30 && z29) {
                                        if (cVar5.f5071f != null) {
                                            iE2 = cVar3.e();
                                            gVar16 = gVar2;
                                        } else {
                                            gVar16 = gVar2;
                                            iE2 = 0;
                                        }
                                        if (gVar14 != gVar16) {
                                            cVar.f(gVar16, gVar15, iE2, i33);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                if (i35 != 0 || i20 != 0) {
                                    i31 = 5;
                                    z32 = true;
                                    z33 = false;
                                    z34 = true;
                                    i32 = 5;
                                } else if (gVarK5.f4238f && gVar7.f4238f) {
                                    cVar.e(gVarK3, gVarK5, cVar2.e(), 8);
                                    cVar.e(gVarK4, gVar7, -cVar3.e(), 8);
                                    return;
                                } else {
                                    i31 = 8;
                                    z32 = false;
                                    z33 = true;
                                    z34 = false;
                                    i32 = 8;
                                }
                                if ((dVar5 instanceof a) || (dVar6 instanceof a)) {
                                    i24 = i31;
                                    z26 = z34;
                                    i25 = 6;
                                    i26 = 4;
                                } else {
                                    i24 = i31;
                                    z26 = z34;
                                    i26 = i32;
                                    i25 = 6;
                                }
                                z27 = z33;
                                z25 = z32;
                                i23 = i38;
                                gVar8 = gVar2;
                                if (z26) {
                                }
                                if (z30) {
                                    return;
                                } else {
                                    return;
                                }
                            }
                            i23 = i38;
                            if (gVarK5.f4238f && gVar7.f4238f) {
                                cVar.b(gVarK3, gVarK5, cVar2.e(), f10, gVar7, gVarK4, cVar3.e(), 8);
                                if (z4 && z23) {
                                    if (cVar3.f5071f != null) {
                                        iE = cVar3.e();
                                        gVar9 = gVar2;
                                    } else {
                                        gVar9 = gVar2;
                                        iE = 0;
                                    }
                                    if (gVar7 != gVar9) {
                                        cVar.f(gVar9, gVarK4, iE, 5);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            gVar8 = gVar2;
                            i24 = 5;
                            z25 = true;
                            z26 = true;
                            z27 = false;
                            i25 = 6;
                            i26 = 4;
                            if (z26) {
                            }
                            if (z30) {
                            }
                        }
                    } else {
                        gVar7 = gVarK6;
                        cVar.e(gVarK4, gVar7, -cVar3.e(), 8);
                        if (z4) {
                            cVar.f(gVarK3, gVar, 0, 5);
                        }
                    }
                    cVar5 = cVar3;
                    gVar14 = gVar7;
                    gVar15 = gVarK4;
                    z29 = z23;
                } else {
                    cVar5 = cVar3;
                    gVar15 = gVarK4;
                    z29 = z23;
                    i33 = (z4 && (cVar2.f5071f.f5069d instanceof a)) ? 8 : 5;
                    gVar14 = gVarK6;
                    z30 = z4;
                    if (z30) {
                    }
                }
                z30 = z4;
                i33 = 5;
                if (z30) {
                }
            }
            if (i21 >= i22 && z4 && z24) {
                cVar.f(gVar6, gVar3, 0, 8);
                c cVar6 = this.M;
                boolean z36 = z || cVar6.f5071f == null;
                if (!z && (cVar4 = cVar6.f5071f) != null) {
                    d dVar8 = cVar4.f5069d;
                    if (dVar8.W != 0.0f) {
                        int[] iArr = dVar8.f5105p0;
                        z36 = iArr[0] == 3 && iArr[c7] == 3;
                    }
                }
                if (z36) {
                    cVar.f(gVar4, gVar5, 0, 8);
                    return;
                }
                return;
            }
            return;
        }
        if (z12) {
            cVar.e(gVarK4, gVarK3, 0, 3);
            if (i13 > 0) {
                cVar.f(gVarK4, gVarK3, i13, 8);
            }
            if (i14 < Integer.MAX_VALUE) {
                cVar.g(gVarK4, gVarK3, i14, 8);
            }
        } else {
            cVar.e(gVarK4, gVarK3, iMin, 8);
        }
        z23 = z11;
        i19 = i37;
        i20 = i34;
        z22 = z20;
        if (z18) {
        }
        if (i21 >= i22) {
        }
    }

    public final void e(int i10, d dVar, int i11, int i12) {
        boolean z;
        if (i10 == 7) {
            if (i11 != 7) {
                if (i11 == 2 || i11 == 4) {
                    e(2, dVar, i11, 0);
                    e(4, dVar, i11, 0);
                    i(7).a(dVar.i(i11), 0);
                    return;
                } else {
                    if (i11 == 3 || i11 == 5) {
                        e(3, dVar, i11, 0);
                        e(5, dVar, i11, 0);
                        i(7).a(dVar.i(i11), 0);
                        return;
                    }
                    return;
                }
            }
            c cVarI = i(2);
            c cVarI2 = i(4);
            c cVarI3 = i(3);
            c cVarI4 = i(5);
            boolean z4 = true;
            if ((cVarI == null || !cVarI.h()) && (cVarI2 == null || !cVarI2.h())) {
                e(2, dVar, 2, 0);
                e(4, dVar, 4, 0);
                z = true;
            } else {
                z = false;
            }
            if ((cVarI3 == null || !cVarI3.h()) && (cVarI4 == null || !cVarI4.h())) {
                e(3, dVar, 3, 0);
                e(5, dVar, 5, 0);
            } else {
                z4 = false;
            }
            if (z && z4) {
                i(7).a(dVar.i(7), 0);
                return;
            } else if (z) {
                i(8).a(dVar.i(8), 0);
                return;
            } else {
                if (z4) {
                    i(9).a(dVar.i(9), 0);
                    return;
                }
                return;
            }
        }
        if (i10 == 8 && (i11 == 2 || i11 == 4)) {
            c cVarI5 = i(2);
            c cVarI6 = dVar.i(i11);
            c cVarI7 = i(4);
            cVarI5.a(cVarI6, 0);
            cVarI7.a(cVarI6, 0);
            i(8).a(cVarI6, 0);
            return;
        }
        if (i10 == 9 && (i11 == 3 || i11 == 5)) {
            c cVarI8 = dVar.i(i11);
            i(3).a(cVarI8, 0);
            i(5).a(cVarI8, 0);
            i(9).a(cVarI8, 0);
            return;
        }
        if (i10 == 8 && i11 == 8) {
            i(2).a(dVar.i(2), 0);
            i(4).a(dVar.i(4), 0);
            i(8).a(dVar.i(i11), 0);
            return;
        }
        if (i10 == 9 && i11 == 9) {
            i(3).a(dVar.i(3), 0);
            i(5).a(dVar.i(5), 0);
            i(9).a(dVar.i(i11), 0);
            return;
        }
        c cVarI9 = i(i10);
        c cVarI10 = dVar.i(i11);
        if (cVarI9.i(cVarI10)) {
            if (i10 == 6) {
                c cVarI11 = i(3);
                c cVarI12 = i(5);
                if (cVarI11 != null) {
                    cVarI11.j();
                }
                if (cVarI12 != null) {
                    cVarI12.j();
                }
            } else if (i10 == 3 || i10 == 5) {
                c cVarI13 = i(6);
                if (cVarI13 != null) {
                    cVarI13.j();
                }
                c cVarI14 = i(7);
                if (cVarI14.f5071f != cVarI10) {
                    cVarI14.j();
                }
                c cVarF = i(i10).f();
                c cVarI15 = i(9);
                if (cVarI15.h()) {
                    cVarF.j();
                    cVarI15.j();
                }
            } else if (i10 == 2 || i10 == 4) {
                c cVarI16 = i(7);
                if (cVarI16.f5071f != cVarI10) {
                    cVarI16.j();
                }
                c cVarF2 = i(i10).f();
                c cVarI17 = i(8);
                if (cVarI17.h()) {
                    cVarF2.j();
                    cVarI17.j();
                }
            }
            cVarI9.a(cVarI10, i12);
        }
    }

    public final void f(c cVar, c cVar2, int i10) {
        if (cVar.f5069d == this) {
            e(cVar.f5070e, cVar2.f5069d, cVar2.f5070e, i10);
        }
    }

    public final void g(d0.c cVar) {
        cVar.k(this.I);
        cVar.k(this.J);
        cVar.k(this.K);
        cVar.k(this.L);
        if (this.f5076a0 > 0) {
            cVar.k(this.M);
        }
    }

    public final void h() {
        if (this.f5081d == null) {
            this.f5081d = new k(this);
        }
        if (this.f5083e == null) {
            this.f5083e = new m(this);
        }
    }

    public c i(int i10) {
        switch (d0.f.c(i10)) {
            case 0:
                return null;
            case 1:
                return this.I;
            case 2:
                return this.J;
            case 3:
                return this.K;
            case 4:
                return this.L;
            case 5:
                return this.M;
            case 6:
                return this.P;
            case 7:
                return this.N;
            case 8:
                return this.O;
            default:
                throw new AssertionError(android.support.v4.media.session.a.F(i10));
        }
    }

    public final int j(int i10) {
        int[] iArr = this.f5105p0;
        if (i10 == 0) {
            return iArr[0];
        }
        if (i10 == 1) {
            return iArr[1];
        }
        return 0;
    }

    public final int k() {
        if (this.f5088g0 == 8) {
            return 0;
        }
        return this.V;
    }

    public final d l(int i10) {
        c cVar;
        c cVar2;
        if (i10 != 0) {
            if (i10 == 1 && (cVar2 = (cVar = this.L).f5071f) != null && cVar2.f5071f == cVar) {
                return cVar2.f5069d;
            }
            return null;
        }
        c cVar3 = this.K;
        c cVar4 = cVar3.f5071f;
        if (cVar4 == null || cVar4.f5071f != cVar3) {
            return null;
        }
        return cVar4.f5069d;
    }

    public final d m(int i10) {
        c cVar;
        c cVar2;
        if (i10 != 0) {
            if (i10 == 1 && (cVar2 = (cVar = this.J).f5071f) != null && cVar2.f5071f == cVar) {
                return cVar2.f5069d;
            }
            return null;
        }
        c cVar3 = this.I;
        c cVar4 = cVar3.f5071f;
        if (cVar4 == null || cVar4.f5071f != cVar3) {
            return null;
        }
        return cVar4.f5069d;
    }

    public void n(StringBuilder sb2) {
        sb2.append("  " + this.f5093j + ":{\n");
        StringBuilder sb3 = new StringBuilder("    actualWidth:");
        sb3.append(this.U);
        sb2.append(sb3.toString());
        sb2.append(SignParameters.NEW_LINE);
        sb2.append("    actualHeight:" + this.V);
        sb2.append(SignParameters.NEW_LINE);
        sb2.append("    actualLeft:" + this.Y);
        sb2.append(SignParameters.NEW_LINE);
        sb2.append("    actualTop:" + this.Z);
        sb2.append(SignParameters.NEW_LINE);
        p(sb2, "left", this.I);
        p(sb2, "top", this.J);
        p(sb2, "right", this.K);
        p(sb2, "bottom", this.L);
        p(sb2, "baseline", this.M);
        p(sb2, "centerX", this.N);
        p(sb2, "centerY", this.O);
        int i10 = this.U;
        int i11 = this.f5078b0;
        int[] iArr = this.C;
        int i12 = iArr[0];
        int i13 = this.f5109u;
        int i14 = this.r;
        float f10 = this.f5111w;
        float[] fArr = this.f5096k0;
        float f11 = fArr[0];
        o(sb2, "    width", i10, i11, i12, i13, i14, f10);
        int i15 = this.V;
        int i16 = this.f5080c0;
        int i17 = iArr[1];
        int i18 = this.f5112x;
        int i19 = this.f5107s;
        float f12 = this.z;
        float f13 = fArr[1];
        o(sb2, "    height", i15, i16, i17, i18, i19, f12);
        float f14 = this.W;
        int i20 = this.X;
        if (f14 != 0.0f) {
            sb2.append("    dimensionRatio");
            sb2.append(" :  [");
            sb2.append(f14);
            sb2.append(",");
            sb2.append(i20);
            sb2.append("");
            sb2.append("],\n");
        }
        H(sb2, "    horizontalBias", this.f5082d0, 0.5f);
        H(sb2, "    verticalBias", this.f5084e0, 0.5f);
        G(this.f5092i0, 0, "    horizontalChainStyle", sb2);
        G(this.f5094j0, 0, "    verticalChainStyle", sb2);
        sb2.append("  }");
    }

    public final int q() {
        if (this.f5088g0 == 8) {
            return 0;
        }
        return this.U;
    }

    public final int r() {
        d dVar = this.T;
        return (dVar == null || !(dVar instanceof e)) ? this.Y : ((e) dVar).f5120x0 + this.Y;
    }

    public final int s() {
        d dVar = this.T;
        return (dVar == null || !(dVar instanceof e)) ? this.Z : ((e) dVar).f5121y0 + this.Z;
    }

    public final boolean t(int i10) {
        if (i10 == 0) {
            return (this.I.f5071f != null ? 1 : 0) + (this.K.f5071f != null ? 1 : 0) < 2;
        }
        return ((this.J.f5071f != null ? 1 : 0) + (this.L.f5071f != null ? 1 : 0)) + (this.M.f5071f != null ? 1 : 0) < 2;
    }

    public String toString() {
        String strL = "";
        StringBuilder sbM = g.b.m("");
        if (this.f5090h0 != null) {
            strL = g.b.l(this.f5090h0, " ", new StringBuilder("id: "));
        }
        sbM.append(strL);
        sbM.append("(");
        sbM.append(this.Y);
        sbM.append(", ");
        sbM.append(this.Z);
        sbM.append(") - (");
        sbM.append(this.U);
        sbM.append(" x ");
        return android.support.v4.media.session.a.s(sbM, this.V, ")");
    }

    public final boolean u(int i10, int i11) {
        c cVar;
        c cVar2;
        c cVar3;
        c cVar4;
        if (i10 == 0) {
            c cVar5 = this.I;
            c cVar6 = cVar5.f5071f;
            if (cVar6 != null && cVar6.f5068c && (cVar4 = (cVar3 = this.K).f5071f) != null && cVar4.f5068c) {
                return (cVar4.d() - cVar3.e()) - (cVar5.e() + cVar5.f5071f.d()) >= i11;
            }
        } else {
            c cVar7 = this.J;
            c cVar8 = cVar7.f5071f;
            if (cVar8 != null && cVar8.f5068c && (cVar2 = (cVar = this.L).f5071f) != null && cVar2.f5068c) {
                return (cVar2.d() - cVar.e()) - (cVar7.e() + cVar7.f5071f.d()) >= i11;
            }
        }
        return false;
    }

    public final void v(int i10, int i11, int i12, int i13, d dVar) {
        i(i10).b(dVar.i(i11), i12, i13, true);
    }

    public final boolean w(int i10) {
        c cVar;
        c cVar2;
        int i11 = i10 * 2;
        c[] cVarArr = this.Q;
        c cVar3 = cVarArr[i11];
        c cVar4 = cVar3.f5071f;
        return (cVar4 == null || cVar4.f5071f == cVar3 || (cVar2 = (cVar = cVarArr[i11 + 1]).f5071f) == null || cVar2.f5071f != cVar) ? false : true;
    }

    public final boolean x() {
        c cVar = this.I;
        c cVar2 = cVar.f5071f;
        if (cVar2 != null && cVar2.f5071f == cVar) {
            return true;
        }
        c cVar3 = this.K;
        c cVar4 = cVar3.f5071f;
        return cVar4 != null && cVar4.f5071f == cVar3;
    }

    public final boolean y() {
        c cVar = this.J;
        c cVar2 = cVar.f5071f;
        if (cVar2 != null && cVar2.f5071f == cVar) {
            return true;
        }
        c cVar3 = this.L;
        c cVar4 = cVar3.f5071f;
        return cVar4 != null && cVar4.f5071f == cVar3;
    }

    public final boolean z() {
        return this.f5087g && this.f5088g0 != 8;
    }
}
