package rh;

import java.util.Arrays;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.slf4j.Marker;
import qh.s0;

/* loaded from: classes3.dex */
public final class v implements AutoCloseable {

    /* renamed from: d, reason: collision with root package name */
    public static final char[] f13808d = null;

    /* renamed from: e, reason: collision with root package name */
    public static final String[] f13809e = null;

    /* renamed from: f, reason: collision with root package name */
    public static final char[] f13810f = null;

    /* renamed from: g, reason: collision with root package name */
    public static final Pattern f13811g = null;

    /* renamed from: h, reason: collision with root package name */
    public static final Pattern f13812h = null;

    /* renamed from: a, reason: collision with root package name */
    public final s0 f13813a;

    /* renamed from: b, reason: collision with root package name */
    public final String f13814b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f13815c;

    static {
        f13808d = new char[]{'>', '+', '~'};
        f13809e = new String[]{"=", "!=", "^=", "$=", "*=", "~="};
        f13810f = new char[]{',', ')'};
        f13811g = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);
        f13812h = Pattern.compile("([+-])?(\\d+)");
    }

    public v(String r22) {
        nh.b.b0(r22);
        String r23 = r22.trim();
        this.f13814b = r23;
        this.f13813a = new s0(r23);
    }

    public static p R(String r62) {
        v r22 = new v(r62);     // Catch: IllegalArgumentException -> L7
        p r63 = r22.Q();     // Catch: Throwable -> L9
        r22.close();     // Catch: IllegalArgumentException -> L7
        return r63;
    L9:
        th = move-exception;
        r22.close();     // Catch: Throwable -> L12
    L15:
        throw th;     // Catch: IllegalArgumentException -> L7
    L12:
        th = move-exception;
        Throwable.class.getDeclaredMethod("addSuppressed", new Class[]{Throwable.class}).invoke(th, new Object[]{th});     // Catch: Exception -> L18
    L7:
        e = move-exception;
        throw new hc.d(e.getMessage());
    }

    public static p r(p r32, p r4) {
        if (r32 != null) goto L5;
        return r4;
    L5:
        if ((r32 instanceof b) == false) goto L9;
        b r02 = (b) r32;
        r02.f13780a.add(r4);
        r02.g();
        return r32;
    L9:
        return new b(Arrays.asList(new p[]{r32, r4}));
    }

    public final int A() {
        String r02 = J().trim();
        boolean r12 = false;
        if (r02 != null) goto L5;
    L14:
        if (r12 == false) goto L18;
        return Integer.parseInt(r02);
    L18:
        throw new nh.c("Index must be numeric");
    L5:
        if (r02.length() == 0) goto L14;
        int r22 = r02.length();
        int r32 = 0;
    L8:
        if (r32 >= r22) goto L13;
        if (oh.f.g(r02.charAt(r32)) == false) goto L14;
        r32 = r32 + 1;
        goto L8
    L13:
        r12 = true;
        goto L14
    }

    public final String J() {
        return this.f13813a.A('(', ')');
    }

    public final p K(boolean r4) {
        if (r4 == false) goto L4;
        String r02 = ":containsOwn";
    L5:
        String r12 = s0.N(J());
        nh.b.c0(r12, r02.concat("(text) query must not be empty"));
        if (this.f13815c == true) goto L8;
        if (r4 == false) goto L12;
        return new h(r12, 4);
    L12:
        return new h(r12, 5);
    L8:
        return new r(r12);
    L4:
        r02 = ":contains";
        goto L5
    }

    public final p L(boolean r4) {
        if (r4 == false) goto L4;
        String r02 = ":containsWholeOwnText";
    L5:
        String r12 = s0.N(J());
        nh.b.c0(r12, r02.concat("(text) query must not be empty"));
        if (r4 == false) goto L9;
        return new h(r12, 6, false);
    L9:
        return new h(r12, 7, false);
    L4:
        r02 = ":containsWholeText";
        goto L5
    }

    public final n M(boolean r11, boolean r12) {
        String r22 = oh.a.d(J());
        if ("odd".equals(r22) == false) goto L6;
        int r23 = 2;
        int r32 = 1;
    L24:
        if (r12 == false) goto L28;
        if (r11 == false) goto L36;
        return new n(r23, r32, 2);
    L36:
        return new n(r23, r32, 3);
    L28:
        if (r11 == false) goto L31;
        return new n(r23, r32, 1);
    L31:
        return new n(r23, r32, 0);
    L6:
        if ("even".equals(r22) == false) goto L9;
        r23 = 2;
    L8:
        r32 = 0;
        goto L24
    L9:
        Matcher r33 = f13811g.matcher(r22);
        if (r33.matches() == true) goto L12;
        Matcher r34 = f13812h.matcher(r22);
        if (r34.matches() == false) goto L33;
        r32 = Integer.parseInt(r34.group().replaceFirst("^\\+", ""));
        r23 = 0;
        goto L24
    L33:
        throw new hc.d("Could not parse nth-index '%s': unexpected format", new Object[]{r22});
    L12:
        if (r33.group(3) == null) goto L15;
        r23 = Integer.parseInt(r33.group(1).replaceFirst("^\\+", ""));
    L19:
        if (r33.group(4) == null) goto L8;
        r32 = Integer.parseInt(r33.group(4).replaceFirst("^\\+", ""));
        goto L24
    L15:
        if ("-".equals(r33.group(2)) == false) goto L17;
        r23 = -1;
        goto L19
    L17:
        r23 = 1;
        goto L19
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final p N(s0 r92) {
        int r02 = 2;
        int r12 = 1;
        int r22 = 0;
        Object[] r23 = 0;
        Object[] r24 = 0;
        Object[] r25 = 0;
        Object[] r26 = 0;
        String[] r32 = f13809e;
        StringBuilder r4 = oh.f.b();
    L4:
        if (r92.f13342a.R() == true) goto L13;
        int r5 = 0;
    L7:
        if (r5 >= 6) goto L12;
        if (r92.f13342a.Y(r32[r5]) == true) goto L13;
        r5 = r5 + 1;
        goto L7
    L12:
        r4.append(r92.f13342a.K());
    L13:
        String r33 = oh.f.l(r4);
        nh.b.b0(r33);
        r92.K();
        if (r92.f13342a.R() == false) goto L23;
        if (r33.startsWith("^") == false) goto L19;
        return new h(r33.substring(1), 1);
    L19:
        if (r33.equals(Marker.ANY_MARKER) == false) goto L49;
        return new h("", 1);
    L49:
        return new h(r33, r22, r26 == true ? 1 : 0);
    L23:
        if (r92.M('=') == false) goto L27;
        p r03 = new i(r33, r92.f13342a.P(), r25 == true ? 1 : 0);
    L50:
        return r03;
    L27:
        if (r92.f13342a.U("!=") == false) goto L30;
        r03 = new i(r33, r92.f13342a.P(), 3);
        goto L50
    L30:
        if (r92.f13342a.U("^=") == false) goto L33;
        r03 = new i(r33, r92.f13342a.P(), 4, r24 == true ? 1 : 0);
        goto L50
    L33:
        if (r92.f13342a.U("$=") == false) goto L36;
        return new i(r33, r92.f13342a.P(), r02, r23 == true ? 1 : 0);
    L36:
        if (r92.f13342a.U("*=") == false) goto L39;
        r03 = new i(r33, r92.f13342a.P(), r12);
        goto L50
    L39:
        if (r92.f13342a.U("~=") == false) goto L43;
        r03 = new j(r33, Pattern.compile(r92.f13342a.P()));
        goto L50
    L43:
        throw new hc.d("Could not parse attribute query '%s': unexpected token at '%s'", new Object[]{this.f13814b, r92.f13342a.P()});
    }

    public final p O(boolean r4) {
        if (r4 == false) goto L4;
        String r02 = ":matchesOwn";
    L5:
        String r12 = J();
        nh.b.c0(r12, r02.concat("(regex) query must not be empty"));
        Pattern r03 = Pattern.compile(r12);
        if (this.f13815c == true) goto L8;
        if (r4 == false) goto L12;
        return new o(r03, 1);
    L12:
        return new o(r03, 0);
    L8:
        return new r(r03);
    L4:
        r02 = ":matches";
        goto L5
    }

    public final p P(boolean r4) {
        if (r4 == false) goto L4;
        String r02 = ":matchesWholeOwnText";
    L5:
        String r12 = J();
        nh.b.c0(r12, r02.concat("(regex) query must not be empty"));
        if (r4 == false) goto L9;
        return new o(Pattern.compile(r12), 2);
    L9:
        return new o(Pattern.compile(r12), 3);
    L4:
        r02 = ":matchesWholeText";
        goto L5
    }

    public final p Q() {
        p r02 = U();
        this.f13813a.K();
        if (this.f13813a.f13342a.R() == false) goto L6;
        return r02;
    L6:
        throw new hc.d("Could not parse query '%s': unexpected token at '%s'", new Object[]{this.f13814b, this.f13813a.f13342a.P()});
    }

    public final p S(Function r4, String r5) {
        if (this.f13813a.M('(') == false) goto L11;
        p r02 = U();
        if (this.f13813a.M(')') == false) goto L9;
        return (p) r4.apply(r02);
    L9:
        throw new nh.c(r5);
    L11:
        throw new nh.c(r5);
    }

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
    public final p T() {
        int r02 = 0;
        this.f13813a.K();
        s0 r12 = this.f13813a;
        char[] r22 = f13808d;
        if (r12.f13342a.W(r22) == false) goto L5;
        ?? r13 = new g(8);
    L7:
        if (this.f13813a.K() == false) goto L9;
        char r32 = ' ';
    L11:
        if (this.f13813a.f13342a.W(r22) == false) goto L14;
        r32 = this.f13813a.f13342a.K();
    L16:
        if (r32 == 0) goto L35;
        p r5 = V();
        if (r32 != ' ') goto L20;
        r13 = r(new x(r13, r02), r5);
        goto L7
    L20:
        if (r32 != '+') goto L22;
        r13 = r(new a0(r13), r5);
        goto L7
    L22:
        if (r32 != '>') goto L24;
        if ((r13 instanceof z) == false) goto L31;
        r13 = (z) r13;
    L32:
        r13.f13821d.add(r5);
        r13.f13822e = r5.a() + r13.f13822e;
        r13.f13778b |= r5.f();
        goto L7
    L31:
        r13 = new z(r13);
        goto L32
    L24:
        if (r32 != '~') goto L27;
        r13 = r(new b0(r13), r5);
        goto L7
    L27:
        throw new hc.d("Unknown combinator '%s'", new Object[]{Character.valueOf(r32)});
    L35:
        return r13;
    L14:
        if (this.f13813a.f13342a.W(f13810f) == false) goto L16;
    L9:
        r32 = 0;
        goto L11
    L5:
        r13 = V();
        goto L7
    }

    public final p U() {
        p r02 = T();
    L4:
        if (this.f13813a.M(',') == false) goto L9;
        p r12 = T();
        if ((r02 instanceof c) == true) goto L7;
        r02 = new c(new p[]{r02, r12});
        goto L4
    L7:
        c r22 = (c) r02;
        r22.f13780a.add(r12);
        r22.g();
        goto L4
    L9:
        return r02;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final p V() {
        int r12 = 9;
        int r32 = 0;
        Object[] r33 = 0;
        Object[] r34 = 0;
        Object[] r35 = 0;
        Object[] r36 = 0;
        this.f13813a.K();
        if (Character.isLetterOrDigit(this.f13813a.f13342a.Q()) == false) goto L5;
    L11:
        s0 r4 = this.f13813a;
        r4.getClass();
        char[] r62 = s0.f13341b;
        StringBuilder r72 = oh.f.b();
    L13:
        if (r4.f13342a.R() == true) goto L24;
        char r82 = r4.f13342a.Q();
        if (r82 == '\\') goto L16;
        if (Character.isLetterOrDigit(r4.f13342a.Q()) == false) goto L22;
    L23:
        r72.append(r82);
        r4.r();
        goto L13
    L22:
        if (r4.f13342a.W(r62) == false) goto L24;
    L16:
        r4.r();
        if (r4.f13342a.R() == true) goto L24;
        r72.append(r4.f13342a.K());
    L24:
        String r42 = oh.a.d(oh.f.l(r72));
        nh.b.b0(r42);
        if (r42.startsWith("*|") == false) goto L29;
        String r43 = r42.substring(2);
        p r5 = new c(new p[]{new h(r43, r12, r36 == true ? 1 : 0), new h(da.b.c(":", r43), 10, r35 == true ? 1 : 0)});
    L27:
        p r13 = r5;
    L35:
        p r44 = W();
        if (r44 == null) goto L38;
        r13 = r(r13, r44);
        goto L35
    L38:
        if (r13 == null) goto L41;
        return r13;
    L41:
        throw new hc.d("Could not parse query '%s': unexpected token at '%s'", new Object[]{this.f13814b, this.f13813a.f13342a.P()});
    L29:
        if (r42.endsWith("|*") == false) goto L32;
        r13 = new h(r42.substring(0, r42.length() - 2) + ":", 11, r34 == true ? 1 : 0);
        goto L35
    L32:
        if (r42.contains("|") == false) goto L34;
        r42 = r42.replace("|", ":");
    L34:
        r5 = new h(r42, r12, r33 == true ? 1 : 0);
        goto L27
    L5:
        if (this.f13813a.f13342a.Y("*|") == true) goto L11;
        if (this.f13813a.M('*') == false) goto L10;
        r13 = new g(r32);
        goto L35
    L10:
        r13 = null;
        goto L35
    }

    public final p W() {
        int r02 = 11;
        int r12 = 10;
        int r22 = 6;
        char r32 = 65535;
        int r4 = 8;
        int r5 = 5;
        int r62 = 4;
        int r72 = 3;
        int r82 = 2;
        int r92 = 1;
        boolean r10 = false;
        if (this.f13813a.M('#') == false) goto L7;
        String r03 = this.f13813a.J();
        nh.b.b0(r03);
        return new h(r03, r4, r10);
    L7:
        if (this.f13813a.M('.') == false) goto L11;
        String r04 = this.f13813a.J();
        nh.b.b0(r04);
        return new h(r04.trim(), r82, r10);
    L11:
        if (this.f13813a.f13342a.V('[') == false) goto L24;
        s0 r05 = new s0(this.f13813a.A('[', ']'));
        p r13 = N(r05);     // Catch: Throwable -> L16
        r05.close();
        return r13;
    L16:
        th = move-exception;
        r05.close();     // Catch: Throwable -> L19
    L22:
        throw th;
    L19:
        th = move-exception;
        Throwable.class.getDeclaredMethod("addSuppressed", new Class[]{Throwable.class}).invoke(th, new Object[]{th});     // Catch: Exception -> L223
        goto L22
    L24:
        if (this.f13813a.f13342a.U("::") == false) goto L67;
        String r06 = this.f13813a.J();
        this.f13815c = true;
        r06.getClass();
        switch(r06.hashCode()) {
            case 3076010: goto L49;
            case 3386882: goto L45;
            case 3556653: goto L41;
            case 94504589: goto L37;
            case 950398559: goto L33;
            case 1563127392: goto L29;
            default: goto L52;
        };
    L52:
        switch(r32) {
            case 0: goto L60;
            case 1: goto L59;
            case 2: goto L58;
            case 3: goto L57;
            case 4: goto L56;
            case 5: goto L55;
            default: goto L54;
        };
    L55:
        p r14 = new s(ph.p.class, r06);
    L61:
        p r07 = W();
        if (r07 == null) goto L64;
        r14 = r(r14, r07);
        goto L61
    L64:
        this.f13815c = false;
        return r14;
    L56:
        r14 = new s(ph.e.class, r06);
        goto L61
    L57:
        r14 = new s(ph.d.class, r06);
        goto L61
    L58:
        r14 = new s(ph.x.class, r06);
        goto L61
    L59:
        r14 = new s(ph.q.class, r06);
        goto L61
    L60:
        r14 = new s(ph.f.class, r06);
        goto L61
    L54:
        throw new hc.d("Could not parse query '%s': unknown node type '::%s'", new Object[]{this.f13814b, r06});
    L29:
        if (r06.equals("leafnode") == false) goto L52;
        r32 = 5;
        goto L52
    L33:
        if (r06.equals("comment") == false) goto L52;
        r32 = 4;
        goto L52
    L37:
        if (r06.equals("cdata") == false) goto L52;
        r32 = 3;
        goto L52
    L41:
        if (r06.equals("text") == false) goto L52;
        r32 = 2;
        goto L52
    L45:
        if (r06.equals("node") == false) goto L52;
        r32 = 1;
        goto L52
    L49:
        if (r06.equals("data") == false) goto L52;
        r32 = 0;
        goto L52
    L67:
        if (this.f13813a.M(':') == false) goto L221;
        String r11 = this.f13813a.J();
        r11.getClass();
        switch(r11.hashCode()) {
            case -2141736343: goto L184;
            case -2136991809: goto L180;
            case -1939921007: goto L176;
            case -1754914063: goto L172;
            case -1629748624: goto L168;
            case -947996741: goto L164;
            case -897532411: goto L160;
            case -872629820: goto L156;
            case -567445985: goto L152;
            case -55413797: goto L148;
            case 3244: goto L144;
            case 3309: goto L140;
            case 3370: goto L136;
            case 3464: goto L132;
            case 103066: goto L128;
            case 109267: goto L124;
            case 3506402: goto L120;
            case 93819220: goto L116;
            case 96634189: goto L112;
            case 208017639: goto L108;
            case 614017170: goto L104;
            case 835834661: goto L100;
            case 840862003: goto L96;
            case 1255901423: goto L92;
            case 1292941139: goto L88;
            case 1455900751: goto L84;
            case 1870740819: goto L80;
            case 2014184485: goto L76;
            case 2025926969: goto L72;
            default: goto L187;
        };
    L187:
        switch(r32) {
            case 0: goto L219;
            case 1: goto L258;
            case 2: goto L257;
            case 3: goto L256;
            case 4: goto L255;
            case 5: goto L254;
            case 6: goto L253;
            case 7: goto L252;
            case 8: goto L251;
            case 9: goto L250;
            case 10: goto L249;
            case 11: goto L248;
            case 12: goto L247;
            case 13: goto L246;
            case 14: goto L245;
            case 15: goto L203;
            case 16: goto L243;
            case 17: goto L242;
            case 18: goto L241;
            case 19: goto L240;
            case 20: goto L239;
            case 21: goto L238;
            case 22: goto L237;
            case 23: goto L236;
            case 24: goto L235;
            case 25: goto L234;
            case 26: goto L233;
            case 27: goto L232;
            case 28: goto L220;
            default: goto L189;
        };
    L203:
        String r08 = J();
        nh.b.c0(r08, ":not(selector) subselect must not be empty");
        p r15 = new x(R(r08), r82);
    L244:
        return r15;
    L219:
        String r09 = s0.N(J());
        nh.b.c0(r09, ":containsData(text) query must not be empty");
        r15 = new h(r09, 3);
        goto L244
    L189:
        throw new hc.d("Could not parse query '%s': unexpected token at '%s'", new Object[]{this.f13814b, this.f13813a.f13342a.P()});
    L220:
        return new m();
    L232:
        return L(false);
    L233:
        return O(true);
    L234:
        return new g(r5);
    L235:
        return new l();
    L236:
        return P(true);
    L237:
        return O(false);
    L238:
        return new g(r72);
    L239:
        return new g();
    L240:
        return K(true);
    L241:
        return new g(r92);
    L242:
        return new q();
    L243:
        return new g(r22);
    L245:
        return S(new a2.n(r02), ":has() must have a selector");
    L246:
        return new k(A(), 2);
    L247:
        return S(new a2.n(r12), ":is() must have a selector");
    L248:
        return new k(A(), 1);
    L249:
        return new k(A(), 0);
    L250:
        return L(true);
    L251:
        return K(false);
    L252:
        return M(true, true);
    L253:
        return M(false, true);
    L254:
        return new g(r62);
    L255:
        return M(true, false);
    L256:
        return M(false, false);
    L257:
        return P(false);
    L258:
        return new g(r82);
    L72:
        if (r11.equals("last-of-type") == false) goto L187;
        r32 = 28;
        goto L187
    L76:
        if (r11.equals("containsWholeText") == false) goto L187;
        r32 = 27;
        goto L187
    L80:
        if (r11.equals("matchesOwn") == false) goto L187;
        r32 = 26;
        goto L187
    L84:
        if (r11.equals("only-of-type") == false) goto L187;
        r32 = 25;
        goto L187
    L88:
        if (r11.equals("first-of-type") == false) goto L187;
        r32 = 24;
        goto L187
    L92:
        if (r11.equals("matchesWholeOwnText") == false) goto L187;
        r32 = 23;
        goto L187
    L96:
        if (r11.equals("matches") == false) goto L187;
        r32 = 22;
        goto L187
    L100:
        if (r11.equals("last-child") == false) goto L187;
        r32 = 21;
        goto L187
    L104:
        if (r11.equals("matchText") == false) goto L187;
        r32 = 20;
        goto L187
    L108:
        if (r11.equals("containsOwn") == false) goto L187;
        r32 = 19;
        goto L187
    L112:
        if (r11.equals("empty") == false) goto L187;
        r32 = 18;
        goto L187
    L116:
        if (r11.equals("blank") == false) goto L187;
        r32 = 17;
        goto L187
    L120:
        if (r11.equals("root") == false) goto L187;
        r32 = 16;
        goto L187
    L124:
        if (r11.equals("not") == false) goto L187;
        r32 = 15;
        goto L187
    L128:
        if (r11.equals("has") == false) goto L187;
        r32 = 14;
        goto L187
    L132:
        if (r11.equals("lt") == false) goto L187;
        r32 = '\r';
        goto L187
    L136:
        if (r11.equals("is") == false) goto L187;
        r32 = '\f';
        goto L187
    L140:
        if (r11.equals("gt") == false) goto L187;
        r32 = 11;
        goto L187
    L144:
        if (r11.equals("eq") == false) goto L187;
        r32 = '\n';
        goto L187
    L148:
        if (r11.equals("containsWholeOwnText") == false) goto L187;
        r32 = '\t';
        goto L187
    L152:
        if (r11.equals("contains") == false) goto L187;
        r32 = '\b';
        goto L187
    L156:
        if (r11.equals("nth-last-of-type") == false) goto L187;
        r32 = 7;
        goto L187
    L160:
        if (r11.equals("nth-of-type") == false) goto L187;
        r32 = 6;
        goto L187
    L164:
        if (r11.equals("only-child") == false) goto L187;
        r32 = 5;
        goto L187
    L168:
        if (r11.equals("nth-last-child") == false) goto L187;
        r32 = 4;
        goto L187
    L172:
        if (r11.equals("nth-child") == false) goto L187;
        r32 = 3;
        goto L187
    L176:
        if (r11.equals("matchesWholeText") == false) goto L187;
        r32 = 2;
        goto L187
    L180:
        if (r11.equals("first-child") == false) goto L187;
        r32 = 1;
        goto L187
    L184:
        if (r11.equals("containsData") == false) goto L187;
        r32 = 0;
        goto L187
    L221:
        return null;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f13813a.close();
    }

    public final String toString() {
        return this.f13814b;
    }
}