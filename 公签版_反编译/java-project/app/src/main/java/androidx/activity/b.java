package androidx.activity;

import android.window.BackEvent;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final float f785a;

    /* renamed from: b, reason: collision with root package name */
    public final float f786b;

    /* renamed from: c, reason: collision with root package name */
    public final float f787c;

    /* renamed from: d, reason: collision with root package name */
    public final int f788d;

    public b(BackEvent backEvent) {
        ue.d.e(backEvent, "backEvent");
        a aVar = a.f784a;
        float fD = aVar.d(backEvent);
        float fE = aVar.e(backEvent);
        float fB = aVar.b(backEvent);
        int iC = aVar.c(backEvent);
        this.f785a = fD;
        this.f786b = fE;
        this.f787c = fB;
        this.f788d = iC;
    }

    public final String toString() {
        return "BackEventCompat{touchX=" + this.f785a + ", touchY=" + this.f786b + ", progress=" + this.f787c + ", swipeEdge=" + this.f788d + '}';
    }
}
