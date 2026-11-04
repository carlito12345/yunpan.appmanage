package g3;

import a9.o;
import java.io.EOFException;
import java.io.IOException;
import l2.c0;
import l2.l;
import u1.f0;

/* loaded from: classes.dex */
public final class b implements g {

    /* renamed from: a, reason: collision with root package name */
    public final f f5990a;

    /* renamed from: b, reason: collision with root package name */
    public final long f5991b;

    /* renamed from: c, reason: collision with root package name */
    public final long f5992c;

    /* renamed from: d, reason: collision with root package name */
    public final i f5993d;

    /* renamed from: e, reason: collision with root package name */
    public int f5994e;

    /* renamed from: f, reason: collision with root package name */
    public long f5995f;

    /* renamed from: g, reason: collision with root package name */
    public long f5996g;

    /* renamed from: h, reason: collision with root package name */
    public long f5997h;

    /* renamed from: i, reason: collision with root package name */
    public long f5998i;

    /* renamed from: j, reason: collision with root package name */
    public long f5999j;

    /* renamed from: k, reason: collision with root package name */
    public long f6000k;
    public long l;

    public b(i iVar, long j10, long j11, long j12, long j13, boolean z) {
        o.k(j10 >= 0 && j11 > j10);
        this.f5993d = iVar;
        this.f5991b = j10;
        this.f5992c = j11;
        if (j12 == j11 - j10 || z) {
            this.f5995f = j13;
            this.f5994e = 4;
        } else {
            this.f5994e = 0;
        }
        this.f5990a = new f();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00c6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c7  */
    @Override // g3.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long c(l lVar) throws IOException {
        f fVar;
        f fVar2;
        long jH;
        long j10;
        int i10 = this.f5994e;
        long j11 = this.f5992c;
        f fVar3 = this.f5990a;
        if (i10 == 0) {
            fVar = fVar3;
            long j12 = lVar.f10499d;
            this.f5996g = j12;
            this.f5994e = 1;
            long j13 = j11 - 65307;
            if (j13 > j12) {
                return j13;
            }
        } else if (i10 != 1) {
            if (i10 == 2) {
                long j14 = this.f5998i;
                long j15 = this.f5999j;
                if (j14 == j15) {
                    fVar2 = fVar3;
                    j10 = -1;
                    jH = -1;
                    if (jH != j10) {
                        return jH;
                    }
                    this.f5994e = 3;
                } else {
                    long j16 = lVar.f10499d;
                    if (fVar3.b(lVar, j15)) {
                        fVar3.a(lVar, false);
                        lVar.f10501f = 0;
                        long j17 = this.f5997h;
                        long j18 = fVar3.f6013b;
                        long j19 = j17 - j18;
                        int i11 = fVar3.f6015d + fVar3.f6016e;
                        if (0 > j19 || j19 >= 72000) {
                            if (j19 < 0) {
                                this.f5999j = j16;
                                this.l = j18;
                                fVar2 = fVar3;
                            } else {
                                fVar2 = fVar3;
                                this.f5998i = lVar.f10499d + i11;
                                this.f6000k = j18;
                            }
                            long j20 = this.f5999j;
                            long j21 = this.f5998i;
                            if (j20 - j21 < 100000) {
                                this.f5999j = j21;
                                jH = j21;
                            } else {
                                jH = f0.h((((j20 - j21) * j19) / (this.l - this.f6000k)) + (lVar.f10499d - (i11 * (j19 <= 0 ? 2L : 1L))), j21, j20 - 1);
                            }
                        }
                        fVar2 = fVar3;
                        j10 = -1;
                        jH = -1;
                        if (jH != j10) {
                        }
                    } else {
                        long j22 = this.f5998i;
                        if (j22 == j16) {
                            throw new IOException("No ogg page can be found.");
                        }
                        jH = j22;
                        fVar2 = fVar3;
                    }
                    j10 = -1;
                    if (jH != j10) {
                    }
                }
            } else {
                if (i10 != 3) {
                    if (i10 == 4) {
                        return -1L;
                    }
                    throw new IllegalStateException();
                }
                j10 = -1;
                fVar2 = fVar3;
            }
            f fVar4 = fVar2;
            while (true) {
                fVar4.b(lVar, j10);
                fVar4.a(lVar, false);
                if (fVar4.f6013b > this.f5997h) {
                    lVar.f10501f = 0;
                    this.f5994e = 4;
                    return -(this.f6000k + 2);
                }
                lVar.o(fVar4.f6015d + fVar4.f6016e, false);
                this.f5998i = lVar.f10499d;
                this.f6000k = fVar4.f6013b;
                j10 = -1;
            }
        } else {
            fVar = fVar3;
        }
        fVar.f6012a = 0;
        fVar.f6013b = 0L;
        fVar.f6014c = 0;
        fVar.f6015d = 0;
        fVar.f6016e = 0;
        if (!fVar.b(lVar, -1L)) {
            throw new EOFException();
        }
        fVar.a(lVar, false);
        lVar.o(fVar.f6015d + fVar.f6016e, false);
        long j23 = fVar.f6013b;
        while ((fVar.f6012a & 4) != 4 && fVar.b(lVar, -1L) && lVar.f10499d < j11 && fVar.a(lVar, true)) {
            try {
                lVar.o(fVar.f6015d + fVar.f6016e, false);
                j23 = fVar.f6013b;
            } catch (EOFException unused) {
            }
        }
        this.f5995f = j23;
        this.f5994e = 4;
        return this.f5996g;
    }

    @Override // g3.g
    public final c0 d() {
        if (this.f5995f != 0) {
            return new a(this);
        }
        return null;
    }

    @Override // g3.g
    public final void f(long j10) {
        this.f5997h = f0.h(j10, 0L, this.f5995f - 1);
        this.f5994e = 2;
        this.f5998i = this.f5991b;
        this.f5999j = this.f5992c;
        this.f6000k = 0L;
        this.l = this.f5995f;
    }
}
