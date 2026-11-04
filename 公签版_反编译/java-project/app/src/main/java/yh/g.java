package yh;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class g extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final DataInputStream f19231a;

    /* renamed from: b, reason: collision with root package name */
    public final i f19232b;

    /* renamed from: c, reason: collision with root package name */
    public InputStream f19233c;

    /* renamed from: d, reason: collision with root package name */
    public final bi.a f19234d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f19235e;

    /* renamed from: f, reason: collision with root package name */
    public final long f19236f;

    /* renamed from: g, reason: collision with root package name */
    public final long f19237g;

    /* renamed from: h, reason: collision with root package name */
    public final long f19238h;

    /* renamed from: i, reason: collision with root package name */
    public final int f19239i;

    /* renamed from: j, reason: collision with root package name */
    public long f19240j = 0;

    /* renamed from: k, reason: collision with root package name */
    public boolean f19241k = false;
    public final byte[] l = new byte[1];

    public g(xg.b bVar, bi.a aVar, boolean z, int i10, b bVar2) throws IOException, r {
        int i11;
        this.f19236f = -1L;
        this.f19237g = -1L;
        this.f19234d = aVar;
        this.f19235e = z;
        DataInputStream dataInputStream = new DataInputStream(bVar);
        this.f19231a = dataInputStream;
        int unsignedByte = dataInputStream.readUnsignedByte();
        if (unsignedByte == 0) {
            throw new r();
        }
        int i12 = (unsignedByte + 1) * 4;
        this.f19239i = i12;
        byte[] bArr = new byte[i12];
        bArr[0] = (byte) unsignedByte;
        dataInputStream.readFully(bArr, 1, i12 - 1);
        int i13 = i12 - 4;
        if (!qf.c.F(0, i13, i13, bArr)) {
            throw new h("XZ Block Header is corrupt");
        }
        int i14 = bArr[1];
        if ((i14 & 60) != 0) {
            throw new c0("Unsupported options in XZ Block Header");
        }
        int i15 = i14 & 3;
        int i16 = i15 + 1;
        long[] jArr = new long[i16];
        byte[][] bArr2 = new byte[i16][];
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, 2, i12 - 6);
        try {
            long j10 = (9223372036854775804L - i12) - aVar.f2818a;
            this.f19238h = j10;
            if ((bArr[1] & 64) != 0) {
                i11 = i15;
                long jK = qf.c.k(byteArrayInputStream);
                this.f19237g = jK;
                if (jK == 0 || jK > j10) {
                    throw new h();
                }
                this.f19238h = jK;
            } else {
                i11 = i15;
            }
            if ((bArr[1] & 128) != 0) {
                this.f19236f = qf.c.k(byteArrayInputStream);
            }
            for (int i17 = 0; i17 < i16; i17++) {
                jArr[i17] = qf.c.k(byteArrayInputStream);
                long jK2 = qf.c.k(byteArrayInputStream);
                if (jK2 > byteArrayInputStream.available()) {
                    throw new h();
                }
                byte[] bArr3 = new byte[(int) jK2];
                bArr2[i17] = bArr3;
                byteArrayInputStream.read(bArr3);
            }
            for (int iAvailable = byteArrayInputStream.available(); iAvailable > 0; iAvailable--) {
                if (byteArrayInputStream.read() != 0) {
                    throw new c0("Unsupported options in XZ Block Header");
                }
            }
            n[] nVarArr = new n[i16];
            for (int i18 = 0; i18 < i16; i18++) {
                long j11 = jArr[i18];
                if (j11 == 33) {
                    nVarArr[i18] = new androidx.leanback.widget.i(bArr2[i18], 12);
                } else if (j11 == 3) {
                    nVarArr[i18] = new androidx.leanback.widget.i(bArr2[i18], 11);
                } else {
                    if (j11 < 4 || j11 > 11) {
                        throw new c0("Unknown Filter ID " + jArr[i18]);
                    }
                    byte[] bArr4 = bArr2[i18];
                    ai.a aVar2 = new ai.a(6);
                    aVar2.f718b = j11;
                    if (bArr4.length == 0) {
                        aVar2.f717a = 0;
                    } else {
                        if (bArr4.length != 4) {
                            throw new c0("Unsupported BCJ filter properties");
                        }
                        int i19 = 0;
                        for (int i20 = 0; i20 < 4; i20++) {
                            i19 |= (bArr4[i20] & 255) << (i20 * 8);
                        }
                        aVar2.f717a = i19;
                    }
                    nVarArr[i18] = aVar2;
                }
            }
            int i21 = 0;
            while (true) {
                int i22 = i11;
                if (i21 >= i22) {
                    if (!nVarArr[i22].e()) {
                        throw new c0("Unsupported XZ filter chain");
                    }
                    int i23 = 0;
                    for (int i24 = 0; i24 < i16; i24++) {
                        if (nVarArr[i24].h()) {
                            i23++;
                        }
                    }
                    if (i23 > 3) {
                        throw new c0("Unsupported XZ filter chain");
                    }
                    if (i10 >= 0) {
                        int iF = 0;
                        for (int i25 = 0; i25 < i16; i25++) {
                            iF += nVarArr[i25].f();
                        }
                        if (iF > i10) {
                            throw new x(iF, i10);
                        }
                    }
                    i iVar = new i(bVar);
                    this.f19232b = iVar;
                    this.f19233c = iVar;
                    for (int i26 = i22; i26 >= 0; i26--) {
                        this.f19233c = nVarArr[i26].c(this.f19233c, bVar2);
                    }
                    return;
                }
                if (!nVarArr[i21].b()) {
                    throw new c0("Unsupported XZ filter chain");
                }
                i21++;
                i11 = i22;
            }
        } catch (IOException unused) {
            throw new h("XZ Block Header is corrupt");
        }
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f19233c.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            this.f19233c.close();
        } catch (IOException unused) {
        }
        this.f19233c = null;
    }

    public final void r() throws IOException {
        long j10 = this.f19232b.f19242a;
        long j11 = this.f19237g;
        if (j11 == -1 || j11 == j10) {
            long j12 = this.f19236f;
            if (j12 == -1 || j12 == this.f19240j) {
                while (true) {
                    long j13 = 1 + j10;
                    long j14 = j10 & 3;
                    DataInputStream dataInputStream = this.f19231a;
                    if (j14 == 0) {
                        bi.a aVar = this.f19234d;
                        byte[] bArr = new byte[aVar.f2818a];
                        dataInputStream.readFully(bArr);
                        if (!this.f19235e || Arrays.equals(aVar.a(), bArr)) {
                            return;
                        }
                        throw new h(g.b.l((String) aVar.f2819b, ") does not match", new StringBuilder("Integrity check (")));
                    }
                    if (dataInputStream.readUnsignedByte() != 0) {
                        throw new h();
                    }
                    j10 = j13;
                }
            }
        }
        throw new h();
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.l;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f19241k) {
            return -1;
        }
        int i12 = this.f19233c.read(bArr, i10, i11);
        if (i12 > 0) {
            if (this.f19235e) {
                this.f19234d.b(bArr, i10, i12);
            }
            long j10 = this.f19240j + i12;
            this.f19240j = j10;
            long j11 = this.f19232b.f19242a;
            if (j11 >= 0 && j11 <= this.f19238h && j10 >= 0) {
                long j12 = this.f19236f;
                if (j12 == -1 || j10 <= j12) {
                    if (i12 < i11 || j10 == j12) {
                        if (this.f19233c.read() != -1) {
                            throw new h();
                        }
                        r();
                        this.f19241k = true;
                    }
                }
            }
            throw new h();
        }
        if (i12 == -1) {
            r();
            this.f19241k = true;
        }
        return i12;
    }
}
