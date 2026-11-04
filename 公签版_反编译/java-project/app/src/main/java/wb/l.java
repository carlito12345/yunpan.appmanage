package wb;

import java.util.ArrayList;
import s3.d0;
import ua.g6;

/* loaded from: classes.dex */
public final class l extends a {

    /* renamed from: c, reason: collision with root package name */
    public final int f17810c;

    /* renamed from: d, reason: collision with root package name */
    public final int f17811d;

    /* renamed from: e, reason: collision with root package name */
    public final int f17812e;

    /* renamed from: f, reason: collision with root package name */
    public final eb.c f17813f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ n f17814g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(n nVar, d0 d0Var, int i10, int i11, int i12) {
        super(nVar, d0Var);
        this.f17814g = nVar;
        this.f17810c = i11;
        this.f17812e = i10;
        this.f17811d = i12;
        eb.c cVar = new eb.c(nVar.f17777a.Y0);
        this.f17813f = cVar;
        cVar.set(nVar.f17777a.getTextPaint());
        cVar.c();
    }

    @Override // wb.a
    public final Object a() {
        ArrayList arrayList = new ArrayList();
        this.f17814g.f17778b.x(this.f17810c, this.f17811d, new g6(this, 10, arrayList));
        return new m(this.f17812e, arrayList);
    }
}
