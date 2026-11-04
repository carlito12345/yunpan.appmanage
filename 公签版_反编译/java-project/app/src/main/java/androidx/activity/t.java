package androidx.activity;

import android.window.OnBackInvokedCallback;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public static final t f858a = new t();

    public final OnBackInvokedCallback a(te.l lVar, te.l lVar2, te.a aVar, te.a aVar2) {
        ue.d.e(lVar, "onBackStarted");
        ue.d.e(lVar2, "onBackProgressed");
        ue.d.e(aVar, "onBackInvoked");
        ue.d.e(aVar2, "onBackCancelled");
        return new s(lVar, lVar2, aVar, aVar2);
    }
}
