package qh;

import fi.iki.elonen.NanoHTTPD;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public e0 f13233a;

    /* renamed from: b, reason: collision with root package name */
    public b f13234b;

    /* renamed from: c, reason: collision with root package name */
    public t0 f13235c;

    /* renamed from: d, reason: collision with root package name */
    public ph.h f13236d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f13237e;

    /* renamed from: f, reason: collision with root package name */
    public String f13238f;

    /* renamed from: g, reason: collision with root package name */
    public r0 f13239g;

    /* renamed from: h, reason: collision with root package name */
    public d0 f13240h;

    /* renamed from: i, reason: collision with root package name */
    public h0 f13241i;

    /* renamed from: j, reason: collision with root package name */
    public o0 f13242j;
    public c0 l;

    /* renamed from: m, reason: collision with root package name */
    public c0 f13244m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f13245n;

    /* renamed from: o, reason: collision with root package name */
    public ph.l f13246o;

    /* renamed from: p, reason: collision with root package name */
    public ph.o f13247p;

    /* renamed from: q, reason: collision with root package name */
    public ArrayList f13248q;
    public ArrayList r;

    /* renamed from: s, reason: collision with root package name */
    public ArrayList f13249s;

    /* renamed from: t, reason: collision with root package name */
    public n0 f13250t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f13251u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f13252v;

    /* renamed from: x, reason: collision with root package name */
    public static final String[] f13231x = {"applet", "caption", "html", "marquee", "object", "table", "td", "template", "th"};

    /* renamed from: y, reason: collision with root package name */
    public static final String[] f13232y = {"annotation-xml", "mi", "mn", "mo", "ms", "mtext"};
    public static final String[] z = {"desc", "foreignObject", "title"};
    public static final String[] A = {"ol", "ul"};
    public static final String[] B = {"button"};
    public static final String[] C = {"html", "table"};
    public static final String[] D = {"optgroup", "option"};
    public static final String[] E = {"dd", "dt", "li", "optgroup", "option", "p", "rb", "rp", "rt", "rtc"};
    public static final String[] F = {"caption", "colgroup", "dd", "dt", "li", "optgroup", "option", "p", "rb", "rp", "rt", "rtc", "tbody", "td", "tfoot", "th", "thead", "tr"};
    public static final String[] G = {"address", "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "dd", "details", "dir", "div", "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", "frame", "frameset", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "iframe", "img", "input", "keygen", "li", "link", "listing", "main", "marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", "p", "param", "plaintext", "pre", "script", "search", "section", "select", "source", "style", "summary", "table", "tbody", "td", "template", "textarea", "tfoot", "th", "thead", "title", "tr", "track", "ul", "wbr", "xmp"};
    public static final String[] H = {"annotation-xml", "mi", "mn", "mo", "ms", "mtext"};
    public static final String[] I = {"mi", "mn", "mo", "ms", "mtext"};
    public static final String[] J = {"desc", "foreignObject", "title"};
    public static final String[] K = {"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"};

    /* renamed from: k, reason: collision with root package name */
    public final n0 f13243k = new n0(this);

    /* renamed from: w, reason: collision with root package name */
    public final String[] f13253w = {null};

    public static boolean A(ph.l lVar) {
        String str;
        f0 f0Var = lVar.f12722d;
        String str2 = f0Var.f13283a;
        str = f0Var.f13285c;
        str2.getClass();
        switch (str2) {
            case "http://www.w3.org/1999/xhtml":
                return oh.f.d(str, G);
            case "http://www.w3.org/2000/svg":
                return oh.f.d(str, J);
            case "http://www.w3.org/1998/Math/MathML":
                return oh.f.d(str, H);
            default:
                return false;
        }
    }

    public static boolean C(ArrayList arrayList, ph.l lVar) {
        int size = arrayList.size();
        int i10 = size - 1;
        int i11 = i10 >= 256 ? size - 257 : 0;
        while (i10 >= i11) {
            if (((ph.l) arrayList.get(i10)) == lVar) {
                return true;
            }
            i10--;
        }
        return false;
    }

    public final boolean B(String str) {
        return n(str) != null;
    }

    public final boolean D(String[] strArr) {
        int size = this.f13237e.size();
        int i10 = size - 1;
        int i11 = i10 > 100 ? size - 101 : 0;
        while (i10 >= i11) {
            if (!oh.f.d(((ph.l) this.f13237e.get(i10)).f12722d.f13285c, strArr)) {
                return true;
            }
            i10--;
        }
        return false;
    }

    public final ph.l E() {
        return (ph.l) this.f13237e.remove(this.f13237e.size() - 1);
    }

    public final void F(String str) {
        for (int size = this.f13237e.size() - 1; size >= 0; size--) {
            f0 f0Var = E().f12722d;
            if (f0Var.f13285c.equals(str) && f0Var.f13283a.equals("http://www.w3.org/1999/xhtml")) {
                return;
            }
        }
    }

    public final void G() {
        if (this.r.size() > 0) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean H(r0 r0Var) {
        boolean zD = true;
        if (!this.f13237e.isEmpty()) {
            ph.l lVarH = h();
            String str = lVarH.f12722d.f13283a;
            if (!"http://www.w3.org/1999/xhtml".equals(str)) {
                f0 f0Var = lVarH.f12722d;
                if ("http://www.w3.org/1998/Math/MathML".equals(f0Var.f13283a)) {
                    if (oh.f.d(f0Var.f13285c, I)) {
                        if (r0Var.f()) {
                            o0 o0Var = (o0) r0Var;
                            if ("mglyph".equals(o0Var.f13331e) || "malignmark".equals(o0Var.f13331e)) {
                                if (!r0Var.a()) {
                                }
                            }
                        }
                    } else if (!"http://www.w3.org/1998/Math/MathML".equals(str) || !lVarH.l("annotation-xml") || !r0Var.f() || !"svg".equals(((o0) r0Var).f13331e)) {
                        String str2 = f0Var.f13283a;
                        if ("http://www.w3.org/1998/Math/MathML".equals(str2) && lVarH.l("annotation-xml")) {
                            String strD = oh.a.d(lVarH.b("encoding"));
                            if (strD.equals(NanoHTTPD.MIME_HTML) || strD.equals("application/xhtml+xml")) {
                            }
                        } else if (!"http://www.w3.org/2000/svg".equals(str2) || !oh.f.c(f0Var.f13284b, J)) {
                            zD = r0Var.d();
                        } else if (!r0Var.f() && !r0Var.a()) {
                        }
                    }
                }
            }
        }
        return (zD ? this.l : c0.z).d(r0Var, this);
    }

    public final boolean I(String str) {
        r0 r0Var = this.f13239g;
        n0 n0Var = this.f13243k;
        if (r0Var == n0Var) {
            n0 n0Var2 = new n0(this);
            n0Var2.k(str);
            return H(n0Var2);
        }
        n0Var.g();
        n0Var.k(str);
        return H(n0Var);
    }

    public final void J(String str) {
        o0 o0Var = this.f13242j;
        if (this.f13239g == o0Var) {
            o0 o0Var2 = new o0(this);
            o0Var2.k(str);
            H(o0Var2);
        } else {
            o0Var.g();
            o0Var.k(str);
            H(o0Var);
        }
    }

    public final void K(c0 c0Var) {
        this.r.add(c0Var);
    }

    public final void L() {
        if (this.f13237e.size() > 256) {
            return;
        }
        boolean z4 = true;
        ph.l lVar = this.f13248q.size() > 0 ? (ph.l) ta.q.h(1, this.f13248q) : null;
        if (lVar == null || C(this.f13237e, lVar)) {
            return;
        }
        int size = this.f13248q.size();
        int i10 = size - 12;
        if (i10 < 0) {
            i10 = 0;
        }
        int i11 = size - 1;
        int i12 = i11;
        while (i12 != i10) {
            i12--;
            lVar = (ph.l) this.f13248q.get(i12);
            if (lVar == null || C(this.f13237e, lVar)) {
                z4 = false;
                break;
            }
        }
        while (true) {
            if (!z4) {
                i12++;
                lVar = (ph.l) this.f13248q.get(i12);
            }
            nh.b.d0(lVar);
            ph.l lVar2 = new ph.l(this.f13241i.d(lVar.o(), lVar.f12722d.f13285c, "http://www.w3.org/1999/xhtml", this.f13240h.f13277a), null, lVar.c().clone());
            j(lVar2);
            this.f13248q.set(i12, lVar2);
            if (i12 == i11) {
                return;
            } else {
                z4 = false;
            }
        }
    }

    public final void M(ph.l lVar) {
        for (int size = this.f13248q.size() - 1; size >= 0; size--) {
            if (((ph.l) this.f13248q.get(size)) == lVar) {
                this.f13248q.remove(size);
                return;
            }
        }
    }

    public final void N(ph.l lVar) {
        for (int size = this.f13237e.size() - 1; size >= 0; size--) {
            if (((ph.l) this.f13237e.get(size)) == lVar) {
                this.f13237e.remove(size);
                return;
            }
        }
    }

    public final void O() {
        if (!B("body")) {
            ArrayList arrayList = this.f13237e;
            ph.h hVar = this.f13236d;
            ph.l lVarI = hVar.I();
            while (true) {
                if (lVarI == null) {
                    lVarI = hVar.B("html");
                    break;
                } else if (lVarI.l("html")) {
                    break;
                } else {
                    lVarI = lVarI.m();
                }
            }
            ph.l lVarI2 = lVarI.I();
            while (true) {
                if (lVarI2 == null) {
                    lVarI2 = lVarI.B("body");
                    break;
                } else if (lVarI2.l("body") || lVarI2.l("frameset")) {
                    break;
                } else {
                    lVarI2 = lVarI2.m();
                }
            }
            arrayList.add(lVarI2);
        }
        this.l = c0.f13260g;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:119:0x010e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0114 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x011a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x011f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0132 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0137 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x014d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0152 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0157 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0176 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0143  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean P() {
        char c7;
        int size = this.f13237e.size();
        int i10 = size - 1;
        int i11 = i10 >= 256 ? size - 257 : 0;
        c0 c0Var = this.l;
        if (this.f13237e.size() == 0) {
            this.l = c0.f13260g;
        }
        boolean z4 = false;
        while (true) {
            if (i10 >= i11) {
                ph.l lVar = (ph.l) this.f13237e.get(i10);
                if (i10 == i11) {
                    z4 = true;
                }
                String str = lVar != null ? lVar.f12722d.f13285c : "";
                if ("http://www.w3.org/1999/xhtml".equals(lVar.f12722d.f13283a)) {
                    str.getClass();
                    switch (str.hashCode()) {
                        case -1644953643:
                            if (str.equals("frameset")) {
                                c7 = 0;
                            }
                            switch (c7) {
                                case 0:
                                    this.l = c0.f13271v;
                                    break;
                                case 1:
                                    c0 c0Var2 = this.r.size() > 0 ? (c0) ta.q.h(1, this.r) : null;
                                    if (c0Var2 == null) {
                                        throw new nh.c("Bug: no template insertion mode on stack!");
                                    }
                                    this.l = c0Var2;
                                    break;
                                case 2:
                                    this.l = c0.f13268q;
                                    break;
                                case 3:
                                    this.l = c0.l;
                                    break;
                                case 4:
                                case 5:
                                    if (!z4) {
                                        this.l = c0.f13267p;
                                        break;
                                    } else if (!z4) {
                                        break;
                                    } else {
                                        this.l = c0.f13260g;
                                        break;
                                    }
                                case 6:
                                    this.l = c0.f13266n;
                                    break;
                                case 7:
                                    this.l = c0.f13260g;
                                    break;
                                case '\b':
                                    if (!z4) {
                                        this.l = c0.f13257d;
                                        break;
                                    }
                                    break;
                                case '\t':
                                    this.l = this.f13246o == null ? c0.f13256c : c0.f13259f;
                                    break;
                                case '\n':
                                    this.l = c0.f13262i;
                                    break;
                                case 11:
                                case '\f':
                                case '\r':
                                    this.l = c0.f13265m;
                                    break;
                                case 14:
                                    this.l = c0.f13264k;
                                    break;
                            }
                        case -1321546630:
                            if (str.equals("template")) {
                                c7 = 1;
                            }
                            switch (c7) {
                            }
                        case -906021636:
                            if (str.equals("select")) {
                                c7 = 2;
                            }
                            switch (c7) {
                            }
                        case -636197633:
                            if (str.equals("colgroup")) {
                                c7 = 3;
                            }
                            switch (c7) {
                            }
                        case 3696:
                            if (str.equals("td")) {
                                c7 = 4;
                            }
                            switch (c7) {
                            }
                        case 3700:
                            if (str.equals("th")) {
                                c7 = 5;
                            }
                            switch (c7) {
                            }
                        case 3710:
                            if (str.equals("tr")) {
                                c7 = 6;
                            }
                            switch (c7) {
                            }
                        case 3029410:
                            if (str.equals("body")) {
                                c7 = 7;
                            }
                            switch (c7) {
                            }
                        case 3198432:
                            if (str.equals("head")) {
                                c7 = '\b';
                            }
                            switch (c7) {
                            }
                        case 3213227:
                            if (str.equals("html")) {
                                c7 = '\t';
                            }
                            switch (c7) {
                            }
                        case 110115790:
                            if (str.equals("table")) {
                                c7 = '\n';
                            }
                            switch (c7) {
                            }
                        case 110157846:
                            if (str.equals("tbody")) {
                                c7 = 11;
                            }
                            switch (c7) {
                            }
                        case 110277346:
                            if (str.equals("tfoot")) {
                                c7 = '\f';
                            }
                            switch (c7) {
                            }
                        case 110326868:
                            if (str.equals("thead")) {
                                c7 = '\r';
                            }
                            switch (c7) {
                            }
                        case 552573414:
                            if (str.equals("caption")) {
                                c7 = 14;
                            }
                            switch (c7) {
                            }
                    }
                    c7 = 65535;
                    switch (c7) {
                    }
                }
                i10--;
            }
        }
        return this.l != c0Var;
    }

    public final f0 Q(o0 o0Var) {
        return this.f13241i.d(o0Var.f13330d.R(), o0Var.f13331e, "http://www.w3.org/1999/xhtml", this.f13240h.f13277a);
    }

    public final ph.l a(ph.l lVar) {
        for (int size = this.f13237e.size() - 1; size >= 0; size--) {
            if (((ph.l) this.f13237e.get(size)) == lVar) {
                return (ph.l) this.f13237e.get(size - 1);
            }
        }
        return null;
    }

    public final void b(ph.l lVar) {
        int size = this.f13248q.size();
        int i10 = size - 13;
        int i11 = 0;
        if (i10 < 0) {
            i10 = 0;
        }
        for (int i12 = size - 1; i12 >= i10; i12--) {
            ph.l lVar2 = (ph.l) this.f13248q.get(i12);
            if (lVar2 == null) {
                return;
            }
            if (lVar.f12722d.f13285c.equals(lVar2.f12722d.f13285c) && lVar.c().equals(lVar2.c())) {
                i11++;
            }
            if (i11 == 3) {
                this.f13248q.remove(i12);
                return;
            }
        }
    }

    public final void c() {
        while (!this.f13248q.isEmpty()) {
            int size = this.f13248q.size();
            if ((size > 0 ? (ph.l) this.f13248q.remove(size - 1) : null) == null) {
                return;
            }
        }
    }

    public final void d(String... strArr) {
        for (int size = this.f13237e.size() - 1; size >= 0; size--) {
            ph.l lVar = (ph.l) this.f13237e.get(size);
            if ("http://www.w3.org/1999/xhtml".equals(lVar.f12722d.f13283a) && (oh.f.c(lVar.f12722d.f13285c, strArr) || lVar.l("html"))) {
                return;
            }
            E();
        }
    }

    public final void e() {
        d("table", "template");
    }

    public final void f() {
        d("tr", "template");
    }

    public final ph.l g(o0 o0Var, String str, boolean z4) {
        int i10;
        int i11;
        ph.c cVar = o0Var.f13333g;
        if (!z4) {
            d0 d0Var = this.f13240h;
            if (cVar == null) {
                d0Var.getClass();
            } else if (!d0Var.f13278b) {
                for (int i12 = 0; i12 < cVar.f12706a; i12++) {
                    String str2 = cVar.f12707b[i12];
                    if (!ph.c.i(str2)) {
                        cVar.f12707b[i12] = oh.a.c(str2);
                    }
                }
            }
        }
        if (cVar != null && (i10 = cVar.f12706a) != 0) {
            d0 d0Var2 = this.f13240h;
            if (i10 == 0) {
                i11 = 0;
            } else {
                boolean z10 = d0Var2.f13278b;
                int i13 = 0;
                i11 = 0;
                while (i13 < cVar.f12706a) {
                    String str3 = cVar.f12707b[i13];
                    i13++;
                    int i14 = i13;
                    while (i14 < cVar.f12706a) {
                        if ((z10 && str3.equals(cVar.f12707b[i14])) || (!z10 && str3.equalsIgnoreCase(cVar.f12707b[i14]))) {
                            i11++;
                            cVar.k(i14);
                            i14--;
                        }
                        i14++;
                    }
                }
            }
            if (i11 > 0) {
                Object[] objArr = {o0Var.f13331e};
                ph.k kVar = this.f13233a.f13280b;
                if (kVar.a()) {
                    kVar.add(new ba.h(this.f13234b, "Dropped duplicate attribute(s) in tag [%s]", objArr));
                }
            }
        }
        f0 f0VarD = this.f13241i.d(o0Var.f13330d.R(), o0Var.f13331e, str, (z4 ? d0.f13276d : this.f13240h).f13277a);
        return f0VarD.f13285c.equals("form") ? new ph.o(f0VarD, cVar) : new ph.l(f0VarD, null, cVar);
    }

    public final ph.l h() {
        int size = this.f13237e.size();
        return size > 0 ? (ph.l) this.f13237e.get(size - 1) : this.f13236d;
    }

    public final boolean i(String str) {
        ph.l lVarH;
        if (this.f13237e.size() == 0 || (lVarH = h()) == null) {
            return false;
        }
        f0 f0Var = lVarH.f12722d;
        return f0Var.f13285c.equals(str) && f0Var.f13283a.equals("http://www.w3.org/1999/xhtml");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x014b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(ph.l lVar) {
        ph.l lVarA;
        boolean z4;
        ph.q qVar;
        int i10 = 1;
        if (this.f13247p != null && lVar.f12722d.f13283a.equals("http://www.w3.org/1999/xhtml") && oh.f.d(lVar.f12722d.f13285c, K)) {
            this.f13247p.f12738j.add(lVar);
        }
        if (this.f13233a.f13280b.a() && lVar.j("xmlns")) {
            String strB = lVar.b("xmlns");
            f0 f0Var = lVar.f12722d;
            if (!strB.equals(f0Var.f13283a)) {
                Object[] objArr = {lVar.b("xmlns"), f0Var.f13284b};
                ph.k kVar = this.f13233a.f13280b;
                if (kVar.a()) {
                    kVar.add(new ba.h(this.f13234b, "Invalid xmlns attribute [%s] on tag [%s]", objArr));
                }
            }
        }
        if (this.f13252v && oh.f.d(h().f12722d.f13285c, b0.z)) {
            ph.l lVarN = n("table");
            if (lVarN != null) {
                lVarA = lVarN.f12741a;
                if (lVarA != null) {
                    z4 = true;
                    if (z4) {
                        lVarA.A(lVar);
                    } else {
                        nh.b.d0(lVarN);
                        nh.b.d0(lVarN.f12741a);
                        ph.l lVar2 = lVar.f12741a;
                        if (lVar2 == lVarN.f12741a && lVar2 != null) {
                            lVar2.x(lVar);
                        }
                        ph.l lVar3 = lVarN.f12741a;
                        int i11 = lVarN.f12742b;
                        ph.q[] qVarArr = {lVar};
                        lVar3.getClass();
                        List listH = lVar3.h();
                        ph.l lVarU = qVarArr[0].u();
                        if (lVarU == null || lVarU.f12723e.size() != 1) {
                            qVar = qVarArr[0];
                            if (qVar != null) {
                                throw new nh.c("Array must not contain any null objects");
                            }
                            ph.l lVar4 = qVar.f12741a;
                            if (lVar4 != null) {
                                lVar4.x(qVar);
                            }
                            qVar.f12741a = lVar3;
                            ((ArrayList) listH).addAll(i11, Arrays.asList(qVarArr));
                            lVar3.w(i11);
                        } else {
                            List listH2 = lVarU.h();
                            int i12 = 1;
                            while (true) {
                                int i13 = i12 - 1;
                                if (i12 <= 0) {
                                    boolean z10 = lVar3.f12723e.size() == 0;
                                    Iterator<E> it = lVarU.f12723e.iterator();
                                    while (it.hasNext()) {
                                        ((ph.q) it.next()).f12741a = null;
                                    }
                                    lVarU.f12723e.clear();
                                    ((ArrayList) listH).addAll(i11, Arrays.asList(qVarArr));
                                    while (true) {
                                        int i14 = i10 - 1;
                                        if (i10 <= 0) {
                                            break;
                                        }
                                        qVarArr[i14].f12741a = lVar3;
                                        i10 = i14;
                                    }
                                    if (!z10 || qVarArr[0].f12742b != 0) {
                                        lVar3.w(i11);
                                    }
                                } else if (qVarArr[i13] != ((ArrayList) listH2).get(i13)) {
                                    break;
                                } else {
                                    i12 = i13;
                                }
                            }
                            qVar = qVarArr[0];
                            if (qVar != null) {
                            }
                        }
                    }
                } else {
                    lVarA = a(lVarN);
                }
            } else {
                lVarA = (ph.l) this.f13237e.get(0);
            }
            z4 = false;
            if (z4) {
            }
        } else {
            h().A(lVar);
        }
        this.f13237e.add(lVar);
    }

    public final void k(c0 c0Var) {
        if (this.f13233a.f13280b.a()) {
            this.f13233a.f13280b.add(new ba.h(this.f13234b, "Unexpected %s token [%s] when in state [%s]", new Object[]{this.f13239g.getClass().getSimpleName(), this.f13239g, c0Var}));
        }
    }

    public final void l(String str) {
        while (oh.f.d(h().f12722d.f13285c, E)) {
            if (str != null && i(str)) {
                return;
            } else {
                E();
            }
        }
    }

    public final void m(boolean z4) {
        String[] strArr = z4 ? F : E;
        while ("http://www.w3.org/1999/xhtml".equals(h().f12722d.f13283a) && oh.f.d(h().f12722d.f13285c, strArr)) {
            E();
        }
    }

    public final ph.l n(String str) {
        int size = this.f13237e.size();
        int i10 = size - 1;
        int i11 = i10 >= 256 ? size - 257 : 0;
        while (i10 >= i11) {
            ph.l lVar = (ph.l) this.f13237e.get(i10);
            f0 f0Var = lVar.f12722d;
            if (f0Var.f13285c.equals(str) && f0Var.f13283a.equals("http://www.w3.org/1999/xhtml")) {
                return lVar;
            }
            i10--;
        }
        return null;
    }

    public final boolean o(String str) {
        String[] strArr = B;
        String[] strArr2 = f13231x;
        String[] strArr3 = this.f13253w;
        strArr3[0] = str;
        return r(strArr3, strArr2, strArr);
    }

    public final boolean p(String str) {
        String[] strArr = f13231x;
        String[] strArr2 = this.f13253w;
        strArr2[0] = str;
        return r(strArr2, strArr, null);
    }

    public final boolean q(String str) {
        for (int size = this.f13237e.size() - 1; size >= 0; size--) {
            String str2 = ((ph.l) this.f13237e.get(size)).f12722d.f13285c;
            if (str2.equals(str)) {
                return true;
            }
            if (!oh.f.d(str2, D)) {
                return false;
            }
        }
        throw new nh.c("Should not be reachable");
    }

    public final boolean r(String[] strArr, String[] strArr2, String[] strArr3) {
        int size = this.f13237e.size();
        int i10 = size - 1;
        int i11 = i10 > 100 ? size - 101 : 0;
        while (i10 >= i11) {
            f0 f0Var = ((ph.l) this.f13237e.get(i10)).f12722d;
            String str = f0Var.f13285c;
            String str2 = f0Var.f13283a;
            if (str2.equals("http://www.w3.org/1999/xhtml")) {
                if (oh.f.d(str, strArr)) {
                    return true;
                }
                if (oh.f.d(str, strArr2)) {
                    return false;
                }
                if (strArr3 != null && oh.f.d(str, strArr3)) {
                    return false;
                }
            } else if (strArr2 != f13231x) {
                continue;
            } else {
                if (str2.equals("http://www.w3.org/1998/Math/MathML") && oh.f.d(str, f13232y)) {
                    return false;
                }
                if (str2.equals("http://www.w3.org/2000/svg") && oh.f.d(str, z)) {
                    return false;
                }
            }
            i10--;
        }
        return false;
    }

    public final boolean s(String str) {
        String[] strArr = C;
        String[] strArr2 = this.f13253w;
        strArr2[0] = str;
        return r(strArr2, strArr, null);
    }

    public final void t(j0 j0Var) {
        u(j0Var, h());
    }

    public final String toString() {
        return "TreeBuilder{currentToken=" + this.f13239g + ", state=" + this.l + ", currentElement=" + h() + '}';
    }

    public final void u(j0 j0Var, ph.l lVar) {
        String strR = j0Var.f13291d.R();
        lVar.A(j0Var instanceof i0 ? new ph.d(strR) : lVar.f12722d.b(256) ? new ph.f(strR) : new ph.x(strR));
    }

    public final void v(k0 k0Var) {
        h().A(new ph.e(k0Var.f13292d.R()));
    }

    public final ph.l w(o0 o0Var) {
        ph.l lVarG = g(o0Var, "http://www.w3.org/1999/xhtml", false);
        j(lVarG);
        if (o0Var.f13332f) {
            f0 f0Var = lVarG.f12722d;
            f0Var.f13286d |= 32;
            if (!f0Var.c() || ((f0Var.f13286d & 2) == 0 && !f0Var.d())) {
                t0 t0Var = this.f13235c;
                Object[] objArr = {f0Var.f13285c};
                ph.k kVar = t0Var.f13346b;
                if (kVar.a()) {
                    kVar.add(new ba.h(t0Var.f13345a, "Tag [%s] cannot be self-closing; not a void tag", objArr));
                }
            } else {
                this.f13235c.o(k3.f13293a);
                t0 t0Var2 = this.f13235c;
                n0 n0Var = this.f13250t;
                n0Var.g();
                n0Var.k(f0Var.f13284b);
                t0Var2.h(n0Var);
            }
        }
        return lVarG;
    }

    public final ph.l x(o0 o0Var) {
        ph.l lVarG = g(o0Var, "http://www.w3.org/1999/xhtml", false);
        j(lVarG);
        E();
        return lVarG;
    }

    public final void y(o0 o0Var, String str) {
        ph.l lVarG = g(o0Var, str, true);
        j(lVarG);
        if (o0Var.f13332f) {
            lVarG.f12722d.f13286d |= 32;
            E();
        }
    }

    public final void z(o0 o0Var, boolean z4, boolean z10) {
        ph.o oVar = (ph.o) g(o0Var, "http://www.w3.org/1999/xhtml", false);
        if (!z10 || !B("template")) {
            this.f13247p = oVar;
        }
        j(oVar);
        if (z4) {
            return;
        }
        E();
    }
}
