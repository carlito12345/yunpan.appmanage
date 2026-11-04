package b8;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.util.Iterator;
import z7.a0;
import z7.b0;

/* loaded from: classes.dex */
public final class c extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public volatile a0 f2614a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f2615b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f2616c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ z7.m f2617d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ g8.a f2618e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ d f2619f;

    public c(d dVar, boolean z, boolean z4, z7.m mVar, g8.a aVar) {
        this.f2619f = dVar;
        this.f2615b = z;
        this.f2616c = z4;
        this.f2617d = mVar;
        this.f2618e = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x008b A[SYNTHETIC] */
    @Override // z7.a0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(h8.a aVar) throws IOException {
        Iterator it;
        if (this.f2615b) {
            aVar.l0();
            return null;
        }
        a0 a0VarC = this.f2614a;
        if (a0VarC == null) {
            z7.m mVar = this.f2617d;
            d dVar = this.f2619f;
            g8.a aVar2 = this.f2618e;
            mVar.getClass();
            Objects.requireNonNull(dVar, "skipPast must not be null");
            c8.l lVar = mVar.f19461d;
            lVar.getClass();
            if (dVar == c8.l.f2927c) {
                dVar = lVar;
                it = mVar.f19462e.iterator();
                boolean z = false;
                while (true) {
                    if (it.hasNext()) {
                        b0 b0Var = (b0) it.next();
                        if (z) {
                            a0 a0VarA = b0Var.a(mVar, aVar2);
                            if (a0VarA != null) {
                                a0VarC = a0VarA;
                                break;
                            }
                        } else if (b0Var == dVar) {
                            z = true;
                        }
                    } else {
                        if (z) {
                            throw new IllegalArgumentException("GSON cannot serialize or deserialize " + aVar2);
                        }
                        a0VarC = mVar.c(aVar2);
                    }
                }
                this.f2614a = a0VarC;
            } else {
                ConcurrentHashMap concurrentHashMap = lVar.f2929b;
                Class cls = aVar2.f6121a;
                b0 b0Var2 = (b0) concurrentHashMap.get(cls);
                if (b0Var2 != null) {
                    if (b0Var2 == dVar) {
                    }
                    it = mVar.f19462e.iterator();
                    boolean z4 = false;
                    while (true) {
                        if (it.hasNext()) {
                        }
                    }
                    this.f2614a = a0VarC;
                } else {
                    a8.a aVar3 = (a8.a) cls.getAnnotation(a8.a.class);
                    if (aVar3 != null) {
                        Class clsValue = aVar3.value();
                        if (b0.class.isAssignableFrom(clsValue)) {
                            b0 b0Var3 = (b0) lVar.f2928a.d(new g8.a(clsValue), true).c();
                            b0 b0Var4 = (b0) concurrentHashMap.putIfAbsent(cls, b0Var3);
                            if (b0Var4 != null) {
                                b0Var3 = b0Var4;
                            }
                            if (b0Var3 == dVar) {
                            }
                        }
                    }
                    it = mVar.f19462e.iterator();
                    boolean z42 = false;
                    while (true) {
                        if (it.hasNext()) {
                        }
                    }
                    this.f2614a = a0VarC;
                }
            }
        }
        return a0VarC.b(aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x008a A[SYNTHETIC] */
    @Override // z7.a0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(h8.b bVar, Object obj) throws IOException {
        Iterator it;
        if (this.f2616c) {
            bVar.P();
            return;
        }
        a0 a0VarC = this.f2614a;
        if (a0VarC == null) {
            z7.m mVar = this.f2617d;
            d dVar = this.f2619f;
            g8.a aVar = this.f2618e;
            mVar.getClass();
            Objects.requireNonNull(dVar, "skipPast must not be null");
            c8.l lVar = mVar.f19461d;
            lVar.getClass();
            if (dVar == c8.l.f2927c) {
                dVar = lVar;
                it = mVar.f19462e.iterator();
                boolean z = false;
                while (true) {
                    if (it.hasNext()) {
                        b0 b0Var = (b0) it.next();
                        if (z) {
                            a0 a0VarA = b0Var.a(mVar, aVar);
                            if (a0VarA != null) {
                                a0VarC = a0VarA;
                                break;
                            }
                        } else if (b0Var == dVar) {
                            z = true;
                        }
                    } else {
                        if (z) {
                            throw new IllegalArgumentException("GSON cannot serialize or deserialize " + aVar);
                        }
                        a0VarC = mVar.c(aVar);
                    }
                }
                this.f2614a = a0VarC;
            } else {
                ConcurrentHashMap concurrentHashMap = lVar.f2929b;
                Class cls = aVar.f6121a;
                b0 b0Var2 = (b0) concurrentHashMap.get(cls);
                if (b0Var2 != null) {
                    if (b0Var2 == dVar) {
                    }
                    it = mVar.f19462e.iterator();
                    boolean z4 = false;
                    while (true) {
                        if (it.hasNext()) {
                        }
                    }
                    this.f2614a = a0VarC;
                } else {
                    a8.a aVar2 = (a8.a) cls.getAnnotation(a8.a.class);
                    if (aVar2 != null) {
                        Class clsValue = aVar2.value();
                        if (b0.class.isAssignableFrom(clsValue)) {
                            b0 b0Var3 = (b0) lVar.f2928a.d(new g8.a(clsValue), true).c();
                            b0 b0Var4 = (b0) concurrentHashMap.putIfAbsent(cls, b0Var3);
                            if (b0Var4 != null) {
                                b0Var3 = b0Var4;
                            }
                            if (b0Var3 == dVar) {
                            }
                        }
                    }
                    it = mVar.f19462e.iterator();
                    boolean z42 = false;
                    while (true) {
                        if (it.hasNext()) {
                        }
                    }
                    this.f2614a = a0VarC;
                }
            }
        }
        a0VarC.c(bVar, obj);
    }
}
