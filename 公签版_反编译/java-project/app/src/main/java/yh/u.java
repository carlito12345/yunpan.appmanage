package yh;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class u extends p {

    /* renamed from: a, reason: collision with root package name */
    public final b f19274a;

    /* renamed from: b, reason: collision with root package name */
    public q f19275b;

    /* renamed from: c, reason: collision with root package name */
    public di.a f19276c;

    /* renamed from: d, reason: collision with root package name */
    public fi.e f19277d;

    /* renamed from: e, reason: collision with root package name */
    public ei.h f19278e;

    /* renamed from: f, reason: collision with root package name */
    public final int f19279f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f19280g = true;

    /* renamed from: h, reason: collision with root package name */
    public boolean f19281h = true;

    /* renamed from: i, reason: collision with root package name */
    public boolean f19282i = true;

    /* renamed from: j, reason: collision with root package name */
    public int f19283j = 0;

    /* renamed from: k, reason: collision with root package name */
    public boolean f19284k = false;
    public IOException l = null;

    /* renamed from: m, reason: collision with root package name */
    public final byte[] f19285m = new byte[6];

    /* renamed from: n, reason: collision with root package name */
    public final byte[] f19286n = new byte[1];

    public u(q qVar, t tVar, b bVar) {
        ei.h iVar;
        this.f19274a = bVar;
        this.f19275b = qVar;
        fi.e eVar = new fi.e(bVar);
        this.f19277d = eVar;
        int i10 = tVar.f19266a;
        int i11 = 65536 > i10 ? 65536 - i10 : 0;
        int i12 = tVar.f19267b;
        int i13 = tVar.f19268c;
        int i14 = tVar.f19269d;
        int i15 = tVar.f19270e;
        int i16 = tVar.f19271f;
        int i17 = tVar.f19272g;
        int i18 = tVar.f19273h;
        if (i15 == 1) {
            iVar = new ei.i(eVar, i12, i13, i14, i10, i11, i16, i17, i18, bVar);
        } else {
            if (i15 != 2) {
                throw new IllegalArgumentException();
            }
            iVar = new ei.j(eVar, i12, i13, i14, i10, i11, i16, i17, i18, bVar);
        }
        this.f19278e = iVar;
        this.f19276c = iVar.f5027n;
        this.f19279f = (((tVar.f19269d * 5) + tVar.f19268c) * 9) + tVar.f19267b;
    }

    public final void A() throws IOException {
        IOException iOException = this.l;
        if (iOException != null) {
            throw iOException;
        }
        di.a aVar = this.f19276c;
        aVar.f4680h = aVar.f4682j - 1;
        aVar.f4681i = true;
        aVar.h();
        while (this.f19283j > 0) {
            try {
                this.f19278e.b();
                r();
            } catch (IOException e7) {
                this.l = e7;
                throw e7;
            }
        }
        this.f19275b.write(0);
        this.f19284k = true;
        ei.h hVar = this.f19278e;
        b bVar = this.f19274a;
        hVar.f5027n.i(bVar);
        this.f19278e = null;
        this.f19276c = null;
        bVar.c(this.f19277d.f5903q);
        this.f19277d = null;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f19275b != null) {
            if (!this.f19284k) {
                try {
                    A();
                } catch (IOException unused) {
                }
            }
            try {
                this.f19275b.close();
            } catch (IOException e7) {
                if (this.l == null) {
                    this.l = e7;
                }
            }
            this.f19275b = null;
        }
        IOException iOException = this.l;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        IOException iOException = this.l;
        if (iOException != null) {
            throw iOException;
        }
        if (this.f19284k) {
            throw new f0("Stream finished or closed");
        }
        try {
            di.a aVar = this.f19276c;
            aVar.f4680h = aVar.f4682j - 1;
            aVar.h();
            while (this.f19283j > 0) {
                this.f19278e.b();
                r();
            }
            this.f19275b.flush();
        } catch (IOException e7) {
            this.l = e7;
            throw e7;
        }
    }

    public final void r() throws IOException {
        fi.e eVar = this.f19277d;
        eVar.getClass();
        for (int i10 = 0; i10 < 5; i10++) {
            try {
                eVar.t0();
            } catch (IOException unused) {
                throw new Error();
            }
        }
        int i11 = eVar.r;
        ei.h hVar = this.f19278e;
        int i12 = hVar.A;
        int i13 = i11 + 2;
        byte[] bArr = this.f19285m;
        if (i13 < i12) {
            boolean z = this.f19282i;
            int i14 = i12 - 1;
            bArr[0] = (byte) ((z ? this.f19280g ? 224 : 192 : this.f19281h ? CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ : 128) | (i14 >>> 16));
            bArr[1] = (byte) (i14 >>> 8);
            bArr[2] = (byte) i14;
            int i15 = i11 - 1;
            bArr[3] = (byte) (i15 >>> 8);
            bArr[4] = (byte) i15;
            if (z) {
                bArr[5] = (byte) this.f19279f;
                this.f19275b.write(bArr, 0, 6);
            } else {
                this.f19275b.write(bArr, 0, 5);
            }
            fi.e eVar2 = this.f19277d;
            this.f19275b.write(eVar2.f5903q, 0, eVar2.r);
            this.f19282i = false;
            this.f19281h = false;
            this.f19280g = false;
        } else {
            hVar.a();
            i12 = this.f19278e.A;
            int i16 = i12;
            while (i16 > 0) {
                int iMin = Math.min(i16, 65536);
                bArr[0] = (byte) (this.f19280g ? 1 : 2);
                int i17 = iMin - 1;
                bArr[1] = (byte) (i17 >>> 8);
                bArr[2] = (byte) i17;
                this.f19275b.write(bArr, 0, 3);
                di.a aVar = this.f19276c;
                this.f19275b.write(aVar.f4677e, (aVar.f4679g + 1) - i16, iMin);
                i16 -= iMin;
                this.f19280g = false;
            }
            this.f19281h = true;
        }
        this.f19283j -= i12;
        this.f19278e.A = 0;
        this.f19277d.v0();
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IOException {
        byte[] bArr = this.f19286n;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i10 >= 0 && i11 >= 0 && (i12 = i10 + i11) >= 0 && i12 <= bArr.length) {
            IOException iOException = this.l;
            if (iOException == null) {
                if (this.f19284k) {
                    throw new f0("Stream finished or closed");
                }
                while (i11 > 0) {
                    try {
                        int iA = this.f19276c.a(i10, i11, bArr);
                        i10 += iA;
                        i11 -= iA;
                        this.f19283j += iA;
                        if (this.f19278e.b()) {
                            r();
                        }
                    } catch (IOException e7) {
                        this.l = e7;
                        throw e7;
                    }
                }
                return;
            }
            throw iOException;
        }
        throw new IndexOutOfBoundsException();
    }
}
