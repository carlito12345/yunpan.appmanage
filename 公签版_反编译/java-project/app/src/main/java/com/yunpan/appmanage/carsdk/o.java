package com.yunpan.appmanage.carsdk;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class o implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f3861a;

    public o(r rVar) {
        this.f3861a = rVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (runnable != null) {
            this.f3861a.f3869d.post(runnable);
        }
    }
}
