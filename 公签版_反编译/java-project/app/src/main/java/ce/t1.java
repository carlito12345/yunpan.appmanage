package ce;

/* loaded from: classes.dex */
public final class t1 extends i0 {
    public final int M0;

    public t1(String str, int i10) {
        this.Y = str;
        this.M0 = i10;
        this.f3114c = (byte) 37;
        this.X = (byte) 35;
        this.T = -1;
        this.R = 6;
        this.S = 1;
        this.V = 2;
    }

    @Override // ce.i0, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("TransPeekNamedPipe[");
        sb2.append(super.toString());
        sb2.append(",pipeName=");
        return new String(g.b.l(this.Y, "]", sb2));
    }

    @Override // ce.i0
    public final int v(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ce.i0
    public final int w(byte[] bArr) {
        return 0;
    }

    @Override // ce.i0
    public final int x(int i10, byte[] bArr) {
        bArr[i10] = this.X;
        bArr[i10 + 1] = 0;
        q.q(this.M0, bArr, i10 + 2);
        return 4;
    }
}
