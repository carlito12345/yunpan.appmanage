package g3;

import a9.o;
import java.io.EOFException;
import java.io.InterruptedIOException;
import l2.l;
import r1.f0;
import u1.q;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public int f6012a;

    /* renamed from: b, reason: collision with root package name */
    public long f6013b;

    /* renamed from: c, reason: collision with root package name */
    public int f6014c;

    /* renamed from: d, reason: collision with root package name */
    public int f6015d;

    /* renamed from: e, reason: collision with root package name */
    public int f6016e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f6017f = new int[255];

    /* renamed from: g, reason: collision with root package name */
    public final q f6018g = new q(255);

    public final boolean a(l lVar, boolean z) throws f0, EOFException {
        boolean zC;
        boolean zC2;
        this.f6012a = 0;
        this.f6013b = 0L;
        this.f6014c = 0;
        this.f6015d = 0;
        this.f6016e = 0;
        q qVar = this.f6018g;
        qVar.L(27);
        try {
            zC = lVar.c(qVar.f15266a, 0, 27, z);
        } catch (EOFException e7) {
            if (!z) {
                throw e7;
            }
            zC = false;
        }
        if (!zC || qVar.D() != 1332176723) {
            return false;
        }
        if (qVar.B() != 0) {
            if (z) {
                return false;
            }
            throw f0.b("unsupported bit stream revision");
        }
        this.f6012a = qVar.B();
        this.f6013b = qVar.r();
        qVar.s();
        qVar.s();
        qVar.s();
        int iB = qVar.B();
        this.f6014c = iB;
        this.f6015d = iB + 27;
        qVar.L(iB);
        try {
            zC2 = lVar.c(qVar.f15266a, 0, this.f6014c, z);
        } catch (EOFException e10) {
            if (!z) {
                throw e10;
            }
            zC2 = false;
        }
        if (!zC2) {
            return false;
        }
        for (int i10 = 0; i10 < this.f6014c; i10++) {
            int iB2 = qVar.B();
            this.f6017f[i10] = iB2;
            this.f6016e += iB2;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0049, code lost:
    
        if (r14 == (-1)) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004f, code lost:
    
        if (r13.f10499d >= r14) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0051, code lost:
    
        r0 = java.lang.Math.min(r13.f10502g, 1);
        r13.p(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005a, code lost:
    
        if (r0 != 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005c, code lost:
    
        r9 = r13.f10496a;
        r0 = r13.n(0, true, r9, java.lang.Math.min(1, r9.length), 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006c, code lost:
    
        if (r0 == (-1)) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006e, code lost:
    
        r13.f10499d += r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0075, code lost:
    
        if (r0 == (-1)) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0078, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean b(l lVar, long j10) throws EOFException, InterruptedIOException {
        boolean zC;
        o.k(lVar.f10499d == lVar.d());
        q qVar = this.f6018g;
        qVar.L(4);
        while (true) {
            if (j10 != -1 && lVar.f10499d + 4 >= j10) {
                break;
            }
            try {
                zC = lVar.c(qVar.f15266a, 0, 4, true);
            } catch (EOFException unused) {
                zC = false;
            }
            if (!zC) {
                break;
            }
            qVar.O(0);
            if (qVar.D() == 1332176723) {
                lVar.f10501f = 0;
                return true;
            }
            lVar.o(1, false);
        }
    }
}
