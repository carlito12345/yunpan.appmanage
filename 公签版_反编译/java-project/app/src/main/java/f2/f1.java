package f2;

import android.net.Uri;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class f1 extends r1.q0 {

    /* renamed from: g, reason: collision with root package name */
    public static final Object f5261g = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final long f5262b;

    /* renamed from: c, reason: collision with root package name */
    public final long f5263c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f5264d;

    /* renamed from: e, reason: collision with root package name */
    public final r1.y f5265e;

    /* renamed from: f, reason: collision with root package name */
    public final r1.u f5266f;

    static {
        dd.c cVar = new dd.c(4);
        u7.e0 e0Var = u7.g0.f15471b;
        u7.y0 y0Var = u7.y0.f15549e;
        List listEmptyList = Collections.emptyList();
        u7.y0 y0Var2 = u7.y0.f15549e;
        r1.t tVar = new r1.t();
        r1.w wVar = r1.w.f13618a;
        Uri uri = Uri.EMPTY;
        if (uri != null) {
            new r1.v(uri, null, null, listEmptyList, y0Var2, -9223372036854775807L);
        }
        cVar.b();
        tVar.a();
        r1.b0 b0Var = r1.b0.B;
    }

    public f1(long j10, boolean z, boolean z4, r1.y yVar) {
        r1.u uVar = z4 ? yVar.f13628c : null;
        this.f5262b = j10;
        this.f5263c = j10;
        this.f5264d = z;
        yVar.getClass();
        this.f5265e = yVar;
        this.f5266f = uVar;
    }

    @Override // r1.q0
    public final int b(Object obj) {
        return f5261g.equals(obj) ? 0 : -1;
    }

    @Override // r1.q0
    public final r1.o0 f(int i10, r1.o0 o0Var, boolean z) {
        a9.o.m(i10, 1);
        Object obj = z ? f5261g : null;
        o0Var.getClass();
        o0Var.h(null, obj, 0, this.f5262b, 0L, r1.c.f13422c, false);
        return o0Var;
    }

    @Override // r1.q0
    public final int h() {
        return 1;
    }

    @Override // r1.q0
    public final Object l(int i10) {
        a9.o.m(i10, 1);
        return f5261g;
    }

    @Override // r1.q0
    public final r1.p0 m(int i10, r1.p0 p0Var, long j10) {
        a9.o.m(i10, 1);
        Object obj = r1.p0.f13533p;
        p0Var.b(this.f5265e, this.f5264d, false, this.f5266f, 0L, this.f5263c);
        return p0Var;
    }

    @Override // r1.q0
    public final int o() {
        return 1;
    }
}
