package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public RecyclerView.ViewHolder f2226a;

    /* renamed from: b, reason: collision with root package name */
    public RecyclerView.ViewHolder f2227b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2228c;

    /* renamed from: d, reason: collision with root package name */
    public final int f2229d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2230e;

    /* renamed from: f, reason: collision with root package name */
    public final int f2231f;

    public q(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i10, int i11, int i12, int i13) {
        this.f2226a = viewHolder;
        this.f2227b = viewHolder2;
        this.f2228c = i10;
        this.f2229d = i11;
        this.f2230e = i12;
        this.f2231f = i13;
    }

    public final String toString() {
        return "ChangeInfo{oldHolder=" + this.f2226a + ", newHolder=" + this.f2227b + ", fromX=" + this.f2228c + ", fromY=" + this.f2229d + ", toX=" + this.f2230e + ", toY=" + this.f2231f + '}';
    }
}
