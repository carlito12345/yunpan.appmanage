package x0;

import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class g1 extends ne.d implements te.p {

    /* renamed from: b, reason: collision with root package name */
    public ViewGroup f17989b;

    /* renamed from: c, reason: collision with root package name */
    public View f17990c;

    /* renamed from: d, reason: collision with root package name */
    public int f17991d;

    /* renamed from: e, reason: collision with root package name */
    public int f17992e;

    /* renamed from: f, reason: collision with root package name */
    public int f17993f;

    /* renamed from: g, reason: collision with root package name */
    public /* synthetic */ Object f17994g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f17995h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g1(ViewGroup viewGroup, le.a aVar) {
        super(aVar);
        this.f17995h = viewGroup;
    }

    @Override // ne.d
    public final le.a b(Object obj, le.a aVar) {
        g1 g1Var = new g1(this.f17995h, aVar);
        g1Var.f17994g = obj;
        return g1Var;
    }

    @Override // ne.d
    public final Object c(Object obj) throws Throwable {
        af.a aVar;
        ViewGroup viewGroup;
        int childCount;
        int i10;
        int i11;
        Object obj2;
        int i12;
        ViewGroup viewGroup2;
        af.a aVar2;
        Object obj3 = me.a.COROUTINE_SUSPENDED;
        int i13 = this.f17993f;
        Object obj4 = ie.e.f8690c;
        if (i13 != 0) {
            if (i13 == 1) {
                childCount = this.f17992e;
                i11 = this.f17991d;
                View view = this.f17990c;
                viewGroup = this.f17989b;
                aVar = (af.a) this.f17994g;
                s1.g.f0(obj);
                if (view instanceof ViewGroup) {
                    g1 g1Var = new g1((ViewGroup) view, null);
                    this.f17994g = aVar;
                    this.f17989b = viewGroup;
                    this.f17990c = null;
                    this.f17991d = i11;
                    this.f17992e = childCount;
                    this.f17993f = 2;
                    aVar.getClass();
                    af.a aVar3 = new af.a();
                    aVar3.f643d = g1Var.b(aVar3, aVar3);
                    if (aVar3.hasNext()) {
                        aVar.f642c = aVar3;
                        aVar.f640a = 2;
                        aVar.f643d = this;
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
                    i12 = i11;
                    viewGroup2 = viewGroup;
                    aVar2 = aVar;
                }
                i10 = i11 + 1;
            } else {
                if (i13 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                childCount = this.f17992e;
                i12 = this.f17991d;
                viewGroup2 = this.f17989b;
                aVar2 = (af.a) this.f17994g;
                s1.g.f0(obj);
            }
            viewGroup = viewGroup2;
            aVar = aVar2;
            i11 = i12;
            i10 = i11 + 1;
        } else {
            s1.g.f0(obj);
            aVar = (af.a) this.f17994g;
            viewGroup = this.f17995h;
            childCount = viewGroup.getChildCount();
            i10 = 0;
        }
        if (i10 >= childCount) {
            return obj4;
        }
        View childAt = viewGroup.getChildAt(i10);
        this.f17994g = aVar;
        this.f17989b = viewGroup;
        this.f17990c = childAt;
        this.f17991d = i10;
        this.f17992e = childCount;
        this.f17993f = 1;
        aVar.f641b = childAt;
        aVar.f640a = 3;
        aVar.f643d = this;
        return obj3;
    }

    @Override // te.p
    public final Object f(Object obj, Object obj2) {
        return ((g1) b((af.a) obj, (le.a) obj2)).c(ie.e.f8690c);
    }
}
