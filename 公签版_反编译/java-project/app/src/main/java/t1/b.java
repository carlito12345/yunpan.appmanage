package t1;

import a9.o;
import android.graphics.Bitmap;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import j$.util.Objects;
import u1.f0;

/* loaded from: classes.dex */
public final class b {
    public static final String A;
    public static final String B;
    public static final String C;
    public static final String D;
    public static final String E;
    public static final String F;
    public static final String G;
    public static final String H;
    public static final String I;
    public static final String J;
    public static final String K;
    public static final String L;

    /* renamed from: s, reason: collision with root package name */
    public static final String f14657s;

    /* renamed from: t, reason: collision with root package name */
    public static final String f14658t;

    /* renamed from: u, reason: collision with root package name */
    public static final String f14659u;

    /* renamed from: v, reason: collision with root package name */
    public static final String f14660v;

    /* renamed from: w, reason: collision with root package name */
    public static final String f14661w;

    /* renamed from: x, reason: collision with root package name */
    public static final String f14662x;

    /* renamed from: y, reason: collision with root package name */
    public static final String f14663y;
    public static final String z;

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f14664a;

    /* renamed from: b, reason: collision with root package name */
    public final Layout.Alignment f14665b;

    /* renamed from: c, reason: collision with root package name */
    public final Layout.Alignment f14666c;

    /* renamed from: d, reason: collision with root package name */
    public final Bitmap f14667d;

    /* renamed from: e, reason: collision with root package name */
    public final float f14668e;

    /* renamed from: f, reason: collision with root package name */
    public final int f14669f;

    /* renamed from: g, reason: collision with root package name */
    public final int f14670g;

    /* renamed from: h, reason: collision with root package name */
    public final float f14671h;

    /* renamed from: i, reason: collision with root package name */
    public final int f14672i;

    /* renamed from: j, reason: collision with root package name */
    public final float f14673j;

    /* renamed from: k, reason: collision with root package name */
    public final float f14674k;
    public final boolean l;

    /* renamed from: m, reason: collision with root package name */
    public final int f14675m;

    /* renamed from: n, reason: collision with root package name */
    public final int f14676n;

    /* renamed from: o, reason: collision with root package name */
    public final float f14677o;

    /* renamed from: p, reason: collision with root package name */
    public final int f14678p;

    /* renamed from: q, reason: collision with root package name */
    public final float f14679q;
    public final int r;

    static {
        new b("", null, null, null, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f, 0);
        String str = f0.f15206a;
        f14657s = Integer.toString(0, 36);
        f14658t = Integer.toString(17, 36);
        f14659u = Integer.toString(1, 36);
        f14660v = Integer.toString(2, 36);
        f14661w = Integer.toString(3, 36);
        f14662x = Integer.toString(18, 36);
        f14663y = Integer.toString(4, 36);
        z = Integer.toString(5, 36);
        A = Integer.toString(6, 36);
        B = Integer.toString(7, 36);
        C = Integer.toString(8, 36);
        D = Integer.toString(9, 36);
        E = Integer.toString(10, 36);
        F = Integer.toString(11, 36);
        G = Integer.toString(12, 36);
        H = Integer.toString(13, 36);
        I = Integer.toString(14, 36);
        J = Integer.toString(15, 36);
        K = Integer.toString(16, 36);
        L = Integer.toString(19, 36);
    }

    public b(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f10, int i10, int i11, float f11, int i12, int i13, float f12, float f13, float f14, boolean z4, int i14, int i15, float f15, int i16) {
        if (charSequence == null) {
            bitmap.getClass();
        } else {
            o.k(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.f14664a = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.f14664a = charSequence.toString();
        } else {
            this.f14664a = null;
        }
        this.f14665b = alignment;
        this.f14666c = alignment2;
        this.f14667d = bitmap;
        this.f14668e = f10;
        this.f14669f = i10;
        this.f14670g = i11;
        this.f14671h = f11;
        this.f14672i = i12;
        this.f14673j = f13;
        this.f14674k = f14;
        this.l = z4;
        this.f14675m = i14;
        this.f14676n = i13;
        this.f14677o = f12;
        this.f14678p = i15;
        this.f14679q = f15;
        this.r = i16;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (TextUtils.equals(this.f14664a, bVar.f14664a) && this.f14665b == bVar.f14665b && this.f14666c == bVar.f14666c) {
            Bitmap bitmap = bVar.f14667d;
            Bitmap bitmap2 = this.f14667d;
            if (bitmap2 != null ? !(bitmap == null || !bitmap2.sameAs(bitmap)) : bitmap == null) {
                if (this.f14668e == bVar.f14668e && this.f14669f == bVar.f14669f && this.f14670g == bVar.f14670g && this.f14671h == bVar.f14671h && this.f14672i == bVar.f14672i && this.f14673j == bVar.f14673j && this.f14674k == bVar.f14674k && this.l == bVar.l && this.f14675m == bVar.f14675m && this.f14676n == bVar.f14676n && this.f14677o == bVar.f14677o && this.f14678p == bVar.f14678p && this.f14679q == bVar.f14679q && this.r == bVar.r) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f14664a, this.f14665b, this.f14666c, this.f14667d, Float.valueOf(this.f14668e), Integer.valueOf(this.f14669f), Integer.valueOf(this.f14670g), Float.valueOf(this.f14671h), Integer.valueOf(this.f14672i), Float.valueOf(this.f14673j), Float.valueOf(this.f14674k), Boolean.valueOf(this.l), Integer.valueOf(this.f14675m), Integer.valueOf(this.f14676n), Float.valueOf(this.f14677o), Integer.valueOf(this.f14678p), Float.valueOf(this.f14679q), Integer.valueOf(this.r));
    }
}
