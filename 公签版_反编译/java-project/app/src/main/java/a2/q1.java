package a2;

import android.content.Context;
import android.content.ContextWrapper;
import android.media.AudioDeviceInfo;
import android.media.LoudnessCodecController;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import j$.util.Objects;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import net.engio.mbassy.listener.MessageHandler;
import ua.i8;

/* loaded from: classes.dex */
public final class q1 extends d2.u implements y1.k0 {
    public final j0 A1;
    public final n1 B1;
    public final v3.f C1;
    public int D1;
    public boolean E1;
    public boolean F1;
    public r1.p G1;
    public r1.p H1;
    public long I1;
    public boolean J1;
    public boolean K1;
    public boolean L1;
    public boolean M1;
    public int N1;
    public boolean O1;
    public long P1;

    /* renamed from: z1, reason: collision with root package name */
    public final Context f281z1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q1(ContextWrapper contextWrapper, d2.m mVar, Handler handler, y1.t tVar, n1 n1Var) {
        super(contextWrapper.getApplicationContext(), 1, mVar, 44100.0f);
        v3.f fVar = Build.VERSION.SDK_INT >= 35 ? new v3.f((byte) 0, 9) : null;
        this.f281z1 = contextWrapper.getApplicationContext();
        this.B1 = n1Var;
        this.C1 = fVar;
        this.N1 = -1000;
        this.A1 = new j0(handler, tVar, 0);
        this.P1 = -9223372036854775807L;
    }

    public final int C0(r1.p pVar) {
        p pVarA;
        n1 n1Var = this.B1;
        if (n1Var.X) {
            pVarA = p.f267d;
        } else {
            u uVarB = ((d1) n1Var.r).b(n1Var.g(pVar, -1));
            o oVar = new o();
            oVar.f260a = uVarB.f321a;
            oVar.f261b = uVarB.f322b;
            oVar.f262c = uVarB.f323c;
            pVarA = oVar.a();
        }
        if (!pVarA.f268a) {
            return 0;
        }
        int i10 = pVarA.f269b ? 1536 : 512;
        return pVarA.f270c ? i10 | 2048 : i10;
    }

    public final int D0(d2.q qVar, r1.p pVar) {
        if ("OMX.google.raw.decoder".equals(qVar.f4294a) && Build.VERSION.SDK_INT == 23 && !u1.f0.F(this.f281z1)) {
            return -1;
        }
        return pVar.f13524p;
    }

    public final void E0() {
        long jMax;
        ArrayDeque arrayDeque;
        long j10;
        long jM;
        l();
        n1 n1Var = this.B1;
        if (!n1Var.n() || n1Var.F) {
            jMax = Long.MIN_VALUE;
        } else {
            long jMin = Math.min(n1Var.f254t.a(), u1.f0.K(((x) n1Var.f251p.f210e).f351b, n1Var.j()));
            while (true) {
                arrayDeque = n1Var.f244h;
                if (arrayDeque.isEmpty() || jMin < ((l1) arrayDeque.getFirst()).f226c) {
                    break;
                } else {
                    n1Var.f257w = (l1) arrayDeque.remove();
                }
            }
            l1 l1Var = n1Var.f257w;
            long j11 = jMin - l1Var.f226c;
            long jS = u1.f0.s(j11, l1Var.f224a.f13452a);
            boolean zIsEmpty = arrayDeque.isEmpty();
            v3.f fVar = n1Var.f237b;
            if (zIsEmpty) {
                s1.r rVar = (s1.r) fVar.f16476d;
                if (rVar.g()) {
                    if (rVar.f13962n >= 1024) {
                        long j12 = rVar.f13961m;
                        rVar.f13959j.getClass();
                        long jN = j12 - (r12.f13943i.n() * (r12.f13944j * r12.f13936b));
                        int i10 = rVar.f13957h.f13905a;
                        int i11 = rVar.f13956g.f13905a;
                        jM = i10 == i11 ? u1.f0.M(j11, jN, rVar.f13962n, RoundingMode.DOWN) : u1.f0.M(j11, jN * i10, rVar.f13962n * i11, RoundingMode.DOWN);
                    } else {
                        double d10 = rVar.f13952c;
                        double d11 = j11;
                        Double.isNaN(d10);
                        Double.isNaN(d11);
                        jM = (long) (d10 * d11);
                    }
                    j11 = jM;
                }
                l1 l1Var2 = n1Var.f257w;
                j10 = l1Var2.f225b + j11;
                l1Var2.f227d = j11 - jS;
            } else {
                l1 l1Var3 = n1Var.f257w;
                j10 = l1Var3.f225b + jS + l1Var3.f227d;
            }
            long j13 = ((s1) fVar.f16475c).f311q;
            jMax = u1.f0.K(((x) n1Var.f251p.f210e).f351b, j13) + j10;
            long j14 = n1Var.Z;
            if (j13 > j14) {
                long jK = u1.f0.K(((x) n1Var.f251p.f210e).f351b, j13 - j14);
                n1Var.Z = j13;
                n1Var.f236a0 += jK;
                if (n1Var.f238b0 == null) {
                    n1Var.f238b0 = new Handler(Looper.myLooper());
                }
                n1Var.f238b0.removeCallbacksAndMessages(null);
                n1Var.f238b0.postDelayed(new h(2, n1Var), 100L);
            }
        }
        if (jMax != Long.MIN_VALUE) {
            if (!this.J1) {
                jMax = Math.max(this.I1, jMax);
            }
            this.I1 = jMax;
            this.J1 = false;
        }
    }

