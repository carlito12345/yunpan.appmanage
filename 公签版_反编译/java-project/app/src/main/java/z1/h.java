package z1;

import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import android.util.SparseArray;
import d2.s;
import eb.j;
import f2.c0;
import j$.util.Objects;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.Executor;
import r1.l;
import r1.m0;
import r1.n;
import r1.o0;
import r1.p;
import r1.p0;
import r1.q0;
import r1.v;
import r1.w0;
import r1.x0;
import u1.f0;
import u7.e0;
import ua.i8;
import w1.q;
import w1.r;
import w1.y;
import y1.k;
import y1.x;

/* loaded from: classes.dex */
public final class h implements b {
    public int A;
    public boolean B;

    /* renamed from: a, reason: collision with root package name */
    public final Context f19365a;

    /* renamed from: c, reason: collision with root package name */
    public final g f19367c;

    /* renamed from: d, reason: collision with root package name */
    public final PlaybackSession f19368d;

    /* renamed from: j, reason: collision with root package name */
    public String f19374j;

    /* renamed from: k, reason: collision with root package name */
    public PlaybackMetrics.Builder f19375k;
    public int l;

    /* renamed from: o, reason: collision with root package name */
    public k f19378o;

    /* renamed from: p, reason: collision with root package name */
    public i8 f19379p;

    /* renamed from: q, reason: collision with root package name */
    public i8 f19380q;
    public i8 r;

    /* renamed from: s, reason: collision with root package name */
    public p f19381s;

    /* renamed from: t, reason: collision with root package name */
    public p f19382t;

    /* renamed from: u, reason: collision with root package name */
    public p f19383u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f19384v;

    /* renamed from: w, reason: collision with root package name */
    public int f19385w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f19386x;

    /* renamed from: y, reason: collision with root package name */
    public int f19387y;
    public int z;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f19366b = u1.a.h();

    /* renamed from: f, reason: collision with root package name */
    public final p0 f19370f = new p0();

    /* renamed from: g, reason: collision with root package name */
    public final o0 f19371g = new o0();

    /* renamed from: i, reason: collision with root package name */
    public final HashMap f19373i = new HashMap();

    /* renamed from: h, reason: collision with root package name */
    public final HashMap f19372h = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final long f19369e = SystemClock.elapsedRealtime();

    /* renamed from: m, reason: collision with root package name */
    public int f19376m = 0;

    /* renamed from: n, reason: collision with root package name */
    public int f19377n = 0;

    public h(Context context, PlaybackSession playbackSession) {
        this.f19365a = context.getApplicationContext();
        this.f19368d = playbackSession;
        g gVar = new g();
        this.f19367c = gVar;
        gVar.f19361d = this;
    }

