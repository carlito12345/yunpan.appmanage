package c8;

import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class l implements z7.b0 {

    /* renamed from: c, reason: collision with root package name */
    public static final k f2927c;

    /* renamed from: a, reason: collision with root package name */
    public final com.bumptech.glide.manager.s f2928a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f2929b = new ConcurrentHashMap();

    static {
        int i10 = 0;
        f2927c = new k(i10);
        new k(i10);
    }

    public l(com.bumptech.glide.manager.s sVar) {
        this.f2928a = sVar;
    }

    @Override // z7.b0
    public final z7.a0 a(z7.m mVar, g8.a aVar) {
        a8.a aVar2 = (a8.a) aVar.f6121a.getAnnotation(a8.a.class);
        if (aVar2 == null) {
            return null;
        }
        return b(this.f2928a, mVar, aVar, aVar2, true);
    }

    public final z7.a0 b(com.bumptech.glide.manager.s sVar, z7.m mVar, g8.a aVar, a8.a aVar2, boolean z) {
        z7.a0 a0VarA;
        z7.b0 b0Var;
        Object objC = sVar.d(new g8.a(aVar2.value()), true).c();
        boolean zNullSafe = aVar2.nullSafe();
        if (objC instanceof z7.a0) {
            a0VarA = (z7.a0) objC;
        } else {
            if (!(objC instanceof z7.b0)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + objC.getClass().getName() + " as a @JsonAdapter for " + b8.h.l(aVar.f6122b) + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            z7.b0 b0Var2 = (z7.b0) objC;
            if (z && (b0Var = (z7.b0) this.f2929b.putIfAbsent(aVar.f6121a, b0Var2)) != null) {
                b0Var2 = b0Var;
            }
            a0VarA = b0Var2.a(mVar, aVar);
        }
        return (a0VarA == null || !zNullSafe) ? a0VarA : a0VarA.a();
    }
}
