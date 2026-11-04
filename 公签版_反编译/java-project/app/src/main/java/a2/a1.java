package a2;

import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.os.Build;
import java.lang.reflect.Method;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class a1 {

    /* renamed from: t, reason: collision with root package name */
    public static final Object f80t = new Object();

    /* renamed from: u, reason: collision with root package name */
    public static ScheduledExecutorService f81u;

    /* renamed from: v, reason: collision with root package name */
    public static int f82v;

    /* renamed from: a, reason: collision with root package name */
    public final AudioTrack f83a;

    /* renamed from: b, reason: collision with root package name */
    public final x f84b;

    /* renamed from: c, reason: collision with root package name */
    public final float f85c;

    /* renamed from: d, reason: collision with root package name */
    public final a1.i f86d;

    /* renamed from: e, reason: collision with root package name */
    public w0 f87e;

    /* renamed from: f, reason: collision with root package name */
    public final e1 f88f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f89g;

    /* renamed from: h, reason: collision with root package name */
    public final int f90h;

    /* renamed from: i, reason: collision with root package name */
    public final v3.f f91i;

    /* renamed from: j, reason: collision with root package name */
    public final u1.m f92j = new u1.m(Thread.currentThread());

    /* renamed from: k, reason: collision with root package name */
    public boolean f93k;
    public long l;

    /* renamed from: m, reason: collision with root package name */
    public long f94m;

    /* renamed from: n, reason: collision with root package name */
    public long f95n;

    /* renamed from: o, reason: collision with root package name */
    public ByteBuffer f96o;

    /* renamed from: p, reason: collision with root package name */
    public int f97p;

    /* renamed from: q, reason: collision with root package name */
    public int f98q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f99s;

    public a1(AudioTrack audioTrack, x xVar, a1.i iVar, float f10, u1.z zVar) {
        this.f83a = audioTrack;
        this.f84b = xVar;
        this.f85c = f10;
        this.f86d = iVar;
        boolean zD = u1.f0.D(xVar.f350a);
        this.f89g = zD;
        if (zD) {
            this.f90h = u1.f0.o(xVar.f350a) * Integer.bitCount(xVar.f352c);
        } else {
            this.f90h = -1;
        }
        this.f88f = new e1(new a1.i(1, this), zVar, audioTrack, xVar.f350a, this.f90h, xVar.f355f);
        if (Build.VERSION.SDK_INT >= 24 && iVar != null) {
            this.f87e = new w0(audioTrack, iVar);
        }
        this.f91i = c() ? new v3.f(this) : null;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b9 A[Catch: Exception -> 0x00cf, TRY_LEAVE, TryCatch #0 {Exception -> 0x00cf, blocks: (B:27:0x0094, B:29:0x00b9), top: B:135:0x0094 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0299  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long a() {
        e1 e1Var;
        AudioTrack audioTrack;
        u1.z zVar;
        boolean z;
        e1 e1Var2;
        long jB;
        int playState;
        int i10;
        boolean z4;
        float f10;
        boolean timestamp;
        long j10;
        long j11;
        float f11;
        int i11;
        Method method;
        long jMax;
        e1 e1Var3 = this.f88f;
        AudioTrack audioTrack2 = e1Var3.f134d;
        int playState2 = audioTrack2.getPlayState();
        r0 r0Var = e1Var3.f138h;
        u1.z zVar2 = e1Var3.f132b;
        if (playState2 == 3) {
            zVar2.getClass();
            long jNanoTime = System.nanoTime() / 1000;
            zVar = zVar2;
            if (jNanoTime - e1Var3.l >= 30000) {
                long jK = u1.f0.K(e1Var3.f135e, e1Var3.a());
                if (jK != 0) {
                    int i12 = e1Var3.f147s;
                    float f12 = e1Var3.f139i;
                    if (f12 != 1.0f) {
                        double d10 = jK;
                        double d11 = f12;
                        Double.isNaN(d10);
                        Double.isNaN(d11);
                        jK = Math.round(d10 / d11);
                    }
                    long[] jArr = e1Var3.f133c;
                    jArr[i12] = jK - jNanoTime;
                    e1Var3.f147s = (e1Var3.f147s + 1) % 10;
                    int i13 = e1Var3.f148t;
                    if (i13 < 10) {
                        e1Var3.f148t = i13 + 1;
                    }
                    e1Var3.l = jNanoTime;
                    e1Var3.f141k = 0L;
                    int i14 = 0;
                    while (true) {
                        int i15 = e1Var3.f148t;
                        if (i14 >= i15) {
                            break;
                        }
                        e1Var3.f141k = (jArr[i14] / i15) + e1Var3.f141k;
                        i14++;
                    }
                    long j12 = e1Var3.f143n;
                    if (e1Var3.f137g && (method = e1Var3.f142m) != null && jNanoTime - e1Var3.f144o >= 500000) {
                        try {
                            Integer num = (Integer) method.invoke(audioTrack2, null);
                            String str = u1.f0.f15206a;
                            long jIntValue = (num.intValue() * 1000) - e1Var3.f136f;
                            e1Var3.f143n = jIntValue;
                            jMax = Math.max(jIntValue, 0L);
                            e1Var3.f143n = jMax;
                            if (jMax > 10000000) {
                                u1.a.p("Ignoring impossibly large audio latency: " + jMax);
                                e1Var3.f143n = 0L;
                            }
                        } catch (Exception unused) {
                            e1Var3.f142m = null;
                        }
                        e1Var3.f144o = jNanoTime;
                    }
                    z4 = j12 == e1Var3.f143n;
                    f10 = e1Var3.f139i;
                    long jB2 = e1Var3.b(jNanoTime);
                    if (!z4 || jNanoTime - r0Var.f288g >= r0Var.f287f) {
                        r0Var.f288g = jNanoTime;
                        q0 q0Var = r0Var.f282a;
                        timestamp = q0Var.f274a.getTimestamp(q0Var.f275b);
                        if (timestamp) {
                            j10 = jNanoTime;
                        } else {
                            long j13 = q0Var.f275b.framePosition;
                            long j14 = q0Var.f277d;
                            if (j14 <= j13) {
                                j10 = jNanoTime;
                            } else if (q0Var.f279f) {
                                j10 = jNanoTime;
                                q0Var.f280g += j14;
                                q0Var.f279f = false;
                            } else {
                                j10 = jNanoTime;
                                q0Var.f276c++;
                            }
                            q0Var.f277d = j13;
                            q0Var.f278e = j13 + q0Var.f280g + (q0Var.f276c << 32);
                        }
                        int i16 = r0Var.f283b;
                        if (timestamp) {
                            e1Var = e1Var3;
                            j11 = j10;
                        } else {
                            long j15 = q0Var.f275b.nanoTime / 1000;
                            e1Var = e1Var3;
                            long jS = u1.f0.s(j10 - (q0Var.f275b.nanoTime / 1000), f10) + u1.f0.K(i16, q0Var.f278e);
                            long jAbs = Math.abs(j15 - j10);
                            a1.i iVar = r0Var.f284c;
                            if (jAbs > 5000000) {
                                long j16 = q0Var.f278e;
                                iVar.getClass();
                                StringBuilder sb2 = new StringBuilder("Spurious audio timestamp (system clock mismatch): ");
                                sb2.append(j16);
                                sb2.append(", ");
                                sb2.append(j15);
                                sb2.append(", ");
                                j11 = j10;
                                sb2.append(j11);
                                sb2.append(", ");
                                sb2.append(jB2);
                                sb2.append(", ");
                                sb2.append(((a1) iVar.f76b).b());
                                u1.a.p(sb2.toString());
                                r0Var.a(4);
                            } else {
                                j11 = j10;
                                if (Math.abs(jS - jB2) > 5000000) {
                                    long j17 = q0Var.f278e;
                                    iVar.getClass();
                                    audioTrack = audioTrack2;
                                    f11 = f10;
                                    u1.a.p("Spurious audio timestamp (frame position mismatch): " + j17 + ", " + j15 + ", " + j11 + ", " + jB2 + ", " + ((a1) iVar.f76b).b());
                                    r0Var.a(4);
                                } else {
                                    audioTrack = audioTrack2;
                                    f11 = f10;
                                    if (r0Var.f285d == 4) {
                                        r0Var.a(0);
                                    }
                                }
                                i11 = r0Var.f285d;
                                if (i11 != 0) {
                                    if (i11 != 1) {
                                        if (i11 != 2) {
                                            if (i11 != 3) {
                                                if (i11 != 4) {
                                                    throw new IllegalStateException();
                                                }
                                            } else if (timestamp) {
                                                r0Var.a(0);
                                            }
                                        } else if (!timestamp) {
                                            r0Var.a(0);
                                        }
                                    } else if (timestamp) {
                                        long j18 = q0Var.f278e;
                                        long j19 = r0Var.f289h;
                                        if (j18 > j19) {
                                            float f13 = f11;
                                            if (Math.abs((u1.f0.s(j11 - (q0Var.f275b.nanoTime / 1000), f13) + u1.f0.K(i16, q0Var.f278e)) - (u1.f0.s(j11 - r0Var.f290i, f13) + u1.f0.K(i16, j19))) < 1000) {
                                                r0Var.a(2);
                                            }
                                        } else if (j11 - r0Var.f286e > 2000000) {
                                            r0Var.a(3);
                                        } else {
                                            r0Var.f289h = q0Var.f278e;
                                            r0Var.f290i = q0Var.f275b.nanoTime / 1000;
                                        }
                                    } else {
                                        r0Var.a(0);
                                    }
                                } else if (timestamp) {
                                    if (q0Var.f275b.nanoTime / 1000 >= r0Var.f286e) {
                                        r0Var.f289h = q0Var.f278e;
                                        r0Var.f290i = q0Var.f275b.nanoTime / 1000;
                                        r0Var.a(1);
                                    }
                                } else if (j11 - r0Var.f286e > 500000) {
                                    r0Var.a(3);
                                }
                            }
                        }
                        audioTrack = audioTrack2;
                        f11 = f10;
                        i11 = r0Var.f285d;
                        if (i11 != 0) {
                        }
                    }
                }
                e1Var = e1Var3;
                audioTrack = audioTrack2;
            } else {
                long j122 = e1Var3.f143n;
                if (e1Var3.f137g) {
                    Integer num2 = (Integer) method.invoke(audioTrack2, null);
                    String str2 = u1.f0.f15206a;
                    long jIntValue2 = (num2.intValue() * 1000) - e1Var3.f136f;
                    e1Var3.f143n = jIntValue2;
                    jMax = Math.max(jIntValue2, 0L);
                    e1Var3.f143n = jMax;
                    if (jMax > 10000000) {
                    }
                    e1Var3.f144o = jNanoTime;
                }
                if (j122 == e1Var3.f143n) {
                }
                f10 = e1Var3.f139i;
                long jB22 = e1Var3.b(jNanoTime);
                if (!z4) {
                }
                r0Var.f288g = jNanoTime;
                q0 q0Var2 = r0Var.f282a;
                timestamp = q0Var2.f274a.getTimestamp(q0Var2.f275b);
                if (timestamp) {
                }
                int i162 = r0Var.f283b;
                if (timestamp) {
                }
                audioTrack = audioTrack2;
                f11 = f10;
                i11 = r0Var.f285d;
                if (i11 != 0) {
                }
            }
            zVar.getClass();
            long jNanoTime2 = System.nanoTime() / 1000;
            z = r0Var.f285d != 2;
            if (z) {
                e1Var2 = e1Var;
                jB = e1Var2.b(jNanoTime2);
            } else {
                e1Var2 = e1Var;
                float f14 = e1Var2.f139i;
                q0 q0Var3 = r0Var.f282a;
                jB = u1.f0.s(jNanoTime2 - (q0Var3.f275b.nanoTime / 1000), f14) + u1.f0.K(r0Var.f283b, q0Var3.f278e);
            }
            long jH = jB;
            playState = audioTrack.getPlayState();
            if (playState != 3) {
                if (z || ((i10 = r0Var.f285d) != 0 && i10 != 1)) {
                    e1Var2.d(jH);
                }
                long j20 = e1Var2.z;
                if (j20 != -9223372036854775807L) {
                    long j21 = jH - e1Var2.f153y;
                    long jS2 = u1.f0.s(jNanoTime2 - j20, e1Var2.f139i);
                    long j22 = e1Var2.f153y + jS2;
                    long jAbs2 = Math.abs(j22 - jH);
                    if (j21 != 0 && jAbs2 < 1000000) {
                        long j23 = (jS2 * 10) / 100;
                        jH = u1.f0.h(jH, j22 - j23, j22 + j23);
                    }
                }
                e1Var2.z = jNanoTime2;
                e1Var2.f153y = jH;
            } else if (playState == 1) {
                e1Var2.d(jH);
            }
            return jH;
        }
        e1Var = e1Var3;
        audioTrack = audioTrack2;
        zVar = zVar2;
        zVar.getClass();
        long jNanoTime22 = System.nanoTime() / 1000;
        if (r0Var.f285d != 2) {
        }
        if (z) {
        }
        long jH2 = jB;
        playState = audioTrack.getPlayState();
        if (playState != 3) {
        }
        return jH2;
    }

    public final long b() {
        if (!this.f89g) {
            return this.f94m;
        }
        long j10 = this.l;
        long j11 = this.f90h;
        String str = u1.f0.f15206a;
        return ((j10 + j11) - 1) / j11;
    }

    public final boolean c() {
        return Build.VERSION.SDK_INT >= 29 && this.f83a.isOffloadedPlayback();
    }

    public final void d(r1.h0 h0Var) {
        AudioTrack audioTrack = this.f83a;
        try {
            audioTrack.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(u1.f0.f(h0Var.f13452a, 0.1f, this.f85c)).setPitch(u1.f0.f(h0Var.f13453b, 0.1f, 8.0f)).setAudioFallbackMode(2));
        } catch (IllegalArgumentException e7) {
            u1.a.q("Failed to set playback params", e7);
        }
        float speed = audioTrack.getPlaybackParams().getSpeed();
        e1 e1Var = this.f88f;
        e1Var.f139i = speed;
        e1Var.f138h.a(0);
        e1Var.f141k = 0L;
        e1Var.f148t = 0;
        e1Var.f147s = 0;
        e1Var.l = 0L;
        e1Var.f153y = -9223372036854775807L;
        e1Var.z = -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0102  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean e(long j10, int i10, ByteBuffer byteBuffer) {
        x xVar;
        int iWrite;
        a1.i iVar;
        d1 d1Var;
        l lVar;
        int i11;
        int underrunCount;
        long j11 = j10;
        x xVar2 = this.f84b;
        boolean z = this.f89g;
        if (!z && this.f98q == 0) {
            this.f98q = n1.i(byteBuffer, xVar2.f350a);
        }
        u1.m mVar = this.f92j;
        mVar.getClass();
        boolean z4 = Thread.currentThread() == mVar.f15243a;
        AudioTrack audioTrack = this.f83a;
        if (z4) {
            long jB = b();
            if (Build.VERSION.SDK_INT >= 24) {
                underrunCount = audioTrack.getUnderrunCount();
                xVar = xVar2;
            } else {
                boolean z10 = this.f99s;
                long jA = a();
                int sampleRate = audioTrack.getSampleRate();
                String str = u1.f0.f15206a;
                xVar = xVar2;
                boolean z11 = jB > u1.f0.M(jA, (long) sampleRate, 1000000L, RoundingMode.UP);
                this.f99s = z11;
                underrunCount = (!z10 || z11 || audioTrack.getPlayState() == 1) ? this.r : this.r + 1;
            }
            boolean z12 = underrunCount > this.r;
            this.r = underrunCount;
            if (z12) {
                mVar.e(-1, new u0(0));
            }
        } else {
            xVar = xVar2;
        }
        int iRemaining = byteBuffer.remaining();
        if (xVar.f353d) {
            if (j11 == Long.MIN_VALUE) {
                j11 = this.f95n;
            } else {
                this.f95n = j11;
            }
            int iRemaining2 = byteBuffer.remaining();
            if (Build.VERSION.SDK_INT >= 26) {
                iWrite = audioTrack.write(byteBuffer, iRemaining2, 1, j11 * 1000);
            } else {
                if (this.f96o == null) {
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
                    this.f96o = byteBufferAllocate;
                    byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
                    this.f96o.putInt(1431633921);
                }
                if (this.f97p == 0) {
                    this.f96o.putInt(4, iRemaining2);
                    this.f96o.putLong(8, j11 * 1000);
                    i11 = 0;
                    this.f96o.position(0);
                    this.f97p = iRemaining2;
                } else {
                    i11 = 0;
                }
                int iRemaining3 = this.f96o.remaining();
                if (iRemaining3 <= 0) {
                    iWrite = audioTrack.write(byteBuffer, iRemaining2, 1);
                    if (iWrite < 0) {
                        this.f97p = i11;
                    } else {
                        this.f97p -= iWrite;
                    }
                } else {
                    int iWrite2 = audioTrack.write(this.f96o, iRemaining3, 1);
                    if (iWrite2 < 0) {
                        this.f97p = i11;
                        iWrite = iWrite2;
                    } else if (iWrite2 < iRemaining3) {
                        iWrite = 0;
                    }
                }
            }
        } else {
            iWrite = audioTrack.write(byteBuffer, byteBuffer.remaining(), 1);
        }
        if (iWrite >= 0) {
            boolean z13 = iWrite == iRemaining;
            if (z) {
                this.l += iWrite;
            } else if (z13) {
                this.f94m = (this.f98q * i10) + this.f94m;
            }
            return z13;
        }
        boolean z14 = (Build.VERSION.SDK_INT >= 24 && iWrite == -6) || iWrite == -32;
        if (z14 && (iVar = this.f86d) != null && (lVar = (d1Var = (d1) iVar.f76b).f124i) != null) {
            g gVar = g.f164f;
            d1Var.f123h = gVar;
            lVar.b(gVar);
        }
        throw new q(iWrite, z14);
    }
}
