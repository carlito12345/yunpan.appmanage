package u7;

import java.util.Map;

/* loaded from: classes.dex */
public final class t extends m {

    /* renamed from: a, reason: collision with root package name */
    public final Object f15526a;

    /* renamed from: b, reason: collision with root package name */
    public int f15527b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u f15528c;

    public t(u uVar, int i10) {
        this.f15528c = uVar;
        Object obj = u.f15530j;
        this.f15526a = uVar.i()[i10];
        this.f15527b = i10;
    }

    public final void a() {
        int i10 = this.f15527b;
        Object obj = this.f15526a;
        u uVar = this.f15528c;
        if (i10 != -1 && i10 < uVar.size()) {
            if (s1.g.r(obj, uVar.i()[this.f15527b])) {
                return;
            }
        }
        Object obj2 = u.f15530j;
        this.f15527b = uVar.c(obj);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f15526a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        u uVar = this.f15528c;
        Map mapA = uVar.a();
        if (mapA != null) {
            return mapA.get(this.f15526a);
        }
        a();
        int i10 = this.f15527b;
        if (i10 == -1) {
            return null;
        }
        return uVar.j()[i10];
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        u uVar = this.f15528c;
        Map mapA = uVar.a();
        Object obj2 = this.f15526a;
        if (mapA != null) {
            return mapA.put(obj2, obj);
        }
        a();
        int i10 = this.f15527b;
        if (i10 == -1) {
            uVar.put(obj2, obj);
            return null;
        }
        Object obj3 = uVar.j()[i10];
        uVar.j()[this.f15527b] = obj;
        return obj3;
    }
}
