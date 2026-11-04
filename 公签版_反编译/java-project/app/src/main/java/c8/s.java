package c8;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class s extends z7.a0 {

    /* renamed from: c, reason: collision with root package name */
    public static final q f2944c = new q(1, z7.y.f19482a);

    /* renamed from: a, reason: collision with root package name */
    public final z7.m f2945a;

    /* renamed from: b, reason: collision with root package name */
    public final z7.y f2946b;

    public s(z7.m mVar, z7.y yVar) {
        this.f2945a = mVar;
        this.f2946b = yVar;
    }

    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        Object arrayList;
        Serializable arrayList2;
        int iE0 = aVar.e0();
        int iC = d0.f.c(iE0);
        if (iC == 0) {
            aVar.r();
            arrayList = new ArrayList();
        } else if (iC != 2) {
            arrayList = null;
        } else {
            aVar.A();
            arrayList = new b8.n(true);
        }
        if (arrayList == null) {
            return d(aVar, iE0);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (aVar.R()) {
                String strY = arrayList instanceof Map ? aVar.Y() : null;
                int iE02 = aVar.e0();
                int iC2 = d0.f.c(iE02);
                if (iC2 == 0) {
                    aVar.r();
                    arrayList2 = new ArrayList();
                } else if (iC2 != 2) {
                    arrayList2 = null;
                } else {
                    aVar.A();
                    arrayList2 = new b8.n(true);
                }
                boolean z = arrayList2 != null;
                if (arrayList2 == null) {
                    arrayList2 = d(aVar, iE02);
                }
                if (arrayList instanceof List) {
                    ((List) arrayList).add(arrayList2);
                } else {
                    ((Map) arrayList).put(strY, arrayList2);
                }
                if (z) {
                    arrayDeque.addLast(arrayList);
                    arrayList = arrayList2;
                }
            } else {
                if (arrayList instanceof List) {
                    aVar.L();
                } else {
                    aVar.M();
                }
                if (arrayDeque.isEmpty()) {
                    return arrayList;
                }
                arrayList = arrayDeque.removeLast();
            }
        }
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        if (obj == null) {
            bVar.P();
            return;
        }
        Class<?> cls = obj.getClass();
        z7.m mVar = this.f2945a;
        mVar.getClass();
        z7.a0 a0VarC = mVar.c(new g8.a(cls));
        if (!(a0VarC instanceof s)) {
            a0VarC.c(bVar, obj);
        } else {
            bVar.J();
            bVar.M();
        }
    }

    public final Serializable d(h8.a aVar, int i10) throws IOException {
        int iC = d0.f.c(i10);
        if (iC == 5) {
            return aVar.c0();
        }
        if (iC == 6) {
            return this.f2946b.a(aVar);
        }
        if (iC == 7) {
            return Boolean.valueOf(aVar.U());
        }
        if (iC != 8) {
            throw new IllegalStateException("Unexpected token: ".concat(g.b.B(i10)));
        }
        aVar.a0();
        return null;
    }
}
