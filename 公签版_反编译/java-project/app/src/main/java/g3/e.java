package g3;

import a9.o;
import java.io.EOFException;
import l2.l;
import u1.q;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final f f6007a = new f();

    /* renamed from: b, reason: collision with root package name */
    public final q f6008b = new q(new byte[65025], 0);

    /* renamed from: c, reason: collision with root package name */
    public int f6009c = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f6010d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6011e;

    public final int a(int i10) {
        int i11;
        int i12 = 0;
        this.f6010d = 0;
        do {
            int i13 = this.f6010d;
            int i14 = i10 + i13;
            f fVar = this.f6007a;
            if (i14 >= fVar.f6014c) {
                break;
            }
            int[] iArr = fVar.f6017f;
            this.f6010d = i13 + 1;
            i11 = iArr[i13 + i10];
            i12 += i11;
        } while (i11 == 255);
        return i12;
    }

    public final boolean b(l lVar) {
        int i10;
        o.t(lVar != null);
        boolean z = this.f6011e;
        q qVar = this.f6008b;
        if (z) {
            this.f6011e = false;
            qVar.L(0);
        }
        while (!this.f6011e) {
            int i11 = this.f6009c;
            f fVar = this.f6007a;
            if (i11 < 0) {
                if (fVar.b(lVar, -1L) && fVar.a(lVar, true)) {
                    int iA = fVar.f6015d;
                    if ((fVar.f6012a & 1) == 1 && qVar.f15268c == 0) {
                        iA += a(0);
                        i10 = this.f6010d;
                    } else {
                        i10 = 0;
                    }
                    try {
                        lVar.o(iA, false);
                        this.f6009c = i10;
                    } catch (EOFException unused) {
                    }
                }
                return false;
            }
            int iA2 = a(this.f6009c);
            int i12 = this.f6009c + this.f6010d;
            if (iA2 > 0) {
                qVar.c(qVar.f15268c + iA2);
                try {
                    lVar.b(qVar.f15266a, qVar.f15268c, iA2, false);
                    qVar.N(qVar.f15268c + iA2);
                    this.f6011e = fVar.f6017f[i12 + (-1)] != 255;
                } catch (EOFException unused2) {
                    return false;
                }
            }
            if (i12 == fVar.f6014c) {
                i12 = -1;
            }
            this.f6009c = i12;
        }
        return true;
    }
}
