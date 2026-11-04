package ae;

/* loaded from: classes.dex */
public final class c extends e {
    public final /* synthetic */ int z;

    public c() {
        this.z = 1;
        this.r = new b();
    }

    @Override // ae.e
    public final int a(int i10, byte[] bArr) {
        switch (this.z) {
            case 0:
                int iA = this.f616q.a(i10, bArr) + i10;
                this.f617s = e.b(iA, bArr);
                this.f618t = e.b(iA + 2, bArr);
                return (iA + 4) - i10;
            case 1:
                return e(i10, bArr);
            default:
                return 0;
        }
    }

    @Override // ae.e
    public final int d(int i10, byte[] bArr) {
        switch (this.z) {
            case 1:
                if (this.f605e == 0 && this.f604d == 0) {
                    byte b10 = bArr[i10];
                    int iC = e.c(i10 + 2, bArr);
                    if (iC == 0) {
                        this.f602b[this.f601a] = null;
                        break;
                    } else {
                        this.f602b[this.f601a] = new g(this.r, iC);
                        break;
                    }
                }
                break;
        }
        return 0;
    }

    @Override // ae.e
    public final int g(int i10, byte[] bArr) {
        switch (this.z) {
            case 0:
                int iB = this.f616q.b(i10, bArr) + i10;
                e.h(this.f617s, iB, bArr);
                e.h(this.f618t, iB + 2, bArr);
                return (iB + 4) - i10;
            case 1:
                return 0;
            default:
                b bVar = this.f616q;
                int i11 = bVar.f579c;
                bVar.f579c = 0;
                int iB2 = bVar.b(i10, bArr) + i10;
                e.h(this.f617s, iB2, bArr);
                e.h(this.f618t, iB2 + 2, bArr);
                int i12 = (iB2 + 4) - i10;
                this.f616q.f579c = i11;
                return i12;
        }
    }

    @Override // ae.e
    public final String toString() {
        switch (this.z) {
            case 0:
                return new String(g.b.l(super.toString(), "]", new StringBuilder("NameQueryRequest[")));
            case 1:
                return new String("NameQueryResponse[" + super.toString() + ",addrEntry=" + this.f602b + "]");
            default:
                return new String(g.b.l(super.toString(), "]", new StringBuilder("NodeStatusRequest[")));
        }
    }

    public c(b bVar, int i10) {
        this.z = i10;
        switch (i10) {
            case 2:
                this.f616q = bVar;
                this.f617s = 33;
                this.f613n = false;
                this.f615p = false;
                break;
            default:
                this.f616q = bVar;
                this.f617s = 32;
                break;
        }
    }
}
