package qh;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public enum y extends c0 {
    public y() {
        super("InBody", 6);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x05c1  */
    /* JADX WARN: Removed duplicated region for block: B:727:0x0bf2  */
    /* JADX WARN: Removed duplicated region for block: B:783:0x0220 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:786:0x026f A[SYNTHETIC] */
    @Override // qh.c0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean d(r0 r0Var, c cVar) {
        o0 o0Var;
        String strM;
        String[] strArr;
        a0 a0Var;
        ph.l lVar;
        ph.l lVar2;
        String str;
        char c7;
        ph.l lVar3;
        ph.l lVar4;
        int i10;
        List listUnmodifiableList;
        int i11;
        int iC = d0.f.c(r0Var.f13338a);
        if (iC == 0) {
            cVar.k(this);
            return false;
        }
        v vVar = c0.f13257d;
        String[] strArr2 = b0.f13216i;
        String[] strArr3 = b0.l;
        if (iC != 1) {
            String[] strArr4 = b0.f13222p;
            if (iC != 2) {
                if (iC == 3) {
                    cVar.v((k0) r0Var);
                    return true;
                }
                if (iC != 4) {
                    if (iC != 6) {
                        throw new IllegalStateException("Unexpected state: ".concat(org.bouncycastle.jcajce.provider.digest.a.x(r0Var.f13338a)));
                    }
                    if (cVar.r.size() > 0) {
                        return c0.f13269s.d(r0Var, cVar);
                    }
                    if (!cVar.D(strArr4)) {
                        return true;
                    }
                    cVar.k(this);
                    return true;
                }
                j0 j0Var = (j0) r0Var;
                if (j0Var.f13291d.R().equals(c0.A)) {
                    cVar.k(this);
                    return false;
                }
                if (cVar.f13251u && c0.a(j0Var)) {
                    cVar.L();
                    cVar.t(j0Var);
                    return true;
                }
                cVar.L();
                cVar.t(j0Var);
                cVar.f13251u = false;
                return true;
            }
            n0 n0Var = (n0) r0Var;
            String strM2 = n0Var.m();
            strM2.getClass();
            String[] strArr5 = c.f13231x;
            m mVar = c0.f13270t;
            switch (strM2.hashCode()) {
                case -1321546630:
                    str = "template";
                    if (strM2.equals(str)) {
                        c7 = 0;
                        break;
                    } else {
                        c7 = 65535;
                        break;
                    }
                case 112:
                    if (strM2.equals("p")) {
                        str = "template";
                        c7 = 1;
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                case 3152:
                    if (strM2.equals("br")) {
                        str = "template";
                        c7 = 2;
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                case 3200:
                    if (strM2.equals("dd")) {
                        str = "template";
                        c7 = 3;
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                case 3216:
                    if (strM2.equals("dt")) {
                        str = "template";
                        c7 = 4;
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                case 3273:
                    if (strM2.equals("h1")) {
                        str = "template";
                        c7 = 5;
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                case 3274:
                    if (strM2.equals("h2")) {
                        str = "template";
                        c7 = 6;
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                case 3275:
                    if (strM2.equals("h3")) {
                        str = "template";
                        c7 = 7;
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                case 3276:
                    if (strM2.equals("h4")) {
                        str = "template";
                        c7 = '\b';
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                case 3277:
                    if (strM2.equals("h5")) {
                        str = "template";
                        c7 = '\t';
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                case 3278:
                    if (strM2.equals("h6")) {
                        str = "template";
                        c7 = '\n';
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                case 3453:
                    if (strM2.equals("li")) {
                        str = "template";
                        c7 = 11;
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                case 3029410:
                    if (strM2.equals("body")) {
                        str = "template";
                        c7 = '\f';
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                case 3148996:
                    if (strM2.equals("form")) {
                        str = "template";
                        c7 = '\r';
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                case 3213227:
                    if (strM2.equals("html")) {
                        str = "template";
                        c7 = 14;
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                case 3536714:
                    if (strM2.equals("span")) {
                        str = "template";
                        c7 = 15;
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                case 1869063452:
                    if (strM2.equals("sarcasm")) {
                        str = "template";
                        c7 = 16;
                        break;
                    }
                    str = "template";
                    c7 = 65535;
                    break;
                default:
                    str = "template";
                    c7 = 65535;
                    break;
            }
            switch (c7) {
                case 0:
                    cVar.getClass();
                    vVar.d(r0Var, cVar);
                    return true;
                case 1:
                    if (!cVar.o(strM2)) {
                        cVar.k(this);
                        cVar.J(strM2);
                        return cVar.H(n0Var);
                    }
                    cVar.l(strM2);
                    if (!cVar.i(strM2)) {
                        cVar.k(this);
                    }
                    cVar.F(strM2);
                    return true;
                case 2:
                    cVar.k(this);
                    cVar.J("br");
                    return false;
                case 3:
                case 4:
                    if (!cVar.p(strM2)) {
                        cVar.k(this);
                        return false;
                    }
                    cVar.l(strM2);
                    if (!cVar.i(strM2)) {
                        cVar.k(this);
                    }
                    cVar.F(strM2);
                    return true;
                case 5:
                case 6:
                case 7:
                case '\b':
                case '\t':
                case '\n':
                    if (!cVar.r(strArr2, strArr5, null)) {
                        cVar.k(this);
                        return false;
                    }
                    cVar.l(strM2);
                    if (!cVar.i(strM2)) {
                        cVar.k(this);
                    }
                    for (int size = cVar.f13237e.size() - 1; size >= 0; size--) {
                        ph.l lVarE = cVar.E();
                        if (oh.f.d(lVarE.f12722d.f13285c, strArr2) && "http://www.w3.org/1999/xhtml".equals(lVarE.f12722d.f13283a)) {
                            return true;
                        }
                    }
                    return true;
                case 11:
                    String[] strArr6 = c.A;
                    String[] strArr7 = cVar.f13253w;
                    strArr7[0] = strM2;
                    if (!cVar.r(strArr7, strArr5, strArr6)) {
                        cVar.k(this);
                        return false;
                    }
                    cVar.l(strM2);
                    if (!cVar.i(strM2)) {
                        cVar.k(this);
                    }
                    cVar.F(strM2);
                    return true;
                case '\f':
                    if (!cVar.p("body")) {
                        cVar.k(this);
                        return false;
                    }
                    if (cVar.D(strArr4)) {
                        cVar.k(this);
                    }
                    cVar.n("body");
                    cVar.l = mVar;
                    return true;
                case '\r':
                    if (cVar.B(str)) {
                        if (!cVar.p(strM2)) {
                            cVar.k(this);
                            return false;
                        }
                        cVar.m(false);
                        if (!cVar.i(strM2)) {
                            cVar.k(this);
                        }
                        cVar.F(strM2);
                        return true;
                    }
                    ph.l lVar5 = cVar.f13247p;
                    cVar.f13247p = null;
                    if (lVar5 == null || !cVar.p(strM2)) {
                        cVar.k(this);
                        return false;
                    }
                    cVar.m(false);
                    if (!cVar.i(strM2)) {
                        cVar.k(this);
                    }
                    cVar.N(lVar5);
                    return true;
                case 14:
                    if (!cVar.B("body")) {
                        cVar.k(this);
                        return false;
                    }
                    if (cVar.D(strArr4)) {
                        cVar.k(this);
                    }
                    cVar.l = mVar;
                    return cVar.H(r0Var);
                case 15:
                case 16:
                    return f(r0Var, cVar);
                default:
                    if (!oh.f.d(strM2, b0.f13223q)) {
                        if (oh.f.d(strM2, b0.f13221o)) {
                            if (!cVar.p(strM2)) {
                                cVar.k(this);
                                return false;
                            }
                            cVar.m(false);
                            if (!cVar.i(strM2)) {
                                cVar.k(this);
                            }
                            cVar.F(strM2);
                            return true;
                        }
                        if (!oh.f.d(strM2, strArr3)) {
                            return f(r0Var, cVar);
                        }
                        if (!cVar.p("name")) {
                            if (!cVar.p(strM2)) {
                                cVar.k(this);
                                return false;
                            }
                            cVar.m(false);
                            if (!cVar.i(strM2)) {
                                cVar.k(this);
                            }
                            cVar.F(strM2);
                            cVar.c();
                        }
                        return true;
                    }
                    String str2 = n0Var.f13331e;
                    if (cVar.h().f12722d.f13285c.equals(str2)) {
                        if (!c.C(cVar.f13248q, cVar.h())) {
                            cVar.E();
                        }
                        return true;
                    }
                    int i12 = 0;
                    while (true) {
                        if (i12 < 8) {
                            i12++;
                            for (int size2 = cVar.f13248q.size() - 1; size2 >= 0; size2--) {
                                lVar3 = (ph.l) cVar.f13248q.get(size2);
                                if (lVar3 == null) {
                                    lVar3 = null;
                                    if (lVar3 == null) {
                                        return f(r0Var, cVar);
                                    }
                                    if (c.C(cVar.f13237e, lVar3)) {
                                        f0 f0Var = lVar3.f12722d;
                                        if (cVar.p(f0Var.f13285c)) {
                                            if (cVar.h() != lVar3) {
                                                cVar.k(this);
                                            }
                                            ArrayList arrayList = cVar.f13237e;
                                            int iLastIndexOf = arrayList.lastIndexOf(lVar3);
                                            if (iLastIndexOf != -1) {
                                                do {
                                                    iLastIndexOf++;
                                                    if (iLastIndexOf < arrayList.size()) {
                                                        lVar4 = (ph.l) arrayList.get(iLastIndexOf);
                                                    } else {
                                                        lVar4 = null;
                                                        if (lVar4 == null) {
                                                            while (cVar.h() != lVar3) {
                                                                cVar.E();
                                                            }
                                                            cVar.E();
                                                            cVar.M(lVar3);
                                                        } else {
                                                            ph.l lVarA = cVar.a(lVar3);
                                                            if (lVarA == null) {
                                                                cVar.k(this);
                                                            } else {
                                                                int i13 = 0;
                                                                while (true) {
                                                                    if (i13 >= cVar.f13248q.size()) {
                                                                        i10 = 1;
                                                                        i13 = -1;
                                                                    } else if (lVar3 == cVar.f13248q.get(i13)) {
                                                                        i10 = 1;
                                                                    } else {
                                                                        i13++;
                                                                    }
                                                                }
                                                                ph.l lVarA2 = lVar4;
                                                                ph.q qVar = lVarA2;
                                                                int i14 = 0;
                                                                while (true) {
                                                                    i14 += i10;
                                                                    lVarA2 = !c.C(cVar.f13237e, lVarA2) ? lVarA2.f12741a : cVar.a(lVarA2);
                                                                    if (lVarA2 == null) {
                                                                        cVar.k(this);
                                                                        break;
                                                                    } else if (lVarA2 == lVar3) {
                                                                        break;
                                                                    } else if (i14 <= 3 || !c.C(cVar.f13248q, lVarA2)) {
                                                                        if (c.C(cVar.f13248q, lVarA2)) {
                                                                            String str3 = str2;
                                                                            int i15 = i12;
                                                                            ph.l lVar6 = new ph.l(cVar.f13241i.d(lVarA2.o(), lVarA2.f12722d.f13285c, "http://www.w3.org/1999/xhtml", true), cVar.f13238f, null);
                                                                            ArrayList arrayList2 = cVar.f13248q;
                                                                            int iLastIndexOf2 = arrayList2.lastIndexOf(lVarA2);
                                                                            nh.b.V(iLastIndexOf2 != -1);
                                                                            arrayList2.set(iLastIndexOf2, lVar6);
                                                                            ArrayList arrayList3 = cVar.f13237e;
                                                                            int iLastIndexOf3 = arrayList3.lastIndexOf(lVarA2);
                                                                            nh.b.V(iLastIndexOf3 != -1);
                                                                            arrayList3.set(iLastIndexOf3, lVar6);
                                                                            if (qVar == lVar4) {
                                                                                int i16 = 0;
                                                                                while (true) {
                                                                                    if (i16 >= cVar.f13248q.size()) {
                                                                                        i11 = 1;
                                                                                        i16 = -1;
                                                                                    } else if (lVar6 == cVar.f13248q.get(i16)) {
                                                                                        i11 = 1;
                                                                                    } else {
                                                                                        i16++;
                                                                                    }
                                                                                }
                                                                                i13 = i16 + i11;
                                                                            }
                                                                            lVar6.A(qVar);
                                                                            lVarA2 = lVar6;
                                                                            qVar = lVarA2;
                                                                            str2 = str3;
                                                                            i12 = i15;
                                                                        } else {
                                                                            cVar.N(lVarA2);
                                                                        }
                                                                        i10 = 1;
                                                                    } else {
                                                                        cVar.M(lVarA2);
                                                                    }
                                                                }
                                                                lVarA.A(qVar);
                                                                ph.l lVar7 = new ph.l(f0Var, cVar.f13238f, null);
                                                                ph.c cVarC = lVar7.c();
                                                                ph.c cVarC2 = lVar3.c();
                                                                cVarC.getClass();
                                                                int i17 = cVarC2.f12706a;
                                                                if (i17 != 0) {
                                                                    cVarC.b(cVarC.f12706a + i17);
                                                                    boolean z = cVarC.f12706a != 0;
                                                                    ph.b bVar = new ph.b(cVarC2);
                                                                    while (bVar.hasNext()) {
                                                                        ph.a aVar = (ph.a) bVar.next();
                                                                        if (z) {
                                                                            String str4 = aVar.f12701b;
                                                                            cVarC.j(aVar.f12700a, str4 != null ? str4 : "");
                                                                            aVar.f12702c = cVarC;
                                                                        } else {
                                                                            String str5 = aVar.f12701b;
                                                                            cVarC.a(aVar.f12700a, str5 != null ? str5 : "");
                                                                        }
                                                                    }
                                                                }
                                                                if (lVar4.f12723e.size() == 0) {
                                                                    listUnmodifiableList = ph.q.f12740c;
                                                                } else {
                                                                    ArrayList arrayList4 = (ArrayList) lVar4.h();
                                                                    ArrayList arrayList5 = new ArrayList(arrayList4.size());
                                                                    arrayList5.addAll(arrayList4);
                                                                    listUnmodifiableList = Collections.unmodifiableList(arrayList5);
                                                                }
                                                                Iterator it = listUnmodifiableList.iterator();
                                                                while (it.hasNext()) {
                                                                    lVar7.A((ph.q) it.next());
                                                                }
                                                                lVar4.A(lVar7);
                                                                cVar.M(lVar3);
                                                                cVar.b(lVar7);
                                                                try {
                                                                    cVar.f13248q.add(i13, lVar7);
                                                                } catch (IndexOutOfBoundsException unused) {
                                                                    cVar.f13248q.add(lVar7);
                                                                }
                                                                cVar.N(lVar3);
                                                                int iLastIndexOf4 = cVar.f13237e.lastIndexOf(lVar4);
                                                                nh.b.V(iLastIndexOf4 != -1);
                                                                cVar.f13237e.add(iLastIndexOf4 + 1, lVar7);
                                                            }
                                                        }
                                                    }
                                                } while (!c.A(lVar4));
                                                if (lVar4 == null) {
                                                }
                                            } else {
                                                lVar4 = null;
                                                if (lVar4 == null) {
                                                }
                                            }
                                        } else {
                                            cVar.k(this);
                                        }
                                    } else {
                                        cVar.k(this);
                                        cVar.M(lVar3);
                                    }
                                } else if (lVar3.f12722d.f13285c.equals(str2)) {
                                    if (lVar3 == null) {
                                    }
                                }
                            }
                            lVar3 = null;
                            if (lVar3 == null) {
                            }
                        }
                    }
                    return true;
            }
        }
        o0Var = (o0) r0Var;
        strM = o0Var.m();
        strM.getClass();
        strArr = b0.f13217j;
        a0Var = c0.f13262i;
        switch (strM) {
            case "frameset":
                cVar.k(this);
                ArrayList arrayList6 = cVar.f13237e;
                if (arrayList6.size() != 1 && ((arrayList6.size() <= 2 || ((ph.l) arrayList6.get(1)).l("body")) && cVar.f13251u)) {
                    ph.l lVar8 = (ph.l) arrayList6.get(1);
                    ph.l lVar9 = lVar8.f12741a;
                    if (lVar9 != null && lVar9 != null) {
                        lVar9.x(lVar8);
                    }
                    while (arrayList6.size() > 1) {
                        arrayList6.remove(arrayList6.size() - 1);
                    }
                    cVar.w(o0Var);
                    cVar.l = c0.f13271v;
                    return true;
                }
                return false;
            case "button":
                if (cVar.o("button")) {
                    cVar.k(this);
                    cVar.I("button");
                    cVar.H(o0Var);
                } else {
                    cVar.L();
                    cVar.w(o0Var);
                    cVar.f13251u = false;
                }
                return true;
            case "iframe":
                cVar.f13251u = false;
                c0.b(o0Var, cVar, cVar.Q(o0Var).f());
                return true;
            case "keygen":
            case "br":
            case "img":
            case "wbr":
            case "area":
            case "embed":
                cVar.L();
                cVar.x(o0Var);
                cVar.f13251u = false;
                return true;
            case "option":
            case "optgroup":
                if (cVar.i("option")) {
                    cVar.I("option");
                }
                cVar.L();
                cVar.w(o0Var);
                return true;
            case "textarea":
                cVar.f13251u = false;
                c0.b(o0Var, cVar, cVar.Q(o0Var).f());
                return true;
            case "select":
                cVar.L();
                cVar.w(o0Var);
                cVar.f13251u = false;
                if (!o0Var.f13332f) {
                    c0 c0Var = cVar.l;
                    if (c0Var.equals(a0Var) || c0Var.equals(c0.f13264k) || c0Var.equals(c0.f13265m) || c0Var.equals(c0.f13266n) || c0Var.equals(c0.f13267p)) {
                        cVar.l = c0.r;
                    } else {
                        cVar.l = c0.f13268q;
                    }
                }
                return true;
            case "strike":
            case "strong":
            case "b":
            case "i":
            case "s":
            case "u":
            case "em":
            case "tt":
            case "big":
            case "code":
            case "font":
            case "small":
                cVar.L();
                ph.l lVarW = cVar.w(o0Var);
                cVar.b(lVarW);
                cVar.f13248q.add(lVarW);
                return true;
            case "a":
                for (int size3 = cVar.f13248q.size() - 1; size3 >= 0 && (lVar2 = (ph.l) cVar.f13248q.get(size3)) != null; size3--) {
                    if (lVar2.l("a")) {
                        lVar = lVar2;
                        if (lVar != null) {
                            cVar.k(this);
                            cVar.I("a");
                            ph.l lVarN = cVar.n("a");
                            if (lVarN != null) {
                                cVar.M(lVarN);
                                cVar.N(lVarN);
                            }
                        }
                        cVar.L();
                        ph.l lVarW2 = cVar.w(o0Var);
                        cVar.b(lVarW2);
                        cVar.f13248q.add(lVarW2);
                        return true;
                    }
                }
                lVar = null;
                if (lVar != null) {
                }
                cVar.L();
                ph.l lVarW22 = cVar.w(o0Var);
                cVar.b(lVarW22);
                cVar.f13248q.add(lVarW22);
                return true;
            case "dd":
            case "dt":
                cVar.f13251u = false;
                ArrayList arrayList7 = cVar.f13237e;
                int size4 = arrayList7.size();
                int i18 = size4 - 1;
                int i19 = i18 >= 24 ? size4 - 25 : 0;
                while (true) {
                    if (i18 >= i19) {
                        ph.l lVar10 = (ph.l) arrayList7.get(i18);
                        boolean zD = oh.f.d(lVar10.f12722d.f13285c, b0.f13218k);
                        f0 f0Var2 = lVar10.f12722d;
                        if (zD) {
                            cVar.I(f0Var2.f13285c);
                        } else if (!c.A(lVar10) || oh.f.d(f0Var2.f13285c, strArr)) {
                            i18--;
                        }
                    }
                }
                if (cVar.o("p")) {
                    cVar.I("p");
                }
                cVar.w(o0Var);
                return true;
            case "h1":
            case "h2":
            case "h3":
            case "h4":
            case "h5":
            case "h6":
                if (cVar.o("p")) {
                    cVar.I("p");
                }
                if (oh.f.d(cVar.h().f12722d.f13285c, strArr2)) {
                    cVar.k(this);
                    cVar.E();
                }
                cVar.w(o0Var);
                return true;
            case "hr":
                if (cVar.o("p")) {
                    cVar.I("p");
                }
                cVar.x(o0Var);
                cVar.f13251u = false;
                return true;
            case "li":
                cVar.f13251u = false;
                ArrayList arrayList8 = cVar.f13237e;
                int size5 = arrayList8.size() - 1;
                while (true) {
                    if (size5 > 0) {
                        ph.l lVar11 = (ph.l) arrayList8.get(size5);
                        if (lVar11.l("li")) {
                            cVar.I("li");
                        } else if (!c.A(lVar11) || oh.f.d(lVar11.f12722d.f13285c, strArr)) {
                            size5--;
                        }
                    }
                }
                if (cVar.o("p")) {
                    cVar.I("p");
                }
                cVar.w(o0Var);
                return true;
            case "rb":
            case "rtc":
                if (cVar.p("ruby")) {
                    cVar.m(false);
                    if (!cVar.i("ruby")) {
                        cVar.k(this);
                    }
                }
                cVar.w(o0Var);
                return true;
            case "rp":
            case "rt":
                if (cVar.p("ruby")) {
                    cVar.l("rtc");
                    if (!cVar.i("rtc") && !cVar.i("ruby")) {
                        cVar.k(this);
                    }
                }
                cVar.w(o0Var);
                return true;
            case "pre":
            case "listing":
                if (cVar.o("p")) {
                    cVar.I("p");
                }
                cVar.w(o0Var);
                cVar.f13234b.T(SignParameters.NEW_LINE);
                cVar.f13251u = false;
                return true;
            case "svg":
                cVar.L();
                cVar.y(o0Var, "http://www.w3.org/2000/svg");
                return true;
            case "xmp":
                if (cVar.o("p")) {
                    cVar.I("p");
                }
                cVar.L();
                cVar.f13251u = false;
                c0.b(o0Var, cVar, cVar.Q(o0Var).f());
                return true;
            case "body":
                cVar.k(this);
                ArrayList arrayList9 = cVar.f13237e;
                if (arrayList9.size() != 1 && ((arrayList9.size() <= 2 || ((ph.l) arrayList9.get(1)).l("body")) && !cVar.B("template"))) {
                    cVar.f13251u = false;
                    ph.l lVarN2 = cVar.n("body");
                    if (lVarN2 != null) {
                        c0.c(o0Var, lVarN2);
                    }
                    return true;
                }
                return false;
            case "form":
                if (cVar.f13247p != null && !cVar.B("template")) {
                    cVar.k(this);
                    return false;
                }
                if (cVar.o("p")) {
                    cVar.l("p");
                    if (!"p".equals(cVar.h().f12722d.f13285c)) {
                        cVar.k(cVar.l);
                    }
                    cVar.F("p");
                }
                cVar.z(o0Var, true, true);
                return true;
            case "html":
                cVar.k(this);
                if (!cVar.B("template")) {
                    if (cVar.f13237e.size() > 0) {
                        c0.c(o0Var, (ph.l) cVar.f13237e.get(0));
                    }
                    return true;
                }
                return false;
            case "math":
                cVar.L();
                cVar.y(o0Var, "http://www.w3.org/1998/Math/MathML");
                return true;
            case "nobr":
                cVar.L();
                if (cVar.p("nobr")) {
                    cVar.k(this);
                    cVar.I("nobr");
                    cVar.L();
                }
                ph.l lVarW3 = cVar.w(o0Var);
                cVar.b(lVarW3);
                cVar.f13248q.add(lVarW3);
                return true;
            case "span":
                cVar.L();
                cVar.w(o0Var);
                return true;
            case "image":
                if (cVar.n("svg") == null) {
                    o0Var.k("img");
                    return cVar.H(o0Var);
                }
                cVar.w(o0Var);
                return true;
            case "input":
                cVar.L();
                if (!cVar.x(o0Var).b("type").equalsIgnoreCase("hidden")) {
                    cVar.f13251u = false;
                }
                return true;
            case "table":
                if (cVar.f13236d.l != 2 && cVar.o("p")) {
                    cVar.I("p");
                }
                cVar.w(o0Var);
                cVar.f13251u = false;
                cVar.l = a0Var;
                return true;
            case "plaintext":
                if (cVar.o("p")) {
                    cVar.I("p");
                }
                cVar.w(o0Var);
                cVar.f13235c.o(k3.f13305g);
                return true;
            case "noembed":
                c0.b(o0Var, cVar, cVar.Q(o0Var).f());
                return true;
            default:
                f0 f0VarQ = cVar.Q(o0Var);
                k3 k3VarF = f0VarQ.f();
                if (k3VarF != null) {
                    c0.b(o0Var, cVar, k3VarF);
                } else if (!f0VarQ.c()) {
                    cVar.w(o0Var);
                } else if (oh.f.d(strM, b0.f13215h)) {
                    if (cVar.o("p")) {
                        cVar.I("p");
                    }
                    cVar.w(o0Var);
                } else {
                    if (oh.f.d(strM, b0.f13214g)) {
                        return vVar.d(r0Var, cVar);
                    }
                    if (oh.f.d(strM, strArr3)) {
                        cVar.L();
                        cVar.w(o0Var);
                        cVar.f13248q.add(null);
                        cVar.f13251u = false;
                    } else {
                        if (!oh.f.d(strM, b0.f13219m)) {
                            if (oh.f.d(strM, b0.f13220n)) {
                                cVar.k(this);
                                return false;
                            }
                            cVar.L();
                            cVar.w(o0Var);
                            return true;
                        }
                        cVar.x(o0Var);
                    }
                }
                return true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean f(r0 r0Var, c cVar) {
        r0Var.getClass();
        String str = ((n0) r0Var).f13331e;
        ArrayList arrayList = cVar.f13237e;
        if (cVar.n(str) != null) {
            int size = arrayList.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                ph.l lVar = (ph.l) arrayList.get(size);
                if (lVar.l(str)) {
                    cVar.l(str);
                    if (!cVar.i(str)) {
                        cVar.k(this);
                    }
                    cVar.F(str);
                } else {
                    if (c.A(lVar)) {
                        cVar.k(this);
                        return false;
                    }
                    size--;
                }
            }
        } else {
            cVar.k(this);
            return false;
        }
    }
}
