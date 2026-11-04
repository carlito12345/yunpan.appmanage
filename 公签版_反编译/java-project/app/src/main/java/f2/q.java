package f2;

import android.content.ContextWrapper;
import android.net.Uri;
import ha.l2;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import ua.i8;

/* loaded from: classes.dex */
public final class q implements b0 {

    /* renamed from: a, reason: collision with root package name */
    public final p f5349a;

    /* renamed from: b, reason: collision with root package name */
    public final i8 f5350b;

    /* renamed from: c, reason: collision with root package name */
    public final long f5351c;

    /* renamed from: d, reason: collision with root package name */
    public final long f5352d;

    /* renamed from: e, reason: collision with root package name */
    public final long f5353e;

    /* renamed from: f, reason: collision with root package name */
    public final float f5354f;

    /* renamed from: g, reason: collision with root package name */
    public final float f5355g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f5356h;

    public q(ContextWrapper contextWrapper, l2.m mVar) {
        i8 i8Var = new i8(contextWrapper);
        l2 l2Var = new l2(10);
        this.f5350b = i8Var;
        p pVar = new p(mVar, l2Var);
        this.f5349a = pVar;
        if (i8Var != pVar.f5341d) {
            pVar.f5341d = i8Var;
            pVar.f5339b.clear();
            pVar.f5340c.clear();
        }
        this.f5351c = -9223372036854775807L;
        this.f5352d = -9223372036854775807L;
        this.f5353e = -9223372036854775807L;
        this.f5354f = -3.4028235E38f;
        this.f5355g = -3.4028235E38f;
        this.f5356h = true;
    }

    public static b0 e(Class cls, i8 i8Var) {
        try {
            return (b0) cls.getConstructor(w1.g.class).newInstance(i8Var);
        } catch (Exception e7) {
            throw new IllegalStateException(e7);
        }
    }

