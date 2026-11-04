package com.bumptech.glide.manager;

import android.view.View;
import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public final class d implements ViewTreeObserver.OnDrawListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3384a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f3385b;

    public d(e eVar, View view) {
        this.f3385b = eVar;
        this.f3384a = view;
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        a6.q.f().post(new y7.b(3, this, this, false));
    }
}
