package tb;

import ha.jd;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'c' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class x {

    /* renamed from: c, reason: collision with root package name */
    public static final x f15042c;

    /* renamed from: d, reason: collision with root package name */
    public static final x f15043d;

    /* renamed from: e, reason: collision with root package name */
    public static final x f15044e;

    /* renamed from: f, reason: collision with root package name */
    public static final x f15045f;

    /* renamed from: g, reason: collision with root package name */
    public static final x f15046g;

    /* renamed from: h, reason: collision with root package name */
    public static final x f15047h;

    /* renamed from: i, reason: collision with root package name */
    public static final x f15048i;

    /* renamed from: j, reason: collision with root package name */
    public static final x f15049j;

    /* renamed from: k, reason: collision with root package name */
    public static final x f15050k;
    public static final x l;

    /* renamed from: m, reason: collision with root package name */
    public static final x f15051m;

    /* renamed from: n, reason: collision with root package name */
    public static final x f15052n;

    /* renamed from: p, reason: collision with root package name */
    public static final x f15053p;

    /* renamed from: q, reason: collision with root package name */
    public static final x f15054q;
    public static final x r;

    /* renamed from: s, reason: collision with root package name */
    public static final x f15055s;

    /* renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ x[] f15056t;

    /* renamed from: a, reason: collision with root package name */
    public final te.p f15057a;

    /* renamed from: b, reason: collision with root package name */
    public final w f15058b;

    static {
        jd jdVar = new jd(27);
        w wVar = w.LEFT_SELECTION;
        x xVar = new x("UP", 0, jdVar, wVar);
        f15042c = xVar;
        v vVar = new v(10);
        w wVar2 = w.RIGHT_SELECTION;
        x xVar2 = new x("DOWN", 1, vVar, wVar2);
        f15043d = xVar2;
        x xVar3 = new x("LEFT", 2, new v(11), wVar);
        f15044e = xVar3;
        x xVar4 = new x("RIGHT", 3, new v(12), wVar2);
        f15045f = xVar4;
        x xVar5 = new x("PREVIOUS_WORD_BOUNDARY", 4, new jd(28));
        f15046g = xVar5;
        x xVar6 = new x("NEXT_WORD_BOUNDARY", 5, new jd(29));
        f15047h = xVar6;
        x xVar7 = new x("PAGE_UP", 6, new v(0));
        f15048i = xVar7;
        x xVar8 = new x("PAGE_DOWN", 7, new v(1));
        f15049j = xVar8;
        x xVar9 = new x("PAGE_TOP", 8, new v(2));
        f15050k = xVar9;
        x xVar10 = new x("PAGE_BOTTOM", 9, new v(3));
        l = xVar10;
        x xVar11 = new x("LINE_START", 10, new v(4));
        f15051m = xVar11;
        x xVar12 = new x("LINE_END", 11, new v(5));
        f15052n = xVar12;
        x xVar13 = new x("TEXT_START", 12, new v(6));
        f15053p = xVar13;
        x xVar14 = new x("TEXT_END", 13, new v(7));
        f15054q = xVar14;
        x xVar15 = new x("ROW_START", 14, new v(8));
        r = xVar15;
        x xVar16 = new x("ROW_END", 15, new v(9));
        f15055s = xVar16;
        f15056t = new x[]{xVar, xVar2, xVar3, xVar4, xVar5, xVar6, xVar7, xVar8, xVar9, xVar10, xVar11, xVar12, xVar13, xVar14, xVar15, xVar16};
    }

    public x(String str, int i10, te.p pVar, w wVar) {
        this.f15057a = pVar;
        this.f15058b = wVar;
    }

    public static x valueOf(String str) {
        return (x) Enum.valueOf(x.class, str);
    }

    public static x[] values() {
        return (x[]) f15056t.clone();
    }

    public /* synthetic */ x(String str, int i10, te.p pVar) {
        this(str, i10, pVar, w.SELECTION_ANCHOR);
    }
}
