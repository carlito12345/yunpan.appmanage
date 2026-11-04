package q2;

import dd.c;
import l2.e;
import l2.f;
import l2.g;
import l2.h;
import l2.i;
import l2.l;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final e f12932a;

    /* renamed from: b, reason: collision with root package name */
    public final i f12933b;

    /* renamed from: c, reason: collision with root package name */
    public f f12934c;

    /* renamed from: d, reason: collision with root package name */
    public final int f12935d;

    public a(g gVar, i iVar, long j10, long j11, long j12, long j13, long j14, int i10) {
        this.f12933b = iVar;
        this.f12935d = i10;
        this.f12932a = new e(gVar, j10, j11, j12, j13, j14);
    }

    public static int a(int i10, byte[] bArr) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    public static int c(l lVar, long j10, c cVar) {
        if (j10 == lVar.f10499d) {
            return 0;
        }
        cVar.f4591b = j10;
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00cc, code lost:
    
        return c(r29, r8, r30);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int b(l lVar, c cVar) {
        while (true) {
            f fVar = this.f12934c;
            fVar.getClass();
            long j10 = fVar.f10462f;
            long j11 = fVar.f10463g;
            long j12 = fVar.f10464h;
            long j13 = j11 - j10;
            long j14 = this.f12935d;
            i iVar = this.f12933b;
            if (j13 <= j14) {
                this.f12934c = null;
                iVar.i();
                return c(lVar, j10, cVar);
            }
            long j15 = j12 - lVar.f10499d;
            if (j15 < 0 || j15 > 262144) {
                break;
            }
            lVar.o((int) j15, false);
            lVar.f10501f = 0;
            h hVarH = iVar.h(lVar, fVar.f10458b);
            int i10 = hVarH.f10466a;
            if (i10 == -3) {
                this.f12934c = null;
                iVar.i();
                return c(lVar, j12, cVar);
            }
            long j16 = hVarH.f10467b;
            long j17 = hVarH.f10468c;
            if (i10 == -2) {
                fVar.f10460d = j16;
                fVar.f10462f = j17;
                fVar.f10464h = f.a(fVar.f10458b, j16, fVar.f10461e, j17, fVar.f10463g, fVar.f10459c);
            } else {
                if (i10 != -1) {
                    if (i10 != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    long j18 = j17 - lVar.f10499d;
                    if (j18 >= 0 && j18 <= 262144) {
                        lVar.o((int) j18, false);
                    }
                    this.f12934c = null;
                    iVar.i();
                    return c(lVar, j17, cVar);
                }
                fVar.f10461e = j16;
                fVar.f10463g = j17;
                fVar.f10464h = f.a(fVar.f10458b, fVar.f10460d, j16, fVar.f10462f, j17, fVar.f10459c);
            }
        }
    }

    public final void d(long j10) {
        f fVar = this.f12934c;
        if (fVar == null || fVar.f10457a != j10) {
            e eVar = this.f12932a;
            this.f12934c = new f(j10, eVar.f10444a.d(j10), eVar.f10446c, eVar.f10447d, eVar.f10448e, eVar.f10449f);
        }
    }
}
