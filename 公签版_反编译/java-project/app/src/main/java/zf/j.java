package zf;

import ag.l;
import ag.m;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.util.zip.CRC32;
import ta.q;

/* loaded from: classes.dex */
public final class j extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final d f19559a;

    /* renamed from: b, reason: collision with root package name */
    public final char[] f19560b;

    /* renamed from: c, reason: collision with root package name */
    public final l f19561c;

    /* renamed from: d, reason: collision with root package name */
    public c f19562d;

    /* renamed from: e, reason: collision with root package name */
    public ag.f f19563e;

    /* renamed from: f, reason: collision with root package name */
    public ag.g f19564f;

    /* renamed from: g, reason: collision with root package name */
    public final s9.a f19565g;

    /* renamed from: h, reason: collision with root package name */
    public final s4.a f19566h;

    /* renamed from: i, reason: collision with root package name */
    public final CRC32 f19567i;

    /* renamed from: j, reason: collision with root package name */
    public final v3.f f19568j;

    /* renamed from: k, reason: collision with root package name */
    public long f19569k;
    public final ag.h l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f19570m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f19571n;

    public j(FileOutputStream fileOutputStream, char[] cArr) {
        ag.h hVar = new ag.h(true);
        l lVar = new l();
        this.f19565g = new s9.a(25, false);
        this.f19566h = new s4.a(10);
        this.f19567i = new CRC32();
        this.f19568j = new v3.f((byte) 0, 10);
        this.f19569k = 0L;
        this.f19571n = true;
        this.f19559a = new d(fileOutputStream);
        this.f19560b = cArr;
        this.l = hVar;
        this.f19561c = lVar;
        this.f19570m = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:139:0x02e4 A[Catch: all -> 0x02f6, TryCatch #2 {all -> 0x02f6, blocks: (B:129:0x0293, B:131:0x02cf, B:139:0x02e4, B:143:0x030a, B:145:0x0314, B:147:0x031f, B:151:0x032a, B:153:0x032e, B:154:0x0330, B:156:0x0338, B:158:0x033d, B:159:0x0352, B:161:0x0356, B:162:0x0390, B:142:0x02f8), top: B:207:0x0293 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02f8 A[Catch: all -> 0x02f6, TryCatch #2 {all -> 0x02f6, blocks: (B:129:0x0293, B:131:0x02cf, B:139:0x02e4, B:143:0x030a, B:145:0x0314, B:147:0x031f, B:151:0x032a, B:153:0x032e, B:154:0x0330, B:156:0x0338, B:158:0x033d, B:159:0x0352, B:161:0x0356, B:162:0x0390, B:142:0x02f8), top: B:207:0x0293 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0314 A[Catch: all -> 0x02f6, TryCatch #2 {all -> 0x02f6, blocks: (B:129:0x0293, B:131:0x02cf, B:139:0x02e4, B:143:0x030a, B:145:0x0314, B:147:0x031f, B:151:0x032a, B:153:0x032e, B:154:0x0330, B:156:0x0338, B:158:0x033d, B:159:0x0352, B:161:0x0356, B:162:0x0390, B:142:0x02f8), top: B:207:0x0293 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x032e A[Catch: all -> 0x02f6, TryCatch #2 {all -> 0x02f6, blocks: (B:129:0x0293, B:131:0x02cf, B:139:0x02e4, B:143:0x030a, B:145:0x0314, B:147:0x031f, B:151:0x032a, B:153:0x032e, B:154:0x0330, B:156:0x0338, B:158:0x033d, B:159:0x0352, B:161:0x0356, B:162:0x0390, B:142:0x02f8), top: B:207:0x0293 }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0338 A[Catch: all -> 0x02f6, TryCatch #2 {all -> 0x02f6, blocks: (B:129:0x0293, B:131:0x02cf, B:139:0x02e4, B:143:0x030a, B:145:0x0314, B:147:0x031f, B:151:0x032a, B:153:0x032e, B:154:0x0330, B:156:0x0338, B:158:0x033d, B:159:0x0352, B:161:0x0356, B:162:0x0390, B:142:0x02f8), top: B:207:0x0293 }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x033d A[Catch: all -> 0x02f6, TryCatch #2 {all -> 0x02f6, blocks: (B:129:0x0293, B:131:0x02cf, B:139:0x02e4, B:143:0x030a, B:145:0x0314, B:147:0x031f, B:151:0x032a, B:153:0x032e, B:154:0x0330, B:156:0x0338, B:158:0x033d, B:159:0x0352, B:161:0x0356, B:162:0x0390, B:142:0x02f8), top: B:207:0x0293 }] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0356 A[Catch: all -> 0x02f6, TryCatch #2 {all -> 0x02f6, blocks: (B:129:0x0293, B:131:0x02cf, B:139:0x02e4, B:143:0x030a, B:145:0x0314, B:147:0x031f, B:151:0x032a, B:153:0x032e, B:154:0x0330, B:156:0x0338, B:158:0x033d, B:159:0x0352, B:161:0x0356, B:162:0x0390, B:142:0x02f8), top: B:207:0x0293 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x03d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void A(m mVar) throws IllegalAccessException, NoSuchMethodException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
        char c7;
        int i10;
        int i11;
        int i12;
        ag.h hVar;
        boolean z;
        int i13;
        byte[] bytes;
        Charset charset;
        ag.a aVar;
        int i14;
        b fVar;
        byte bL;
        String str = mVar.f711g;
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException("fileNameInZip is null or empty");
        }
        if (mVar.f705a == 1 && mVar.f713i < 0 && !eg.c.i(mVar.f711g) && mVar.f714j) {
            throw new IllegalArgumentException("uncompressed size should be set for zip entries of compression type store");
        }
        m mVar2 = new m(mVar);
        int i15 = mVar2.f708d;
        if (eg.c.i(mVar.f711g)) {
            mVar2.f714j = false;
            mVar2.f705a = 1;
            mVar2.f707c = false;
            mVar2.f713i = 0L;
        }
        if (mVar.f712h <= 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis < 0) {
                mVar2.f712h = 0L;
            } else {
                mVar2.f712h = jCurrentTimeMillis;
            }
        }
        d dVar = this.f19559a;
        dVar.getClass();
        ag.h hVar2 = this.l;
        hVar2.getClass();
        this.f19565g.getClass();
        ag.f fVar2 = new ag.f();
        fVar2.f567b = 3;
        byte[] bArr = {51, 3};
        if (System.getProperty("os.name").toLowerCase().contains("win")) {
            bArr[1] = 0;
        }
        this.f19568j.getClass();
        fVar2.f675v = v3.f.K(0, bArr);
        char c10 = mVar2.f705a == 2 ? (char) 2 : (char) 1;
        if (mVar2.f713i > 4294967295L) {
            c10 = 3;
        }
        if (mVar2.f707c) {
            c7 = 4;
            if (d0.f.a(i15, 4)) {
                c10 = 4;
            }
        } else {
            c7 = 4;
        }
        if (c10 == 1) {
            i10 = 10;
        } else if (c10 == 2) {
            i10 = 20;
        } else if (c10 == 3) {
            i10 = 45;
        } else {
            if (c10 != c7) {
                throw null;
            }
            i10 = 51;
        }
        fVar2.f649c = i10;
        boolean z4 = mVar2.f707c;
        if (z4 && i15 == 4) {
            fVar2.f651e = 3;
            ag.a aVar2 = new ag.a();
            int i16 = mVar2.f710f;
            if (i16 != 0) {
                aVar2.f645d = i16;
            }
            int i17 = mVar2.f709e;
            if (i17 == 1) {
                aVar2.f647f = 1;
            } else if (i17 == 2) {
                aVar2.f647f = 2;
            } else {
                if (i17 != 3) {
                    throw new wf.a("invalid AES key strength");
                }
                aVar2.f647f = 3;
            }
            aVar2.f648g = mVar2.f705a;
            fVar2.f661q = aVar2;
            fVar2.f656j += 11;
        } else {
            fVar2.f651e = mVar2.f705a;
        }
        if (z4) {
            if (i15 == 0 || i15 == 1) {
                throw new wf.a("Encryption method has to be set when encryptFiles flag is set in zip parameters");
            }
            fVar2.l = true;
            fVar2.f658m = i15;
        }
        String str2 = mVar2.f711g;
        if (!eg.c.h(str2)) {
            throw new wf.a("fileNameInZip is null or empty");
        }
        fVar2.f657k = str2;
        Charset charset2 = eg.d.f4975c;
        int length = str2.getBytes(charset2).length;
        fVar2.f676w = 0;
        fVar2.f652f = eg.c.d(mVar2.f712h);
        boolean zI = eg.c.i(str2);
        fVar2.f663t = zI;
        byte[] bArr2 = new byte[4];
        if (System.getProperty("os.name").toLowerCase().contains("nux") || System.getProperty("os.name").toLowerCase().contains("mac")) {
            if (zI) {
                System.arraycopy(eg.c.f4972b, 0, bArr2, 0, 4);
            } else {
                System.arraycopy(eg.c.f4971a, 0, bArr2, 0, 4);
            }
        } else if (System.getProperty("os.name").toLowerCase().contains("win") && zI) {
            bArr2[0] = eg.c.l(bArr2[0], 4);
        }
        fVar2.f677x = bArr2;
        if (mVar2.f714j && mVar2.f713i == -1) {
            fVar2.f655i = 0L;
        } else {
            fVar2.f655i = mVar2.f713i;
        }
        if (mVar2.f707c && i15 == 2) {
            fVar2.f653g = 0L;
        }
        byte[] bArr3 = new byte[2];
        byte bL2 = fVar2.l ? eg.c.l((byte) 0, 0) : (byte) 0;
        if (d0.f.a(2, mVar2.f705a)) {
            if (d0.f.a(6, mVar2.f706b)) {
                bL = (byte) (bL2 & (-3));
            } else if (d0.f.a(8, mVar2.f706b)) {
                bL = eg.c.l(bL2, 1);
            } else if (d0.f.a(4, mVar2.f706b)) {
                bL2 = eg.c.l((byte) (bL2 & (-3)), 2);
            } else if (d0.f.a(2, mVar2.f706b) || d0.f.a(10, mVar2.f706b)) {
                bL2 = eg.c.l(eg.c.l(bL2, 1), 2);
            }
            bL2 = (byte) (bL & (-5));
        }
        if (mVar2.f714j) {
            i11 = 3;
            bL2 = eg.c.l(bL2, 3);
        } else {
            i11 = 3;
        }
        bArr3[0] = bL2;
        bArr3[1] = eg.c.l(bArr3[1], i11);
        fVar2.f650d = bArr3;
        fVar2.f659n = mVar2.f714j;
        fVar2.z = null;
        this.f19563e = fVar2;
        fVar2.f678y = dVar.f19552b;
        ag.g gVar = new ag.g();
        gVar.f567b = 1;
        gVar.f649c = fVar2.f649c;
        gVar.f651e = fVar2.f651e;
        gVar.f652f = fVar2.f652f;
        gVar.f655i = fVar2.f655i;
        gVar.f657k = fVar2.f657k;
        gVar.l = fVar2.l;
        gVar.f658m = fVar2.f658m;
        gVar.f661q = fVar2.f661q;
        gVar.f653g = fVar2.f653g;
        gVar.f654h = fVar2.f654h;
        gVar.f650d = (byte[]) bArr3.clone();
        gVar.f659n = fVar2.f659n;
        gVar.f656j = fVar2.f656j;
        this.f19564f = gVar;
        l lVar = this.f19561c;
        s4.a aVar3 = this.f19566h;
        byte[] bArr4 = (byte[]) aVar3.f14294c;
        v3.f fVar3 = (v3.f) aVar3.f14293b;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            fVar3.U(byteArrayOutputStream, (int) q.e(gVar.f567b));
            fVar3.X(byteArrayOutputStream, gVar.f649c);
            byteArrayOutputStream.write(gVar.f650d);
            fVar3.X(byteArrayOutputStream, android.support.v4.media.session.a.d(gVar.f651e));
            v3.f.W(bArr4, gVar.f652f);
            byteArrayOutputStream.write(bArr4, 0, 4);
            v3.f.W(bArr4, gVar.f653g);
            byteArrayOutputStream.write(bArr4, 0, 4);
            long j10 = gVar.f654h;
            if (j10 < 4294967295L) {
                i12 = i15;
                hVar = hVar2;
                if (gVar.f655i < 4294967295L) {
                    z = false;
                    if (z) {
                        v3.f.W(bArr4, j10);
                        i13 = 0;
                        byteArrayOutputStream.write(bArr4, 0, 4);
                        v3.f.W(bArr4, gVar.f655i);
                        byteArrayOutputStream.write(bArr4, 0, 4);
                        gVar.f679v = false;
                    } else {
                        v3.f.W(bArr4, 4294967295L);
                        byteArrayOutputStream.write(bArr4, 0, 4);
                        byteArrayOutputStream.write(bArr4, 0, 4);
                        lVar.f704h = true;
                        gVar.f679v = true;
                        i13 = 0;
                    }
                    bytes = new byte[i13];
                    if (eg.c.h(gVar.f657k)) {
                        charset = charset2;
                    } else {
                        charset = charset2;
                        bytes = gVar.f657k.getBytes(charset);
                    }
                    fVar3.X(byteArrayOutputStream, bytes.length);
                    int i18 = !z ? 20 : 0;
                    if (gVar.f661q != null) {
                        i18 += 11;
                    }
                    fVar3.X(byteArrayOutputStream, i18);
                    if (bytes.length > 0) {
                        byteArrayOutputStream.write(bytes);
                    }
                    if (z) {
                        fVar3.X(byteArrayOutputStream, (int) 1);
                        fVar3.X(byteArrayOutputStream, 16);
                        fVar3.V(byteArrayOutputStream, gVar.f655i);
                        fVar3.V(byteArrayOutputStream, gVar.f654h);
                    }
                    aVar = gVar.f661q;
                    if (aVar != null) {
                        fVar3.X(byteArrayOutputStream, (int) q.e(aVar.f567b));
                        fVar3.X(byteArrayOutputStream, aVar.f644c);
                        fVar3.X(byteArrayOutputStream, android.support.v4.media.session.a.i(aVar.f645d));
                        byteArrayOutputStream.write(aVar.f646e.getBytes(charset));
                        byteArrayOutputStream.write(new byte[]{(byte) android.support.v4.media.session.a.g(aVar.f647f)});
                        fVar3.X(byteArrayOutputStream, android.support.v4.media.session.a.d(aVar.f648g));
                    }
                    dVar.write(byteArrayOutputStream.toByteArray());
                    byteArrayOutputStream.close();
                    i iVar = new i(dVar);
                    if (mVar2.f707c) {
                        fVar = new f(iVar, mVar2);
                    } else {
                        char[] cArr = this.f19560b;
                        if (cArr == null || cArr.length == 0) {
                            throw new wf.a("password not set");
                        }
                        boolean z10 = hVar.f680a;
                        if (i12 != 4) {
                            i14 = 2;
                            if (i12 != 2) {
                                if (i12 != 3) {
                                    throw new wf.a("Invalid encryption method");
                                }
                                throw new wf.a("ZIP_STANDARD_VARIANT_STRONG".concat(" encryption method is not supported"));
                            }
                            fVar = new f(iVar, mVar2, cArr, z10);
                            this.f19562d = mVar2.f705a == i14 ? new e(fVar, mVar2.f706b) : new h(fVar);
                            this.f19571n = false;
                        }
                        fVar = new a(iVar, mVar2, cArr, z10);
                    }
                    i14 = 2;
                    this.f19562d = mVar2.f705a == i14 ? new e(fVar, mVar2.f706b) : new h(fVar);
                    this.f19571n = false;
                }
            } else {
                i12 = i15;
                hVar = hVar2;
            }
            z = true;
            if (z) {
            }
            bytes = new byte[i13];
            if (eg.c.h(gVar.f657k)) {
            }
            fVar3.X(byteArrayOutputStream, bytes.length);
            if (!z) {
            }
            if (gVar.f661q != null) {
            }
            fVar3.X(byteArrayOutputStream, i18);
            if (bytes.length > 0) {
            }
            if (z) {
            }
            aVar = gVar.f661q;
            if (aVar != null) {
            }
            dVar.write(byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.close();
            i iVar2 = new i(dVar);
            if (mVar2.f707c) {
            }
            i14 = 2;
            this.f19562d = mVar2.f705a == i14 ? new e(fVar, mVar2.f706b) : new h(fVar);
            this.f19571n = false;
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039 A[Catch: all -> 0x0060, TryCatch #0 {all -> 0x0060, blocks: (B:6:0x0024, B:8:0x002b, B:10:0x002f, B:14:0x003e, B:18:0x0052, B:30:0x00a3, B:32:0x00ad, B:35:0x00b9, B:36:0x00c0, B:23:0x0062, B:25:0x0066, B:26:0x006d, B:28:0x0071, B:29:0x0078, B:13:0x0039), top: B:46:0x0024 }] */
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void close() throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        long j10;
        ag.j jVar;
        if (!this.f19571n) {
            r();
        }
        l lVar = this.f19561c;
        ag.d dVar = lVar.f699c;
        d dVar2 = this.f19559a;
        dVar.f669f = dVar2.f19552b;
        this.l.getClass();
        s4.a aVar = this.f19566h;
        v3.f fVar = (v3.f) aVar.f14293b;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            s4.a.m(lVar, dVar2);
            if (!lVar.f704h || (jVar = lVar.f701e) == null) {
                j10 = lVar.f699c.f669f;
            } else {
                j10 = jVar.f692k;
                if (j10 == -1) {
                }
            }
            long j11 = j10;
            aVar.w(lVar, byteArrayOutputStream, fVar);
            int size = byteArrayOutputStream.size();
            if (lVar.f704h || j11 >= 4294967295L || lVar.f698b.f665a.size() >= 65535) {
                if (lVar.f701e == null) {
                    lVar.f701e = new ag.j();
                }
                if (lVar.f700d == null) {
                    lVar.f700d = new ag.i();
                }
                ag.i iVar = lVar.f700d;
                iVar.f682d = size + j11;
                iVar.f681c = 0;
                iVar.f683e = 1;
                ag.j jVarA = s4.a.a(lVar, size, j11);
                lVar.f701e = jVarA;
                s4.a.z(jVarA, byteArrayOutputStream, fVar);
                ag.i iVar2 = lVar.f700d;
                fVar.U(byteArrayOutputStream, (int) 117853008);
                fVar.U(byteArrayOutputStream, iVar2.f681c);
                fVar.V(byteArrayOutputStream, iVar2.f682d);
                fVar.U(byteArrayOutputStream, iVar2.f683e);
            }
            s4.a.x(lVar, size, j11, byteArrayOutputStream, fVar);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (byteArray == null) {
                throw new wf.a("invalid buff to write as zip headers");
            }
            dVar2.write(byteArray);
            byteArrayOutputStream.close();
            dVar2.close();
            this.f19570m = true;
        } catch (Throwable th2) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    public final void r() throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        this.f19562d.r();
        long j10 = this.f19562d.f19550a.f19548a.f19556a;
        ag.f fVar = this.f19563e;
        fVar.f654h = j10;
        ag.g gVar = this.f19564f;
        gVar.f654h = j10;
        long j11 = this.f19569k;
        fVar.f655i = j11;
        gVar.f655i = j11;
        boolean zA = (fVar.l && d0.f.a(fVar.f658m, 4)) ? d0.f.a(fVar.f661q.f645d, 1) : true;
        CRC32 crc32 = this.f19567i;
        if (zA) {
            this.f19563e.f653g = crc32.getValue();
            this.f19564f.f653g = crc32.getValue();
        }
        l lVar = this.f19561c;
        lVar.f697a.add(this.f19564f);
        lVar.f698b.f665a.add(this.f19563e);
        ag.g gVar2 = this.f19564f;
        if (gVar2.f659n) {
            s4.a aVar = this.f19566h;
            byte[] bArr = (byte[]) aVar.f14294c;
            v3.f fVar2 = (v3.f) aVar.f14293b;
            d dVar = this.f19559a;
            if (dVar == null) {
                throw new wf.a("input parameters is null, cannot write extended local header");
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                fVar2.U(byteArrayOutputStream, (int) 134695760);
                v3.f.W(bArr, gVar2.f653g);
                byteArrayOutputStream.write(bArr, 0, 4);
                if (gVar2.f679v) {
                    fVar2.V(byteArrayOutputStream, gVar2.f654h);
                    fVar2.V(byteArrayOutputStream, gVar2.f655i);
                } else {
                    v3.f.W(bArr, gVar2.f654h);
                    byteArrayOutputStream.write(bArr, 0, 4);
                    v3.f.W(bArr, gVar2.f655i);
                    byteArrayOutputStream.write(bArr, 0, 4);
                }
                dVar.write(byteArrayOutputStream.toByteArray());
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
                throw th2;
            }
        }
        this.f19569k = 0L;
        crc32.reset();
        this.f19562d.close();
        this.f19571n = true;
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.f19570m) {
            this.f19567i.update(bArr, i10, i11);
            this.f19562d.write(bArr, i10, i11);
            this.f19569k += i11;
            return;
        }
        throw new IOException("Stream is closed");
    }
}
