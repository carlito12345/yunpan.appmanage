package h2;

import j$.util.Objects;
import r1.x0;
import y1.b1;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final int f6406a;

    /* renamed from: b, reason: collision with root package name */
    public final b1[] f6407b;

    /* renamed from: c, reason: collision with root package name */
    public final p[] f6408c;

    /* renamed from: d, reason: collision with root package name */
    public final x0 f6409d;

    /* renamed from: e, reason: collision with root package name */
    public final b5.i f6410e;

    public r(b1[] b1VarArr, p[] pVarArr, x0 x0Var, b5.i iVar) {
        a9.o.k(b1VarArr.length == pVarArr.length);
        this.f6407b = b1VarArr;
        this.f6408c = (p[]) pVarArr.clone();
        this.f6409d = x0Var;
        this.f6410e = iVar;
        this.f6406a = b1VarArr.length;
    }

    public final boolean a(r rVar, int i10) {
        return rVar != null && Objects.equals(this.f6407b[i10], rVar.f6407b[i10]) && Objects.equals(this.f6408c[i10], rVar.f6408c[i10]);
    }

    public final boolean b(int i10) {
        return this.f6407b[i10] != null;
    }
}
