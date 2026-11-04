package yf;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.zip.CRC32;

/* loaded from: classes.dex */
public final class j extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final PushbackInputStream f19179a;

    /* renamed from: b, reason: collision with root package name */
    public c f19180b;

    /* renamed from: c, reason: collision with root package name */
    public final s4.a f19181c;

    /* renamed from: d, reason: collision with root package name */
    public final char[] f19182d;

    /* renamed from: e, reason: collision with root package name */
    public ag.g f19183e;

    /* renamed from: f, reason: collision with root package name */
    public final CRC32 f19184f;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f19185g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f19186h;

    /* renamed from: i, reason: collision with root package name */
    public final ag.h f19187i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f19188j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f19189k;

    public j(FileInputStream fileInputStream, char[] cArr) {
        this(fileInputStream, cArr, new ag.h(true));
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0207  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ag.g A(ag.f fVar, boolean z) throws IOException {
        String str;
        boolean z4;
        int i10;
        List list;
        String str2;
        ag.g gVar;
        String str3;
        int i11;
        List listEmptyList;
        int i12;
        int iH;
        int i13;
        long j10;
        b eVar;
        byte[] bArr;
        if (this.f19183e != null && z) {
            if (this.f19185g == null) {
                this.f19185g = new byte[512];
            }
            do {
                bArr = this.f19185g;
            } while (read(bArr, 0, bArr.length) != -1);
            this.f19189k = true;
        }
        PushbackInputStream pushbackInputStream = this.f19179a;
        ag.h hVar = this.f19187i;
        hVar.getClass();
        s4.a aVar = this.f19181c;
        aVar.getClass();
        ag.g gVar2 = new ag.g();
        byte[] bArr2 = new byte[4];
        v3.f fVar2 = (v3.f) aVar.f14294c;
        int I = fVar2.I(pushbackInputStream);
        if (I == 808471376) {
            I = fVar2.I(pushbackInputStream);
        }
        long j11 = -1;
        if (I != 67324752) {
            str2 = "\\";
            str3 = "/";
            gVar = null;
            i11 = 2;
            gVar2 = null;
        } else {
            gVar2.f567b = 1;
            byte[] bArr3 = (byte[]) fVar2.f16474b;
            v3.f.G(pushbackInputStream, bArr3, bArr3.length);
            gVar2.f649c = v3.f.K(0, bArr3);
            byte[] bArr4 = new byte[2];
            if (eg.c.j(pushbackInputStream, bArr4) != 2) {
                throw new wf.a("Could not read enough bytes for generalPurposeFlags");
            }
            gVar2.l = eg.c.g(bArr4[0], 0);
            gVar2.f659n = eg.c.g(bArr4[0], 3);
            gVar2.r = eg.c.g(bArr4[1], 3);
            gVar2.f650d = (byte[]) bArr4.clone();
            v3.f.G(pushbackInputStream, bArr3, bArr3.length);
            gVar2.f651e = android.support.v4.media.session.a.c(v3.f.K(0, bArr3));
            gVar2.f652f = fVar2.I(pushbackInputStream);
            eg.c.j(pushbackInputStream, bArr2);
            gVar2.f653g = fVar2.J(0, bArr2);
            byte[] bArr5 = (byte[]) fVar2.f16476d;
            Arrays.fill(bArr5, (byte) 0);
            v3.f.G(pushbackInputStream, bArr5, 4);
            gVar2.f654h = fVar2.J(0, bArr5);
            Arrays.fill(bArr5, (byte) 0);
            v3.f.G(pushbackInputStream, bArr5, 4);
            gVar2.f655i = fVar2.J(0, bArr5);
            v3.f.G(pushbackInputStream, bArr3, bArr3.length);
            int iK = v3.f.K(0, bArr3);
            v3.f.G(pushbackInputStream, bArr3, bArr3.length);
            gVar2.f656j = v3.f.K(0, bArr3);
            if (iK <= 0) {
                throw new wf.a("Invalid entry name in local file header");
            }
            byte[] bArr6 = new byte[iK];
            eg.c.j(pushbackInputStream, bArr6);
            String strJ = qf.c.j(bArr6, gVar2.r, null);
            gVar2.f657k = strJ;
            if (strJ.endsWith("/")) {
                str = "\\";
            } else {
                str = "\\";
                if (!strJ.endsWith(str)) {
                    z4 = false;
                }
                gVar2.f663t = z4;
                i10 = gVar2.f656j;
                if (i10 > 0) {
                    if (i10 < 4) {
                        if (i10 > 0) {
                            pushbackInputStream.skip(i10);
                        }
                        listEmptyList = null;
                    } else {
                        byte[] bArr7 = new byte[i10];
                        eg.c.j(pushbackInputStream, bArr7);
                        try {
                            listEmptyList = aVar.k(i10, bArr7);
                        } catch (Exception unused) {
                            listEmptyList = Collections.emptyList();
                        }
                    }
                    gVar2.f662s = listEmptyList;
                }
                list = gVar2.f662s;
                if (list != null || list.size() <= 0) {
                    str2 = str;
                    gVar = null;
                    str3 = "/";
                    i11 = 2;
                } else {
                    str2 = str;
                    i11 = 2;
                    str3 = "/";
                    gVar = null;
                    ag.k kVarQ = s4.a.q(gVar2.f662s, fVar2, gVar2.f655i, gVar2.f654h, 0L, 0);
                    if (kVarQ != null) {
                        gVar2.f660p = kVarQ;
                        long j12 = kVarQ.f694d;
                        if (j12 != -1) {
                            gVar2.f655i = j12;
                        }
                        long j13 = kVarQ.f693c;
                        if (j13 != -1) {
                            gVar2.f654h = j13;
                        }
                    }
                }
                s4.a.n(gVar2, fVar2);
                if (gVar2.l && gVar2.f658m != 4) {
                    if (eg.c.g(gVar2.f650d[0], 6)) {
                        gVar2.f658m = i11;
                    } else {
                        gVar2.f658m = 3;
                    }
                }
            }
            z4 = true;
            gVar2.f663t = z4;
            i10 = gVar2.f656j;
            if (i10 > 0) {
            }
            list = gVar2.f662s;
            if (list != null) {
                str2 = str;
                gVar = null;
                str3 = "/";
                i11 = 2;
                s4.a.n(gVar2, fVar2);
                if (gVar2.l) {
                    if (eg.c.g(gVar2.f650d[0], 6)) {
                    }
                }
            }
        }
        this.f19183e = gVar2;
        if (gVar2 == null) {
            return gVar;
        }
        String str4 = gVar2.f657k;
        if (!str4.endsWith(str3) && !str4.endsWith(str2) && gVar2.f651e == 1 && gVar2.f655i < 0) {
            throw new IOException(g.b.l(gVar2.f657k, ". Uncompressed size has to be set for entry of compression type store which is not a directory", new StringBuilder("Invalid local file header for: ")));
        }
        this.f19184f.reset();
        if (fVar != null) {
            ag.g gVar3 = this.f19183e;
            gVar3.f653g = fVar.f653g;
            gVar3.f654h = fVar.f654h;
            gVar3.f655i = fVar.f655i;
            gVar3.f663t = fVar.f663t;
            i12 = 1;
            this.f19186h = true;
        } else {
            i12 = 1;
            this.f19186h = false;
        }
        ag.g gVar4 = this.f19183e;
        if (d0.f.a(eg.c.f(gVar4), i12)) {
            j10 = gVar4.f655i;
        } else {
            if (!gVar4.f659n || this.f19186h) {
                long j14 = gVar4.f654h;
                if (gVar4.l) {
                    if (d0.f.a(gVar4.f658m, 4)) {
                        ag.a aVar2 = gVar4.f661q;
                        if (aVar2 == null || (i13 = aVar2.f647f) == 0) {
                            throw new wf.a("AesExtraDataRecord not found or invalid for Aes encrypted entry");
                        }
                        iH = android.support.v4.media.session.a.h(i13) + 12;
                    } else {
                        iH = d0.f.a(gVar4.f658m, i11) ? 12 : 0;
                    }
                    j11 = j14 - iH;
                }
            }
            j10 = j11;
        }
        i iVar = new i(pushbackInputStream, j10);
        if (gVar4.l) {
            int i14 = gVar4.f658m;
            boolean z10 = hVar.f680a;
            if (i14 == 4) {
                eVar = new a(iVar, gVar4, this.f19182d, z10);
            } else {
                if (i14 != i11) {
                    throw new wf.a(g.b.A("Entry [", gVar4.f657k, "] Strong Encryption not supported"), 0);
                }
                eVar = new e(iVar, gVar4, this.f19182d, z10);
            }
        } else {
            eVar = new e(iVar, gVar4, this.f19182d);
        }
        this.f19180b = eg.c.f(gVar4) == i11 ? new d(eVar) : new h(eVar);
        this.f19189k = false;
        return this.f19183e;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        if (this.f19188j) {
            throw new IOException("Stream closed");
        }
        return !this.f19189k ? 1 : 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f19188j) {
            return;
        }
        c cVar = this.f19180b;
        if (cVar != null) {
            cVar.close();
        }
        this.f19188j = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void r() throws IOException {
        boolean z;
        long J;
        long jI;
        long jI2;
        c cVar = this.f19180b;
        PushbackInputStream pushbackInputStream = this.f19179a;
        this.f19180b.r(pushbackInputStream, cVar.A(pushbackInputStream));
        ag.g gVar = this.f19183e;
        if (gVar.f659n && !this.f19186h) {
            List list = gVar.f662s;
            if (list == null) {
                z = false;
                s4.a aVar = this.f19181c;
                aVar.getClass();
                byte[] bArr = new byte[4];
                eg.c.j(pushbackInputStream, bArr);
                v3.f fVar = (v3.f) aVar.f14294c;
                J = fVar.J(0, bArr);
                if (J == 134695760) {
                    eg.c.j(pushbackInputStream, bArr);
                    J = fVar.J(0, bArr);
                }
                if (z) {
                    jI = fVar.I(pushbackInputStream);
                    jI2 = fVar.I(pushbackInputStream);
                } else {
                    byte[] bArr2 = (byte[]) fVar.f16476d;
                    v3.f.G(pushbackInputStream, bArr2, bArr2.length);
                    jI = fVar.J(0, bArr2);
                    v3.f.G(pushbackInputStream, bArr2, bArr2.length);
                    jI2 = fVar.J(0, bArr2);
                }
                ag.g gVar2 = this.f19183e;
                gVar2.f654h = jI;
                gVar2.f655i = jI2;
                gVar2.f653g = J;
            } else {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (((ag.e) it.next()).f672c == 1) {
                        z = true;
                        break;
                    }
                }
                z = false;
                s4.a aVar2 = this.f19181c;
                aVar2.getClass();
                byte[] bArr3 = new byte[4];
                eg.c.j(pushbackInputStream, bArr3);
                v3.f fVar2 = (v3.f) aVar2.f14294c;
                J = fVar2.J(0, bArr3);
                if (J == 134695760) {
                }
                if (z) {
                }
                ag.g gVar22 = this.f19183e;
                gVar22.f654h = jI;
                gVar22.f655i = jI2;
                gVar22.f653g = J;
            }
        }
        ag.g gVar3 = this.f19183e;
        int i10 = gVar3.f658m;
        CRC32 crc32 = this.f19184f;
        if ((i10 == 4 && d0.f.a(gVar3.f661q.f645d, 2)) || this.f19183e.f653g == crc32.getValue()) {
            this.f19183e = null;
            crc32.reset();
            this.f19189k = true;
        } else {
            ag.g gVar4 = this.f19183e;
            if (gVar4.l) {
                d0.f.a(2, gVar4.f658m);
            }
            throw new wf.a("Reached end of entry, but crc verification failed for " + this.f19183e.f657k, 0);
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = new byte[1];
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    public j(InputStream inputStream, char[] cArr, ag.h hVar) {
        this.f19181c = new s4.a(9);
        this.f19184f = new CRC32();
        this.f19186h = false;
        this.f19188j = false;
        this.f19189k = false;
        this.f19179a = new PushbackInputStream(inputStream, 4096);
        this.f19182d = cArr;
        this.f19187i = hVar;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f19188j) {
            throw new IOException("Stream closed");
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("Negative read length");
        }
        if (i11 == 0) {
            return 0;
        }
        if (this.f19183e == null) {
            return -1;
        }
        try {
            int i12 = this.f19180b.read(bArr, i10, i11);
            if (i12 == -1) {
                r();
            } else {
                this.f19184f.update(bArr, i10, i12);
            }
            return i12;
        } catch (IOException e7) {
            ag.g gVar = this.f19183e;
            if (gVar.l && d0.f.a(2, gVar.f658m)) {
                throw new wf.a(e7.getMessage(), e7.getCause());
            }
            throw e7;
        }
    }
}
