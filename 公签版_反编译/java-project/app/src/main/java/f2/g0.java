package f2;

import java.io.IOException;

/* loaded from: classes.dex */
public final /* synthetic */ class g0 implements u1.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b2.d f5273a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f5274b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ y f5275c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ IOException f5276d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f5277e;

    public /* synthetic */ g0(b2.d dVar, t tVar, y yVar, IOException iOException, boolean z) {
        this.f5273a = dVar;
        this.f5274b = tVar;
        this.f5275c = yVar;
        this.f5276d = iOException;
        this.f5277e = z;
    }

    @Override // u1.f
    public final void accept(Object obj) {
        i0 i0Var = (i0) obj;
        b2.d dVar = this.f5273a;
        i0Var.c(dVar.f2528a, dVar.f2529b, this.f5274b, this.f5275c, this.f5276d, this.f5277e);
    }
}
