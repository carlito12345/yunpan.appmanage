package sd;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class c extends g {
    public final /* synthetic */ int A;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(vc.f fVar, b bVar, int i10) {
        super(fVar);
        this.A = i10;
        switch (i10) {
            case 2:
                super(fVar);
                this.f14536q = bVar;
                this.f14537s = 33;
                this.f14533n = false;
                this.f14535p = false;
                break;
            default:
                this.f14536q = bVar;
                this.f14537s = 32;
                break;
        }
    }

    @Override // sd.g
    public final int a(int i10, byte[] bArr) {
        switch (this.A) {
            case 0:
                int iB = this.f14536q.b(i10, bArr) + i10;
                this.f14537s = g.b(iB, bArr);
                this.f14538t = g.b(iB + 2, bArr);
                return (iB + 4) - i10;
            case 1:
                return e(i10, bArr);
            default:
                return 0;
        }
    }

    @Override // sd.g
    public final int d(int i10, byte[] bArr) {
        switch (this.A) {
            case 1:
                if (this.f14525e == 0 && this.f14524d == 0) {
                    byte b10 = bArr[i10];
                    int iC = g.c(i10 + 2, bArr);
                    if (iC == 0) {
                        this.f14522b[this.f14521a] = null;
                        break;
                    } else {
                        this.f14522b[this.f14521a] = new h(this.r, iC);
                        break;
                    }
                }
                break;
        }
        return 0;
    }

    @Override // sd.g
    public final int g(int i10, byte[] bArr) {
        switch (this.A) {
            case 0:
                int iC = this.f14536q.c(i10, bArr) + i10;
                g.h(this.f14537s, iC, bArr);
                g.h(this.f14538t, iC + 2, bArr);
                return (iC + 4) - i10;
            case 1:
                return 0;
            default:
                b bVar = this.f14536q;
                int i11 = bVar.f14488c;
                bVar.f14488c = 0;
                int iC2 = bVar.c(i10, bArr) + i10;
                g.h(this.f14537s, iC2, bArr);
                g.h(this.f14538t, iC2 + 2, bArr);
                int i12 = (iC2 + 4) - i10;
                this.f14536q.f14488c = i11;
                return i12;
        }
    }

    @Override // sd.g
    public final String toString() {
        switch (this.A) {
            case 0:
                return new String(g.b.l(super.toString(), "]", new StringBuilder("NameQueryRequest[")));
            case 1:
                StringBuilder sb2 = new StringBuilder("NameQueryResponse[");
                sb2.append(super.toString());
                sb2.append(",addrEntry=");
                h[] hVarArr = this.f14522b;
                return new String(g.b.l(hVarArr != null ? Arrays.toString(hVarArr) : "", "]", sb2));
            default:
                return new String(g.b.l(super.toString(), "]", new StringBuilder("NodeStatusRequest[")));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(vc.f fVar) {
        super(fVar);
        this.A = 1;
        this.r = new b(fVar);
    }
}
