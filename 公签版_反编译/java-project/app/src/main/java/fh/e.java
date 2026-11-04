package fh;

import java.io.BufferedOutputStream;
import java.io.FilterOutputStream;

/* loaded from: classes.dex */
public final class e extends FilterOutputStream {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5894a;

    public e(BufferedOutputStream bufferedOutputStream) {
        super(bufferedOutputStream);
        this.f5894a = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i10, int i11) {
        while (true) {
            int i12 = i11 - 1;
            if (i11 > 0) {
                int i13 = i10 + 1;
                write(bArr[i10]);
                i10 = i13;
                i11 = i12;
            }
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final synchronized void write(int i10) {
        if (i10 != 10) {
            if (i10 == 13) {
                this.f5894a = true;
                ((FilterOutputStream) this).out.write(13);
                return;
            }
        } else if (!this.f5894a) {
            ((FilterOutputStream) this).out.write(13);
        }
        this.f5894a = false;
        ((FilterOutputStream) this).out.write(i10);
    }
}