    public final boolean a(i8 i8Var) {
        String str;
        if (i8Var != null) {
            String str2 = (String) i8Var.f15741b;
            g gVar = this.f19367c;
            synchronized (gVar) {
                str = gVar.f19363f;
            }
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public final void b() {
        PlaybackMetrics.Builder builder = this.f19375k;
        if (builder != null && this.B) {
            builder.setAudioUnderrunCount(this.A);
            this.f19375k.setVideoFramesDropped(this.f19387y);
            this.f19375k.setVideoFramesPlayed(this.z);
            Long l = (Long) this.f19372h.get(this.f19374j);
            this.f19375k.setNetworkTransferDurationMillis(l == null ? 0L : l.longValue());
            Long l8 = (Long) this.f19373i.get(this.f19374j);
            this.f19375k.setNetworkBytesRead(l8 == null ? 0L : l8.longValue());
            this.f19375k.setStreamSource((l8 == null || l8.longValue() <= 0) ? 0 : 1);
            this.f19366b.execute(new s1.f(this, 22, this.f19375k.build()));
        }
        this.f19375k = null;
        this.f19374j = null;
        this.A = 0;
        this.f19387y = 0;
        this.z = 0;
        this.f19381s = null;
        this.f19382t = null;
        this.f19383u = null;
        this.B = false;
    }

    public final void c(q0 q0Var, c0 c0Var) {
        int iB;
        PlaybackMetrics.Builder builder = this.f19375k;
        if (c0Var == null || (iB = q0Var.b(c0Var.f5236a)) == -1) {
            return;
        }
        o0 o0Var = this.f19371g;
        int i10 = 0;
        q0Var.f(iB, o0Var, false);
        int i11 = o0Var.f13505c;
        p0 p0Var = this.f19370f;
        q0Var.n(i11, p0Var);
        v vVar = p0Var.f13537c.f13627b;
        if (vVar != null) {
            int iZ = f0.z(vVar.f13592a, vVar.f13593b);
            i10 = iZ != 0 ? iZ != 1 ? iZ != 2 ? 1 : 4 : 5 : 3;
        }
        builder.setStreamType(i10);
        if (p0Var.l != -9223372036854775807L && !p0Var.f13544j && !p0Var.f13542h && !p0Var.a()) {
            builder.setMediaDurationMillis(f0.R(p0Var.l));
        }
        builder.setPlaybackType(p0Var.a() ? 2 : 1);
        this.B = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:219:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0430  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x044c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(m0 m0Var, i8 i8Var) throws NumberFormatException {
        j jVar;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z;
        p pVar;
        l lVar;
        int i16;
        if (((n) i8Var.f15741b).f13479a.size() == 0) {
            return;
        }
        for (int i17 = 0; i17 < ((n) i8Var.f15741b).f13479a.size(); i17++) {
            int iA = ((n) i8Var.f15741b).a(i17);
            a aVar = (a) ((SparseArray) i8Var.f15742c).get(iA);
            aVar.getClass();
            if (iA == 0) {
                g gVar = this.f19367c;
                synchronized (gVar) {
                    try {
                        gVar.f19361d.getClass();
                        q0 q0Var = gVar.f19362e;
                        gVar.f19362e = aVar.f19329b;
                        Iterator it = gVar.f19360c.values().iterator();
                        while (it.hasNext()) {
                            f fVar = (f) it.next();
                            if (!fVar.b(q0Var, gVar.f19362e) || fVar.a(aVar)) {
                                it.remove();
                                if (fVar.f19349a.equals(gVar.f19363f)) {
                                    gVar.a(fVar);
                                }
                                if (fVar.f19353e) {
                                    gVar.f19361d.f(aVar, fVar.f19349a);
                                }
                            }
                        }
                        gVar.e(aVar);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } else if (iA == 11) {
                this.f19367c.g(aVar, this.l);
            } else {
                this.f19367c.f(aVar);
            }
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (i8Var.o(0)) {
            a aVar2 = (a) ((SparseArray) i8Var.f15742c).get(0);
            aVar2.getClass();
            if (this.f19375k != null) {
                c(aVar2.f19329b, aVar2.f19331d);
            }
        }
        if (i8Var.o(2) && this.f19375k != null) {
            e0 e0VarListIterator = ((x) m0Var).F().f13625a.listIterator(0);
            loop2: while (true) {
                if (!e0VarListIterator.hasNext()) {
                    lVar = null;
                    break;
                }
                w0 w0Var = (w0) e0VarListIterator.next();
                for (int i18 = 0; i18 < w0Var.f13619a; i18++) {
                    if (w0Var.f13623e[i18] && (lVar = w0Var.f13620b.f13556d[i18].f13526s) != null) {
                        break loop2;
                    }
                }
            }
            if (lVar != null) {
                PlaybackMetrics.Builder builder = this.f19375k;
                int i19 = 0;
                while (true) {
                    if (i19 >= lVar.f13469d) {
                        i16 = 1;
                        break;
                    }
                    UUID uuid = lVar.f13466a[i19].f13462b;
                    if (uuid.equals(r1.f.f13437d)) {
                        i16 = 3;
                        break;
                    } else if (uuid.equals(r1.f.f13438e)) {
                        i16 = 2;
                        break;
                    } else {
                        if (uuid.equals(r1.f.f13436c)) {
                            i16 = 6;
                            break;
                        }
                        i19++;
                    }
                }
                builder.setDrmType(i16);
            }
        }
        if (i8Var.o(1011)) {
            this.A++;
        }
        k kVar = this.f19378o;
        if (kVar == null) {
            i10 = 1;
            i11 = 2;
        } else {
            boolean z4 = this.f19385w == 4;
            int i20 = kVar.f13449a;
            if (i20 == 1001) {
                jVar = new j(20, 0);
            } else {
                boolean z10 = kVar.f18711c == 1;
                int i21 = kVar.f18715g;
                Throwable cause = kVar.getCause();
                cause.getClass();
                int i22 = 24;
                if (!(cause instanceof IOException)) {
                    if (z10 && (i21 == 0 || i21 == 1)) {
                        jVar = new j(35, 0);
                    } else if (z10 && i21 == 3) {
                        jVar = new j(15, 0);
                    } else if (z10 && i21 == 2) {
                        jVar = new j(23, 0);
                    } else {
                        if (cause instanceof s) {
                            jVar = new j(13, f0.r(((s) cause).f4308d));
                        } else if (cause instanceof d2.p) {
                            jVar = new j(14, ((d2.p) cause).f4293a);
                        } else if (cause instanceof OutOfMemoryError) {
                            jVar = new j(14, 0);
                        } else if (cause instanceof a2.m0) {
                            jVar = new j(17, 0);
                        } else if (cause instanceof a2.o0) {
                            jVar = new j(18, ((a2.o0) cause).f263a);
                        } else if (cause instanceof MediaCodec.CryptoException) {
                            int errorCode = ((MediaCodec.CryptoException) cause).getErrorCode();
                            switch (f0.q(errorCode)) {
                                case 6002:
                                    break;
                                case 6003:
                                    i22 = 28;
                                    break;
                                case 6004:
                                    i22 = 25;
                                    break;
                                case 6005:
                                    i22 = 26;
                                    break;
                                default:
                                    i22 = 27;
                                    break;
                            }
                            jVar = new j(i22, errorCode);
                        } else {
                            jVar = new j(22, 0);
                        }
                        this.f19366b.execute(new s1.f(this, 21, new PlaybackErrorEvent.Builder().setTimeSinceCreatedMillis(jElapsedRealtime - this.f19369e).setErrorCode(jVar.f4863a).setSubErrorCode(jVar.f4864b).setException(kVar).build()));
                        i10 = 1;
                        this.B = true;
                        this.f19378o = null;
                        i11 = 2;
                    }
                    this.f19366b.execute(new s1.f(this, 21, new PlaybackErrorEvent.Builder().setTimeSinceCreatedMillis(jElapsedRealtime - this.f19369e).setErrorCode(jVar.f4863a).setSubErrorCode(jVar.f4864b).setException(kVar).build()));
                    i10 = 1;
                    this.B = true;
                    this.f19378o = null;
                    i11 = 2;
                } else if (cause instanceof w1.s) {
                    jVar = new j(5, ((w1.s) cause).f17401c);
                } else {
                    if ((cause instanceof r) || (cause instanceof r1.f0)) {
                        jVar = new j(z4 ? 10 : 11, 0);
                    } else {
                        boolean z11 = cause instanceof q;
                        if (z11 || (cause instanceof y)) {
                            if (u1.p.a(this.f19365a).b() == 1) {
                                jVar = new j(3, 0);
                            } else {
                                Throwable cause2 = cause.getCause();
                                jVar = cause2 instanceof UnknownHostException ? new j(6, 0) : cause2 instanceof SocketTimeoutException ? new j(7, 0) : (z11 && ((q) cause).f17400b == 1) ? new j(4, 0) : new j(8, 0);
                            }
                        } else if (i20 == 1002) {
                            jVar = new j(21, 0);
                        } else if (cause instanceof b2.b) {
                            Throwable cause3 = cause.getCause();
                            cause3.getClass();
                            if (cause3 instanceof MediaDrm.MediaDrmStateException) {
                                int iR = f0.r(((MediaDrm.MediaDrmStateException) cause3).getDiagnosticInfo());
                                switch (f0.q(iR)) {
                                    case 6002:
                                        break;
                                    case 6003:
                                        i22 = 28;
                                        break;
                                    case 6004:
                                        i22 = 25;
                                        break;
                                    case 6005:
                                        i22 = 26;
                                        break;
                                    default:
                                        i22 = 27;
                                        break;
                                }
                                jVar = new j(i22, iR);
                            } else {
                                jVar = cause3 instanceof MediaDrmResetException ? new j(27, 0) : cause3 instanceof NotProvisionedException ? new j(24, 0) : cause3 instanceof DeniedByServerException ? new j(29, 0) : cause3 instanceof b2.i ? new j(23, 0) : cause3 instanceof b2.a ? new j(28, 0) : new j(30, 0);
                            }
                        } else if ((cause instanceof w1.n) && (cause.getCause() instanceof FileNotFoundException)) {
                            Throwable cause4 = cause.getCause();
                            cause4.getClass();
                            Throwable cause5 = cause4.getCause();
                            jVar = ((cause5 instanceof ErrnoException) && ((ErrnoException) cause5).errno == OsConstants.EACCES) ? new j(32, 0) : new j(31, 0);
                        } else {
                            jVar = new j(9, 0);
                        }
                    }
                    this.f19366b.execute(new s1.f(this, 21, new PlaybackErrorEvent.Builder().setTimeSinceCreatedMillis(jElapsedRealtime - this.f19369e).setErrorCode(jVar.f4863a).setSubErrorCode(jVar.f4864b).setException(kVar).build()));
                    i10 = 1;
                    this.B = true;
                    this.f19378o = null;
                    i11 = 2;
                }
            }
            this.f19366b.execute(new s1.f(this, 21, new PlaybackErrorEvent.Builder().setTimeSinceCreatedMillis(jElapsedRealtime - this.f19369e).setErrorCode(jVar.f4863a).setSubErrorCode(jVar.f4864b).setException(kVar).build()));
            i10 = 1;
            this.B = true;
            this.f19378o = null;
            i11 = 2;
        }
        if (i8Var.o(i11)) {
            x0 x0VarF = ((x) m0Var).F();
            boolean zA = x0VarF.a(i11);
            boolean zA2 = x0VarF.a(i10);
            boolean zA3 = x0VarF.a(3);
            if (zA || zA2 || zA3) {
                if (zA) {
                    pVar = null;
                } else {
                    pVar = null;
                    if (!Objects.equals(this.f19381s, null)) {
                        int i23 = this.f19381s == null ? 1 : 0;
                        this.f19381s = null;
                        i12 = 10;
                        i13 = 4;
                        g(1, jElapsedRealtime, null, i23);
                    }
                    if (!zA2 && !Objects.equals(this.f19382t, pVar)) {
                        int i24 = this.f19382t != null ? 1 : 0;
                        this.f19382t = pVar;
                        g(0, jElapsedRealtime, pVar, i24);
                    }
                    if (!zA3 && !Objects.equals(this.f19383u, pVar)) {
                        int i25 = this.f19383u != null ? 1 : 0;
                        this.f19383u = pVar;
                        g(2, jElapsedRealtime, pVar, i25);
                    }
                }
                i12 = 10;
                i13 = 4;
                if (!zA2) {
                    if (this.f19382t != null) {
                    }
                    this.f19382t = pVar;
                    g(0, jElapsedRealtime, pVar, i24);
                }
                if (!zA3) {
                    if (this.f19383u != null) {
                    }
                    this.f19383u = pVar;
                    g(2, jElapsedRealtime, pVar, i25);
                }
            } else {
                i12 = 10;
                i13 = 4;
            }
        }
        if (a(this.f19379p)) {
            p pVar2 = (p) this.f19379p.f15742c;
            if (pVar2.f13530w != -1) {
                if (!Objects.equals(this.f19381s, pVar2)) {
                    int i26 = this.f19381s == null ? 1 : 0;
                    this.f19381s = pVar2;
                    g(1, jElapsedRealtime, pVar2, i26);
                }
                this.f19379p = null;
            }
        }
        if (a(this.f19380q)) {
            p pVar3 = (p) this.f19380q.f15742c;
            if (!Objects.equals(this.f19382t, pVar3)) {
                int i27 = this.f19382t == null ? 1 : 0;
                this.f19382t = pVar3;
                g(0, jElapsedRealtime, pVar3, i27);
            }
            this.f19380q = null;
        }
        if (a(this.r)) {
            p pVar4 = (p) this.r.f15742c;
            if (!Objects.equals(this.f19383u, pVar4)) {
                int i28 = this.f19383u == null ? 1 : 0;
                this.f19383u = pVar4;
                g(2, jElapsedRealtime, pVar4, i28);
            }
            this.r = null;
        }
        switch (u1.p.a(this.f19365a).b()) {
            case 0:
                i14 = 0;
                break;
            case 1:
                i14 = 9;
                break;
            case 2:
                i14 = 2;
                break;
            case 3:
                i14 = 4;
                break;
            case 4:
                i14 = 5;
                break;
            case 5:
                i14 = 6;
                break;
            case 6:
            case 8:
            default:
                i14 = 1;
                break;
            case 7:
                i14 = 3;
                break;
            case 9:
                i14 = 8;
                break;
            case 10:
                i14 = 7;
                break;
        }
        if (i14 != this.f19377n) {
            this.f19377n = i14;
            this.f19366b.execute(new s1.f(this, 20, new NetworkEvent.Builder().setNetworkType(i14).setTimeSinceCreatedMillis(jElapsedRealtime - this.f19369e).build()));
        }
        x xVar = (x) m0Var;
        if (xVar.J() != 2) {
            this.f19384v = false;
        }
        xVar.h0();
        if (xVar.f18853f1.f18829f == null) {
            this.f19386x = false;
        } else if (i8Var.o(i12)) {
            this.f19386x = true;
        }
        int iJ = xVar.J();
        if (this.f19384v) {
            z = true;
            i15 = 5;
        } else if (this.f19386x) {
            z = true;
            i15 = 13;
        } else if (iJ == i13) {
            z = true;
            i15 = 11;
        } else {
            i15 = 12;
            if (iJ == 2) {
                int i29 = this.f19376m;
                if (i29 == 0 || i29 == 2 || i29 == 12) {
                    z = true;
                    i15 = 2;
                } else if (xVar.I()) {
                    i15 = xVar.K() != 0 ? 10 : 6;
                    z = true;
                } else {
                    z = true;
                    i15 = 7;
                }
            } else if (iJ != 3) {
                z = true;
                if (iJ != 1 || this.f19376m == 0) {
                    i15 = this.f19376m;
                }
            } else if (xVar.I()) {
                i15 = xVar.K() != 0 ? 9 : 3;
                z = true;
            } else {
                z = true;
                i15 = 4;
            }
        }
        if (this.f19376m != i15) {
            this.f19376m = i15;
            this.B = z;
            this.f19366b.execute(new s1.f(this, 23, new PlaybackStateEvent.Builder().setState(this.f19376m).setTimeSinceCreatedMillis(jElapsedRealtime - this.f19369e).build()));
        }
        if (i8Var.o(1028)) {
            g gVar2 = this.f19367c;
            a aVar3 = (a) ((SparseArray) i8Var.f15742c).get(1028);
            aVar3.getClass();
            gVar2.b(aVar3);
        }
    }

    public final void e(a aVar, String str) {
        c0 c0Var = aVar.f19331d;
        if (c0Var == null || !c0Var.b()) {
            b();
            this.f19374j = str;
            this.f19375k = new PlaybackMetrics.Builder().setPlayerName("AndroidXMedia3").setPlayerVersion("1.10.1");
            c(aVar.f19329b, c0Var);
        }
    }

    public final void f(a aVar, String str) {
        c0 c0Var = aVar.f19331d;
        if ((c0Var == null || !c0Var.b()) && str.equals(this.f19374j)) {
            b();
        }
        this.f19372h.remove(str);
        this.f19373i.remove(str);
    }

    public final void g(int i10, long j10, p pVar, int i11) {
        int i12;
        TrackChangeEvent.Builder timeSinceCreatedMillis = new TrackChangeEvent.Builder(i10).setTimeSinceCreatedMillis(j10 - this.f19369e);
        if (pVar != null) {
            timeSinceCreatedMillis.setTrackState(1);
            if (i11 != 1) {
                i12 = 3;
                if (i11 != 2) {
                    i12 = i11 != 3 ? 1 : 4;
                }
            } else {
                i12 = 2;
            }
            timeSinceCreatedMillis.setTrackChangeReason(i12);
            String str = pVar.f13522n;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = pVar.f13523o;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = pVar.f13520k;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i13 = pVar.f13519j;
            if (i13 != -1) {
                timeSinceCreatedMillis.setBitrate(i13);
            }
            int i14 = pVar.f13529v;
            if (i14 != -1) {
                timeSinceCreatedMillis.setWidth(i14);
            }
            int i15 = pVar.f13530w;
            if (i15 != -1) {
                timeSinceCreatedMillis.setHeight(i15);
            }
            int i16 = pVar.G;
            if (i16 != -1) {
                timeSinceCreatedMillis.setChannelCount(i16);
            }
            int i17 = pVar.H;
            if (i17 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i17);
            }
            String str4 = pVar.f13513d;
            if (str4 != null) {
                String str5 = f0.f15206a;
                String[] strArrSplit = str4.split("-", -1);
                Pair pairCreate = Pair.create(strArrSplit[0], strArrSplit.length >= 2 ? strArrSplit[1] : null);
                timeSinceCreatedMillis.setLanguage((String) pairCreate.first);
                Object obj = pairCreate.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f10 = pVar.z;
            if (f10 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f10);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.B = true;
        this.f19366b.execute(new s1.f(this, 19, timeSinceCreatedMillis.build()));
    }
}
