package yh;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes3.dex */
public final class a0 extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public xg.b f19203a;

    /* renamed from: b, reason: collision with root package name */
    public final b f19204b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19205c;

    /* renamed from: d, reason: collision with root package name */
    public final ai.a f19206d;

    /* renamed from: e, reason: collision with root package name */
    public final bi.a f19207e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f19208f;

    /* renamed from: g, reason: collision with root package name */
    public g f19209g;

    /* renamed from: h, reason: collision with root package name */
    public final ci.a f19210h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f19211i;

    /* renamed from: j, reason: collision with root package name */
    public IOException f19212j;

    /* renamed from: k, reason: collision with root package name */
    public final byte[] f19213k;

    public a0(xg.b bVar, int i10, b bVar2) throws IOException {
        bi.a cVar;
        byte[] bArr = new byte[12];
        new DataInputStream(bVar).readFully(bArr);
        this.f19209g = null;
        this.f19210h = new ci.a();
        this.f19211i = false;
        this.f19212j = null;
        this.f19213k = new byte[1];
        this.f19204b = bVar2;
        this.f19203a = bVar;
        this.f19205c = i10;
        this.f19208f = true;
        for (int i11 = 0; i11 < 6; i11++) {
            if (bArr[i11] != d0.f19226a[i11]) {
                throw new e0();
            }
        }
        if (!qf.c.F(6, 2, 8, bArr)) {
            throw new h("XZ Stream Header is corrupt");
        }
        try {
            ai.a aVarI = qf.c.i(6, bArr);
            this.f19206d = aVarI;
            int i12 = aVarI.f717a;
            if (i12 == 0) {
                cVar = new zh.c();
            } else if (i12 == 1) {
                cVar = new zh.a(0);
            } else {
                if (i12 != 4) {
                    if (i12 == 10) {
                        try {
                            cVar = new zh.a(1);
                        } catch (NoSuchAlgorithmException unused) {
                        }
                    }
                    throw new c0(da.b.a(i12, "Unsupported Check ID "));
                }
                cVar = new zh.b();
            }
            this.f19207e = cVar;
        } catch (c0 unused2) {
            throw new c0("Unsupported options in XZ Stream Header");
        }
    }

    public final void A() throws IOException {
        byte[] bArr = new byte[12];
        new DataInputStream(this.f19203a).readFully(bArr);
        byte b10 = bArr[10];
        byte[] bArr2 = d0.f19227b;
        if (b10 != bArr2[0] || bArr[11] != bArr2[1]) {
            throw new h("XZ Stream Footer is corrupt");
        }
        if (!qf.c.F(4, 6, 0, bArr)) {
            throw new h("XZ Stream Footer is corrupt");
        }
        try {
            ai.a aVarI = qf.c.i(8, bArr);
            aVarI.f718b = 0L;
            for (int i10 = 0; i10 < 4; i10++) {
                aVarI.f718b |= (bArr[i10 + 4] & 255) << (i10 * 8);
            }
            aVarI.f718b = (aVarI.f718b + 1) * 4;
            if (this.f19206d.f717a == aVarI.f717a) {
                if (((qf.c.C(r0.f3262e) + 1 + this.f19210h.f3261d + 7) & (-4)) == aVarI.f718b) {
                    return;
                }
            }
            throw new h("XZ Stream Footer does not match Stream Header");
        } catch (c0 unused) {
            throw new c0("Unsupported options in XZ Stream Footer");
        }
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        if (this.f19203a == null) {
            throw new f0("Stream closed");
        }
        IOException iOException = this.f19212j;
        if (iOException != null) {
            throw iOException;
        }
        g gVar = this.f19209g;
        if (gVar == null) {
            return 0;
        }
        return gVar.f19233c.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        r(true);
    }

    public final void r(boolean z) throws IOException {
        if (this.f19203a != null) {
            g gVar = this.f19209g;
            if (gVar != null) {
                gVar.close();
                this.f19209g = null;
            }
            if (z) {
                try {
                    this.f19203a.close();
                } finally {
                    this.f19203a = null;
                }
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f19213k;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i10 < 0 || i11 < 0 || (i12 = i10 + i11) < 0 || i12 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i13 = 0;
        if (i11 == 0) {
            return 0;
        }
        if (this.f19203a == null) {
            throw new f0("Stream closed");
        }
        IOException iOException = this.f19212j;
        if (iOException != null) {
            throw iOException;
        }
        if (this.f19211i) {
            return -1;
        }
        while (i11 > 0) {
            try {
                g gVar = this.f19209g;
                ci.a aVar = this.f19210h;
                if (gVar == null) {
                    try {
                        this.f19209g = new g(this.f19203a, this.f19207e, this.f19208f, this.f19205c, this.f19204b);
                    } catch (r unused) {
                        aVar.b(this.f19203a);
                        A();
                        this.f19211i = true;
                        if (i13 > 0) {
                            return i13;
                        }
                        return -1;
                    }
                }
                int i14 = this.f19209g.read(bArr, i10, i11);
                if (i14 > 0) {
                    i13 += i14;
                    i10 += i14;
                    i11 -= i14;
                } else if (i14 == -1) {
                    g gVar2 = this.f19209g;
                    aVar.a(gVar2.f19239i + gVar2.f19232b.f19242a + gVar2.f19234d.f2818a, gVar2.f19240j);
                    this.f19209g = null;
                }
            } catch (IOException e7) {
                this.f19212j = e7;
                if (i13 == 0) {
                    throw e7;
                }
            }
        }
        return i13;
    }
}
