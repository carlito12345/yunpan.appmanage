package fg;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class h extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5850a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f5851b;

    public /* synthetic */ h(k kVar, int i10) {
        this.f5850a = i10;
        this.f5851b = kVar;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        switch (this.f5850a) {
            case 0:
                return (int) Math.min(((i) this.f5851b).f5853b, Integer.MAX_VALUE);
            default:
                t tVar = (t) this.f5851b;
                if (tVar.f5874c) {
                    throw new IOException("closed");
                }
                return (int) Math.min(tVar.f5873b.f5853b, Integer.MAX_VALUE);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        switch (this.f5850a) {
            case 0:
                break;
            default:
                ((t) this.f5851b).close();
                break;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        switch (this.f5850a) {
            case 0:
                i iVar = (i) this.f5851b;
                if (iVar.f5853b > 0) {
                    return iVar.readByte() & 255;
                }
                return -1;
            default:
                t tVar = (t) this.f5851b;
                if (tVar.f5874c) {
                    throw new IOException("closed");
                }
                i iVar2 = tVar.f5873b;
                if (iVar2.f5853b == 0 && tVar.f5872a.read(iVar2, 8192L) == -1) {
                    return -1;
                }
                return iVar2.readByte() & 255;
        }
    }

    public final String toString() {
        switch (this.f5850a) {
            case 0:
                return ((i) this.f5851b) + ".inputStream()";
            default:
                return ((t) this.f5851b) + ".inputStream()";
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        switch (this.f5850a) {
            case 0:
                ue.d.e(bArr, "sink");
                return ((i) this.f5851b).read(bArr, i10, i11);
            default:
                ue.d.e(bArr, "data");
                t tVar = (t) this.f5851b;
                if (!tVar.f5874c) {
                    e0.d(bArr.length, i10, i11);
                    i iVar = tVar.f5873b;
                    if (iVar.f5853b == 0 && tVar.f5872a.read(iVar, 8192L) == -1) {
                        return -1;
                    }
                    return iVar.read(bArr, i10, i11);
                }
                throw new IOException("closed");
        }
    }

    private final void r() {
    }
}
