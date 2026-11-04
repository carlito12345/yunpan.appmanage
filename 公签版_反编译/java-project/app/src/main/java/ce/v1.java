package ce;

/* loaded from: classes.dex */
public final class v1 extends i0 {
    public v1(String str) {
        this.Y = str;
        this.f3114c = (byte) 37;
        this.X = (byte) 83;
        this.T = -1;
        this.R = 0;
        this.S = 0;
        this.V = 2;
    }

    @Override // ce.i0, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("TransWaitNamedPipe[");
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
        bArr[i10 + 2] = 0;
        bArr[i10 + 3] = 0;
        return 4;
    }
}
