package ce;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public final class r implements q0 {

    /* renamed from: e, reason: collision with root package name */
    public static final de.d f3155e = de.d.r();

    /* renamed from: a, reason: collision with root package name */
    public final MessageDigest f3156a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f3157b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3158c;

    /* renamed from: d, reason: collision with root package name */
    public int f3159d;

    public r(byte[] bArr, boolean z) throws r0 {
        de.d dVar = f3155e;
        this.f3158c = false;
        try {
            this.f3156a = MessageDigest.getInstance("MD5");
            this.f3157b = bArr;
            this.f3158c = z;
            this.f3159d = 0;
            if (de.d.f4630b >= 5) {
                dVar.getClass();
                de.c.a(dVar, bArr, 0, bArr.length);
            }
        } catch (NoSuchAlgorithmException e7) {
            if (de.d.f4630b > 0) {
                e7.printStackTrace(dVar);
            }
            throw new r0("MD5", e7);
        }
    }

    public final void a(byte[] bArr, int i10, int i11, q qVar, q qVar2) {
        de.d dVar = f3155e;
        int i12 = this.f3159d;
        qVar.f3128t = i12;
        if (qVar2 != null) {
            qVar2.f3128t = i12 + 1;
            qVar2.f3129v = false;
        }
        try {
            try {
                byte[] bArr2 = this.f3157b;
                b(bArr2, 0, bArr2.length);
                int i13 = i10 + 14;
                for (int i14 = 0; i14 < 8; i14++) {
                    bArr[i13 + i14] = 0;
                }
                q.r(this.f3159d, bArr, i13);
                b(bArr, i10, i11);
                byte[] bArrDigest = this.f3156a.digest();
                if (de.d.f4630b >= 5) {
                    dVar.getClass();
                    de.c.a(dVar, bArrDigest, 0, bArrDigest.length);
                    dVar.flush();
                }
                System.arraycopy(bArrDigest, 0, bArr, i13, 8);
                if (this.f3158c) {
                    this.f3158c = false;
                    System.arraycopy("BSRSPYL ".getBytes(), 0, bArr, i13, 8);
                }
            } catch (Exception e7) {
                if (de.d.f4630b > 0) {
                    e7.printStackTrace(dVar);
                }
            }
            this.f3159d += 2;
        } catch (Throwable th2) {
            this.f3159d += 2;
            throw th2;
        }
    }

    public final void b(byte[] bArr, int i10, int i11) throws IOException {
        if (de.d.f4630b >= 5) {
            de.d dVar = f3155e;
            dVar.getClass();
            de.c.a(dVar, bArr, i10, Math.min(i11, 256));
            dVar.flush();
        }
        if (i11 == 0) {
            return;
        }
        this.f3156a.update(bArr, i10, i11);
    }

    public final void c(byte[] bArr, q qVar) throws IOException {
        byte[] bArr2 = this.f3157b;
        b(bArr2, 0, bArr2.length);
        b(bArr, 4, 14);
        byte[] bArr3 = new byte[8];
        q.r(qVar.f3128t, bArr3, 0);
        b(bArr3, 0, 8);
        if (qVar.f3114c == 46) {
            e0 e0Var = (e0) qVar;
            b(bArr, 26, (qVar.f3117f - e0Var.I) - 22);
            b(e0Var.F, e0Var.G, e0Var.I);
        } else {
            b(bArr, 26, qVar.f3117f - 22);
        }
        byte[] bArrDigest = this.f3156a.digest();
        int i10 = de.d.f4630b;
        de.d dVar = f3155e;
        if (i10 >= 5) {
            dVar.getClass();
            de.c.a(dVar, bArrDigest, 0, bArrDigest.length);
            dVar.flush();
        }
        for (int i11 = 0; i11 < 8; i11++) {
            if (bArrDigest[i11] != bArr[18 + i11]) {
                if (de.d.f4630b >= 2) {
                    dVar.getClass();
                    de.c.a(dVar, bArrDigest, 0, 8);
                    de.c.a(dVar, bArr, 18, 8);
                }
                qVar.f3129v = true;
                return;
            }
        }
        qVar.f3129v = false;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("LM_COMPATIBILITY=");
        sb2.append(q0.f3141j0);
        sb2.append(" MacSigningKey=");
        byte[] bArr = this.f3157b;
        sb2.append(de.c.d(bArr.length, bArr));
        return sb2.toString();
    }
}
