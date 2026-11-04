package g2;

import a1.i;
import a9.o;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import f2.c0;
import f2.c1;
import ha.jd;
import ha.l2;
import i3.g;
import i3.j;
import j$.util.Objects;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import r1.e0;
import r1.p;
import ta.q;
import u7.a0;
import u7.g0;
import u7.y0;
import ua.g5;
import ua.i8;
import y1.t;
import y1.x;

/* loaded from: classes.dex */
public final class f extends y1.a implements Handler.Callback {
    public i3.e A;
    public g B;
    public i3.c C;
    public i3.c D;
    public int E;
    public final Handler F;
    public final t G;
    public final i8 H;
    public boolean I;
    public boolean K;
    public p L;
    public long M;
    public long N;

    /* renamed from: t, reason: collision with root package name */
    public final l2 f5984t;

    /* renamed from: v, reason: collision with root package name */
    public final x1.g f5985v;

    /* renamed from: w, reason: collision with root package name */
    public a f5986w;

    /* renamed from: x, reason: collision with root package name */
    public final i f5987x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f5988y;
    public int z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(t tVar, Looper looper) {
        super(3);
        i iVar = e.A0;
        this.G = tVar;
        this.F = looper == null ? null : new Handler(looper, this);
        this.f5987x = iVar;
        this.f5984t = new l2(9);
        this.f5985v = new x1.g(1);
        this.H = new i8(11);
        this.N = -9223372036854775807L;
        this.M = -9223372036854775807L;
    }

    @Override // y1.a
    public final int B(p pVar) {
        if (!Objects.equals(pVar.f13523o, "application/x-media3-cues")) {
            i iVar = this.f5987x;
            iVar.getClass();
            if (!((l2) iVar.f76b).m(pVar)) {
                String str = pVar.f13523o;
                if (!Objects.equals(str, "application/cea-608") && !Objects.equals(str, "application/x-mp4-cea-608") && !Objects.equals(str, "application/cea-708")) {
                    return e0.j(str) ? q.a(1, 0, 0, 0) : q.a(0, 0, 0, 0);
                }
            }
        }
        return q.a(pVar.P == 0 ? 4 : 2, 0, 0, 0);
    }

    public final void E() {
        boolean z = Objects.equals(this.L.f13523o, "application/cea-608") || Objects.equals(this.L.f13523o, "application/x-mp4-cea-608") || Objects.equals(this.L.f13523o, "application/cea-708");
        String str = this.L.f13523o;
        if (!z) {
            throw new IllegalStateException(android.support.v4.media.session.b.y("Legacy decoding is disabled, can't handle %s samples (expected %s).", str, "application/x-media3-cues"));
        }
    }

    public final long F() {
        if (this.E == -1) {
            return Long.MAX_VALUE;
        }
        this.C.getClass();
        if (this.E >= this.C.j()) {
            return Long.MAX_VALUE;
        }
        return this.C.e(this.E);
    }

