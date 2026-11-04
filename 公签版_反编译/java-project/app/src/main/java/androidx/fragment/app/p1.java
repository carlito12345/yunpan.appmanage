package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;

/* loaded from: classes.dex */
public final class p1 extends Transition.EpicenterCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1366a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Rect f1367b;

    public /* synthetic */ p1(int i10, Rect rect) {
        this.f1366a = i10;
        this.f1367b = rect;
    }

    @Override // android.transition.Transition.EpicenterCallback
    public final Rect onGetEpicenter(Transition transition) {
        switch (this.f1366a) {
            case 0:
                break;
            default:
                Rect rect = this.f1367b;
                if (rect != null && !rect.isEmpty()) {
                    break;
                }
                break;
        }
        return this.f1367b;
    }
}
