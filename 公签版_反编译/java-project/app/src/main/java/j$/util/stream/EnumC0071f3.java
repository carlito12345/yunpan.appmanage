package j$.util.stream;

import j$.util.Map;
import j$.util.Spliterator;
import java.util.EnumMap;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DISTINCT' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: j$.util.stream.f3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class EnumC0071f3 {
    public static final EnumC0071f3 DISTINCT;
    public static final EnumC0071f3 ORDERED;
    public static final EnumC0071f3 SHORT_CIRCUIT;
    public static final EnumC0071f3 SIZED;
    public static final EnumC0071f3 SORTED;

    /* renamed from: f, reason: collision with root package name */
    static final int f9431f;

    /* renamed from: g, reason: collision with root package name */
    static final int f9432g;

    /* renamed from: h, reason: collision with root package name */
    static final int f9433h;

    /* renamed from: i, reason: collision with root package name */
    private static final int f9434i;

    /* renamed from: j, reason: collision with root package name */
    private static final int f9435j;

    /* renamed from: k, reason: collision with root package name */
    private static final int f9436k;
    static final int l;

    /* renamed from: m, reason: collision with root package name */
    static final int f9437m;

    /* renamed from: n, reason: collision with root package name */
    static final int f9438n;

    /* renamed from: o, reason: collision with root package name */
    static final int f9439o;

    /* renamed from: p, reason: collision with root package name */
    static final int f9440p;

    /* renamed from: q, reason: collision with root package name */
    static final int f9441q;
    static final int r;

    /* renamed from: s, reason: collision with root package name */
    static final int f9442s;

    /* renamed from: t, reason: collision with root package name */
    static final int f9443t;

    /* renamed from: u, reason: collision with root package name */
    static final int f9444u;

    /* renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ EnumC0071f3[] f9445v;

    /* renamed from: a, reason: collision with root package name */
    private final EnumMap f9446a;

    /* renamed from: b, reason: collision with root package name */
    private final int f9447b;

    /* renamed from: c, reason: collision with root package name */
    private final int f9448c;

    /* renamed from: d, reason: collision with root package name */
    private final int f9449d;

    /* renamed from: e, reason: collision with root package name */
    private final int f9450e;

    public static EnumC0071f3 valueOf(String str) {
        return (EnumC0071f3) Enum.valueOf(EnumC0071f3.class, str);
    }

    public static EnumC0071f3[] values() {
        return (EnumC0071f3[]) f9445v.clone();
    }

    static {
        EnumC0066e3 enumC0066e3 = EnumC0066e3.SPLITERATOR;
        C0061d3 c0061d3V = v(enumC0066e3);
        EnumC0066e3 enumC0066e32 = EnumC0066e3.STREAM;
        c0061d3V.a(enumC0066e32);
        EnumC0066e3 enumC0066e33 = EnumC0066e3.OP;
        c0061d3V.f9417a.put((EnumMap) enumC0066e33, (EnumC0066e3) 3);
        EnumC0071f3 enumC0071f3 = new EnumC0071f3("DISTINCT", 0, 0, c0061d3V);
        DISTINCT = enumC0071f3;
        C0061d3 c0061d3V2 = v(enumC0066e3);
        c0061d3V2.a(enumC0066e32);
        c0061d3V2.f9417a.put((EnumMap) enumC0066e33, (EnumC0066e3) 3);
        EnumC0071f3 enumC0071f32 = new EnumC0071f3("SORTED", 1, 1, c0061d3V2);
        SORTED = enumC0071f32;
        C0061d3 c0061d3V3 = v(enumC0066e3);
        c0061d3V3.a(enumC0066e32);
        EnumMap enumMap = c0061d3V3.f9417a;
        enumMap.put((EnumMap) enumC0066e33, (EnumC0066e3) 3);
        EnumC0066e3 enumC0066e34 = EnumC0066e3.TERMINAL_OP;
        enumMap.put((EnumMap) enumC0066e34, (EnumC0066e3) 2);
        EnumC0066e3 enumC0066e35 = EnumC0066e3.UPSTREAM_TERMINAL_OP;
        enumMap.put((EnumMap) enumC0066e35, (EnumC0066e3) 2);
        EnumC0071f3 enumC0071f33 = new EnumC0071f3("ORDERED", 2, 2, c0061d3V3);
        ORDERED = enumC0071f33;
        C0061d3 c0061d3V4 = v(enumC0066e3);
        c0061d3V4.a(enumC0066e32);
        c0061d3V4.f9417a.put((EnumMap) enumC0066e33, (EnumC0066e3) 2);
        EnumC0071f3 enumC0071f34 = new EnumC0071f3("SIZED", 3, 3, c0061d3V4);
        SIZED = enumC0071f34;
        C0061d3 c0061d3V5 = v(enumC0066e33);
        c0061d3V5.a(enumC0066e34);
        EnumC0071f3 enumC0071f35 = new EnumC0071f3("SHORT_CIRCUIT", 4, 12, c0061d3V5);
        SHORT_CIRCUIT = enumC0071f35;
        f9445v = new EnumC0071f3[]{enumC0071f3, enumC0071f32, enumC0071f33, enumC0071f34, enumC0071f35};
        f9431f = k(enumC0066e3);
        f9432g = k(enumC0066e32);
        f9433h = k(enumC0066e33);
        k(enumC0066e34);
        k(enumC0066e35);
        int i10 = 0;
        for (EnumC0071f3 enumC0071f36 : values()) {
            i10 |= enumC0071f36.f9450e;
        }
        f9434i = i10;
        int i11 = f9432g;
        f9435j = i11;
        int i12 = i11 << 1;
        f9436k = i12;
        l = i11 | i12;
        EnumC0071f3 enumC0071f37 = DISTINCT;
        f9437m = enumC0071f37.f9448c;
        f9438n = enumC0071f37.f9449d;
        EnumC0071f3 enumC0071f38 = SORTED;
        f9439o = enumC0071f38.f9448c;
        f9440p = enumC0071f38.f9449d;
        EnumC0071f3 enumC0071f39 = ORDERED;
        f9441q = enumC0071f39.f9448c;
        r = enumC0071f39.f9449d;
        EnumC0071f3 enumC0071f310 = SIZED;
        f9442s = enumC0071f310.f9448c;
        f9443t = enumC0071f310.f9449d;
        f9444u = SHORT_CIRCUIT.f9448c;
    }

    private static C0061d3 v(EnumC0066e3 enumC0066e3) {
        C0061d3 c0061d3 = new C0061d3(new EnumMap(EnumC0066e3.class));
        c0061d3.a(enumC0066e3);
        return c0061d3;
    }

    private EnumC0071f3(String str, int i10, int i11, C0061d3 c0061d3) {
        EnumC0066e3[] enumC0066e3ArrValues = EnumC0066e3.values();
        int length = enumC0066e3ArrValues.length;
        int i12 = 0;
        while (true) {
            EnumMap enumMap = c0061d3.f9417a;
            if (i12 < length) {
                Map.EL.a(enumMap, enumC0066e3ArrValues[i12], 0);
                i12++;
            } else {
                this.f9446a = enumMap;
                int i13 = i11 * 2;
                this.f9447b = i13;
                this.f9448c = 1 << i13;
                this.f9449d = 2 << i13;
                this.f9450e = 3 << i13;
                return;
            }
        }
    }

    final boolean n(int i10) {
        return (i10 & this.f9450e) == this.f9448c;
    }

    final boolean s(int i10) {
        int i11 = this.f9450e;
        return (i10 & i11) == i11;
    }

    private static int k(EnumC0066e3 enumC0066e3) {
        int iIntValue = 0;
        for (EnumC0071f3 enumC0071f3 : values()) {
            iIntValue |= ((Integer) enumC0071f3.f9446a.get(enumC0066e3)).intValue() << enumC0071f3.f9447b;
        }
        return iIntValue;
    }

    static int j(int i10, int i11) {
        int i12;
        if (i10 == 0) {
            i12 = f9434i;
        } else {
            i12 = ((((f9435j & i10) << 1) | i10) | ((f9436k & i10) >> 1)) ^ (-1);
        }
        return i10 | (i11 & i12);
    }

    static int w(int i10) {
        return i10 & ((i10 ^ (-1)) >> 1) & f9435j;
    }

    static int m(Spliterator spliterator) {
        int iCharacteristics = spliterator.characteristics();
        int i10 = iCharacteristics & 4;
        int i11 = f9431f;
        return (i10 == 0 || spliterator.getComparator() == null) ? iCharacteristics & i11 : iCharacteristics & i11 & (-5);
    }
}
