package d2;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class i extends MediaCodec.Callback {

    /* renamed from: b, reason: collision with root package name */
    public final HandlerThread f4275b;

    /* renamed from: c, reason: collision with root package name */
    public Handler f4276c;

    /* renamed from: h, reason: collision with root package name */
    public MediaFormat f4281h;

    /* renamed from: i, reason: collision with root package name */
    public MediaFormat f4282i;

    /* renamed from: j, reason: collision with root package name */
    public MediaCodec.CodecException f4283j;

    /* renamed from: k, reason: collision with root package name */
    public MediaCodec.CryptoException f4284k;
    public long l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f4285m;

    /* renamed from: n, reason: collision with root package name */
    public IllegalStateException f4286n;

    /* renamed from: o, reason: collision with root package name */
    public a1.i f4287o;

    /* renamed from: a, reason: collision with root package name */
    public final Object f4274a = new Object();

    /* renamed from: d, reason: collision with root package name */
    public final a0.g f4277d = new a0.g(2);

    /* renamed from: e, reason: collision with root package name */
    public final a0.g f4278e = new a0.g(2);

    /* renamed from: f, reason: collision with root package name */
    public final ArrayDeque f4279f = new ArrayDeque();

    /* renamed from: g, reason: collision with root package name */
    public final ArrayDeque f4280g = new ArrayDeque();

    public i(HandlerThread handlerThread) {
        this.f4275b = handlerThread;
    }

    public final void a() {
        if (!this.f4280g.isEmpty()) {
            this.f4282i = (MediaFormat) this.f4280g.getLast();
        }
        a0.g gVar = this.f4277d;
        gVar.f24b = gVar.f23a;
        a0.g gVar2 = this.f4278e;
        gVar2.f24b = gVar2.f23a;
        this.f4279f.clear();
        this.f4280g.clear();
    }

    public final void b() {
        IllegalStateException illegalStateException = this.f4286n;
        if (illegalStateException != null) {
            this.f4286n = null;
            throw illegalStateException;
        }
        MediaCodec.CodecException codecException = this.f4283j;
        if (codecException != null) {
            this.f4283j = null;
            throw codecException;
        }
        MediaCodec.CryptoException cryptoException = this.f4284k;
        if (cryptoException == null) {
            return;
        }
        this.f4284k = null;
        throw cryptoException;
    }

    public final void c(IllegalStateException illegalStateException) {
        synchronized (this.f4274a) {
            this.f4286n = illegalStateException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.f4274a) {
            this.f4284k = cryptoException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f4274a) {
            this.f4283j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i10) {
        y1.b0 b0Var;
        synchronized (this.f4274a) {
            this.f4277d.b(i10);
            a1.i iVar = this.f4287o;
            if (iVar != null && (b0Var = ((u) iVar.f76b).L) != null) {
                b0Var.a();
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i10, MediaCodec.BufferInfo bufferInfo) {
        y1.b0 b0Var;
        synchronized (this.f4274a) {
            try {
                MediaFormat mediaFormat = this.f4282i;
                if (mediaFormat != null) {
                    this.f4278e.b(-2);
                    this.f4280g.add(mediaFormat);
                    this.f4282i = null;
                }
                this.f4278e.b(i10);
                this.f4279f.add(bufferInfo);
                a1.i iVar = this.f4287o;
                if (iVar != null && (b0Var = ((u) iVar.f76b).L) != null) {
                    b0Var.a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f4274a) {
            this.f4278e.b(-2);
            this.f4280g.add(mediaFormat);
            this.f4282i = null;
        }
    }
}
