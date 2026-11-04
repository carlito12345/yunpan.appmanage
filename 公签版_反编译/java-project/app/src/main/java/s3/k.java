package s3;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import java.util.Arrays;
import java.util.Collections;
import l2.j0;
import u1.f0;

/* loaded from: classes.dex */
public final class k implements f {
    public static final float[] l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* renamed from: a, reason: collision with root package name */
    public final a0 f14109a;

    /* renamed from: f, reason: collision with root package name */
    public j f14114f;

    /* renamed from: g, reason: collision with root package name */
    public long f14115g;

    /* renamed from: h, reason: collision with root package name */
    public String f14116h;

    /* renamed from: i, reason: collision with root package name */
    public j0 f14117i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f14118j;

    /* renamed from: c, reason: collision with root package name */
    public final boolean[] f14111c = new boolean[4];

    /* renamed from: d, reason: collision with root package name */
    public final i f14112d = new i();

    /* renamed from: k, reason: collision with root package name */
    public long f14119k = -9223372036854775807L;

    /* renamed from: e, reason: collision with root package name */
    public final t f14113e = new t(CarSettingID.Recv.BCM_RAINSTORM_MODE_REQ);

    /* renamed from: b, reason: collision with root package name */
    public final u1.q f14110b = new u1.q();

    public k(a0 a0Var) {
        this.f14109a = a0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0244  */
    @Override // s3.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(u1.q qVar) {
        int i10;
        int i11;
        float f10;
        int i12 = 1;
        this.f14114f.getClass();
        this.f14117i.getClass();
        int i13 = qVar.f15267b;
        int i14 = qVar.f15268c;
        byte[] bArr = qVar.f15266a;
        this.f14115g += qVar.a();
        this.f14117i.a(qVar.a(), qVar);
        while (true) {
            int iC = v1.o.c(bArr, i13, i14, this.f14111c);
            i iVar = this.f14112d;
            t tVar = this.f14113e;
            if (iC == i14) {
                if (!this.f14118j) {
                    iVar.a(i13, i14, bArr);
                }
                this.f14114f.a(i13, i14, bArr);
                if (tVar != null) {
                    tVar.a(i13, i14, bArr);
                    return;
                }
                return;
            }
            int i15 = iC + 3;
            byte b10 = qVar.f15266a[i15];
            int i16 = b10 & 255;
            int i17 = iC - i13;
            if (this.f14118j) {
                i10 = i15;
            } else {
                if (i17 > 0) {
                    iVar.a(i13, iC, bArr);
                }
                int i18 = i17 < 0 ? -i17 : 0;
                int i19 = iVar.f14097b;
                if (i19 == 0) {
                    i10 = i15;
                    if (i16 == 176) {
                        iVar.f14097b = 1;
                        iVar.f14096a = true;
                    }
                } else if (i19 == i12) {
                    i10 = i15;
                    if (i16 != 181) {
                        u1.a.p("Unexpected start code value");
                        iVar.f14096a = false;
                        iVar.f14098c = 0;
                        iVar.f14097b = 0;
                    } else {
                        iVar.f14097b = 2;
                    }
                } else if (i19 == 2) {
                    i10 = i15;
                    if (i16 > 31) {
                        u1.a.p("Unexpected start code value");
                        iVar.f14096a = false;
                        iVar.f14098c = 0;
                        iVar.f14097b = 0;
                    } else {
                        iVar.f14097b = 3;
                    }
                } else if (i19 == 3) {
                    i10 = i15;
                    if ((b10 & 240) != 32) {
                        u1.a.p("Unexpected start code value");
                        iVar.f14096a = false;
                        iVar.f14098c = 0;
                        iVar.f14097b = 0;
                    } else {
                        iVar.f14099d = iVar.f14098c;
                        iVar.f14097b = 4;
                    }
                } else {
                    if (i19 != 4) {
                        throw new IllegalStateException();
                    }
                    if (i16 == 179 || i16 == 181) {
                        iVar.f14098c -= i18;
                        iVar.f14096a = false;
                        j0 j0Var = this.f14117i;
                        int i20 = iVar.f14099d;
                        String str = this.f14116h;
                        str.getClass();
                        byte[] bArrCopyOf = Arrays.copyOf(iVar.f14100e, iVar.f14098c);
                        j3.f fVar = new j3.f(bArrCopyOf, bArrCopyOf.length);
                        fVar.p(i20);
                        fVar.p(4);
                        fVar.n();
                        fVar.o(8);
                        if (fVar.f()) {
                            fVar.o(4);
                            fVar.o(3);
                        }
                        int iG = fVar.g(4);
                        if (iG == 15) {
                            int iG2 = fVar.g(8);
                            int iG3 = fVar.g(8);
                            if (iG3 == 0) {
                                u1.a.p("Invalid aspect ratio");
                                f10 = 1.0f;
                                if (fVar.f()) {
                                    fVar.o(2);
                                    fVar.o(1);
                                    if (fVar.f()) {
                                        fVar.o(15);
                                        fVar.n();
                                        fVar.o(15);
                                        fVar.n();
                                        fVar.o(15);
                                        fVar.n();
                                        fVar.o(3);
                                        fVar.o(11);
                                        fVar.n();
                                        fVar.o(15);
                                        fVar.n();
                                    }
                                }
                                if (fVar.g(2) != 0) {
                                    u1.a.p("Unhandled video object layer shape");
                                }
                                fVar.n();
                                int iG4 = fVar.g(16);
                                fVar.n();
                                if (!fVar.f()) {
                                    i10 = i15;
                                    fVar.n();
                                    int iG5 = fVar.g(13);
                                    fVar.n();
                                    int iG6 = fVar.g(13);
                                    fVar.n();
                                    fVar.n();
                                    r1.o oVar = new r1.o();
                                    oVar.f13480a = str;
                                    oVar.f13491m = r1.e0.l("video/mp2t");
                                    oVar.f13492n = r1.e0.l("video/mp4v-es");
                                    oVar.f13498u = iG5;
                                    oVar.f13499v = iG6;
                                    oVar.A = f10;
                                    oVar.f13495q = Collections.singletonList(bArrCopyOf);
                                    j0Var.g(new r1.p(oVar));
                                    this.f14118j = true;
                                } else if (iG4 == 0) {
                                    u1.a.p("Invalid vop_increment_time_resolution");
                                    i10 = i15;
                                    fVar.n();
                                    int iG52 = fVar.g(13);
                                    fVar.n();
                                    int iG62 = fVar.g(13);
                                    fVar.n();
                                    fVar.n();
                                    r1.o oVar2 = new r1.o();
                                    oVar2.f13480a = str;
                                    oVar2.f13491m = r1.e0.l("video/mp2t");
                                    oVar2.f13492n = r1.e0.l("video/mp4v-es");
                                    oVar2.f13498u = iG52;
                                    oVar2.f13499v = iG62;
                                    oVar2.A = f10;
                                    oVar2.f13495q = Collections.singletonList(bArrCopyOf);
                                    j0Var.g(new r1.p(oVar2));
                                    this.f14118j = true;
                                } else {
                                    i10 = i15;
                                    int i21 = 0;
                                    for (int i22 = iG4 - 1; i22 > 0; i22 >>= 1) {
                                        i21++;
                                    }
                                    fVar.o(i21);
                                    fVar.n();
                                    int iG522 = fVar.g(13);
                                    fVar.n();
                                    int iG622 = fVar.g(13);
                                    fVar.n();
                                    fVar.n();
                                    r1.o oVar22 = new r1.o();
                                    oVar22.f13480a = str;
                                    oVar22.f13491m = r1.e0.l("video/mp2t");
                                    oVar22.f13492n = r1.e0.l("video/mp4v-es");
                                    oVar22.f13498u = iG522;
                                    oVar22.f13499v = iG622;
                                    oVar22.A = f10;
                                    oVar22.f13495q = Collections.singletonList(bArrCopyOf);
                                    j0Var.g(new r1.p(oVar22));
                                    this.f14118j = true;
                                }
                            } else {
                                f10 = iG2 / iG3;
                                if (fVar.f()) {
                                }
                                if (fVar.g(2) != 0) {
                                }
                                fVar.n();
                                int iG42 = fVar.g(16);
                                fVar.n();
                                if (!fVar.f()) {
                                }
                            }
                        } else if (iG < 7) {
                            f10 = l[iG];
                            if (fVar.f()) {
                            }
                            if (fVar.g(2) != 0) {
                            }
                            fVar.n();
                            int iG422 = fVar.g(16);
                            fVar.n();
                            if (!fVar.f()) {
                            }
                        } else {
                            u1.a.p("Invalid aspect ratio");
                            f10 = 1.0f;
                            if (fVar.f()) {
                            }
                            if (fVar.g(2) != 0) {
                            }
                            fVar.n();
                            int iG4222 = fVar.g(16);
                            fVar.n();
                            if (!fVar.f()) {
                            }
                        }
                        this.f14114f.a(i13, iC, bArr);
                        if (tVar != null) {
                            if (i17 > 0) {
                                tVar.a(i13, iC, bArr);
                                i11 = 0;
                            } else {
                                i11 = -i17;
                            }
                            if (tVar.b(i11)) {
                                int iP = v1.o.p(tVar.f14246d, (byte[]) tVar.f14247e);
                                String str2 = f0.f15206a;
                                byte[] bArr2 = (byte[]) tVar.f14247e;
                                u1.q qVar2 = this.f14110b;
                                qVar2.M(iP, bArr2);
                                this.f14109a.a(this.f14119k, qVar2);
                            }
                            if (i16 == 178) {
                                if (qVar.f15266a[iC + 2] == 1) {
                                    tVar.e(i16);
                                }
                            }
                        }
                        int i23 = i14 - iC;
                        this.f14114f.b(i23, this.f14115g - i23, this.f14118j);
                        j jVar = this.f14114f;
                        long j10 = this.f14119k;
                        jVar.f14105e = i16;
                        jVar.f14104d = false;
                        jVar.f14102b = i16 == 182 || i16 == 179;
                        jVar.f14103c = i16 == 182;
                        jVar.f14106f = 0;
                        jVar.f14108h = j10;
                        i13 = i10;
                        i12 = 1;
                    } else {
                        i10 = i15;
                    }
                }
                iVar.a(0, 3, i.f14095f);
                this.f14114f.a(i13, iC, bArr);
                if (tVar != null) {
                }
                int i232 = i14 - iC;
                this.f14114f.b(i232, this.f14115g - i232, this.f14118j);
                j jVar2 = this.f14114f;
                long j102 = this.f14119k;
                jVar2.f14105e = i16;
                jVar2.f14104d = false;
                jVar2.f14102b = i16 == 182 || i16 == 179;
                jVar2.f14103c = i16 == 182;
                jVar2.f14106f = 0;
                jVar2.f14108h = j102;
                i13 = i10;
                i12 = 1;
            }
            this.f14114f.a(i13, iC, bArr);
            if (tVar != null) {
            }
            int i2322 = i14 - iC;
            this.f14114f.b(i2322, this.f14115g - i2322, this.f14118j);
            j jVar22 = this.f14114f;
            long j1022 = this.f14119k;
            jVar22.f14105e = i16;
            jVar22.f14104d = false;
            jVar22.f14102b = i16 == 182 || i16 == 179;
            jVar22.f14103c = i16 == 182;
            jVar22.f14106f = 0;
            jVar22.f14108h = j1022;
            i13 = i10;
            i12 = 1;
        }
    }