    @Override // f2.b0
    public final b0 a(l2 l2Var) {
        p pVar = this.f5349a;
        pVar.f5343f = l2Var;
        l2.m mVar = pVar.f5338a;
        synchronized (mVar) {
            mVar.f10509c = l2Var;
        }
        Iterator it = pVar.f5340c.values().iterator();
        while (it.hasNext()) {
            ((b0) it.next()).a(l2Var);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v9, types: [u7.g0] */
    @Override // f2.b0
    public final a b(r1.y yVar) {
        Uri uri;
        String str;
        List list;
        long j10;
        u7.y0 y0Var;
        r1.y yVar2 = yVar;
        yVar2.f13627b.getClass();
        String scheme = yVar2.f13627b.f13592a.getScheme();
        if (scheme != null && scheme.equals("ssai")) {
            throw null;
        }
        if (Objects.equals(yVar2.f13627b.f13593b, "application/x-image-uri")) {
            long j11 = yVar2.f13627b.f13596e;
            String str2 = u1.f0.f15206a;
            throw null;
        }
        r1.v vVar = yVar2.f13627b;
        int iZ = u1.f0.z(vVar.f13592a, vVar.f13593b);
        if (yVar2.f13627b.f13596e != -9223372036854775807L) {
            l2.m mVar = this.f5349a.f5338a;
            synchronized (mVar) {
                mVar.f10511e = 1;
            }
            p.a(this.f5349a);
        }
        try {
            b0 b0VarB = this.f5349a.b(iZ);
            r1.t tVar = new r1.t(yVar2.f13628c);
            r1.u uVar = yVar2.f13628c;
            if (uVar.f13566a == -9223372036854775807L) {
                tVar.f13560a = this.f5351c;
            }
            if (uVar.f13569d == -3.4028235E38f) {
                tVar.f13563d = this.f5354f;
            }
            if (uVar.f13570e == -3.4028235E38f) {
                tVar.f13564e = this.f5355g;
            }
            if (uVar.f13567b == -9223372036854775807L) {
                tVar.f13561b = this.f5352d;
            }
            if (uVar.f13568c == -9223372036854775807L) {
                tVar.f13562c = this.f5353e;
            }
            r1.u uVar2 = new r1.u(tVar);
            if (!uVar2.equals(yVar2.f13628c)) {
                new r1.y0();
                List listEmptyList = Collections.emptyList();
                u7.y0 y0Var2 = u7.y0.f15549e;
                r1.w wVar = r1.w.f13618a;
                dd.c cVar = new dd.c(yVar2.f13630e);
                String str3 = yVar2.f13626a;
                r1.b0 b0Var = yVar2.f13629d;
                r1.w wVar2 = yVar2.f13631f;
                r1.v vVar2 = yVar2.f13627b;
                if (vVar2 != null) {
                    String str4 = vVar2.f13593b;
                    Uri uri2 = vVar2.f13592a;
                    List list2 = vVar2.f13594c;
                    ?? r92 = vVar2.f13595d;
                    u7.e0 e0Var = u7.g0.f15471b;
                    u7.y0 y0Var3 = u7.y0.f15549e;
                    str = str4;
                    uri = uri2;
                    list = list2;
                    y0Var = r92;
                    j10 = vVar2.f13596e;
                } else {
                    uri = null;
                    str = null;
                    list = listEmptyList;
                    j10 = -9223372036854775807L;
                    y0Var = y0Var2;
                }
                r1.t tVar2 = new r1.t(uVar2);
                r1.v vVar3 = uri != null ? new r1.v(uri, str, null, list, y0Var, j10) : null;
                if (str3 == null) {
                    str3 = "";
                }
                String str5 = str3;
                r1.s sVar = new r1.s(cVar);
                r1.u uVar3 = new r1.u(tVar2);
                if (b0Var == null) {
                    b0Var = r1.b0.B;
                }
                yVar2 = new r1.y(str5, sVar, vVar3, uVar3, b0Var, wVar2);
            }
            a aVarB = b0VarB.b(yVar2);
            u7.g0 g0Var = yVar2.f13627b.f13595d;
            if (!g0Var.isEmpty()) {
                a[] aVarArr = new a[g0Var.size() + 1];
                aVarArr[0] = aVarB;
                if (g0Var.size() > 0) {
                    if (this.f5356h) {
                        u7.e0 e0Var2 = u7.g0.f15471b;
                        u7.y0 y0Var4 = u7.y0.f15549e;
                        throw null;
                    }
                    this.f5350b.getClass();
                    new ArrayList(1);
                    new HashSet(1);
                    new CopyOnWriteArrayList();
                    new CopyOnWriteArrayList();
                    u7.e0 e0Var3 = u7.g0.f15471b;
                    u7.y0 y0Var5 = u7.y0.f15549e;
                    Collections.emptyList();
                    u7.y0 y0Var6 = u7.y0.f15549e;
                    r1.w wVar3 = r1.w.f13618a;
                    Uri uri3 = Uri.EMPTY;
                    throw null;
                }
                aVarB = new m0(aVarArr);
            }
            if (yVar2.f13630e.f13552a != Long.MIN_VALUE) {
                d dVar = new d(aVarB);
                r1.s sVar2 = yVar2.f13630e;
                a9.o.t(!dVar.f5244d);
                long j12 = sVar2.f13552a;
                a9.o.t(!dVar.f5244d);
                dVar.f5242b = j12;
                a9.o.t(!dVar.f5244d);
                dVar.f5243c = true;
                a9.o.t(!dVar.f5244d);
                a9.o.t(!dVar.f5244d);
                a9.o.t(!dVar.f5244d);
                a9.o.t(!dVar.f5244d);
                dVar.f5244d = true;
                aVarB = new g(dVar);
            }
            yVar2.f13627b.getClass();
            yVar2.f13627b.getClass();
            return aVarB;
        } catch (ClassNotFoundException e7) {
            throw new IllegalStateException(e7);
        }
    }

    @Override // f2.b0
    public final b0 c(boolean z) {
        this.f5356h = z;
        p pVar = this.f5349a;
        pVar.f5342e = z;
        l2.m mVar = pVar.f5338a;
        synchronized (mVar) {
            mVar.f10508b = z;
        }
        Iterator it = pVar.f5340c.values().iterator();
        while (it.hasNext()) {
            ((b0) it.next()).c(z);
        }
        return this;
    }

    @Override // f2.b0
    public final b0 d(int i10) {
        p pVar = this.f5349a;
        pVar.f5344g = i10;
        l2.m mVar = pVar.f5338a;
        synchronized (mVar) {
            mVar.f10510d = i10;
        }
        return this;
    }
}
