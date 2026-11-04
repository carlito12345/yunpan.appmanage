package a;

import java.io.OutputStream;
import java.io.PrintStream;

/* loaded from: classes.dex */
public final class c extends b {

    /* renamed from: b, reason: collision with root package name */
    public int f2b;

    /* renamed from: c, reason: collision with root package name */
    public int f3c;

    /* renamed from: d, reason: collision with root package name */
    public int f4d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f5e;

    public c() {
        super(0);
        this.f5e = new byte[16];
    }

    public static void t(PrintStream printStream, byte b10) {
        char c7 = (char) ((b10 >> 4) & 15);
        printStream.write((char) (c7 > '\t' ? c7 + '7' : c7 + '0'));
        char c10 = (char) (b10 & 15);
        printStream.write((char) (c10 > '\t' ? c10 + '7' : c10 + '0'));
    }

    @Override // a.b
    public final void b(byte[] bArr, int i10, int i11, OutputStream outputStream) {
        this.f5e[this.f4d] = bArr[i10];
        t((PrintStream) this.f1a, bArr[i10]);
        ((PrintStream) this.f1a).getClass();
        int i12 = this.f4d + 1;
        this.f4d = i12;
        if (i12 == 8) {
            ((PrintStream) this.f1a).getClass();
        }
    }

    @Override // a.b
    public final void d(OutputStream outputStream) {
        this.f2b = 0;
        super.d(outputStream);
    }

    @Override // a.b
    public final void e(int i10) {
        t((PrintStream) this.f1a, (byte) ((this.f2b >>> 8) & 255));
        t((PrintStream) this.f1a, (byte) (this.f2b & 255));
        ((PrintStream) this.f1a).getClass();
        this.f4d = 0;
        this.f3c = i10;
    }

    @Override // a.b
    public final void f() {
        int i10 = this.f3c;
        if (i10 < 16) {
            while (i10 < 16) {
                ((PrintStream) this.f1a).getClass();
                if (i10 == 7) {
                    ((PrintStream) this.f1a).getClass();
                }
                i10++;
            }
        }
        ((PrintStream) this.f1a).getClass();
        for (int i11 = 0; i11 < this.f3c; i11++) {
            byte b10 = this.f5e[i11];
            if (b10 < 32 || b10 > 122) {
                ((PrintStream) this.f1a).getClass();
            } else {
                ((PrintStream) this.f1a).write(b10);
            }
        }
        ((PrintStream) this.f1a).getClass();
        this.f2b += this.f3c;
    }
}
