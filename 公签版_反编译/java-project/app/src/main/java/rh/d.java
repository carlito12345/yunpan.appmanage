package rh;

import j$.util.Comparator$CC;
import j$.util.List;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.ToIntFunction;

/* loaded from: classes3.dex */
public abstract class d extends p {

    /* renamed from: e, reason: collision with root package name */
    public boolean f13784e;

    /* renamed from: c, reason: collision with root package name */
    public int f13782c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f13783d = 0;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f13780a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f13781b = new ArrayList();

    @Override // rh.p
    public final int a() {
        return this.f13783d;
    }

    @Override // rh.p
    public final void e() {
        Iterator it = this.f13780a.iterator();
        while (it.hasNext()) {
            ((p) it.next()).e();
        }
    }

    @Override // rh.p
    public final boolean f() {
        return this.f13784e;
    }

    public final void g() {
        ArrayList arrayList = this.f13780a;
        this.f13782c = arrayList.size();
        this.f13783d = 0;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            p pVar = (p) it.next();
            this.f13783d = pVar.a() + this.f13783d;
        }
        ArrayList arrayList2 = this.f13781b;
        arrayList2.clear();
        arrayList2.addAll(arrayList);
        List.EL.sort(arrayList2, Comparator$CC.comparingInt(new ToIntFunction() { // from class: rh.a
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((p) obj).a();
            }
        }));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (((p) it2.next()).f()) {
                this.f13784e = true;
                return;
            }
        }
    }
}
