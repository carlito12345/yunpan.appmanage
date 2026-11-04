package ce;

/* loaded from: classes.dex */
public final class u1 extends i0 {
    public final byte[] M0;
    public final int N0;
    public final int O0;
    public final int P0;

    public u1(int i10, byte[] bArr, int i11, int i12) {
        this.N0 = i10;
        this.M0 = bArr;
        this.O0 = i11;
        this.P0 = i12;
        this.f3114c = (byte) 37;
        this.X = (byte) 38;
        this.R = 0;
        this.S = 65535;
        this.V = 2;
        this.Y = "\\PIPE\\";
    }

    @Override // ce.i0, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("TransTransactNamedPipe[");
        sb2.append(super.toString());
        sb2.append(",pipeFid=");
        return new String(android.support.v4.media.session.a.s(sb2, this.N0, "]"));
    }

    @Override // ce.i0
    public final int v(int i10, byte[] bArr) {
        int length = bArr.length - i10;
        int i11 = this.P0;
        if (length >= i11) {
            System.arraycopy(this.M0, this.O0, bArr, i10, i11);
            return i11;
        }
        if (de.d.f4630b < 3) {
            return 0;
        }
        q.A.getClass();
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
        q.q(this.N0, bArr, i10 + 2);
        return 4;
    }
}
