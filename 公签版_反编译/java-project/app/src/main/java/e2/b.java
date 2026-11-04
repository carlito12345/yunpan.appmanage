package e2;

import a9.o;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import r1.a0;
import r1.b0;
import r1.c0;
import r1.d0;
import r1.p;
import ta.q;
import u1.f0;
import u1.m;
import ua.g5;
import ua.i8;
import y1.t;
import y1.x;

/* loaded from: classes.dex */
public final class b extends y1.a implements Handler.Callback {
    public boolean A;
    public long B;
    public d0 C;
    public long D;

    /* renamed from: t, reason: collision with root package name */
    public final a f4711t;

    /* renamed from: v, reason: collision with root package name */
    public final t f4712v;

    /* renamed from: w, reason: collision with root package name */
    public final Handler f4713w;

    /* renamed from: x, reason: collision with root package name */
    public final u2.a f4714x;

    /* renamed from: y, reason: collision with root package name */
    public nh.b f4715y;
    public boolean z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(t tVar, Looper looper) {
        super(5);
        a aVar = a.f4710a;
        this.f4712v = tVar;
        this.f4713w = looper == null ? null : new Handler(looper, this);
        this.f4711t = aVar;
        this.f4714x = new u2.a();
        this.D = -9223372036854775807L;
    }

    @Override // y1.a
    public final int B(p pVar) {
        if (this.f4711t.b(pVar)) {
            return q.a(pVar.P == 0 ? 4 : 2, 0, 0, 0);
        }
        return q.a(0, 0, 0, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void E(d0 d0Var, ArrayList arrayList) {
        int i10 = 0;
        while (true) {
            c0[] c0VarArr = d0Var.f13430a;
            if (i10 >= c0VarArr.length) {
                return;
            }
            p pVarA = c0VarArr[i10].a();
            if (pVarA != null) {
                a aVar = this.f4711t;
                if (aVar.b(pVarA)) {
                    nh.b bVarA = aVar.a(pVarA);
                    byte[] bArrC = c0VarArr[i10].c();
                    bArrC.getClass();
                    u2.a aVar2 = this.f4714x;
                    aVar2.g();
                    aVar2.k(bArrC.length);
                    aVar2.f18087e.put(bArrC);
                    aVar2.l();
                    d0 d0VarQ = bVarA.q(aVar2);
                    if (d0VarQ != null) {
                        E(d0VarQ, arrayList);
                    }
                } else {
                    arrayList.add(c0VarArr[i10]);
                }
            }
            i10++;
        }
    }

    public final long F(long j10) {
        o.t(j10 != -9223372036854775807L);
        o.t(this.D != -9223372036854775807L);
        return j10 - this.D;
    }

    public final void G(d0 d0Var) {
        t tVar = this.f4712v;
        x xVar = tVar.f18808a;
        b0 b0Var = xVar.f18851e1;
        b0Var.getClass();
        a0 a0Var = new a0(b0Var);
        int i10 = 0;
        while (true) {
            c0[] c0VarArr = d0Var.f13430a;
            if (i10 >= c0VarArr.length) {
                break;
            }
            c0VarArr[i10].b(a0Var);
            i10++;
        }
        xVar.f18851e1 = new b0(a0Var);
        b0 b0VarT = xVar.t();
        boolean zEquals = b0VarT.equals(xVar.Z);
        m mVar = xVar.f18861m;
        if (!zEquals) {
            xVar.Z = b0VarT;
            mVar.c(14, new g5(24, tVar));
        }
        mVar.c(28, new g5(25, d0Var));
        mVar.b();
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 1) {
            throw new IllegalStateException();
        }
        G((d0) message.obj);
        return true;
    }

    @Override // y1.a
    public final String j() {
        return "MetadataRenderer";
    }

    @Override // y1.a
    public final boolean l() {
        return this.A;
    }

    @Override // y1.a
    public final boolean m() {
        return true;
    }

    @Override // y1.a
    public final void n() {
        this.C = null;
        this.f4715y = null;
        this.D = -9223372036854775807L;
    }

    @Override // y1.a
    public final void p(long j10, boolean z, boolean z4) {
        this.C = null;
        this.z = false;
        this.A = false;
    }

    @Override // y1.a
    public final void u(p[] pVarArr, long j10, long j11, f2.c0 c0Var) {
        this.f4715y = this.f4711t.a(pVarArr[0]);
        d0 d0Var = this.C;
        if (d0Var != null) {
            long j12 = this.D;
            long j13 = d0Var.f13431b;
            long j14 = (j12 + j13) - j11;
            if (j13 != j14) {
                d0Var = new d0(j14, d0Var.f13430a);
            }
            this.C = d0Var;
        }
        this.D = j11;
    }

    @Override // y1.a
    public final void x(long j10, long j11) {
        boolean z = true;
        while (z) {
            if (!this.z && this.C == null) {
                u2.a aVar = this.f4714x;
                aVar.g();
                i8 i8Var = this.f18554c;
                i8Var.n();
                int iW = w(i8Var, aVar, 0);
                if (iW == -4) {
                    if (aVar.c(4)) {
                        this.z = true;
                    } else if (aVar.f18089g >= this.l) {
                        aVar.f15316j = this.B;
                        aVar.l();
                        nh.b bVar = this.f4715y;
                        String str = f0.f15206a;
                        d0 d0VarQ = bVar.q(aVar);
                        if (d0VarQ != null) {
                            ArrayList arrayList = new ArrayList(d0VarQ.f13430a.length);
                            E(d0VarQ, arrayList);
                            if (!arrayList.isEmpty()) {
                                this.C = new d0(F(aVar.f18089g), (c0[]) arrayList.toArray(new c0[0]));
                            }
                        }
                    }
                } else if (iW == -5) {
                    p pVar = (p) i8Var.f15742c;
                    pVar.getClass();
                    this.B = pVar.f13527t;
                }
            }
            d0 d0Var = this.C;
            if (d0Var == null || d0Var.f13431b > F(j10)) {
                z = false;
            } else {
                d0 d0Var2 = this.C;
                Handler handler = this.f4713w;
                if (handler != null) {
                    handler.obtainMessage(1, d0Var2).sendToTarget();
                } else {
                    G(d0Var2);
                }
                this.C = null;
                z = true;
            }
            if (this.z && this.C == null) {
                this.A = true;
            }
        }
    }
}
