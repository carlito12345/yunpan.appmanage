package androidx.activity;

import android.window.BackEvent;
import android.window.OnBackAnimationCallback;

/* loaded from: classes.dex */
public final class s implements OnBackAnimationCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ te.l f854a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ te.l f855b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ te.a f856c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ te.a f857d;

    public s(te.l lVar, te.l lVar2, te.a aVar, te.a aVar2) {
        this.f854a = lVar;
        this.f855b = lVar2;
        this.f856c = aVar;
        this.f857d = aVar2;
    }

    @Override // android.window.OnBackAnimationCallback
    public final void onBackCancelled() {
        this.f857d.b();
    }

    @Override // android.window.OnBackInvokedCallback
    public final void onBackInvoked() {
        this.f856c.b();
    }

    @Override // android.window.OnBackAnimationCallback
    public final void onBackProgressed(BackEvent backEvent) {
        ue.d.e(backEvent, "backEvent");
        this.f855b.a(new b(backEvent));
    }

    @Override // android.window.OnBackAnimationCallback
    public final void onBackStarted(BackEvent backEvent) {
        ue.d.e(backEvent, "backEvent");
        this.f854a.a(new b(backEvent));
    }
}
