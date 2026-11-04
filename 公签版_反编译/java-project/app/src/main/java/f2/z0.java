package f2;

import android.media.MediaCodec;
import android.os.Build;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class z0 {

    /* renamed from: a, reason: collision with root package name */
    public final s4.a f5447a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5448b;

    /* renamed from: c, reason: collision with root package name */
    public final u1.q f5449c;

    /* renamed from: d, reason: collision with root package name */
    public y0 f5450d;

    /* renamed from: e, reason: collision with root package name */
    public y0 f5451e;

    /* renamed from: f, reason: collision with root package name */
    public y0 f5452f;

    /* renamed from: g, reason: collision with root package name */
    public long f5453g;

    public z0(s4.a aVar) {
        int i10;
        this.f5447a = aVar;
        synchronized (aVar) {
            i10 = ((y1.g) aVar.f14295d).f18678c.f8432b;
        }
        this.f5448b = i10;
        this.f5449c = new u1.q(32);
        y0 y0Var = new y0(0L, i10);
        this.f5450d = y0Var;
        this.f5451e = y0Var;
        this.f5452f = y0Var;
    }

    public static y0 c(y0 y0Var, long j10, ByteBuffer byteBuffer, int i10) {
        while (j10 >= y0Var.f5444b) {
            y0Var = (y0) y0Var.f5446d;
        }
        while (i10 > 0) {
            int iMin = Math.min(i10, (int) (y0Var.f5444b - j10));
            i2.a aVar = (i2.a) y0Var.f5445c;
            byteBuffer.put(aVar.f8426a, ((int) (j10 - y0Var.f5443a)) + aVar.f8427b, iMin);
            i10 -= iMin;
            j10 += iMin;
            if (j10 == y0Var.f5444b) {
                y0Var = (y0) y0Var.f5446d;
            }
        }
        return y0Var;
    }

    public static y0 d(y0 y0Var, long j10, byte[] bArr, int i10) {
        while (j10 >= y0Var.f5444b) {
            y0Var = (y0) y0Var.f5446d;
        }
        int i11 = i10;
        while (i11 > 0) {
            int iMin = Math.min(i11, (int) (y0Var.f5444b - j10));
            i2.a aVar = (i2.a) y0Var.f5445c;
            System.arraycopy(aVar.f8426a, ((int) (j10 - y0Var.f5443a)) + aVar.f8427b, bArr, i10 - i11, iMin);
            i11 -= iMin;
            j10 += iMin;
            if (j10 == y0Var.f5444b) {
                y0Var = (y0) y0Var.f5446d;
            }
        }
        return y0Var;
    }

    public static y0 e(y0 y0Var, x1.g gVar, c2.g gVar2, u1.q qVar) {
        int I;
        if (gVar.c(1073741824)) {
            long j10 = gVar2.f2863b;
            qVar.L(1);
            y0 y0VarD = d(y0Var, j10, qVar.f15266a, 1);
            long j11 = j10 + 1;
            byte b10 = qVar.f15266a[0];
            boolean z = (b10 & 128) != 0;
            int i10 = b10 & Byte.MAX_VALUE;
            x1.c cVar = gVar.f18086d;
            byte[] bArr = cVar.f18075a;
            if (bArr == null) {
                cVar.f18075a = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            y0Var = d(y0VarD, j11, cVar.f18075a, i10);
            long j12 = j11 + i10;
            if (z) {
                qVar.L(2);
                y0Var = d(y0Var, j12, qVar.f15266a, 2);
                j12 += 2;
                I = qVar.I();
            } else {
                I = 1;
            }
            int[] iArr = cVar.f18078d;
            if (iArr == null || iArr.length < I) {
                iArr = new int[I];
            }
            int[] iArr2 = cVar.f18079e;
            if (iArr2 == null || iArr2.length < I) {
                iArr2 = new int[I];
            }
            if (z) {
                int i11 = I * 6;
                qVar.L(i11);
                y0Var = d(y0Var, j12, qVar.f15266a, i11);
                j12 += i11;
                qVar.O(0);
                for (int i12 = 0; i12 < I; i12++) {
                    iArr[i12] = qVar.I();
                    iArr2[i12] = qVar.F();
                }
            } else {
                iArr[0] = 0;
                iArr2[0] = gVar2.f2862a - ((int) (j12 - gVar2.f2863b));
            }
            l2.i0 i0Var = (l2.i0) gVar2.f2864c;
            String str = u1.f0.f15206a;
            byte[] bArr2 = i0Var.f10472b;
            byte[] bArr3 = cVar.f18075a;
            cVar.f18080f = I;
            cVar.f18078d = iArr;
            cVar.f18079e = iArr2;
            cVar.f18076b = bArr2;
            cVar.f18075a = bArr3;
            int i13 = i0Var.f10471a;
            cVar.f18077c = i13;
            int i14 = i0Var.f10473c;
            cVar.f18081g = i14;
            int i15 = i0Var.f10474d;
            cVar.f18082h = i15;
            MediaCodec.CryptoInfo cryptoInfo = cVar.f18083i;
            cryptoInfo.numSubSamples = I;
            cryptoInfo.numBytesOfClearData = iArr;
            cryptoInfo.numBytesOfEncryptedData = iArr2;
            cryptoInfo.key = bArr2;
            cryptoInfo.iv = bArr3;
            cryptoInfo.mode = i13;
            if (Build.VERSION.SDK_INT >= 24) {
                x1.b bVar = cVar.f18084j;
                bVar.getClass();
                bVar.f18074b.set(i14, i15);
                bVar.f18073a.setPattern(bVar.f18074b);
            }
            long j13 = gVar2.f2863b;
            int i16 = (int) (j12 - j13);
            gVar2.f2863b = j13 + i16;
            gVar2.f2862a -= i16;
        }
        if (!gVar.c(268435456)) {
            gVar.k(gVar2.f2862a);
            return c(y0Var, gVar2.f2863b, gVar.f18087e, gVar2.f2862a);
        }
        qVar.L(4);
        y0 y0VarD2 = d(y0Var, gVar2.f2863b, qVar.f15266a, 4);
        int iF = qVar.F();
        gVar2.f2863b += 4;
        gVar2.f2862a -= 4;
        gVar.k(iF);
        y0 y0VarC = c(y0VarD2, gVar2.f2863b, gVar.f18087e, iF);
        gVar2.f2863b += iF;
        int i17 = gVar2.f2862a - iF;
        gVar2.f2862a = i17;
        ByteBuffer byteBuffer = gVar.f18090h;
        if (byteBuffer == null || byteBuffer.capacity() < i17) {
            gVar.f18090h = ByteBuffer.allocate(i17);
        } else {
            gVar.f18090h.clear();
        }
        return c(y0VarC, gVar2.f2863b, gVar.f18090h, gVar2.f2862a);
    }

    public final void a(long j10) {
        y0 y0Var;
        if (j10 == -1) {
            return;
        }
        while (true) {
            y0Var = this.f5450d;
            if (j10 < y0Var.f5444b) {
                break;
            }
            s4.a aVar = this.f5447a;
            i2.a aVar2 = (i2.a) y0Var.f5445c;
            synchronized (aVar) {
                ((y1.g) aVar.f14295d).f18678c.c(aVar2);
                aVar.s(aVar2);
            }
            y0 y0Var2 = this.f5450d;
            y0Var2.f5445c = null;
            y0 y0Var3 = (y0) y0Var2.f5446d;
            y0Var2.f5446d = null;
            this.f5450d = y0Var3;
        }
        if (this.f5451e.f5443a < y0Var.f5443a) {
            this.f5451e = y0Var;
        }
    }

    public final int b(int i10) {
        i2.a aVarA;
        y0 y0Var = this.f5452f;
        if (((i2.a) y0Var.f5445c) == null) {
            s4.a aVar = this.f5447a;
            synchronized (aVar) {
                aVarA = ((y1.g) aVar.f14295d).f18678c.a();
                ((HashMap) aVar.f14293b).put(aVarA, (z1.i) aVar.f14294c);
                y1.f fVar = (y1.f) ((y1.g) aVar.f14295d).f18690p.get((z1.i) aVar.f14294c);
                if (fVar != null) {
                    fVar.a();
                }
            }
            y0 y0Var2 = new y0(this.f5452f.f5444b, this.f5448b);
            y0Var.f5445c = aVarA;
            y0Var.f5446d = y0Var2;
        }
        return Math.min(i10, (int) (this.f5452f.f5444b - this.f5453g));
    }
}