    public final long G(long j10) {
        o.t(j10 != -9223372036854775807L);
        return j10 - this.f18562k;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void H() {
        i3.e bVar;
        char c7 = 1;
        this.f5988y = true;
        p pVar = this.L;
        pVar.getClass();
        i iVar = this.f5987x;
        iVar.getClass();
        String str = pVar.f13523o;
        if (str != null) {
            int i10 = pVar.L;
            switch (str.hashCode()) {
                case 930165504:
                    if (!str.equals("application/x-mp4-cea-608")) {
                        c7 = 65535;
                        break;
                    } else {
                        c7 = 0;
                        break;
                    }
                case 1566015601:
                    if (!str.equals("application/cea-608")) {
                    }
                    break;
                case 1566016562:
                    if (str.equals("application/cea-708")) {
                        c7 = 2;
                        break;
                    }
                    break;
            }
            switch (c7) {
                case 0:
                case 1:
                    bVar = new j3.c(str, i10);
                    break;
                case 2:
                    bVar = new j3.g(i10, pVar.r);
                    break;
                default:
                    l2 l2Var = (l2) iVar.f76b;
                    if (!l2Var.m(pVar)) {
                        throw new IllegalArgumentException(da.b.c("Attempted to create decoder for unsupported MIME type: ", str));
                    }
                    j jVarK = l2Var.k(pVar);
                    jVarK.getClass().getSimpleName().concat("Decoder");
                    bVar = new b(jVarK);
                    break;
            }
        }
        this.A = bVar;
        bVar.c(this.l);
    }

    public final void I(t1.c cVar) {
        y0 y0Var = cVar.f14682a;
        t tVar = this.G;
        tVar.f18808a.f18861m.e(27, new g5(26, y0Var));
        x xVar = tVar.f18808a;
        xVar.V0 = cVar;
        xVar.f18861m.e(27, new g5(23, cVar));
    }

    public final void J() {
        this.B = null;
        this.E = -1;
        i3.c cVar = this.C;
        if (cVar != null) {
            cVar.i();
            this.C = null;
        }
        i3.c cVar2 = this.D;
        if (cVar2 != null) {
            cVar2.i();
            this.D = null;
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 1) {
            throw new IllegalStateException();
        }
        I((t1.c) message.obj);
        return true;
    }

    @Override // y1.a
    public final String j() {
        return "TextRenderer";
    }

    @Override // y1.a
    public final boolean l() {
        return this.K;
    }

    @Override // y1.a
    public final boolean m() {
        p pVar = this.L;
        if (pVar == null) {
            return true;
        }
        if (Objects.equals(pVar.f13523o, "application/x-media3-cues")) {
            a aVar = this.f5986w;
            aVar.getClass();
            if (aVar.a(this.M) != Long.MIN_VALUE) {
                return true;
            }
            try {
                c1 c1Var = this.f18560i;
                c1Var.getClass();
                c1Var.j();
                return true;
            } catch (IOException unused) {
                return false;
            }
        }
        if (!this.K) {
            if (!this.I) {
                return true;
            }
            i3.c cVar = this.C;
            long j10 = this.M;
            if (cVar != null && cVar.j() > 0 && cVar.e(cVar.j() - 1) > j10) {
                return true;
            }
            i3.c cVar2 = this.D;
            long j11 = this.M;
            if ((cVar2 != null && cVar2.j() > 0 && cVar2.e(cVar2.j() - 1) > j11) || this.B == null) {
                return true;
            }
        }
        return false;
    }

    @Override // y1.a
    public final void n() {
        this.L = null;
        this.N = -9223372036854775807L;
        y0 y0Var = y0.f15549e;
        G(this.M);
        t1.c cVar = new t1.c(y0Var);
        Handler handler = this.F;
        if (handler != null) {
            handler.obtainMessage(1, cVar).sendToTarget();
        } else {
            I(cVar);
        }
        this.M = -9223372036854775807L;
        if (this.A != null) {
            J();
            i3.e eVar = this.A;
            eVar.getClass();
            eVar.a();
            this.A = null;
            this.z = 0;
        }
    }

    @Override // y1.a
    public final void p(long j10, boolean z, boolean z4) {
        this.M = j10;
        a aVar = this.f5986w;
        if (aVar != null) {
            aVar.clear();
        }
        y0 y0Var = y0.f15549e;
        G(this.M);
        t1.c cVar = new t1.c(y0Var);
        Handler handler = this.F;
        if (handler != null) {
            handler.obtainMessage(1, cVar).sendToTarget();
        } else {
            I(cVar);
        }
        this.I = false;
        this.K = false;
        this.N = -9223372036854775807L;
        p pVar = this.L;
        if (pVar == null || Objects.equals(pVar.f13523o, "application/x-media3-cues")) {
            return;
        }
        if (this.z == 0) {
            J();
            i3.e eVar = this.A;
            eVar.getClass();
            eVar.flush();
            eVar.c(this.l);
            return;
        }
        J();
        i3.e eVar2 = this.A;
        eVar2.getClass();
        eVar2.a();
        this.A = null;
        this.z = 0;
        H();
    }

    @Override // y1.a
    public final void u(p[] pVarArr, long j10, long j11, c0 c0Var) {
        p pVar = pVarArr[0];
        this.L = pVar;
        if (Objects.equals(pVar.f13523o, "application/x-media3-cues")) {
            this.f5986w = this.L.M == 1 ? new d() : new ag.c(1);
            return;
        }
        E();
        if (this.A != null) {
            this.z = 1;
        } else {
            H();
        }
    }

    @Override // y1.a
    public final void x(long j10, long j11) {
        boolean z;
        long jE;
        if (this.f18564n) {
            long j12 = this.N;
            if (j12 != -9223372036854775807L && j10 >= j12) {
                J();
                this.K = true;
            }
        }
        if (this.K) {
            return;
        }
        p pVar = this.L;
        pVar.getClass();
        boolean zEquals = Objects.equals(pVar.f13523o, "application/x-media3-cues");
        Handler handler = this.F;
        boolean zB = false;
        zB = false;
        int i10 = 0;
        zB = false;
        i8 i8Var = this.H;
        if (zEquals) {
            this.f5986w.getClass();
            if (!this.I) {
                x1.g gVar = this.f5985v;
                if (w(i8Var, gVar, 0) == -4) {
                    if (gVar.c(4)) {
                        this.I = true;
                    } else {
                        gVar.l();
                        ByteBuffer byteBuffer = gVar.f18087e;
                        byteBuffer.getClass();
                        long j13 = gVar.f18089g;
                        byte[] bArrArray = byteBuffer.array();
                        int iArrayOffset = byteBuffer.arrayOffset();
                        int iLimit = byteBuffer.limit();
                        this.f5984t.getClass();
                        Parcel parcelObtain = Parcel.obtain();
                        parcelObtain.unmarshall(bArrArray, iArrayOffset, iLimit);
                        parcelObtain.setDataPosition(0);
                        Bundle bundle = parcelObtain.readBundle(Bundle.class.getClassLoader());
                        parcelObtain.recycle();
                        ArrayList parcelableArrayList = bundle.getParcelableArrayList("c");
                        parcelableArrayList.getClass();
                        jd jdVar = new jd(10);
                        u7.e0 e0Var = g0.f15471b;
                        u7.q.c(4, "initialCapacity");
                        Object[] objArrCopyOf = new Object[4];
                        int i11 = 0;
                        while (i10 < parcelableArrayList.size()) {
                            Bundle bundle2 = (Bundle) parcelableArrayList.get(i10);
                            bundle2.getClass();
                            Object objApply = jdVar.apply(bundle2);
                            ArrayList arrayList = parcelableArrayList;
                            jd jdVar2 = jdVar;
                            int i12 = i11 + 1;
                            int iF = a0.f(objArrCopyOf.length, i12);
                            if (iF > objArrCopyOf.length) {
                                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
                            }
                            objArrCopyOf[i11] = objApply;
                            i10++;
                            parcelableArrayList = arrayList;
                            i11 = i12;
                            jdVar = jdVar2;
                        }
                        i3.a aVar = new i3.a(j13, bundle.getLong("d"), g0.i(i11, objArrCopyOf));
                        gVar.g();
                        zB = this.f5986w.b(aVar, j10);
                    }
                }
            }
            long jA = this.f5986w.a(this.M);
            if (jA == Long.MIN_VALUE && this.I && !zB) {
                this.K = true;
            }
            if (jA != Long.MIN_VALUE && jA <= j10) {
                zB = true;
            }
            if (zB) {
                g0 g0VarC = this.f5986w.c(j10);
                long jD = this.f5986w.d(j10);
                G(jD);
                t1.c cVar = new t1.c(g0VarC);
                if (handler != null) {
                    handler.obtainMessage(1, cVar).sendToTarget();
                } else {
                    I(cVar);
                }
                this.f5986w.e(jD);
            }
            this.M = j10;
            return;
        }
        E();
        this.M = j10;
        if (this.D == null) {
            i3.e eVar = this.A;
            eVar.getClass();
            eVar.d(j10);
            try {
                i3.e eVar2 = this.A;
                eVar2.getClass();
                this.D = (i3.c) eVar2.e();
            } catch (i3.f e7) {
                u1.a.g("Subtitle decoding failed. streamFormat=" + this.L, e7);
                y0 y0Var = y0.f15549e;
                G(this.M);
                t1.c cVar2 = new t1.c(y0Var);
                if (handler != null) {
                    handler.obtainMessage(1, cVar2).sendToTarget();
                } else {
                    I(cVar2);
                }
                J();
                i3.e eVar3 = this.A;
                eVar3.getClass();
                eVar3.a();
                this.A = null;
                this.z = 0;
                H();
                return;
            }
        }
        if (this.f18559h != 2) {
            return;
        }
        if (this.C != null) {
            long jF = F();
            z = false;
            while (jF <= j10) {
                this.E++;
                jF = F();
                z = true;
            }
        } else {
            z = false;
        }
        i3.c cVar3 = this.D;
        if (cVar3 != null) {
            if (cVar3.c(4)) {
                if (!z && F() == Long.MAX_VALUE) {
                    if (this.z == 2) {
                        J();
                        i3.e eVar4 = this.A;
                        eVar4.getClass();
                        eVar4.a();
                        this.A = null;
                        this.z = 0;
                        H();
                    } else {
                        J();
                        this.K = true;
                    }
                }
            } else if (cVar3.f18092c <= j10) {
                i3.c cVar4 = this.C;
                if (cVar4 != null) {
                    cVar4.i();
                }
                this.E = cVar3.d(j10);
                this.C = cVar3;
                this.D = null;
                z = true;
            }
        }
        if (z) {
            this.C.getClass();
            int iD = this.C.d(j10);
            if (iD == 0 || this.C.j() == 0) {
                jE = this.C.f18092c;
            } else if (iD == -1) {
                i3.c cVar5 = this.C;
                jE = cVar5.e(cVar5.j() - 1);
            } else {
                jE = this.C.e(iD - 1);
            }
            G(jE);
            t1.c cVar6 = new t1.c(this.C.h(j10));
            if (handler != null) {
                handler.obtainMessage(1, cVar6).sendToTarget();
            } else {
                I(cVar6);
            }
        }
        if (this.z == 2) {
            return;
        }
        while (!this.I) {
            try {
                g gVar2 = this.B;
                if (gVar2 == null) {
                    i3.e eVar5 = this.A;
                    eVar5.getClass();
                    gVar2 = (g) eVar5.f();
                    if (gVar2 == null) {
                        return;
                    } else {
                        this.B = gVar2;
                    }
                }
                if (this.z == 1) {
                    gVar2.f567b = 4;
                    i3.e eVar6 = this.A;
                    eVar6.getClass();
                    eVar6.b(gVar2);
                    this.B = null;
                    this.z = 2;
                    return;
                }
                int iW = w(i8Var, gVar2, 0);
                if (iW == -4) {
                    if (gVar2.c(4)) {
                        this.I = true;
                        this.f5988y = false;
                    } else {
                        p pVar2 = (p) i8Var.f15742c;
                        if (pVar2 == null) {
                            return;
                        }
                        gVar2.f8495j = pVar2.f13527t;
                        gVar2.l();
                        this.f5988y &= !gVar2.c(1);
                    }
                    if (!this.f5988y) {
                        i3.e eVar7 = this.A;
                        eVar7.getClass();
                        eVar7.b(gVar2);
                        this.B = null;
                    }
                } else if (iW == -3) {
                    return;
                }
            } catch (i3.f e10) {
                u1.a.g("Subtitle decoding failed. streamFormat=" + this.L, e10);
                y0 y0Var2 = y0.f15549e;
                G(this.M);
                t1.c cVar7 = new t1.c(y0Var2);
                if (handler != null) {
                    handler.obtainMessage(1, cVar7).sendToTarget();
                } else {
                    I(cVar7);
                }
                J();
                i3.e eVar8 = this.A;
                eVar8.getClass();
                eVar8.a();
                this.A = null;
                this.z = 0;
                H();
                return;
            }
        }
    }
}
