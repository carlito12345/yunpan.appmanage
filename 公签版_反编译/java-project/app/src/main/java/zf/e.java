package zf;

import java.io.IOException;
import java.util.zip.Deflater;

/* loaded from: classes.dex */
public final class e extends c {

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f19553b;

    /* renamed from: c, reason: collision with root package name */
    public final Deflater f19554c;

    public e(b bVar, int i10) {
        super(bVar);
        this.f19554c = new Deflater(d0.f.c(i10), true);
        this.f19553b = new byte[4096];
    }

    @Override // zf.c
    public final void r() throws IOException {
        Deflater deflater = this.f19554c;
        if (!deflater.finished()) {
            deflater.finish();
            while (!deflater.finished()) {
                Deflater deflater2 = this.f19554c;
                byte[] bArr = this.f19553b;
                int iDeflate = deflater2.deflate(bArr, 0, bArr.length);
                if (iDeflate > 0) {
                    super.write(bArr, 0, iDeflate);
                }
            }
        }
        deflater.end();
        super.r();
    }

    @Override // zf.c, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // zf.c, java.io.OutputStream
    public final void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    @Override // zf.c, java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        Deflater deflater = this.f19554c;
        deflater.setInput(bArr, i10, i11);
        while (!deflater.needsInput()) {
            Deflater deflater2 = this.f19554c;
            byte[] bArr2 = this.f19553b;
            int iDeflate = deflater2.deflate(bArr2, 0, bArr2.length);
            if (iDeflate > 0) {
                super.write(bArr2, 0, iDeflate);
            }
        }
    }
}
