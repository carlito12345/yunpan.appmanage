package androidx.leanback.widget;

import android.graphics.Color;

/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: a, reason: collision with root package name */
    public float f1620a;

    /* renamed from: b, reason: collision with root package name */
    public int f1621b;

    /* renamed from: c, reason: collision with root package name */
    public float f1622c;

    /* renamed from: d, reason: collision with root package name */
    public float f1623d;

    /* renamed from: e, reason: collision with root package name */
    public float f1624e;

    /* renamed from: f, reason: collision with root package name */
    public float f1625f;

    /* renamed from: g, reason: collision with root package name */
    public float f1626g;

    /* renamed from: h, reason: collision with root package name */
    public float f1627h = 1.0f;

    /* renamed from: i, reason: collision with root package name */
    public float f1628i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ PagingIndicator f1629j;

    public b0(PagingIndicator pagingIndicator) {
        this.f1629j = pagingIndicator;
        this.f1628i = pagingIndicator.f1516a ? 1.0f : -1.0f;
    }

    public final void a() {
        int iRound = Math.round(this.f1620a * 255.0f);
        PagingIndicator pagingIndicator = this.f1629j;
        this.f1621b = Color.argb(iRound, Color.red(pagingIndicator.f1530q), Color.green(pagingIndicator.f1530q), Color.blue(pagingIndicator.f1530q));
    }

    public final void b() {
        this.f1622c = 0.0f;
        this.f1623d = 0.0f;
        PagingIndicator pagingIndicator = this.f1629j;
        this.f1624e = pagingIndicator.f1517b;
        float f10 = pagingIndicator.f1518c;
        this.f1625f = f10;
        this.f1626g = f10 * pagingIndicator.f1535x;
        this.f1620a = 0.0f;
        a();
    }
}
