package u4;

import a2.w0;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class e extends x {

    /* renamed from: e, reason: collision with root package name */
    public final x4.q f15348e;

    /* renamed from: f, reason: collision with root package name */
    public final w0 f15349f;

    /* renamed from: g, reason: collision with root package name */
    public g3.j f15350g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f15351h;

    /* renamed from: i, reason: collision with root package name */
    public final y4.b f15352i;

    public e(x4.q qVar, w0 w0Var, boolean z, y4.b bVar) {
        super(4, -1);
        if (qVar == null) {
            throw new NullPointerException("ref == null");
        }
        if (w0Var == null) {
            throw new NullPointerException("code == null");
        }
        if (bVar == null) {
            throw new NullPointerException("throwsList == null");
        }
        this.f15348e = qVar;
        this.f15349f = w0Var;
        this.f15351h = z;
        this.f15352i = bVar;
        this.f15350g = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // u4.p
    public final void a(f fVar) {
        w wVar = fVar.l;
        w0 w0Var = this.f15349f;
        w0Var.getClass();
        ((s4.r) w0Var.f346b).getClass();
        w4.b bVar = (w4.b) ((s4.a) ((s4.a) w0Var.f347c).f14293b).f14293b;
        int length = bVar.f2559b.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            if (((b5.c) ((w4.a) bVar.d(i10)).f17444b.g().c()).f2559b.length != 0) {
                s4.a aVar = (s4.a) w0Var.f347c;
                aVar.getClass();
                HashSet hashSet = new HashSet(20);
                w4.b bVar2 = (w4.b) ((s4.a) aVar.f14293b).f14293b;
                int length2 = bVar2.f2559b.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    y4.e eVarC = ((w4.a) bVar2.d(i11)).f17444b.g().c();
                    int length3 = ((b5.c) eVarC).f2559b.length;
                    for (int i12 = 0; i12 < length3; i12++) {
                        hashSet.add(eVarC.b(i12));
                    }
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    fVar.f15359f.q((y4.c) it.next());
                }
                this.f15350g = new g3.j(w0Var);
            } else {
                i10++;
            }
        }
        s4.r rVar = (s4.r) w0Var.f346b;
        rVar.getClass();
        HashSet hashSet2 = new HashSet(20);
        Iterator it2 = rVar.f14403c.iterator();
        while (it2.hasNext()) {
            s4.h hVar = (s4.h) it2.next();
            if (hVar instanceof s4.g) {
                hashSet2.add(((s4.g) hVar).f14303e);
            } else {
                if (hVar instanceof s4.p) {
                    ((s4.p) hVar).getClass();
                    throw null;
                }
                if (hVar instanceof s4.q) {
                    ((s4.q) hVar).getClass();
                }
            }
        }
        Iterator it3 = hashSet2.iterator();
        while (it3.hasNext()) {
            fVar.a((x4.a) it3.next());
        }
    }

    @Override // u4.p
    public final q b() {
        return q.TYPE_CODE_ITEM;
    }

    @Override // u4.x
    public final void i(w wVar, int i10) {
        int iC;
        f fVar = wVar.f15324b;
        l5.y yVar = new l5.y(20, fVar);
        w0 w0Var = this.f15349f;
        Iterator it = ((s4.r) w0Var.f346b).f14403c.iterator();
        while (it.hasNext()) {
            s4.h hVar = (s4.h) it.next();
            if (hVar instanceof s4.g) {
                s4.g gVar = (s4.g) hVar;
                x4.a aVar = gVar.f14303e;
                int iC2 = yVar.C(aVar);
                if (iC2 >= 0) {
                    gVar.o(iC2);
                }
                if ((aVar instanceof x4.p) && (iC = yVar.C(((x4.p) aVar).f18129a)) >= 0) {
                    gVar.n(iC);
                }
            }
        }
        g3.j jVar = this.f15350g;
        int length = 0;
        if (jVar != null) {
            jVar.e();
            z zVar = fVar.f15359f;
            int length2 = ((s4.e) jVar.f6036c).f2559b.length;
            jVar.f6038e = new TreeMap();
            for (int i11 = 0; i11 < length2; i11++) {
                ((TreeMap) jVar.f6038e).put(((s4.d) ((s4.e) jVar.f6036c).d(i11)).f14301c, null);
            }
            if (((TreeMap) jVar.f6038e).size() > 65535) {
                throw new UnsupportedOperationException("too many catch handlers");
            }
            b5.b bVar = new b5.b();
            jVar.f6034a = bVar.m(((TreeMap) jVar.f6038e).size());
            for (Map.Entry entry : ((TreeMap) jVar.f6038e).entrySet()) {
                s4.c cVar = (s4.c) entry.getKey();
                Object[] objArr = cVar.f2559b;
                int length3 = objArr.length;
                int length4 = objArr.length;
                boolean zEquals = length4 == 0 ? false : ((s4.b) cVar.d(length4 - 1)).f14296a.equals(x4.u.f18139d);
                entry.setValue(Integer.valueOf(bVar.f2555c));
                if (zEquals) {
                    bVar.l(-(length3 - 1));
                    length3--;
                } else {
                    bVar.l(length3);
                }
                for (int i12 = 0; i12 < length3; i12++) {
                    s4.b bVar2 = (s4.b) cVar.d(i12);
                    bVar.m(zVar.m(bVar2.f14296a));
                    bVar.m(bVar2.f14297b);
                }
                if (zEquals) {
                    bVar.m(((s4.b) cVar.d(length3)).f14297b);
                }
            }
            int i13 = bVar.f2555c;
            byte[] bArr = new byte[i13];
            System.arraycopy(bVar.f2554b, 0, bArr, 0, i13);
            jVar.f6037d = bArr;
            g3.j jVar2 = this.f15350g;
            jVar2.e();
            length = (((s4.e) jVar2.f6036c).f2559b.length * 8) + ((byte[]) jVar2.f6037d).length;
        }
        w0Var.E();
        int iG = ((s4.i) w0Var.f349e).g();
        if ((iG & 1) != 0) {
            iG++;
        }
        j((iG * 2) + 16 + length);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0133  */
    @Override // u4.x
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k(f fVar, b5.b bVar) throws IOException {
        int length;
        int i10;
        String string;
        boolean zD = bVar.d();
        w0 w0Var = this.f15349f;
        w0Var.E();
        int i11 = ((s4.i) w0Var.f349e).f14310c;
        w0Var.E();
        s4.i iVar = (s4.i) w0Var.f349e;
        int length2 = iVar.f2559b.length;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i12 >= length2) {
                break;
            }
            s4.h hVar = (s4.h) iVar.d(i12);
            if (hVar instanceof s4.g) {
                x4.a aVar = ((s4.g) hVar).f14303e;
                int iE = aVar instanceof x4.q ? ((x4.q) aVar).e(hVar.f14307b.f14312b == 113) : 0;
                if (iE > i13) {
                    i13 = iE;
                }
            }
            i12++;
        }
        x4.q qVar = this.f15348e;
        int iE2 = qVar.e(this.f15351h);
        w0Var.E();
        int iG = ((s4.i) w0Var.f349e).g();
        boolean z = (iG & 1) != 0;
        g3.j jVar = this.f15350g;
        if (jVar == null) {
            length = 0;
        } else {
            jVar.e();
            length = ((s4.e) jVar.f6036c).f2559b.length;
        }
        if (zD) {
            bVar.b(0, g() + ' ' + qVar.a());
            bVar.b(2, "  registers_size: ".concat(qf.c.e0(i11)));
            bVar.b(2, "  ins_size:       ".concat(qf.c.e0(iE2)));
            bVar.b(2, "  outs_size:      ".concat(qf.c.e0(i13)));
            bVar.b(2, "  tries_size:     ".concat(qf.c.e0(length)));
            bVar.b(4, "  debug_off:      ".concat(qf.c.f0(0)));
            bVar.b(4, "  insns_size:     ".concat(qf.c.f0(iG)));
            y4.b bVar2 = this.f15352i;
            if (bVar2.f2559b.length != 0) {
                StringBuilder sb2 = new StringBuilder("  throws ");
                int length3 = bVar2.f2559b.length;
                if (length3 == 0) {
                    string = "<empty>";
                } else {
                    StringBuilder sb3 = new StringBuilder(100);
                    int i14 = 0;
                    while (i14 < length3) {
                        int i15 = length3;
                        if (i14 != 0) {
                            sb3.append(", ");
                        }
                        sb3.append(((y4.c) bVar2.d(i14)).a());
                        i14++;
                        length3 = i15;
                    }
                    string = sb3.toString();
                }
                sb2.append(string);
                i10 = 0;
                bVar.b(0, sb2.toString());
            } else {
                i10 = 0;
            }
        }
        bVar.k(i11);
        bVar.k(iE2);
        bVar.k(i13);
        bVar.k(length);
        bVar.j(i10);
        bVar.j(iG);
        w0Var.E();
        try {
            ((s4.i) w0Var.f349e).h(bVar);
            if (this.f15350g != null) {
                if (z) {
                    if (zD) {
                        bVar.b(2, "  padding: 0");
                    }
                    bVar.k(0);
                }
                g3.j jVar2 = this.f15350g;
                jVar2.e();
                if (bVar.d()) {
                    jVar2.e();
                    int length4 = ((s4.e) jVar2.f6036c).f2559b.length;
                    bVar.b(0, "  tries:");
                    for (int i16 = 0; i16 < length4; i16++) {
                        s4.d dVar = (s4.d) ((s4.e) jVar2.f6036c).d(i16);
                        StringBuilder sb4 = new StringBuilder("    try ");
                        int i17 = dVar.f14299a;
                        sb4.append(i17 == ((char) i17) ? qf.c.e0(i17) : qf.c.f0(i17));
                        sb4.append("..");
                        int i18 = dVar.f14300b;
                        sb4.append(i18 == ((char) i18) ? qf.c.e0(i18) : qf.c.f0(i18));
                        String string2 = sb4.toString();
                        String strH = dVar.f14301c.h("    ", "");
                        bVar.b(6, string2);
                        bVar.b(2, strH);
                    }
                    bVar.b(0, "  handlers:");
                    bVar.b(jVar2.f6034a, "    size: ".concat(qf.c.e0(((TreeMap) jVar2.f6038e).size())));
                    s4.c cVar = null;
                    int i19 = 0;
                    for (Map.Entry entry : ((TreeMap) jVar2.f6038e).entrySet()) {
                        s4.c cVar2 = (s4.c) entry.getKey();
                        int iIntValue = ((Integer) entry.getValue()).intValue();
                        if (cVar != null) {
                            bVar.b(iIntValue - i19, cVar.h("    ", qf.c.e0(i19).concat(": ")));
                        }
                        i19 = iIntValue;
                        cVar = cVar2;
                    }
                    bVar.b(((byte[]) jVar2.f6037d).length - i19, cVar.h("    ", qf.c.e0(i19).concat(": ")));
                }
                int length5 = ((s4.e) jVar2.f6036c).f2559b.length;
                for (int i20 = 0; i20 < length5; i20++) {
                    s4.d dVar2 = (s4.d) ((s4.e) jVar2.f6036c).d(i20);
                    int i21 = dVar2.f14300b;
                    int i22 = dVar2.f14299a;
                    int i23 = i21 - i22;
                    if (i23 >= 65536) {
                        throw new UnsupportedOperationException("bogus exception range: " + qf.c.f0(i22) + ".." + qf.c.f0(i21));
                    }
                    bVar.j(i22);
                    bVar.k(i23);
                    bVar.k(((Integer) ((TreeMap) jVar2.f6038e).get(dVar2.f14301c)).intValue());
                }
                bVar.h((byte[]) jVar2.f6037d);
            }
        } catch (RuntimeException e7) {
            throw p4.a.a(e7, "...while writing instructions for " + qVar.a());
        }
    }

    public final String toString() {
        return "CodeItem{" + this.f15348e.a() + "}";
    }
}
