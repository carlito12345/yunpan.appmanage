package androidx.activity;

import android.window.OnBackInvokedCallback;
import q.a0;

/* loaded from: classes.dex */
public final /* synthetic */ class q implements OnBackInvokedCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f826a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f827b;

    public /* synthetic */ q(int i10, Object obj) {
        this.f826a = i10;
        this.f827b = obj;
    }

    @Override // android.window.OnBackInvokedCallback
    public final void onBackInvoked() {
        switch (this.f826a) {
            case 0:
                te.a aVar = (te.a) this.f827b;
                ue.d.e(aVar, "$onBackInvoked");
                aVar.b();
                break;
            case 1:
                ((a0) this.f827b).C();
                break;
            default:
                ((Runnable) this.f827b).run();
                break;
        }
    }
}
