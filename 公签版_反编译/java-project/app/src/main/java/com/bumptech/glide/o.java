package com.bumptech.glide;

import com.bumptech.glide.manager.s;

/* loaded from: classes.dex */
public final class o implements com.bumptech.glide.manager.a {

    /* renamed from: a, reason: collision with root package name */
    public final s f3417a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f3418b;

    public o(p pVar, s sVar) {
        this.f3418b = pVar;
        this.f3417a = sVar;
    }

    @Override // com.bumptech.glide.manager.a
    public final void a(boolean z) {
        if (z) {
            synchronized (this.f3418b) {
                this.f3417a.f();
            }
        }
    }
}
