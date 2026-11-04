package d2;

import android.media.MediaCodec;
import android.os.Build;
import android.os.Bundle;
import android.os.HandlerThread;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import u1.f0;

/* loaded from: classes.dex */
public final class h implements o {

    /* renamed from: g, reason: collision with root package name */
    public static final ArrayDeque f4266g = new ArrayDeque();

    /* renamed from: h, reason: collision with root package name */
    public static final Object f4267h = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final MediaCodec f4268a;

    /* renamed from: b, reason: collision with root package name */
    public final HandlerThread f4269b;

    /* renamed from: c, reason: collision with root package name */
    public com.yunpan.appmanage.carsdk.u f4270c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReference f4271d;

    /* renamed from: e, reason: collision with root package name */
    public final u1.e f4272e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f4273f;

    public h(MediaCodec mediaCodec, HandlerThread handlerThread) {
        u1.e eVar = new u1.e();
        this.f4268a = mediaCodec;
        this.f4269b = handlerThread;
        this.f4272e = eVar;
        this.f4271d = new AtomicReference();
    }

    public static g a() {
        ArrayDeque arrayDeque = f4266g;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new g();
                }
                return (g) arrayDeque.removeFirst();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void b(g gVar) {
        ArrayDeque arrayDeque = f4266g;
        synchronized (arrayDeque) {
            arrayDeque.add(gVar);
        }
    }

    @Override // d2.o
    public final void d(int i10, x1.c cVar, long j10, int i11) {
        h();
        g gVarA = a();
        gVarA.f4261a = i10;
        gVarA.f4262b = 0;
        gVarA.f4264d = j10;
        gVarA.f4265e = i11;
        int i12 = cVar.f18080f;
        MediaCodec.CryptoInfo cryptoInfo = gVarA.f4263c;
        cryptoInfo.numSubSamples = i12;
        int[] iArr = cVar.f18078d;
        int[] iArrCopyOf = cryptoInfo.numBytesOfClearData;
        if (iArr != null) {
            if (iArrCopyOf == null || iArrCopyOf.length < iArr.length) {
                iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            } else {
                System.arraycopy(iArr, 0, iArrCopyOf, 0, iArr.length);
            }
        }
        cryptoInfo.numBytesOfClearData = iArrCopyOf;
        int[] iArr2 = cVar.f18079e;
        int[] iArrCopyOf2 = cryptoInfo.numBytesOfEncryptedData;
        if (iArr2 != null) {
            if (iArrCopyOf2 == null || iArrCopyOf2.length < iArr2.length) {
                iArrCopyOf2 = Arrays.copyOf(iArr2, iArr2.length);
            } else {
                System.arraycopy(iArr2, 0, iArrCopyOf2, 0, iArr2.length);
            }
        }
        cryptoInfo.numBytesOfEncryptedData = iArrCopyOf2;
        byte[] bArr = cVar.f18076b;
        byte[] bArrCopyOf = cryptoInfo.key;
        if (bArr != null) {
            if (bArrCopyOf == null || bArrCopyOf.length < bArr.length) {
                bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
            } else {
                System.arraycopy(bArr, 0, bArrCopyOf, 0, bArr.length);
            }
        }
        bArrCopyOf.getClass();
        cryptoInfo.key = bArrCopyOf;
        byte[] bArr2 = cVar.f18075a;
        byte[] bArrCopyOf2 = cryptoInfo.iv;
        if (bArr2 != null) {
            if (bArrCopyOf2 == null || bArrCopyOf2.length < bArr2.length) {
                bArrCopyOf2 = Arrays.copyOf(bArr2, bArr2.length);
            } else {
                System.arraycopy(bArr2, 0, bArrCopyOf2, 0, bArr2.length);
            }
        }
        bArrCopyOf2.getClass();
        cryptoInfo.iv = bArrCopyOf2;
        cryptoInfo.mode = cVar.f18077c;
        if (Build.VERSION.SDK_INT >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(cVar.f18081g, cVar.f18082h));
        }
        com.yunpan.appmanage.carsdk.u uVar = this.f4270c;
        String str = f0.f15206a;
        uVar.obtainMessage(2, gVarA).sendToTarget();
    }

    @Override // d2.o
    public final void e(Bundle bundle) {
        h();
        com.yunpan.appmanage.carsdk.u uVar = this.f4270c;
        String str = f0.f15206a;
        uVar.obtainMessage(4, bundle).sendToTarget();
    }

    @Override // d2.o
    public final void flush() {
        if (this.f4273f) {
            try {
                com.yunpan.appmanage.carsdk.u uVar = this.f4270c;
                uVar.getClass();
                uVar.removeCallbacksAndMessages(null);
                u1.e eVar = this.f4272e;
                synchronized (eVar) {
                    eVar.f15205b = false;
                }
                com.yunpan.appmanage.carsdk.u uVar2 = this.f4270c;
                uVar2.getClass();
                uVar2.obtainMessage(3).sendToTarget();
                eVar.a();
            } catch (InterruptedException e7) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e7);
            }
        }
    }

    @Override // d2.o
    public final void g(int i10, int i11, long j10, int i12) {
        h();
        g gVarA = a();
        gVarA.f4261a = i10;
        gVarA.f4262b = i11;
        gVarA.f4264d = j10;
        gVarA.f4265e = i12;
        com.yunpan.appmanage.carsdk.u uVar = this.f4270c;
        String str = f0.f15206a;
        uVar.obtainMessage(1, gVarA).sendToTarget();
    }

    @Override // d2.o
    public final void h() {
        RuntimeException runtimeException = (RuntimeException) this.f4271d.getAndSet(null);
        if (runtimeException != null) {
            throw runtimeException;
        }
    }

    @Override // d2.o
    public final void shutdown() {
        if (this.f4273f) {
            flush();
            this.f4269b.quit();
        }
        this.f4273f = false;
    }

    @Override // d2.o
    public final void start() {
        if (this.f4273f) {
            return;
        }
        HandlerThread handlerThread = this.f4269b;
        handlerThread.start();
        this.f4270c = new com.yunpan.appmanage.carsdk.u(this, handlerThread.getLooper(), 3);
        this.f4273f = true;
    }
}
