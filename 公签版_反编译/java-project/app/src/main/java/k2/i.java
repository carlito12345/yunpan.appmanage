package k2;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import androidx.media3.exoplayer.video.x;
import java.nio.Buffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import r1.p;
import u1.c0;
import u1.q;

/* loaded from: classes.dex */
public final class i implements x, a {

    /* renamed from: i, reason: collision with root package name */
    public int f10053i;

    /* renamed from: j, reason: collision with root package name */
    public SurfaceTexture f10054j;

    /* renamed from: m, reason: collision with root package name */
    public byte[] f10056m;

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f10045a = new AtomicBoolean();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f10046b = new AtomicBoolean(true);

    /* renamed from: c, reason: collision with root package name */
    public final g f10047c = new g();

    /* renamed from: d, reason: collision with root package name */
    public final androidx.room.i f10048d = new androidx.room.i(5, false);

    /* renamed from: e, reason: collision with root package name */
    public final c0 f10049e = new c0();

    /* renamed from: f, reason: collision with root package name */
    public final c0 f10050f = new c0();

    /* renamed from: g, reason: collision with root package name */
    public final float[] f10051g = new float[16];

    /* renamed from: h, reason: collision with root package name */
    public final float[] f10052h = new float[16];

    /* renamed from: k, reason: collision with root package name */
    public volatile int f10055k = 0;
    public int l = -1;

    @Override // k2.a
    public final void a(long j10, float[] fArr) {
        ((c0) this.f10048d.f2407d).a(fArr, j10);
    }

    @Override // k2.a
    public final void b() {
        this.f10049e.b();
        androidx.room.i iVar = this.f10048d;
        ((c0) iVar.f2407d).b();
        iVar.f2404a = false;
        this.f10046b.set(true);
    }