    @Override // d2.u
    public final y1.d G(d2.q qVar, r1.p pVar, r1.p pVar2, boolean z) {
        y1.d dVarB = qVar.b(pVar, pVar2);
        boolean z4 = this.K == null && x0(pVar2);
        int i10 = dVarB.f18612e;
        if (z4) {
            i10 |= 32768;
        }
        if (D0(qVar, pVar2) > this.D1) {
            i10 |= 64;
        }
        int i11 = i10;
        return new y1.d(qVar.f4294a, pVar, pVar2, i11 != 0 ? 0 : dVarB.f18611d, i11);
    }

    @Override // d2.u
    public final float O(float f10, r1.p pVar, r1.p[] pVarArr) {
        int iMax = -1;
        for (r1.p pVar2 : pVarArr) {
            int i10 = pVar2.H;
            if (i10 != -1) {
                iMax = Math.max(iMax, i10);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return f10 * iMax;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
    @Override // d2.u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ArrayList P(d2.l lVar, r1.p pVar, boolean z) {
        u7.y0 y0VarR;
        int i10 = 0;
        if (pVar.f13523o == null) {
            y0VarR = u7.y0.f15549e;
        } else if (this.B1.h(pVar) != 0) {
            List listE = d2.c0.e("audio/raw", false, false);
            d2.q qVar = listE.isEmpty() ? null : (d2.q) listE.get(0);
            y0VarR = qVar != null ? u7.g0.r(qVar) : d2.c0.g(lVar, pVar, z, false);
        }
        HashMap map = d2.c0.f4247a;
        ArrayList arrayList = new ArrayList(y0VarR);
        Collections.sort(arrayList, new d2.v(new d2.w(this.f281z1, i10, pVar)));
        return arrayList;
    }

    @Override // d2.u
    public final long Q(long j10, long j11, boolean z) {
        long jM;
        n1 n1Var = this.B1;
        boolean z4 = n1Var.l() && this.P1 != -9223372036854775807L;
        if (!this.O1) {
            return (z4 || this.f4327k1) ? 1000000L : 10000L;
        }
        if (!n1Var.n()) {
            jM = -9223372036854775807L;
        } else if (k1.a(n1Var.f251p)) {
            jM = u1.f0.K(((x) n1Var.f251p.f210e).f351b, n1Var.f254t.f83a.getBufferSizeInFrames());
        } else {
            long bufferSizeInFrames = n1Var.f254t.f83a.getBufferSizeInFrames();
            int iJ = l2.b.j(((x) n1Var.f251p.f210e).f350a);
            a9.o.t(iJ != -2147483647);
            jM = u1.f0.M(bufferSizeInFrames, 1000000L, iJ, RoundingMode.DOWN);
        }
        if (!this.M1 || !z4 || jM == -9223372036854775807L) {
            return 10000L;
        }
        float fMin = Math.min(jM, this.P1 - j10);
        r1.h0 h0Var = n1Var.f258x;
        return Math.max(10000L, (long) ((fMin / (h0Var != null ? h0Var.f13452a : 1.0f)) / 2.0f));
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d8  */
    @Override // d2.u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ba.i S(d2.q qVar, r1.p pVar, MediaCrypto mediaCrypto, float f10) {
        boolean z;
        int iIntValue;
        r1.p[] pVarArr = this.f18561j;
        pVarArr.getClass();
        int iD0 = D0(qVar, pVar);
        int i10 = 0;
        if (pVarArr.length != 1) {
            for (r1.p pVar2 : pVarArr) {
                if (qVar.b(pVar, pVar2).f18611d != 0) {
                    iD0 = Math.max(iD0, D0(qVar, pVar2));
                }
            }
        }
        this.D1 = iD0;
        int i11 = Build.VERSION.SDK_INT;
        String str = qVar.f4294a;
        if (i11 < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(Build.MANUFACTURER)) {
            String str2 = Build.DEVICE;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                z = true;
            }
        } else {
            z = false;
        }
        this.E1 = z;
        this.F1 = str.equals("OMX.google.opus.decoder") || str.equals("c2.android.opus.decoder") || str.equals("OMX.google.vorbis.decoder") || str.equals("c2.android.vorbis.decoder");
        int i12 = this.D1;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", qVar.f4296c);
        mediaFormat.setInteger("channel-count", pVar.G);
        int i13 = pVar.H;
        mediaFormat.setInteger("sample-rate", i13);
        u1.a.o(mediaFormat, pVar.r);
        u1.a.n(mediaFormat, "max-input-size", i12);
        mediaFormat.setInteger(MessageHandler.Properties.Priority, 0);
        if (f10 != -1.0f) {
            if (i11 == 23) {
                String str3 = Build.MODEL;
                if (!"ZTE B2017G".equals(str3) && !"AXON 7 mini".equals(str3)) {
                    mediaFormat.setFloat("operating-rate", f10);
                }
            }
        }
        String str4 = pVar.f13523o;
        if ("audio/ac4".equals(str4)) {
            Pair pairB = u1.c.b(pVar);
            if (pairB != null) {
                u1.a.n(mediaFormat, "profile", ((Integer) pairB.first).intValue());
                u1.a.n(mediaFormat, "level", ((Integer) pairB.second).intValue());
            }
            if (i11 <= 28) {
                mediaFormat.setInteger("ac4-is-sync", 1);
            }
        }
        n1 n1Var = this.B1;
        if (i11 >= 24) {
            r1.o oVar = new r1.o();
            oVar.f13492n = r1.e0.l("audio/raw");
            oVar.F = pVar.G;
            oVar.G = i13;
            oVar.H = 4;
            if (n1Var.h(new r1.p(oVar)) == 2) {
                mediaFormat.setInteger("pcm-encoding", 4);
            }
        }
        if (i11 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        if (i11 >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.N1));
        }
        r1.p pVar3 = null;
        if (Objects.equals(str4, "audio/iamf")) {
            y yVar = n1Var.r;
            g gVar = yVar instanceof d1 ? ((d1) yVar).f123h : null;
            int i14 = 12;
            if (gVar == null) {
                u1.a.p("AudioCapabilities from the AudioSink are null, using default stereo output layout.");
                mediaFormat.setInteger("channel-mask", 12);
                mediaFormat.setInteger("max-output-channel-count", 2);
            } else {
                u7.j0 j0Var = p1.f271a;
                Iterator it = gVar.f170d.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        iIntValue = 0;
                        break;
                    }
                    Integer num = (Integer) it.next();
                    iIntValue = num.intValue();
                    if (p1.f271a.contains(num)) {
                        break;
                    }
                }
                if (iIntValue != 0) {
                    i14 = iIntValue;
                } else {
                    Iterator it2 = gVar.f169c.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        Integer num2 = (Integer) it2.next();
                        int iIntValue2 = num2.intValue();
                        if (p1.f271a.contains(num2)) {
                            i10 = iIntValue2;
                            break;
                        }
                    }
                    if (i10 != 0) {
                        i14 = i10;
                    }
                }
                int iBitCount = Integer.bitCount(i14);
                mediaFormat.setInteger("channel-mask", i14);
                mediaFormat.setInteger("max-output-channel-count", iBitCount);
            }
        }
        E(mediaFormat);
        if ("audio/raw".equals(qVar.f4295b) && !"audio/raw".equals(str4)) {
            pVar3 = pVar;
        }
        this.H1 = pVar3;
        return new ba.i(qVar, mediaFormat, pVar, null, mediaCrypto, this.C1);
    }

    @Override // d2.u
    public final void T(x1.g gVar) {
        r1.p pVar;
        k1 k1Var;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 29 || (pVar = gVar.f18085c) == null || !Objects.equals(pVar.f13523o, "audio/opus") || !this.Y0) {
            return;
        }
        ByteBuffer byteBuffer = gVar.f18090h;
        byteBuffer.getClass();
        r1.p pVar2 = gVar.f18085c;
        pVar2.getClass();
        if (byteBuffer.remaining() == 8) {
            int i11 = (int) ((byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / 1000000000);
            n1 n1Var = this.B1;
            a1 a1Var = n1Var.f254t;
            if (a1Var == null || !a1Var.c() || (k1Var = n1Var.f251p) == null || !((x) k1Var.f210e).f360k) {
                return;
            }
            a1 a1Var2 = n1Var.f254t;
            if (i10 < 29) {
                a1Var2.getClass();
            } else {
                a1Var2.f83a.setOffloadDelayPadding(pVar2.J, i11);
            }
        }
    }

    @Override // d2.u
    public final void Z(Exception exc) {
        u1.a.g("Audio codec error", exc);
        j0 j0Var = this.A1;
        Handler handler = j0Var.f195b;
        if (handler != null) {
            handler.post(new a0(j0Var, exc, 0));
        }
    }

    @Override // y1.k0
    public final long a() {
        if (this.f18559h == 2) {
            E0();
        }
        return this.I1;
    }

    @Override // d2.u
    public final void a0(long j10, long j11, String str) {
        j0 j0Var = this.A1;
        Handler handler = j0Var.f195b;
        if (handler != null) {
            handler.post(new b0(j0Var, str, j10, j11, 0));
        }
    }

    @Override // y1.k0
    public final boolean b() {
        boolean z = this.L1;
        this.L1 = false;
        return z;
    }

    @Override // d2.u
    public final void b0(y1.b bVar) {
        j0 j0Var = this.A1;
        Handler handler = j0Var.f195b;
        if (handler != null) {
            handler.post(new c0(j0Var, 1, bVar));
        }
    }

    @Override // y1.k0
    public final r1.h0 c() {
        return this.B1.f258x;
    }

    @Override // d2.u
    public final void c0(String str) {
        j0 j0Var = this.A1;
        Handler handler = j0Var.f195b;
        if (handler != null) {
            handler.post(new c0(j0Var, 0, str));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x009b  */
    @Override // d2.u, y1.a, y1.x0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(int i10, Object obj) throws IllegalStateException {
        v3.f fVar;
        n1 n1Var = this.B1;
        if (i10 == 2) {
            obj.getClass();
            float fFloatValue = ((Float) obj).floatValue();
            if (n1Var.H != fFloatValue) {
                n1Var.H = fFloatValue;
                if (n1Var.n()) {
                    n1Var.f254t.f83a.setVolume(n1Var.H);
                    return;
                }
                return;
            }
            return;
        }
        if (i10 == 3) {
            r1.d dVar = (r1.d) obj;
            dVar.getClass();
            if (n1Var.f255u.equals(dVar)) {
                return;
            }
            n1Var.f255u = dVar;
            if (n1Var.V) {
                return;
            }
            n1Var.r();
            return;
        }
        if (i10 == 6) {
            r1.e eVar = (r1.e) obj;
            eVar.getClass();
            if (n1Var.S.equals(eVar)) {
                return;
            }
            if (n1Var.f254t != null) {
                n1Var.S.getClass();
            }
            n1Var.S = eVar;
            return;
        }
        if (i10 == 12) {
            AudioDeviceInfo audioDeviceInfoF = a.f(obj);
            n1Var.T = audioDeviceInfoF;
            a1 a1Var = n1Var.f254t;
            if (a1Var != null) {
                a1Var.f83a.setPreferredDevice(audioDeviceInfoF);
                return;
            }
            return;
        }
        if (i10 == 16) {
            obj.getClass();
            this.N1 = ((Integer) obj).intValue();
            d2.n nVar = this.R;
            if (nVar != null && Build.VERSION.SDK_INT >= 35) {
                Bundle bundle = new Bundle();
                bundle.putInt("importance", Math.max(0, -this.N1));
                nVar.e(bundle);
                return;
            }
            return;
        }
        if (i10 == 9) {
            obj.getClass();
            n1Var.f259y = ((Boolean) obj).booleanValue();
            l1 l1Var = new l1(n1Var.w() ? r1.h0.f13451d : n1Var.f258x, -9223372036854775807L, -9223372036854775807L);
            if (n1Var.n()) {
                n1Var.f256v = l1Var;
                return;
            } else {
                n1Var.f257w = l1Var;
                return;
            }
        }
        if (i10 == 10) {
            obj.getClass();
            int iIntValue = ((Integer) obj).intValue();
            if (n1Var.R) {
                if (n1Var.Q == iIntValue) {
                    n1Var.R = false;
                    if (n1Var.Q != iIntValue) {
                    }
                }
            } else if (n1Var.Q != iIntValue) {
                n1Var.Q = iIntValue;
                n1Var.P = iIntValue != 0;
                n1Var.r();
            }
            if (Build.VERSION.SDK_INT < 35 || (fVar = this.C1) == null) {
                return;
            }
            fVar.N(iIntValue);
            return;
        }
        if (i10 == 19) {
            obj.getClass();
            int iIntValue2 = ((Integer) obj).intValue();
            AtomicInteger atomicInteger = n1.f234c0;
            if (iIntValue2 == 0 || iIntValue2 == -1) {
                iIntValue2 = -1;
            }
            if (n1Var.U == iIntValue2) {
                return;
            }
            n1Var.U = iIntValue2;
            n1Var.r();
            return;
        }
        if (i10 != 20) {
            super.d(i10, obj);
            return;
        }
        obj.getClass();
        y yVar = (y) obj;
        if (yVar.equals(n1Var.r)) {
            return;
        }
        ((d1) n1Var.r).d();
        n1Var.r = yVar;
        h1 h1Var = n1Var.f253s;
        if (h1Var != null) {
            d1 d1Var = (d1) yVar;
            d1Var.f();
            if (d1Var.f121f == null) {
                d1Var.f121f = new u1.m(Thread.currentThread());
            }
            d1Var.f121f.a(h1Var);
        }
        n1Var.r();
    }

    @Override // d2.u
    public final y1.d d0(i8 i8Var) {
        r1.p pVar = (r1.p) i8Var.f15742c;
        pVar.getClass();
        this.G1 = pVar;
        y1.d dVarD0 = super.d0(i8Var);
        j0 j0Var = this.A1;
        Handler handler = j0Var.f195b;
        if (handler != null) {
            handler.post(new e0(j0Var, pVar, dVarD0, 0));
        }
        return dVarD0;
    }

    @Override // y1.k0
    public final void e(r1.h0 h0Var) {
        n1 n1Var = this.B1;
        if (n1Var.w()) {
            n1Var.f258x = h0Var;
            n1Var.t();
            return;
        }
        r1.h0 h0Var2 = new r1.h0(u1.f0.f(h0Var.f13452a, 0.1f, 8.0f), u1.f0.f(h0Var.f13453b, 0.1f, 8.0f));
        n1Var.f258x = h0Var2;
        l1 l1Var = new l1(h0Var2, -9223372036854775807L, -9223372036854775807L);
        if (n1Var.n()) {
            n1Var.f256v = l1Var;
        } else {
            n1Var.f257w = l1Var;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0106 A[Catch: l0 -> 0x0104, TryCatch #0 {l0 -> 0x0104, blocks: (B:42:0x00db, B:45:0x00e3, B:47:0x00e7, B:49:0x00f0, B:53:0x00fe, B:56:0x0106, B:60:0x010d, B:61:0x0112), top: B:66:0x00db }] */
    @Override // d2.u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e0(r1.p pVar, MediaFormat mediaFormat) throws y1.k {
        int i10;
        r1.p pVar2 = this.H1;
        boolean z = true;
        int[] iArr = null;
        if (pVar2 != null) {
            pVar = pVar2;
        } else if (this.R != null) {
            mediaFormat.getClass();
            int iT = "audio/raw".equals(pVar.f13523o) ? pVar.I : (Build.VERSION.SDK_INT < 24 || !mediaFormat.containsKey("pcm-encoding")) ? mediaFormat.containsKey("v-bits-per-sample") ? u1.f0.t(mediaFormat.getInteger("v-bits-per-sample"), ByteOrder.LITTLE_ENDIAN) : 2 : mediaFormat.getInteger("pcm-encoding");
            r1.o oVar = new r1.o();
            oVar.f13492n = r1.e0.l("audio/raw");
            oVar.H = iT;
            oVar.I = pVar.J;
            oVar.J = pVar.K;
            oVar.f13490k = pVar.l;
            oVar.f13480a = pVar.f13510a;
            oVar.f13481b = pVar.f13511b;
            oVar.f13482c = u7.g0.m(pVar.f13512c);
            oVar.f13483d = pVar.f13513d;
            oVar.f13484e = pVar.f13514e;
            oVar.f13485f = pVar.f13515f;
            oVar.F = mediaFormat.getInteger("channel-count");
            oVar.G = mediaFormat.getInteger("sample-rate");
            r1.p pVar3 = new r1.p(oVar);
            boolean z4 = this.E1;
            int i11 = pVar3.G;
            if (z4 && i11 == 6 && (i10 = pVar.G) < 6) {
                iArr = new int[i10];
                for (int i12 = 0; i12 < i10; i12++) {
                    iArr[i12] = i12;
                }
            } else if (this.F1) {
                if (i11 == 3) {
                    iArr = new int[]{0, 2, 1};
                } else if (i11 == 5) {
                    iArr = new int[]{0, 2, 1, 3, 4};
                } else if (i11 == 6) {
                    iArr = new int[]{0, 2, 1, 5, 3, 4};
                } else if (i11 == 7) {
                    iArr = new int[]{0, 2, 1, 6, 5, 3, 4};
                } else if (i11 == 8) {
                    iArr = new int[]{0, 2, 1, 7, 5, 6, 3, 4};
                }
            }
            pVar = pVar3;
        }
        try {
            int i13 = Build.VERSION.SDK_INT;
            n1 n1Var = this.B1;
            if (i13 >= 29) {
                if (this.Y0) {
                    y1.b1 b1Var = this.f18555d;
                    b1Var.getClass();
                    if (b1Var.f18585a != 0) {
                        y1.b1 b1Var2 = this.f18555d;
                        b1Var2.getClass();
                        int i14 = b1Var2.f18585a;
                        n1Var.getClass();
                        if (i13 < 29) {
                            z = false;
                        }
                        a9.o.t(z);
                        n1Var.f245i = i14;
                    } else {
                        n1Var.getClass();
                        if (i13 < 29) {
                            z = false;
                        }
                        a9.o.t(z);
                        n1Var.f245i = 0;
                    }
                }
            }
            n1Var.c(pVar, iArr);
        } catch (l0 e7) {
            throw f(e7, e7.f223a, false, 5001);
        }
    }

    @Override // d2.u
    public final void f0() {
        this.B1.getClass();
    }

    @Override // d2.u
    public final void h0() {
        this.B1.E = true;
    }

    @Override // y1.a
    public final String j() {
        return "MediaCodecAudioRenderer";
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0071  */
    @Override // d2.u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean k0(long j10, long j11, d2.n nVar, ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z, boolean z4, r1.p pVar) throws y1.k {
        int i13;
        int i14;
        byteBuffer.getClass();
        this.P1 = -9223372036854775807L;
        if (this.H1 != null && (i11 & 2) != 0) {
            nVar.getClass();
            nVar.h(i10);
            return true;
        }
        n1 n1Var = this.B1;
        if (z) {
            if (nVar != null) {
                nVar.h(i10);
            }
            this.f4331o1.f18592f += i12;
            n1Var.E = true;
            return true;
        }
        try {
            if (!n1Var.k(j12, i12, byteBuffer)) {
                this.P1 = j12;
                return false;
            }
            if (nVar != null) {
                nVar.h(i10);
            }
            this.f4331o1.f18591e += i12;
            return true;
        } catch (m0 e7) {
            r1.p pVar2 = this.G1;
            if (this.Y0) {
                y1.b1 b1Var = this.f18555d;
                b1Var.getClass();
                i14 = b1Var.f18585a != 0 ? 5004 : 5001;
            }
            throw f(e7, pVar2, e7.f229a, i14);
        } catch (o0 e10) {
            if (this.Y0) {
                y1.b1 b1Var2 = this.f18555d;
                b1Var2.getClass();
                i13 = b1Var2.f18585a != 0 ? 5003 : 5002;
            }
            throw f(e10, pVar, e10.f264b, i13);
        }
    }

    @Override // y1.a
    public final boolean l() {
        if (this.f4327k1) {
            n1 n1Var = this.B1;
            if (!n1Var.n() || (n1Var.L && !n1Var.l())) {
                return true;
            }
        }
        return false;
    }

    @Override // y1.a
    public final boolean m() {
        return this.B1.l();
    }

    @Override // d2.u, y1.a
    public final void n() {
        j0 j0Var = this.A1;
        this.K1 = true;
        this.G1 = null;
        this.P1 = -9223372036854775807L;
        this.M1 = false;
        try {
            this.B1.f();
            try {
                super.n();
            } finally {
            }
        } catch (Throwable th2) {
            try {
                super.n();
                throw th2;
            } finally {
            }
        }
    }

    @Override // d2.u
    public final void n0() throws IllegalStateException, y1.k {
        try {
            n1 n1Var = this.B1;
            if (!n1Var.L && n1Var.n() && n1Var.e()) {
                n1Var.p();
                n1Var.L = true;
            }
            long j10 = this.f4332p1.f4315f;
            if (j10 != -9223372036854775807L) {
                this.P1 = j10;
            }
        } catch (o0 e7) {
            throw f(e7, e7.f265c, e7.f264b, this.Y0 ? 5003 : 5002);
        }
    }

    @Override // y1.a
    public final void o(boolean z, boolean z4) throws IllegalStateException {
        y1.c cVar = new y1.c();
        this.f4331o1 = cVar;
        j0 j0Var = this.A1;
        Handler handler = j0Var.f195b;
        if (handler != null) {
            handler.post(new d0(j0Var, cVar, 1));
        }
        y1.b1 b1Var = this.f18555d;
        b1Var.getClass();
        boolean z10 = b1Var.f18586b;
        n1 n1Var = this.B1;
        if (z10) {
            a9.o.t(n1Var.P);
            if (!n1Var.V) {
                n1Var.V = true;
                n1Var.r();
            }
        } else if (n1Var.V) {
            n1Var.V = false;
            n1Var.r();
        }
        z1.i iVar = this.f18557f;
        iVar.getClass();
        n1Var.f248m = iVar;
        u1.z zVar = this.f18558g;
        zVar.getClass();
        ((d1) n1Var.r).f122g = zVar;
        n1Var.f249n = new a1.i(3, this);
    }

    @Override // d2.u, y1.a
    public final void p(long j10, boolean z, boolean z4) throws IllegalStateException {
        super.p(j10, z, z4);
        this.B1.f();
        this.I1 = j10;
        this.P1 = -9223372036854775807L;
        this.L1 = false;
        this.M1 = false;
        this.J1 = true;
    }

    @Override // y1.a
    public final void q() {
        v3.f fVar;
        ((d1) this.B1.r).d();
        if (Build.VERSION.SDK_INT < 35 || (fVar = this.C1) == null) {
            return;
        }
        ((HashSet) fVar.f16474b).clear();
        LoudnessCodecController loudnessCodecController = (LoudnessCodecController) fVar.f16476d;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
        }
    }

    @Override // y1.a
    public final void r() throws IllegalStateException {
        n1 n1Var = this.B1;
        this.L1 = false;
        this.M1 = false;
        this.P1 = -9223372036854775807L;
        try {
            try {
                this.Y0 = false;
                o0();
                m0();
                a1.i iVar = this.K;
                if (iVar != null) {
                    iVar.C(null);
                }
                this.K = null;
            } catch (Throwable th2) {
                a1.i iVar2 = this.K;
                if (iVar2 != null) {
                    iVar2.C(null);
                }
                this.K = null;
                throw th2;
            }
        } finally {
            if (this.K1) {
                this.K1 = false;
                n1Var.s();
            }
        }
    }

    @Override // y1.a
    public final void s() throws IllegalStateException {
        this.B1.o();
        this.O1 = true;
    }

    @Override // y1.a
    public final void t() throws IllegalStateException {
        E0();
        this.O1 = false;
        n1 n1Var = this.B1;
        n1Var.O = false;
        if (n1Var.n()) {
            a1 a1Var = n1Var.f254t;
            e1 e1Var = a1Var.f88f;
            e1Var.f141k = 0L;
            e1Var.f148t = 0;
            e1Var.f147s = 0;
            e1Var.l = 0L;
            e1Var.f153y = -9223372036854775807L;
            e1Var.z = -9223372036854775807L;
            if (e1Var.f149u == -9223372036854775807L) {
                e1Var.f138h.a(0);
            }
            e1Var.f151w = e1Var.a();
            if (!a1Var.f93k || a1Var.c()) {
                a1Var.f83a.pause();
            }
        }
        this.M1 = false;
    }

    @Override // d2.u
    public final boolean x0(r1.p pVar) {
        y1.b1 b1Var = this.f18555d;
        b1Var.getClass();
        if (b1Var.f18585a != 0) {
            int iC0 = C0(pVar);
            if ((iC0 & 512) != 0) {
                y1.b1 b1Var2 = this.f18555d;
                b1Var2.getClass();
                if (b1Var2.f18585a == 2 || (iC0 & 1024) != 0 || (pVar.J == 0 && pVar.K == 0)) {
                    return true;
                }
            }
        }
        return this.B1.h(pVar) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ac  */
    @Override // d2.u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int y0(d2.l lVar, r1.p pVar) {
        int iC0;
        u7.y0 y0VarR;
        d2.q qVar;
        boolean z;
        if (!r1.e0.h(pVar.f13523o)) {
            return ta.q.a(0, 0, 0, 0);
        }
        boolean z4 = true;
        int i10 = pVar.P;
        boolean z10 = i10 != 0;
        boolean z11 = i10 == 0 || i10 == 2;
        int i11 = 8;
        n1 n1Var = this.B1;
        if (z11) {
            if (z10) {
                List listE = d2.c0.e("audio/raw", false, false);
                if ((listE.isEmpty() ? null : (d2.q) listE.get(0)) != null) {
                }
            }
            iC0 = C0(pVar);
            if (n1Var.h(pVar) != 0) {
                return ta.q.a(4, 8, 32, iC0);
            }
        } else {
            iC0 = 0;
        }
        String str = pVar.f13523o;
        if ("audio/raw".equals(str) && n1Var.h(pVar) == 0) {
            return ta.q.a(1, 0, 0, 0);
        }
        r1.o oVar = new r1.o();
        oVar.f13492n = r1.e0.l("audio/raw");
        oVar.F = pVar.G;
        oVar.G = pVar.H;
        oVar.H = 2;
        if (n1Var.h(new r1.p(oVar)) == 0) {
            return ta.q.a(1, 0, 0, 0);
        }
        if (str == null) {
            y0VarR = u7.y0.f15549e;
        } else if (n1Var.h(pVar) != 0) {
            List listE2 = d2.c0.e("audio/raw", false, false);
            d2.q qVar2 = listE2.isEmpty() ? null : (d2.q) listE2.get(0);
            y0VarR = qVar2 != null ? u7.g0.r(qVar2) : d2.c0.g(lVar, pVar, false, false);
        }
        if (y0VarR.isEmpty()) {
            return ta.q.a(1, 0, 0, 0);
        }
        if (!z11) {
            return ta.q.a(2, 0, 0, 0);
        }
        d2.q qVar3 = (d2.q) y0VarR.get(0);
        Context context = this.f281z1;
        boolean zE = qVar3.e(context, pVar);
        if (zE) {
            qVar = qVar3;
            z4 = zE;
            z = true;
        } else {
            for (int i12 = 1; i12 < y0VarR.f15551d; i12++) {
                qVar = (d2.q) y0VarR.get(i12);
                if (qVar.e(context, pVar)) {
                    z = false;
                    break;
                }
            }
            qVar = qVar3;
            z4 = zE;
            z = true;
        }
        int i13 = z4 ? 4 : 3;
        if (z4 && qVar.f(pVar)) {
            i11 = 16;
        }
        return (qVar.f4300g ? 64 : 0) | i13 | i11 | 32 | (z ? 128 : 0) | iC0;
    }

    @Override // y1.a
    public final y1.k0 i() {
        return this;
    }
}
