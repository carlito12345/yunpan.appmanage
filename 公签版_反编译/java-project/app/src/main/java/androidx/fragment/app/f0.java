package androidx.fragment.app;

import android.os.Bundle;

/* loaded from: classes.dex */
public final /* synthetic */ class f0 implements b4.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1261a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1262b;

    public /* synthetic */ f0(int i10, Object obj) {
        this.f1261a = i10;
        this.f1262b = obj;
    }

    @Override // b4.d
    public final Bundle a() {
        switch (this.f1261a) {
            case 0:
                q.i iVar = (q.i) this.f1262b;
                while (j0.q(iVar.p())) {
                }
                iVar.f1308v.e(androidx.lifecycle.m.ON_STOP);
                return new Bundle();
            default:
                return ((d1) this.f1262b).U();
        }
    }
}
