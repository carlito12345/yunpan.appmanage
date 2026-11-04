package com.bumptech.glide.manager;

import android.content.Context;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class c implements b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3382a;

    /* renamed from: b, reason: collision with root package name */
    public final com.bumptech.glide.o f3383b;

    public c(Context context, com.bumptech.glide.o oVar) {
        this.f3382a = context.getApplicationContext();
        this.f3383b = oVar;
    }

    @Override // com.bumptech.glide.manager.h
    public final void c() {
    }

    @Override // com.bumptech.glide.manager.h
    public final void e() {
        s sVarE = s.e(this.f3382a);
        com.bumptech.glide.o oVar = this.f3383b;
        synchronized (sVarE) {
            ((HashSet) sVarE.f3413d).remove(oVar);
            if (sVarE.f3411b && ((HashSet) sVarE.f3413d).isEmpty()) {
                ((n) sVarE.f3412c).b();
                sVarE.f3411b = false;
            }
        }
    }

    @Override // com.bumptech.glide.manager.h
    public final void k() {
        s sVarE = s.e(this.f3382a);
        com.bumptech.glide.o oVar = this.f3383b;
        synchronized (sVarE) {
            ((HashSet) sVarE.f3413d).add(oVar);
            if (!sVarE.f3411b && !((HashSet) sVarE.f3413d).isEmpty()) {
                sVarE.f3411b = ((n) sVarE.f3412c).a();
            }
        }
    }
}
