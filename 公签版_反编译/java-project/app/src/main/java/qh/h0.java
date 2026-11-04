package qh;

import j$.util.Map;
import j$.util.Objects;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

/* loaded from: classes3.dex */
public final class h0 {

    /* renamed from: c, reason: collision with root package name */
    public static final h0 f13288c;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f13289a;

    /* renamed from: b, reason: collision with root package name */
    public final h0 f13290b;

    static {
        String[] strArr = {"object", "base", "font", "tt", "i", "b", "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", "ruby", "rt", "rp", "rtc", "a", "img", "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", "span", "input", "select", "textarea", AnnotatedPrivateKey.LABEL, "optgroup", "option", "legend", "datalist", "keygen", "output", "progress", "meter", "area", "param", "source", "track", "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track", "data", "bdi", "s", "strike", "nobr", "rb"};
        String[] strArr2 = oh.a.f11798d;
        h0 h0Var = new h0();
        h0Var.c("http://www.w3.org/1999/xhtml", new String[]{"html", "head", "body", "frameset", "script", "noscript", "style", "meta", "link", "title", "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", "p", "h1", "h2", "h3", "h4", "h5", "h6", "br", "button", "ul", "ol", "pre", "div", "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "ins", "del", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "video", "audio", "canvas", "details", "menu", "plaintext", "template", "article", "main", "center", "template", "dir", "applet", "marquee", "listing", "#root"}, new g0(4));
        h0Var.c("http://www.w3.org/1999/xhtml", strArr, new g0(8));
        h0Var.c("http://www.w3.org/1999/xhtml", new String[]{"title", "a", "p", "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", "style", "ins", "del", "s", "button"}, new g0(9));
        h0Var.c("http://www.w3.org/1999/xhtml", new String[]{"meta", "link", "base", "frame", "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track"}, new g0(10));
        h0Var.c("http://www.w3.org/1999/xhtml", new String[]{"pre", "plaintext", "title", "textarea", "script"}, new g0(11));
        h0Var.c("http://www.w3.org/1999/xhtml", new String[]{"title", "textarea"}, new g0(12));
        h0Var.c("http://www.w3.org/1999/xhtml", new String[]{"iframe", "noembed", "noframes", "script", "style", "xmp"}, new g0(0));
        h0Var.c("http://www.w3.org/1999/xhtml", strArr2, new g0(1));
        h0Var.c("http://www.w3.org/1998/Math/MathML", new String[]{"math"}, new g0(2));
        h0Var.c("http://www.w3.org/1998/Math/MathML", new String[]{"mi", "mo", "msup", "mn", "mtext"}, new g0(3));
        h0Var.c("http://www.w3.org/2000/svg", new String[]{"svg", "femerge", "femergenode"}, new g0(5));
        h0Var.c("http://www.w3.org/2000/svg", new String[]{"text"}, new g0(6));
        h0Var.c("http://www.w3.org/2000/svg", new String[]{"script"}, new g0(7));
        f13288c = h0Var;
    }

    public h0() {
        this.f13289a = new HashMap();
        this.f13290b = null;
    }

    public final void a(f0 f0Var) {
        ((Map) Map.EL.computeIfAbsent(this.f13289a, f0Var.f13283a, new a2.n(7))).put(f0Var.f13284b, f0Var);
    }

    public final f0 b(String str, String str2) {
        f0 f0VarB;
        f0 f0Var;
        nh.b.d0(str);
        java.util.Map map = (java.util.Map) this.f13289a.get(str2);
        if (map != null && (f0Var = (f0) map.get(str)) != null) {
            return f0Var;
        }
        h0 h0Var = this.f13290b;
        if (h0Var == null || (f0VarB = h0Var.b(str, str2)) == null) {
            return null;
        }
        f0 f0VarClone = f0VarB.clone();
        a(f0VarClone);
        return f0VarClone;
    }

    public final void c(String str, String[] strArr, Consumer consumer) {
        for (String str2 : strArr) {
            f0 f0VarB = b(str2, str);
            if (f0VarB == null) {
                f0VarB = new f0(str2, str2, str);
                f0VarB.f13286d = 0;
                f0VarB.e(1);
                a(f0VarB);
            }
            consumer.accept(f0VarB);
        }
    }

    public final f0 d(String str, String str2, String str3, boolean z) {
        nh.b.d0(str);
        String strTrim = str.trim();
        nh.b.b0(strTrim);
        f0 f0VarB = b(strTrim, str3);
        if (f0VarB != null) {
            return f0VarB;
        }
        if (!z) {
            strTrim = str2;
        }
        f0 f0VarB2 = b(str2, str3);
        if (f0VarB2 == null) {
            f0 f0Var = new f0(strTrim, str2, str3);
            a(f0Var);
            return f0Var;
        }
        if (!z || strTrim.equals(str2)) {
            return f0VarB2;
        }
        f0 f0VarClone = f0VarB2.clone();
        f0VarClone.f13284b = strTrim;
        a(f0VarClone);
        return f0VarClone;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof h0) {
            return Objects.equals(this.f13289a, ((h0) obj).f13289a);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f13289a);
    }

    public h0(h0 h0Var) {
        this.f13289a = new HashMap();
        this.f13290b = h0Var;
    }
}
