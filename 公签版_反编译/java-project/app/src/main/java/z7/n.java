package z7;

import c8.f1;
import c8.v0;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final b8.d f19465a = b8.d.f2620c;

    /* renamed from: b, reason: collision with root package name */
    public final int f19466b = 1;

    /* renamed from: c, reason: collision with root package name */
    public final h f19467c = h.f19444a;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f19468d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f19469e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f19470f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final int f19471g;

    /* renamed from: h, reason: collision with root package name */
    public final int f19472h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f19473i;

    /* renamed from: j, reason: collision with root package name */
    public i f19474j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f19475k;
    public final y l;

    /* renamed from: m, reason: collision with root package name */
    public final y f19476m;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayDeque f19477n;

    public n() {
        i iVar = m.f19454h;
        this.f19471g = 2;
        this.f19472h = 2;
        this.f19473i = true;
        this.f19474j = m.f19454h;
        this.f19475k = true;
        this.l = m.f19456j;
        this.f19476m = m.f19457k;
        this.f19477n = new ArrayDeque();
    }

    public final m a() {
        v0 v0Var;
        v0 v0Var2;
        ArrayList arrayList = this.f19469e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f19470f;
        ArrayList arrayList3 = new ArrayList(arrayList2.size() + size + 3);
        arrayList3.addAll(arrayList);
        Collections.reverse(arrayList3);
        ArrayList arrayList4 = new ArrayList(arrayList2);
        Collections.reverse(arrayList4);
        arrayList3.addAll(arrayList4);
        boolean z = f8.h.f5640a;
        c8.f fVar = c8.g.f2918b;
        int i10 = this.f19471g;
        int i11 = this.f19472h;
        if (i10 != 2 || i11 != 2) {
            c8.h hVar = new c8.h(fVar, i10, i11);
            v0 v0Var3 = f1.f2895a;
            v0 v0Var4 = new v0(Date.class, hVar, 0);
            if (z) {
                f8.g gVar = f8.h.f5642c;
                gVar.getClass();
                v0Var = new v0(gVar.f2919a, new c8.h(gVar, i10, i11), 0);
                f8.g gVar2 = f8.h.f5641b;
                gVar2.getClass();
                v0Var2 = new v0(gVar2.f2919a, new c8.h(gVar2, i10, i11), 0);
            } else {
                v0Var = null;
                v0Var2 = null;
            }
            arrayList3.add(v0Var4);
            if (z) {
                arrayList3.add(v0Var);
                arrayList3.add(v0Var2);
            }
        }
        h hVar2 = this.f19467c;
        HashMap map = new HashMap(this.f19468d);
        i iVar = this.f19474j;
        int i12 = this.f19466b;
        new ArrayList(arrayList);
        new ArrayList(arrayList2);
        return new m(this.f19465a, hVar2, map, this.f19473i, iVar, this.f19475k, i12, arrayList3, this.l, this.f19476m, new ArrayList(this.f19477n));
    }
}
