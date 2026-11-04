package ce;

/* loaded from: classes.dex */
public final class x1 extends v0 {
    public final w0 l;

    /* renamed from: m, reason: collision with root package name */
    public final byte[] f3224m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f3225n;

    public x1(w0 w0Var) {
        super(w0Var, (w0Var.D & (-65281)) | 32);
        this.f3224m = new byte[1];
        this.l = w0Var;
        this.f3225n = (w0Var.D & 1536) == 1536;
    }

    @Override // ce.v0, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.l.b();
    }

    @Override // ce.v0, java.io.OutputStream
    public final void write(int i10) throws r0 {
        byte[] bArr = this.f3224m;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
    }

    @Override // ce.v0, java.io.OutputStream
    public final void write(byte[] bArr) throws r0 {
        write(bArr, 0, bArr.length);
    }

    @Override // ce.v0, java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws r0 {
        if (i11 < 0) {
            i11 = 0;
        }
        w0 w0Var = this.l;
        if ((w0Var.D & 512) == 512) {
            r();
            u1 u1Var = new u1(w0Var.f3189q, bArr, i10, i11);
            if (this.f3225n) {
                u1Var.S = 1024;
            }
            w0Var.F(u1Var, new m1(w0Var));
        }
    }
}
