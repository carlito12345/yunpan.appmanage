package a;

import i5.i;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.ArrayDeque;
import l5.a0;
import l5.q;
import l5.r;
import l5.w;
import r1.m0;
import r1.p0;
import r1.q0;
import u1.f0;
import y1.x;

/* loaded from: classes.dex */
public abstract class b implements r, m0 {

    /* renamed from: a, reason: collision with root package name */
    public Object f1a;

    public void a(byte[] bArr, FileOutputStream fileOutputStream) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        byte[] bArr2 = new byte[57];
        d(fileOutputStream);
        while (true) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                if (i11 >= 57) {
                    i11 = 57;
                    break;
                }
                int i12 = byteArrayInputStream.read();
                if (i12 == -1) {
                    break;
                }
                bArr2[i11] = (byte) i12;
                i11++;
            }
            if (i11 == 0) {
                return;
            }
            while (i10 < i11) {
                int i13 = 3 + i10;
                if (i13 <= i11) {
                    b(bArr2, i10, 3, fileOutputStream);
                } else {
                    b(bArr2, i10, i11 - i10, fileOutputStream);
                }
                i10 = i13;
            }
            if (i11 < 57) {
                return;
            } else {
                f();
            }
        }
    }

    public abstract void b(byte[] bArr, int i10, int i11, OutputStream outputStream);

    public String c(byte[] bArr) throws IOException {
        int i10;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            byte[] bArr2 = new byte[16];
            d(byteArrayOutputStream);
            do {
                int i11 = 0;
                i10 = 0;
                while (true) {
                    if (i10 >= 16) {
                        i10 = 16;
                        break;
                    }
                    int i12 = byteArrayInputStream.read();
                    if (i12 == -1) {
                        break;
                    }
                    bArr2[i10] = (byte) i12;
                    i10++;
                }
                if (i10 == 0) {
                    break;
                }
                e(i10);
                while (i11 < i10) {
                    int i13 = 1 + i11;
                    if (i13 <= i10) {
                        b(bArr2, i11, 1, byteArrayOutputStream);
                    } else {
                        b(bArr2, i11, i10 - i11, byteArrayOutputStream);
                    }
                    i11 = i13;
                }
                f();
            } while (i10 >= 16);
            return byteArrayOutputStream.toString();
        } catch (Exception unused) {
            throw new Error("CharacterEncoder.encodeBuffer internal error");
        }
    }

    public void d(OutputStream outputStream) {
        this.f1a = new PrintStream(outputStream);
    }

    public void f() {
        ((PrintStream) this.f1a).getClass();
    }

    public long g() {
        x xVar = (x) this;
        q0 q0VarE = xVar.E();
        if (q0VarE.p()) {
            return -9223372036854775807L;
        }
        return f0.R(q0VarE.m(xVar.A(), (p0) this.f1a, 0L).l);
    }

    public void h() {
        ((x) this).h0();
    }

    public boolean i(int i10) {
        x xVar = (x) this;
        xVar.h0();
        return xVar.Y.f13458a.f13479a.get(i10);
    }

    public boolean j() {
        x xVar = (x) this;
        q0 q0VarE = xVar.E();
        return !q0VarE.p() && q0VarE.m(xVar.A(), (p0) this.f1a, 0L).f13542h;
    }

    public boolean k() {
        x xVar = (x) this;
        q0 q0VarE = xVar.E();
        return !q0VarE.p() && q0VarE.m(xVar.A(), (p0) this.f1a, 0L).a();
    }

    @Override // l5.r
    public q l(w wVar) {
        return new l5.c(2, (a0) this.f1a);
    }

    public boolean m() {
        x xVar = (x) this;
        q0 q0VarE = xVar.E();
        return !q0VarE.p() && q0VarE.m(xVar.A(), (p0) this.f1a, 0L).f13541g;
    }

    public boolean n() {
        x xVar = (x) this;
        return xVar.J() == 3 && xVar.I() && xVar.K() == 0;
    }

    public void o(i iVar) {
        ArrayDeque arrayDeque = (ArrayDeque) this.f1a;
        if (arrayDeque.size() < 20) {
            arrayDeque.offer(iVar);
        }
    }

    public abstract void p(int i10, long j10, boolean z);

    public void q() {
        int iE;
        int iE2;
        x xVar = (x) this;
        if (xVar.E().p() || xVar.N()) {
            h();
            return;
        }
        q0 q0VarE = xVar.E();
        if (q0VarE.p()) {
            iE = -1;
        } else {
            int iA = xVar.A();
            xVar.h0();
            int i10 = xVar.K;
            if (i10 == 1) {
                i10 = 0;
            }
            xVar.h0();
            iE = q0VarE.e(iA, i10, xVar.L);
        }
        if (!(iE != -1)) {
            if (k() && j()) {
                p(xVar.A(), -9223372036854775807L, false);
                return;
            } else {
                h();
                return;
            }
        }
        q0 q0VarE2 = xVar.E();
        if (q0VarE2.p()) {
            iE2 = -1;
        } else {
            int iA2 = xVar.A();
            xVar.h0();
            int i11 = xVar.K;
            if (i11 == 1) {
                i11 = 0;
            }
            xVar.h0();
            iE2 = q0VarE2.e(iA2, i11, xVar.L);
        }
        if (iE2 == -1) {
            h();
        } else if (iE2 == xVar.A()) {
            p(xVar.A(), -9223372036854775807L, true);
        } else {
            p(iE2, -9223372036854775807L, false);
        }
    }

    public void r(int i10, long j10) {
        x xVar = (x) this;
        long jC = xVar.C() + j10;
        long jH = xVar.H();
        if (jH != -9223372036854775807L) {
            jC = Math.min(jC, jH);
        }
        p(xVar.A(), Math.max(jC, 0L), false);
    }

    public void s() {
        int iK;
        int iK2;
        int iK3;
        x xVar = (x) this;
        if (xVar.E().p() || xVar.N()) {
            h();
            return;
        }
        q0 q0VarE = xVar.E();
        if (q0VarE.p()) {
            iK = -1;
        } else {
            int iA = xVar.A();
            xVar.h0();
            int i10 = xVar.K;
            if (i10 == 1) {
                i10 = 0;
            }
            xVar.h0();
            iK = q0VarE.k(iA, i10, xVar.L);
        }
        boolean z = iK != -1;
        if (k() && !m()) {
            if (!z) {
                h();
                return;
            }
            q0 q0VarE2 = xVar.E();
            if (q0VarE2.p()) {
                iK3 = -1;
            } else {
                int iA2 = xVar.A();
                xVar.h0();
                int i11 = xVar.K;
                if (i11 == 1) {
                    i11 = 0;
                }
                xVar.h0();
                iK3 = q0VarE2.k(iA2, i11, xVar.L);
            }
            if (iK3 == -1) {
                h();
                return;
            } else if (iK3 == xVar.A()) {
                p(xVar.A(), -9223372036854775807L, true);
                return;
            } else {
                p(iK3, -9223372036854775807L, false);
                return;
            }
        }
        if (z) {
            long jC = xVar.C();
            xVar.h0();
            if (jC <= xVar.f18849d1) {
                q0 q0VarE3 = xVar.E();
                if (q0VarE3.p()) {
                    iK2 = -1;
                } else {
                    int iA3 = xVar.A();
                    xVar.h0();
                    int i12 = xVar.K;
                    if (i12 == 1) {
                        i12 = 0;
                    }
                    xVar.h0();
                    iK2 = q0VarE3.k(iA3, i12, xVar.L);
                }
                if (iK2 == -1) {
                    h();
                    return;
                } else if (iK2 == xVar.A()) {
                    p(xVar.A(), -9223372036854775807L, true);
                    return;
                } else {
                    p(iK2, -9223372036854775807L, false);
                    return;
                }
            }
        }
        p(xVar.A(), 0L, false);
    }

    public b(int i10) {
        switch (i10) {
            case 1:
                this.f1a = new short[768];
                break;
            case 2:
                char[] cArr = a6.q.f446a;
                this.f1a = new ArrayDeque(20);
                break;
            case 4:
                this.f1a = new p0();
                break;
        }
    }

    public void e(int i10) {
    }
}
