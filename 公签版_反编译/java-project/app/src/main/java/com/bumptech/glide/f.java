package com.bumptech.glide;

import a2.k1;
import android.content.Context;
import android.content.ContextWrapper;
import java.util.List;

/* loaded from: classes.dex */
public final class f extends ContextWrapper {

    /* renamed from: k, reason: collision with root package name */
    public static final a f3317k = new a();

    /* renamed from: a, reason: collision with root package name */
    public final k1 f3318a;

    /* renamed from: b, reason: collision with root package name */
    public final a6.i f3319b;

    /* renamed from: c, reason: collision with root package name */
    public final s9.a f3320c;

    /* renamed from: d, reason: collision with root package name */
    public final gf.g f3321d;

    /* renamed from: e, reason: collision with root package name */
    public final List f3322e;

    /* renamed from: f, reason: collision with root package name */
    public final a0.e f3323f;

    /* renamed from: g, reason: collision with root package name */
    public final h5.n f3324g;

    /* renamed from: h, reason: collision with root package name */
    public final h f3325h;

    /* renamed from: i, reason: collision with root package name */
    public final int f3326i;

    /* renamed from: j, reason: collision with root package name */
    public w5.e f3327j;

    public f(Context context, k1 k1Var, androidx.room.i iVar, s9.a aVar, gf.g gVar, a0.e eVar, List list, h5.n nVar, h hVar, int i10) {
        super(context.getApplicationContext());
        this.f3318a = k1Var;
        this.f3320c = aVar;
        this.f3321d = gVar;
        this.f3322e = list;
        this.f3323f = eVar;
        this.f3324g = nVar;
        this.f3325h = hVar;
        this.f3326i = i10;
        this.f3319b = new a6.i(iVar);
    }

    public final synchronized w5.e a() {
        try {
            if (this.f3327j == null) {
                this.f3321d.getClass();
                w5.e eVar = new w5.e();
                eVar.f17578m = true;
                this.f3327j = eVar;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f3327j;
    }

    public final k b() {
        return (k) this.f3319b.get();
    }
}