    @Override // s3.f
    public final void b() {
        v1.o.b(this.f14111c);
        i iVar = this.f14112d;
        iVar.f14096a = false;
        iVar.f14098c = 0;
        iVar.f14097b = 0;
        j jVar = this.f14114f;
        if (jVar != null) {
            jVar.f14102b = false;
            jVar.f14103c = false;
            jVar.f14104d = false;
            jVar.f14105e = -1;
        }
        t tVar = this.f14113e;
        if (tVar != null) {
            tVar.d();
        }
        this.f14115g = 0L;
        this.f14119k = -9223372036854775807L;
    }

    @Override // s3.f
    public final void c(boolean z) {
        this.f14114f.getClass();
        if (z) {
            this.f14114f.b(0, this.f14115g, this.f14118j);
            j jVar = this.f14114f;
            jVar.f14102b = false;
            jVar.f14103c = false;
            jVar.f14104d = false;
            jVar.f14105e = -1;
        }
    }

    @Override // s3.f
    public final void d(int i10, long j10) {
        this.f14119k = j10;
    }

    @Override // s3.f
    public final void e(l2.q qVar, d0 d0Var) {
        d0Var.m();
        d0Var.n();
        this.f14116h = (String) d0Var.f14066f;
        d0Var.n();
        j0 j0VarZ = qVar.z(d0Var.f14064d, 2);
        this.f14117i = j0VarZ;
        this.f14114f = new j(j0VarZ);
        this.f14109a.b(qVar, d0Var);
    }
}
