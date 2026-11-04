package a2;

import android.media.AudioTrack;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.math.RoundingMode;

/* loaded from: classes.dex */
public final class e1 {
    public boolean A;
    public long B;

    /* renamed from: a, reason: collision with root package name */
    public final a1.i f131a;

    /* renamed from: b, reason: collision with root package name */
    public final u1.z f132b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f133c;

    /* renamed from: d, reason: collision with root package name */
    public final AudioTrack f134d;

    /* renamed from: e, reason: collision with root package name */
    public final int f135e;

    /* renamed from: f, reason: collision with root package name */
    public final long f136f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f137g;

    /* renamed from: h, reason: collision with root package name */
    public final r0 f138h;

    /* renamed from: i, reason: collision with root package name */
    public float f139i;

    /* renamed from: j, reason: collision with root package name */
    public long f140j;

    /* renamed from: k, reason: collision with root package name */
    public long f141k;
    public long l;

    /* renamed from: m, reason: collision with root package name */
    public Method f142m;

    /* renamed from: n, reason: collision with root package name */
    public long f143n;

    /* renamed from: o, reason: collision with root package name */
    public long f144o;

    /* renamed from: p, reason: collision with root package name */
    public long f145p;

    /* renamed from: q, reason: collision with root package name */
    public long f146q;
    public long r;

    /* renamed from: s, reason: collision with root package name */
    public int f147s;

    /* renamed from: t, reason: collision with root package name */
    public int f148t;

    /* renamed from: u, reason: collision with root package name */
    public long f149u;

    /* renamed from: v, reason: collision with root package name */
    public long f150v;

    /* renamed from: w, reason: collision with root package name */
    public long f151w;

    /* renamed from: x, reason: collision with root package name */
    public long f152x;

    /* renamed from: y, reason: collision with root package name */
    public long f153y;
    public long z;

    public e1(a1.i iVar, u1.z zVar, AudioTrack audioTrack, int i10, int i11, int i12) {
        this.f131a = iVar;
        this.f132b = zVar;
        this.f134d = audioTrack;
        try {
            this.f142m = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.f133c = new long[10];
        this.z = -9223372036854775807L;
        this.f153y = -9223372036854775807L;
        this.f138h = new r0(audioTrack, iVar);
        int sampleRate = audioTrack.getSampleRate();
        this.f135e = sampleRate;
        boolean zD = u1.f0.D(i10);
        this.f137g = zD;
        this.f136f = zD ? u1.f0.K(sampleRate, i12 / i11) : -9223372036854775807L;
        this.f146q = 0L;
        this.r = 0L;
        this.A = false;
        this.B = 0L;
        this.f149u = -9223372036854775807L;
        this.f150v = -9223372036854775807L;
        this.f144o = 0L;
        this.f143n = 0L;
        this.f139i = 1.0f;
        this.f140j = -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long a() {
        long j10;
        if (this.f149u != -9223372036854775807L) {
            return Math.min(this.f152x, c());
        }
        this.f132b.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.f145p >= 5) {
            int playState = this.f134d.getPlayState();
            if (playState != 1) {
                long playbackHeadPosition = r4.getPlaybackHeadPosition() & 4294967295L;
                if (Build.VERSION.SDK_INT > 29) {
                    j10 = this.f146q;
                    if (j10 > playbackHeadPosition) {
                        if (this.A) {
                            this.B += j10;
                            this.A = false;
                        } else {
                            this.r++;
                        }
                    }
                    this.f146q = playbackHeadPosition;
                } else if (playbackHeadPosition != 0 || this.f146q <= 0 || playState != 3) {
                    this.f150v = -9223372036854775807L;
                    j10 = this.f146q;
                    if (j10 > playbackHeadPosition) {
                    }
                    this.f146q = playbackHeadPosition;
                } else if (this.f150v == -9223372036854775807L) {
                    this.f150v = jElapsedRealtime;
                }
            }
            this.f145p = jElapsedRealtime;
        }
        return this.f146q + this.B + (this.r << 32);
    }

    public final long b(long j10) {
        int i10 = this.f148t;
        int i11 = this.f135e;
        long jMax = Math.max(0L, (i10 == 0 ? this.f149u != -9223372036854775807L ? u1.f0.K(i11, c()) : u1.f0.K(i11, a()) : u1.f0.s(j10 + this.f141k, this.f139i)) - this.f143n);
        return this.f149u != -9223372036854775807L ? Math.min(u1.f0.K(i11, this.f152x), jMax) : jMax;
    }

    public final long c() {
        if (this.f134d.getPlayState() == 2) {
            return this.f151w;
        }
        this.f132b.getClass();
        return this.f151w + u1.f0.M(u1.f0.s(u1.f0.G(SystemClock.elapsedRealtime()) - this.f149u, this.f139i), this.f135e, 1000000L, RoundingMode.UP);
    }

    public final void d(long j10) {
        long j11 = this.f140j;
        if (j11 == -9223372036854775807L || j10 < j11) {
            return;
        }
        long jRound = j10 - j11;
        float f10 = this.f139i;
        String str = u1.f0.f15206a;
        if (f10 != 1.0f) {
            double d10 = jRound;
            double d11 = f10;
            Double.isNaN(d10);
            Double.isNaN(d11);
            jRound = Math.round(d10 / d11);
        }
        this.f132b.getClass();
        final long jCurrentTimeMillis = System.currentTimeMillis() - u1.f0.R(jRound);
        this.f140j = -9223372036854775807L;
        a1 a1Var = (a1) this.f131a.f76b;
        u1.m mVar = a1Var.f92j;
        mVar.getClass();
        if (Thread.currentThread() == mVar.f15243a) {
            a1Var.f92j.e(-1, new u1.j() { // from class: a2.x0
                @Override // u1.j
                /* renamed from: a */
                public final void mo12a(Object obj) {
                    a1.i iVar;
                    i1 i1Var = (i1) obj;
                    n1 n1Var = i1Var.f190b;
                    if (i1Var.equals(n1Var.f246j) && (iVar = n1Var.f249n) != null) {
                        q1 q1Var = (q1) iVar.f76b;
                        q1Var.M1 = true;
                        j0 j0Var = q1Var.A1;
                        Handler handler = j0Var.f195b;
                        if (handler != null) {
                            handler.post(new h0(0, jCurrentTimeMillis, j0Var));
                        }
                    }
                }
            });
        }
    }
}
