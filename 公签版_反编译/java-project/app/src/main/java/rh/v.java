package rh;

import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.slf4j.Marker;
import qh.s0;

/* loaded from: classes3.dex */
public final class v implements AutoCloseable {

    /* renamed from: d, reason: collision with root package name */
    public static final char[] f13808d = {'>', '+', '~'};

    /* renamed from: e, reason: collision with root package name */
    public static final String[] f13809e = {"=", "!=", "^=", "$=", "*=", "~="};

    /* renamed from: f, reason: collision with root package name */
    public static final char[] f13810f = {',', ')'};

    /* renamed from: g, reason: collision with root package name */
    public static final Pattern f13811g = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);

    /* renamed from: h, reason: collision with root package name */
    public static final Pattern f13812h = Pattern.compile("([+-])?(\\d+)");

    /* renamed from: a, reason: collision with root package name */
    public final s0 f13813a;

    /* renamed from: b, reason: collision with root package name */
    public final String f13814b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f13815c;

    public v(String str) {
        nh.b.b0(str);
        String strTrim = str.trim();
        this.f13814b = strTrim;
        this.f13813a = new s0(strTrim);
    }

    public static p R(String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            v vVar = new v(str);
            try {
                p pVarQ = vVar.Q();
                vVar.close();
                return pVarQ;
            } catch (Throwable th2) {
                try {
                    vVar.close();
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
                throw th2;
            }
        } catch (IllegalArgumentException e7) {
            throw new hc.d(e7.getMessage());
        }
    }

    public static p r(p pVar, p pVar2) {
        if (pVar == null) {
            return pVar2;
        }
        if (!(pVar instanceof b)) {
            return new b(Arrays.asList(pVar, pVar2));
        }
        b bVar = (b) pVar;
        bVar.f13780a.add(pVar2);
        bVar.g();
        return pVar;
    }

    public final int A() {
        String strTrim = J().trim();
        boolean z = false;
        if (strTrim != null && strTrim.length() != 0) {
            int length = strTrim.length();
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    z = true;
                    break;
                }
                if (!oh.f.g(strTrim.charAt(i10))) {
                    break;
                }
                i10++;
            }
        }
        if (z) {
            return Integer.parseInt(strTrim);
        }
        throw new nh.c("Index must be numeric");
    }

    public final String J() {
        return this.f13813a.A('(', ')');
    }

    public final p K(boolean z) {
        String str = z ? ":containsOwn" : ":contains";
        String strN = s0.N(J());
        nh.b.c0(strN, str.concat("(text) query must not be empty"));
        return this.f13815c ? new r(strN) : z ? new h(strN, 4) : new h(strN, 5);
    }

    public final p L(boolean z) {
        String str = z ? ":containsWholeOwnText" : ":containsWholeText";
        String strN = s0.N(J());
        nh.b.c0(strN, str.concat("(text) query must not be empty"));
        return z ? new h(strN, 6, false) : new h(strN, 7, false);
    }

    public final n M(boolean z, boolean z4) throws NumberFormatException {
        int i10;
        int i11;
        String strD = oh.a.d(J());
        if ("odd".equals(strD)) {
            i11 = 2;
            i10 = 1;
        } else {
            if ("even".equals(strD)) {
                i11 = 2;
            } else {
                Matcher matcher = f13811g.matcher(strD);
                if (matcher.matches()) {
                    i11 = matcher.group(3) != null ? Integer.parseInt(matcher.group(1).replaceFirst("^\\+", "")) : "-".equals(matcher.group(2)) ? -1 : 1;
                    if (matcher.group(4) != null) {
                        i10 = Integer.parseInt(matcher.group(4).replaceFirst("^\\+", ""));
                    }
                } else {
                    Matcher matcher2 = f13812h.matcher(strD);
                    if (!matcher2.matches()) {
                        throw new hc.d("Could not parse nth-index '%s': unexpected format", strD);
                    }
                    i10 = Integer.parseInt(matcher2.group().replaceFirst("^\\+", ""));
                    i11 = 0;
                }
            }
            i10 = 0;
        }
        return z4 ? z ? new n(i11, i10, 2) : new n(i11, i10, 3) : z ? new n(i11, i10, 1) : new n(i11, i10, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final p N(s0 s0Var) {
        p jVar;
        int i10 = 2;
        int i11 = 1;
        int i12 = 0;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        String[] strArr = f13809e;
        StringBuilder sbB = oh.f.b();
        loop0: while (!s0Var.f13342a.R()) {
            for (int i13 = 0; i13 < 6; i13++) {
                if (s0Var.f13342a.Y(strArr[i13])) {
                    break loop0;
                }
            }
            sbB.append(s0Var.f13342a.K());
        }
        String strL = oh.f.l(sbB);
        nh.b.b0(strL);
        s0Var.K();
        if (s0Var.f13342a.R()) {
            return strL.startsWith("^") ? new h(strL.substring(1), 1) : strL.equals(Marker.ANY_MARKER) ? new h("", 1) : new h(strL, i12, objArr4 == true ? 1 : 0);
        }
        if (s0Var.M('=')) {
            jVar = new i(strL, s0Var.f13342a.P(), (int) (objArr3 == true ? 1 : 0));
        } else if (s0Var.f13342a.U("!=")) {
            jVar = new i(strL, s0Var.f13342a.P(), 3);
        } else if (s0Var.f13342a.U("^=")) {
            jVar = new i(strL, s0Var.f13342a.P(), 4, objArr2 == true ? 1 : 0);
        } else {
            if (s0Var.f13342a.U("$=")) {
                return new i(strL, s0Var.f13342a.P(), i10, objArr == true ? 1 : 0);
            }
            if (s0Var.f13342a.U("*=")) {
                jVar = new i(strL, s0Var.f13342a.P(), i11);
            } else {
                if (!s0Var.f13342a.U("~=")) {
                    throw new hc.d("Could not parse attribute query '%s': unexpected token at '%s'", this.f13814b, s0Var.f13342a.P());
                }
                jVar = new j(strL, Pattern.compile(s0Var.f13342a.P()));
            }
        }
        return jVar;
    }

    public final p O(boolean z) {
        String str = z ? ":matchesOwn" : ":matches";
        String strJ = J();
        nh.b.c0(strJ, str.concat("(regex) query must not be empty"));
        Pattern patternCompile = Pattern.compile(strJ);
        return this.f13815c ? new r(patternCompile) : z ? new o(patternCompile, 1) : new o(patternCompile, 0);
    }

    public final p P(boolean z) {
        String str = z ? ":matchesWholeOwnText" : ":matchesWholeText";
        String strJ = J();
        nh.b.c0(strJ, str.concat("(regex) query must not be empty"));
        return z ? new o(Pattern.compile(strJ), 2) : new o(Pattern.compile(strJ), 3);
    }

    public final p Q() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        p pVarU = U();
        this.f13813a.K();
        if (this.f13813a.f13342a.R()) {
            return pVarU;
        }
        throw new hc.d("Could not parse query '%s': unexpected token at '%s'", this.f13814b, this.f13813a.f13342a.P());
    }

    public final p S(Function function, String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (!this.f13813a.M('(')) {
            throw new nh.c(str);
        }
        p pVarU = U();
        if (this.f13813a.M(')')) {
            return (p) function.apply(pVarU);
        }
        throw new nh.c(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b7, code lost:
    
        return r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [rh.c0, rh.z] */
    /* JADX WARN: Type inference failed for: r1v12, types: [rh.p] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14, types: [rh.p] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [rh.p] */
    /* JADX WARN: Type inference failed for: r1v8, types: [rh.p] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final p T() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i10 = 0;
        this.f13813a.K();
        s0 s0Var = this.f13813a;
        char[] cArr = f13808d;
        ?? gVar = s0Var.f13342a.W(cArr) ? new g(8) : V();
        while (true) {
            char cK = this.f13813a.K() ? ' ' : (char) 0;
            if (!this.f13813a.f13342a.W(cArr)) {
                if (!this.f13813a.f13342a.W(f13810f)) {
                    break;
                    break;
                }
                break;
            }
            cK = this.f13813a.f13342a.K();
            if (cK == 0) {
                break;
            }
            p pVarV = V();
            if (cK == ' ') {
                gVar = r(new x(gVar, i10), pVarV);
            } else if (cK == '+') {
                gVar = r(new a0(gVar), pVarV);
            } else if (cK == '>') {
                gVar = gVar instanceof z ? (z) gVar : new z(gVar);
                gVar.f13821d.add(pVarV);
                gVar.f13822e = pVarV.a() + gVar.f13822e;
                gVar.f13778b |= pVarV.f();
            } else {
                if (cK != '~') {
                    throw new hc.d("Unknown combinator '%s'", Character.valueOf(cK));
                }
                gVar = r(new b0(gVar), pVarV);
            }
        }
    }

    public final p U() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        p pVarT = T();
        while (this.f13813a.M(',')) {
            p pVarT2 = T();
            if (pVarT instanceof c) {
                c cVar = (c) pVarT;
                cVar.f13780a.add(pVarT2);
                cVar.g();
            } else {
                pVarT = new c(pVarT, pVarT2);
            }
        }
        return pVarT;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final p V() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        p hVar;
        p hVar2;
        int i10 = 9;
        int i11 = 0;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        this.f13813a.K();
        if (Character.isLetterOrDigit(this.f13813a.f13342a.Q()) || this.f13813a.f13342a.Y("*|")) {
            s0 s0Var = this.f13813a;
            s0Var.getClass();
            char[] cArr = s0.f13341b;
            StringBuilder sbB = oh.f.b();
            while (!s0Var.f13342a.R()) {
                char cQ = s0Var.f13342a.Q();
                if (cQ != '\\') {
                    if (!Character.isLetterOrDigit(s0Var.f13342a.Q()) && !s0Var.f13342a.W(cArr)) {
                        break;
                    }
                    sbB.append(cQ);
                    s0Var.r();
                } else {
                    s0Var.r();
                    if (s0Var.f13342a.R()) {
                        break;
                    }
                    sbB.append(s0Var.f13342a.K());
                }
            }
            String strD = oh.a.d(oh.f.l(sbB));
            nh.b.b0(strD);
            if (strD.startsWith("*|")) {
                String strSubstring = strD.substring(2);
                hVar = new c(new h(strSubstring, i10, objArr4 == true ? 1 : 0), new h(da.b.c(":", strSubstring), 10, objArr3 == true ? 1 : 0));
            } else if (strD.endsWith("|*")) {
                hVar2 = new h(strD.substring(0, strD.length() - 2) + ":", 11, objArr2 == true ? 1 : 0);
            } else {
                if (strD.contains("|")) {
                    strD = strD.replace("|", ":");
                }
                hVar = new h(strD, i10, objArr == true ? 1 : 0);
            }
            hVar2 = hVar;
        } else {
            hVar2 = this.f13813a.M('*') ? new g(i11) : null;
        }
        while (true) {
            p pVarW = W();
            if (pVarW == null) {
                break;
            }
            hVar2 = r(hVar2, pVarW);
        }
        if (hVar2 != null) {
            return hVar2;
        }
        throw new hc.d("Could not parse query '%s': unexpected token at '%s'", this.f13814b, this.f13813a.f13342a.P());
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public final p W() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        p hVar;
        p sVar;
        int i10 = 11;
        int i11 = 10;
        int i12 = 6;
        int i13 = 8;
        int i14 = 5;
        int i15 = 4;
        int i16 = 3;
        int i17 = 2;
        int i18 = 1;
        boolean z = false;
        if (this.f13813a.M('#')) {
            String strJ = this.f13813a.J();
            nh.b.b0(strJ);
            return new h(strJ, i13, z);
        }
        if (this.f13813a.M('.')) {
            String strJ2 = this.f13813a.J();
            nh.b.b0(strJ2);
            return new h(strJ2.trim(), i17, z);
        }
        if (this.f13813a.f13342a.V('[')) {
            s0 s0Var = new s0(this.f13813a.A('[', ']'));
            try {
                p pVarN = N(s0Var);
                s0Var.close();
                return pVarN;
            } catch (Throwable th2) {
                try {
                    s0Var.close();
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
                throw th2;
            }
        }
        if (!this.f13813a.f13342a.U("::")) {
            if (!this.f13813a.M(':')) {
                return null;
            }
            String strJ3 = this.f13813a.J();
            strJ3.getClass();
            switch (strJ3) {
                case "containsData":
                    String strN = s0.N(J());
                    nh.b.c0(strN, ":containsData(text) query must not be empty");
                    hVar = new h(strN, 3);
                    break;
                case "first-child":
                    return new g(i17);
                case "matchesWholeText":
                    return P(false);
                case "nth-child":
                    return M(false, false);
                case "nth-last-child":
                    return M(true, false);
                case "only-child":
                    return new g(i15);
                case "nth-of-type":
                    return M(false, true);
                case "nth-last-of-type":
                    return M(true, true);
                case "contains":
                    return K(false);
                case "containsWholeOwnText":
                    return L(true);
                case "eq":
                    return new k(A(), 0);
                case "gt":
                    return new k(A(), 1);
                case "is":
                    return S(new a2.n(i11), ":is() must have a selector");
                case "lt":
                    return new k(A(), 2);
                case "has":
                    return S(new a2.n(i10), ":has() must have a selector");
                case "not":
                    String strJ4 = J();
                    nh.b.c0(strJ4, ":not(selector) subselect must not be empty");
                    hVar = new x(R(strJ4), i17);
                    break;
                case "root":
                    return new g(i12);
                case "blank":
                    return new q();
                case "empty":
                    return new g(i18);
                case "containsOwn":
                    return K(true);
                case "matchText":
                    return new g();
                case "last-child":
                    return new g(i16);
                case "matches":
                    return O(false);
                case "matchesWholeOwnText":
                    return P(true);
                case "first-of-type":
                    return new l();
                case "only-of-type":
                    return new g(i14);
                case "matchesOwn":
                    return O(true);
                case "containsWholeText":
                    return L(false);
                case "last-of-type":
                    return new m();
                default:
                    throw new hc.d("Could not parse query '%s': unexpected token at '%s'", this.f13814b, this.f13813a.f13342a.P());
            }
            return hVar;
        }
        String strJ5 = this.f13813a.J();
        this.f13815c = true;
        strJ5.getClass();
        switch (strJ5.hashCode()) {
            case 3076010:
                if (strJ5.equals("data")) {
                    break;
                }
                break;
            case 3386882:
                if (strJ5.equals("node")) {
                    break;
                }
                break;
            case 3556653:
                if (strJ5.equals("text")) {
                    break;
                }
                break;
            case 94504589:
                if (strJ5.equals("cdata")) {
                    break;
                }
                break;
            case 950398559:
                if (strJ5.equals("comment")) {
                    break;
                }
                break;
            case 1563127392:
                if (strJ5.equals("leafnode")) {
                    break;
                }
                break;
        }
        /*  JADX ERROR: Method code generation error
            java.lang.NullPointerException: Switch insn not found in header
            	at java.base/java.util.Objects.requireNonNull(Objects.java:235)
            	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
            	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:84)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.dex.regions.Region.generate(Region.java:35)
            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:298)
            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:277)
            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:410)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
            */
        /*
            Method dump skipped, instructions count: 1192
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: rh.v.W():rh.p");
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f13813a.close();
    }

    public final String toString() {
        return this.f13814b;
    }
}
