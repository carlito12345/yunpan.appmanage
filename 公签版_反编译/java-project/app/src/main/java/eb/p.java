package eb;

import android.graphics.Paint;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final int f4893a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint.FontMetricsInt f4894b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4895c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4896d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4897e;

    /* renamed from: f, reason: collision with root package name */
    public final int f4898f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4899g;

    /* renamed from: h, reason: collision with root package name */
    public final int f4900h;

    /* renamed from: i, reason: collision with root package name */
    public final float f4901i;

    /* renamed from: j, reason: collision with root package name */
    public final fb.a f4902j;

    /* renamed from: k, reason: collision with root package name */
    public final zb.a f4903k;
    public final Paint l;

    /* renamed from: m, reason: collision with root package name */
    public final Paint f4904m;

    /* renamed from: n, reason: collision with root package name */
    public final Paint.FontMetricsInt f4905n;

    public p(int i10, Paint.FontMetricsInt fontMetricsInt, int i11, int i12, int i13, int i14, int i15, int i16, float f10, fb.a aVar, zb.a aVar2, Paint paint, Paint paint2, Paint.FontMetricsInt fontMetricsInt2) {
        ue.d.e(fontMetricsInt, "textMetrics");
        ue.d.e(aVar, "inlayHintRendererProvider");
        ue.d.e(aVar2, "colorScheme");
        ue.d.e(paint, "miscPaint");
        ue.d.e(paint2, "graphPaint");
        ue.d.e(fontMetricsInt2, "graphMetrics");
        this.f4893a = i10;
        this.f4894b = fontMetricsInt;
        this.f4895c = i11;
        this.f4896d = i12;
        this.f4897e = i13;
        this.f4898f = i14;
        this.f4899g = i15;
        this.f4900h = i16;
        this.f4901i = f10;
        this.f4902j = aVar;
        this.f4903k = aVar2;
        this.l = paint;
        this.f4904m = paint2;
        this.f4905n = fontMetricsInt2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f4893a == pVar.f4893a && ue.d.a(this.f4894b, pVar.f4894b) && this.f4895c == pVar.f4895c && this.f4896d == pVar.f4896d && this.f4897e == pVar.f4897e && this.f4898f == pVar.f4898f && this.f4899g == pVar.f4899g && this.f4900h == pVar.f4900h && Float.compare(this.f4901i, pVar.f4901i) == 0 && ue.d.a(this.f4902j, pVar.f4902j) && ue.d.a(this.f4903k, pVar.f4903k) && ue.d.a(this.l, pVar.l) && ue.d.a(this.f4904m, pVar.f4904m) && ue.d.a(this.f4905n, pVar.f4905n);
    }

    public final int hashCode() {
        return this.f4905n.hashCode() + ((this.f4904m.hashCode() + ((this.l.hashCode() + ((this.f4903k.hashCode() + ((this.f4902j.hashCode() + ((Float.floatToIntBits(this.f4901i) + ((((((((((((((this.f4894b.hashCode() + (this.f4893a * 31)) * 31) + this.f4895c) * 31) + this.f4896d) * 31) + this.f4897e) * 31) + this.f4898f) * 961) + this.f4899g) * 31) + this.f4900h) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "TextRowParams(tabWidth=" + this.f4893a + ", textMetrics=" + this.f4894b + ", textTop=" + this.f4895c + ", textBottom=" + this.f4896d + ", textHeight=" + this.f4897e + ", textBaseline=" + this.f4898f + ", rowTop=0, rowBottom=" + this.f4899g + ", rowHeight=" + this.f4900h + ", roundTextBackgroundFactor=" + this.f4901i + ", inlayHintRendererProvider=" + this.f4902j + ", colorScheme=" + this.f4903k + ", miscPaint=" + this.l + ", graphPaint=" + this.f4904m + ", graphMetrics=" + this.f4905n + ")";
    }
}
