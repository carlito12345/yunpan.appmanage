package h4;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class l extends u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f6446a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f6447b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6448c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f6449d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ n f6450e;

    public l(n nVar, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2) {
        this.f6450e = nVar;
        this.f6446a = obj;
        this.f6447b = arrayList;
        this.f6448c = obj2;
        this.f6449d = arrayList2;
    }

    @Override // h4.s
    public final void c(t tVar) {
        tVar.v(this);
    }

    @Override // h4.u, h4.s
    public final void d(t tVar) {
        n nVar = this.f6450e;
        Object obj = this.f6446a;
        if (obj != null) {
            nVar.s(obj, this.f6447b, null);
        }
        Object obj2 = this.f6448c;
        if (obj2 != null) {
            nVar.s(obj2, this.f6449d, null);
        }
    }
}
