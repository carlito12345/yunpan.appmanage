package com.bumptech.glide.manager;

import a2.g1;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.fragment.app.e1;
import androidx.fragment.app.j0;
import java.util.HashMap;
import o5.v;

/* loaded from: classes.dex */
public final class k implements Handler.Callback {

    /* renamed from: e, reason: collision with root package name */
    public static final m7.e f3390e = new m7.e(17);

    /* renamed from: a, reason: collision with root package name */
    public volatile com.bumptech.glide.p f3391a;

    /* renamed from: b, reason: collision with root package name */
    public final m7.e f3392b;

    /* renamed from: c, reason: collision with root package name */
    public final f f3393c;

    /* renamed from: d, reason: collision with root package name */
    public final g1 f3394d;

    public k(m7.e eVar) {
        eVar = eVar == null ? f3390e : eVar;
        this.f3392b = eVar;
        this.f3394d = new g1(eVar);
        this.f3393c = (v.f11629f && v.f11628e) ? new e() : new gf.g(16);
    }

    public static Activity a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public final com.bumptech.glide.p b(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        char[] cArr = a6.q.f446a;
        if (Looper.myLooper() == Looper.getMainLooper() && !(context instanceof Application)) {
            if (context instanceof j0) {
                j0 j0Var = (j0) context;
                if (!(Looper.myLooper() == Looper.getMainLooper())) {
                    return b(j0Var.getApplicationContext());
                }
                if (j0Var.isDestroyed()) {
                    throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
                }
                this.f3393c.k(j0Var);
                Activity activityA = a(j0Var);
                boolean z = activityA == null || !activityA.isFinishing();
                com.bumptech.glide.b bVarB = com.bumptech.glide.b.b(j0Var.getApplicationContext());
                e1 e1VarP = j0Var.p();
                g1 g1Var = this.f3394d;
                g1Var.getClass();
                a6.q.a();
                androidx.lifecycle.v vVar = j0Var.f806d;
                a6.q.a();
                com.bumptech.glide.p pVar = (com.bumptech.glide.p) ((HashMap) g1Var.f175b).get(vVar);
                if (pVar != null) {
                    return pVar;
                }
                LifecycleLifecycle lifecycleLifecycle = new LifecycleLifecycle(vVar);
                com.bumptech.glide.p pVarG = ((m7.e) g1Var.f176c).g(bVarB, lifecycleLifecycle, new gf.g(g1Var, e1VarP), j0Var);
                ((HashMap) g1Var.f175b).put(vVar, pVarG);
                lifecycleLifecycle.h(new i(g1Var, vVar));
                if (!z) {
                    return pVarG;
                }
                pVarG.k();
                return pVarG;
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return b(contextWrapper.getBaseContext());
                }
            }
        }
        if (this.f3391a == null) {
            synchronized (this) {
                try {
                    if (this.f3391a == null) {
                        this.f3391a = this.f3392b.g(com.bumptech.glide.b.b(context.getApplicationContext()), new gf.g(15), new m7.e(16), context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return this.f3391a;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        return false;
    }
}
