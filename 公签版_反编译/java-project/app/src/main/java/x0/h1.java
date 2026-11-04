package x0;

import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class h1 extends ne.d implements te.p {

    /* renamed from: b, reason: collision with root package name */
    public int f17999b;

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f18000c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ View f18001d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h1(View view, le.a aVar) {
        super(aVar);
        this.f18001d = view;
    }

    @Override // ne.d
    public final le.a b(Object obj, le.a aVar) {
        h1 h1Var = new h1(this.f18001d, aVar);
        h1Var.f18000c = obj;
        return h1Var;
    }

    @Override // ne.d
    public final Object c(Object obj) throws Throwable {
        Object obj2;
        Object obj3 = me.a.COROUTINE_SUSPENDED;
        int i10 = this.f17999b;
        View view = this.f18001d;
        if (i10 == 0) {
            s1.g.f0(obj);
            af.a aVar = (af.a) this.f18000c;
            this.f18000c = aVar;
            this.f17999b = 1;
            aVar.f641b = view;
            aVar.f640a = 3;
            aVar.f643d = this;
            return obj3;
        }
        Object obj4 = ie.e.f8690c;
        if (i10 == 1) {
            af.a aVar2 = (af.a) this.f18000c;
            s1.g.f0(obj);
            if (view instanceof ViewGroup) {
                g1 g1Var = new g1((ViewGroup) view, null);
                this.f18000c = null;
                this.f17999b = 2;
                aVar2.getClass();
                af.a aVar3 = new af.a();
                aVar3.f643d = g1Var.b(aVar3, aVar3);
                if (aVar3.hasNext()) {
                    aVar2.f642c = aVar3;
                    aVar2.f640a = 2;
                    aVar2.f643d = this;
                    obj2 = obj3;
                } else {
                    obj2 = obj4;
                }
                if (obj2 != obj3) {
                    obj2 = obj4;
                }
                if (obj2 == obj3) {
                    return obj3;
                }
            }
        } else {
            if (i10 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            s1.g.f0(obj);
        }
        return obj4;
    }

    @Override // te.p
    public final Object f(Object obj, Object obj2) {
        return ((h1) b((af.a) obj, (le.a) obj2)).c(ie.e.f8690c);
    }
}