    @Override // androidx.media3.exoplayer.video.x
    public final void c(long j10, long j11, p pVar, MediaFormat mediaFormat) {
        int i10;
        int i11;
        int i12;
        ArrayList arrayListZ;
        int iO;
        int i13 = 1;
        this.f10049e.a(Long.valueOf(j10), j11);
        byte[] bArr = pVar.C;
        int i14 = pVar.D;
        byte[] bArr2 = this.f10056m;
        int i15 = this.l;
        this.f10056m = bArr;
        if (i14 == -1) {
            i14 = this.f10055k;
        }
        this.l = i14;
        if (i15 == i14 && Arrays.equals(bArr2, this.f10056m)) {
            return;
        }
        byte[] bArr3 = this.f10056m;
        f fVar = null;
        if (bArr3 != null) {
            int i16 = this.l;
            q qVar = new q(bArr3);
            try {
                qVar.P(4);
                iO = qVar.o();
                qVar.O(0);
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            if (iO == 1886547818) {
                qVar.P(8);
                int i17 = qVar.f15267b;
                int i18 = qVar.f15268c;
                while (i17 < i18) {
                    int iO2 = qVar.o() + i17;
                    if (iO2 > i17 && iO2 <= i18) {
                        int iO3 = qVar.o();
                        if (iO3 != 2037673328 && iO3 != 1836279920) {
                            qVar.O(iO2);
                            i17 = iO2;
                        }
                        qVar.N(iO2);
                        arrayListZ = android.support.v4.media.session.b.z(qVar);
                        break;
                    }
                    break;
                }
                arrayListZ = null;
            } else {
                arrayListZ = android.support.v4.media.session.b.z(qVar);
            }
            if (arrayListZ != null) {
                int size = arrayListZ.size();
                if (size == 1) {
                    e eVar = (e) arrayListZ.get(0);
                    fVar = new f(eVar, eVar, i16);
                } else if (size == 2) {
                    fVar = new f((e) arrayListZ.get(0), (e) arrayListZ.get(1), i16);
                }
            }
        }
        if (fVar == null || !g.b(fVar)) {
            int i19 = this.l;
            float radians = (float) Math.toRadians(180.0f);
            float radians2 = (float) Math.toRadians(360.0f);
            float f10 = radians / 36;
            float f11 = radians2 / 72;
            float[] fArr = new float[15984];
            float[] fArr2 = new float[10656];
            int i20 = 0;
            int i21 = 0;
            int i22 = 0;
            for (int i23 = 36; i20 < i23; i23 = 36) {
                float f12 = radians / 2.0f;
                float f13 = (i20 * f10) - f12;
                int i24 = i20 + 1;
                float f14 = (i24 * f10) - f12;
                int i25 = 0;
                while (i25 < 73) {
                    float f15 = f14;
                    float f16 = f13;
                    int i26 = i24;
                    int i27 = i21;
                    int i28 = i22;
                    int i29 = 0;
                    int i30 = 2;
                    while (i29 < i30) {
                        float f17 = i29 == 0 ? f16 : f15;
                        float f18 = i25 * f11;
                        float f19 = f11;
                        int i31 = i25;
                        float f20 = radians;
                        double d10 = 50.0f;
                        int i32 = i19;
                        double d11 = (3.1415927f + f18) - (radians2 / 2.0f);
                        double dSin = Math.sin(d11);
                        Double.isNaN(d10);
                        double d12 = f17;
                        int i33 = i29;
                        float f21 = f10;
                        fArr[i27] = -((float) (Math.cos(d12) * dSin * d10));
                        double dSin2 = Math.sin(d12);
                        Double.isNaN(d10);
                        int i34 = i20;
                        float[] fArr3 = fArr2;
                        fArr[i27 + 1] = (float) (dSin2 * d10);
                        int i35 = i27 + 3;
                        double dCos = Math.cos(d11);
                        Double.isNaN(d10);
                        fArr[i27 + 2] = (float) (Math.cos(d12) * dCos * d10);
                        fArr3[i28] = f18 / radians2;
                        int i36 = i28 + 2;
                        fArr3[i28 + 1] = ((i34 + i33) * f21) / f20;
                        if (i31 == 0 && i33 == 0) {
                            i11 = i33;
                            i10 = i31;
                            i12 = 3;
                        } else {
                            i10 = i31;
                            i11 = i33;
                            i12 = 3;
                            if (i10 != 72 || i11 != 1) {
                                i28 = i36;
                                i27 = i35;
                            }
                            int i37 = i11 + 1;
                            i25 = i10;
                            fArr2 = fArr3;
                            f11 = f19;
                            radians = f20;
                            i19 = i32;
                            i20 = i34;
                            f10 = f21;
                            i30 = 2;
                            i29 = i37;
                        }
                        System.arraycopy(fArr, i27, fArr, i35, i12);
                        i27 += 6;
                        System.arraycopy(fArr3, i28, fArr3, i36, 2);
                        i28 += 4;
                        int i372 = i11 + 1;
                        i25 = i10;
                        fArr2 = fArr3;
                        f11 = f19;
                        radians = f20;
                        i19 = i32;
                        i20 = i34;
                        f10 = f21;
                        i30 = 2;
                        i29 = i372;
                    }
                    i25++;
                    i22 = i28;
                    i21 = i27;
                    f13 = f16;
                    i24 = i26;
                    radians = radians;
                    i19 = i19;
                    f10 = f10;
                    f14 = f15;
                }
                i20 = i24;
                i13 = 1;
            }
            int i38 = i19;
            a9.a[] aVarArr = new a9.a[i13];
            aVarArr[0] = new a9.a(0, fArr, fArr2, i13);
            e eVar2 = new e(aVarArr);
            fVar = new f(eVar2, eVar2, i38);
        }
        this.f10050f.a(fVar, j11);
    }

    public final void d(float[] fArr) {
        Object objD;
        GLES20.glClear(16384);
        try {
            u1.a.b();
        } catch (u1.h e7) {
            u1.a.g("Failed to draw a frame", e7);
        }
        if (this.f10045a.compareAndSet(true, false)) {
            SurfaceTexture surfaceTexture = this.f10054j;
            surfaceTexture.getClass();
            surfaceTexture.updateTexImage();
            try {
                u1.a.b();
            } catch (u1.h e10) {
                u1.a.g("Failed to draw a frame", e10);
            }
            if (this.f10046b.compareAndSet(true, false)) {
                Matrix.setIdentityM(this.f10051g, 0);
            }
            long timestamp = this.f10054j.getTimestamp();
            c0 c0Var = this.f10049e;
            synchronized (c0Var) {
                objD = c0Var.d(timestamp, false);
            }
            Long l = (Long) objD;
            if (l != null) {
                androidx.room.i iVar = this.f10048d;
                float[] fArr2 = this.f10051g;
                float[] fArr3 = (float[]) ((c0) iVar.f2407d).f(l.longValue());
                if (fArr3 != null) {
                    float f10 = fArr3[0];
                    float f11 = -fArr3[1];
                    float f12 = -fArr3[2];
                    float length = Matrix.length(f10, f11, f12);
                    float[] fArr4 = (float[]) iVar.f2406c;
                    if (length != 0.0f) {
                        Matrix.setRotateM(fArr4, 0, (float) Math.toDegrees(length), f10 / length, f11 / length, f12 / length);
                    } else {
                        Matrix.setIdentityM(fArr4, 0);
                    }
                    if (!iVar.f2404a) {
                        androidx.room.i.d((float[]) iVar.f2405b, (float[]) iVar.f2406c);
                        iVar.f2404a = true;
                    }
                    Matrix.multiplyMM(fArr2, 0, (float[]) iVar.f2405b, 0, (float[]) iVar.f2406c, 0);
                }
            }
            f fVar = (f) this.f10050f.f(timestamp);
            if (fVar != null) {
                g gVar = this.f10047c;
                gVar.getClass();
                if (g.b(fVar)) {
                    gVar.f10036a = fVar.f10031c;
                    gVar.f10037b = new a9.a(fVar.f10029a.f10028a[0]);
                    if (!fVar.f10032d) {
                        new a9.a(fVar.f10030b.f10028a[0]);
                    }
                }
            }
        }
        Matrix.multiplyMM(this.f10052h, 0, fArr, 0, this.f10051g, 0);
        g gVar2 = this.f10047c;
        int i10 = this.f10053i;
        float[] fArr5 = this.f10052h;
        a9.a aVar = gVar2.f10037b;
        if (aVar == null) {
            return;
        }
        int i11 = gVar2.f10036a;
        GLES20.glUniformMatrix3fv(gVar2.f10040e, 1, false, i11 == 1 ? g.f10034j : i11 == 2 ? g.f10035k : g.f10033i, 0);
        GLES20.glUniformMatrix4fv(gVar2.f10039d, 1, false, fArr5, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i10);
        GLES20.glUniform1i(gVar2.f10043h, 0);
        try {
            u1.a.b();
        } catch (u1.h e11) {
            u1.a.g("Failed to bind uniforms", e11);
        }
        GLES20.glVertexAttribPointer(gVar2.f10041f, 3, 5126, false, 12, (Buffer) aVar.f473d);
        try {
            u1.a.b();
        } catch (u1.h e12) {
            u1.a.g("Failed to load position data", e12);
        }
        GLES20.glVertexAttribPointer(gVar2.f10042g, 2, 5126, false, 8, (Buffer) aVar.f474e);
        try {
            u1.a.b();
        } catch (u1.h e13) {
            u1.a.g("Failed to load texture data", e13);
        }
        GLES20.glDrawArrays(aVar.f472c, 0, aVar.f471b);
        try {
            u1.a.b();
        } catch (u1.h e14) {
            u1.a.g("Failed to render", e14);
        }
    }

    public final SurfaceTexture e() {
        try {
            GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
            u1.a.b();
            this.f10047c.a();
            u1.a.b();
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            u1.a.b();
            int i10 = iArr[0];
            GLES20.glBindTexture(36197, i10);
            u1.a.b();
            GLES20.glTexParameteri(36197, 10240, 9729);
            u1.a.b();
            GLES20.glTexParameteri(36197, 10241, 9729);
            u1.a.b();
            GLES20.glTexParameteri(36197, 10242, 33071);
            u1.a.b();
            GLES20.glTexParameteri(36197, 10243, 33071);
            u1.a.b();
            this.f10053i = i10;
        } catch (u1.h e7) {
            u1.a.g("Failed to initialize the renderer", e7);
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f10053i);
        this.f10054j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: k2.h
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                this.f10044a.f10045a.set(true);
            }
        });
        return this.f10054j;
    }
}
