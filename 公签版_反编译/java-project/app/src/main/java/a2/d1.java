package a2;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.Spatializer;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import j$.util.Objects;
import java.math.RoundingMode;
import java.util.List;

/* loaded from: classes.dex */
public final class d1 implements y {

    /* renamed from: a, reason: collision with root package name */
    public final Context f116a;

    /* renamed from: b, reason: collision with root package name */
    public final o1 f117b;

    /* renamed from: c, reason: collision with root package name */
    public final g1 f118c;

    /* renamed from: d, reason: collision with root package name */
    public final a1.i f119d;

    /* renamed from: e, reason: collision with root package name */
    public final float f120e;

    /* renamed from: f, reason: collision with root package name */
    public u1.m f121f;

    /* renamed from: g, reason: collision with root package name */
    public u1.z f122g;

    /* renamed from: h, reason: collision with root package name */
    public g f123h;

    /* renamed from: i, reason: collision with root package name */
    public l f124i;

    /* renamed from: j, reason: collision with root package name */
    public Looper f125j;

    /* renamed from: k, reason: collision with root package name */
    public Context f126k;

    public d1(c1 c1Var) {
        Context context = c1Var.f108a;
        this.f116a = context;
        g1 g1Var = c1Var.f109b;
        g1Var.getClass();
        this.f118c = g1Var;
        this.f117b = c1Var.f110c;
        this.f123h = c1Var.f111d;
        this.f119d = context == null ? null : new a1.i(2, this);
        this.f120e = c1Var.f112e;
        this.f122g = u1.z.f15315a;
    }

    public final a1 a(x xVar) throws UnsupportedOperationException, v, IllegalArgumentException {
        Context context;
        Context context2;
        try {
            int i10 = xVar.f357h;
            int i11 = xVar.f358i;
            if (i11 == -1 || (context2 = this.f116a) == null || Build.VERSION.SDK_INT < 34) {
                context = null;
            } else {
                Context context3 = this.f126k;
                if (context3 == null || context3.getDeviceId() != i11) {
                    this.f126k = context2.createDeviceContext(i11);
                }
                context = this.f126k;
                i10 = 0;
            }
            AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(xVar.f353d ? new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build() : xVar.f356g.a()).setAudioFormat(new AudioFormat.Builder().setSampleRate(xVar.f351b).setChannelMask(xVar.f352c).setEncoding(xVar.f350a).build()).setTransferMode(1).setBufferSizeInBytes(xVar.f355f).setSessionId(i10);
            int i12 = Build.VERSION.SDK_INT;
            if (i12 >= 29) {
                sessionId.setOffloadedPlayback(xVar.f354e);
            }
            if (i12 >= 34 && context != null) {
                sessionId.setContext(context);
            }
            AudioTrack audioTrackBuild = sessionId.build();
            if (audioTrackBuild.getState() == 1) {
                return new a1(audioTrackBuild, xVar, this.f119d, this.f120e, this.f122g);
            }
            try {
                audioTrackBuild.release();
            } catch (Exception unused) {
            }
            throw new v();
        } catch (IllegalArgumentException e7) {
            e = e7;
            throw new v(e);
        } catch (UnsupportedOperationException e10) {
            e = e10;
            throw new v(e);
        }
    }

    public final u b(s sVar) {
        e(sVar);
        g1 g1Var = this.f118c;
        r1.p pVar = sVar.f296a;
        r1.d dVar = sVar.f297b;
        p pVarQ = g1Var.Q(dVar, pVar);
        t tVar = new t();
        int i10 = 0;
        if (!Objects.equals(pVar.f13523o, "audio/raw") ? this.f123h.c(dVar, pVar) != null : pVar.I == 2) {
            i10 = 2;
        }
        tVar.f319d = i10;
        tVar.f316a = pVarQ.f268a;
        tVar.f317b = pVarQ.f269b;
        tVar.f318c = pVarQ.f270c;
        return tVar.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0180  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final x c(s sVar) throws r {
        int iIntValue;
        int iB;
        boolean z;
        int iO;
        char c7;
        boolean z4;
        boolean zEquals;
        int i10;
        int iMax;
        boolean z10;
        boolean z11;
        int i11;
        r1.d dVar;
        int iG;
        int iJ;
        e(sVar);
        r1.p pVar = sVar.f296a;
        boolean zEquals2 = Objects.equals(pVar.f13523o, "audio/raw");
        r1.d dVar2 = sVar.f297b;
        String str = pVar.f13523o;
        int i12 = pVar.G;
        if (zEquals2) {
            iB = pVar.I;
            a9.o.k(u1.f0.D(iB));
            iIntValue = u1.f0.n(i12);
            iO = u1.f0.o(iB) * i12;
            z = false;
            c7 = 0;
        } else {
            boolean z12 = sVar.f299d;
            p pVarQ = z12 ? this.f118c.Q(dVar2, pVar) : p.f267d;
            if (z12 && pVarQ.f268a) {
                str.getClass();
                iB = r1.e0.b(str, pVar.f13520k);
                int iN = u1.f0.n(i12);
                boolean z13 = pVarQ.f269b;
                iO = -1;
                c7 = 1;
                z4 = true;
                iIntValue = iN;
                z = z13;
                zEquals = Objects.equals(str, "audio/vnd.dts.hd;profile=lbr");
                i10 = pVar.f13519j;
                if (zEquals && i10 == -1) {
                    i10 = 768000;
                }
                int i13 = pVar.H;
                iMax = sVar.f303h;
                if (iMax == -1) {
                    dVar = dVar2;
                    z11 = z;
                    i11 = iIntValue;
                    z10 = z4;
                } else {
                    int minBufferSize = AudioTrack.getMinBufferSize(i13, iIntValue, iB);
                    a9.o.t(minBufferSize != -2);
                    if (iO == -1) {
                        iO = 1;
                    }
                    double d10 = z4 ? this.f120e : 1.0d;
                    this.f117b.getClass();
                    if (c7 != 0) {
                        if (c7 == 1) {
                            z10 = z4;
                            int iJ2 = l2.b.j(iB);
                            a9.o.t(iJ2 != -2147483647);
                            iG = d.b.h((50000000 * iJ2) / 1000000);
                        } else {
                            if (c7 != 2) {
                                throw new IllegalArgumentException();
                            }
                            int i14 = iB == 5 ? 500000 : iB == 8 ? 1000000 : 250000;
                            if (i10 != -1) {
                                iJ = com.bumptech.glide.d.m(i10, 8, RoundingMode.CEILING);
                            } else {
                                iJ = l2.b.j(iB);
                                a9.o.t(iJ != -2147483647);
                            }
                            z10 = z4;
                            iG = d.b.h((i14 * iJ) / 1000000);
                        }
                        dVar = dVar2;
                        z11 = z;
                        i11 = iIntValue;
                    } else {
                        z10 = z4;
                        long j10 = i13;
                        z11 = z;
                        i11 = iIntValue;
                        long j11 = iO;
                        dVar = dVar2;
                        iG = u1.f0.g(minBufferSize * 4, d.b.h(((250000 * j10) * j11) / 1000000), d.b.h(((750000 * j10) * j11) / 1000000));
                    }
                    double d11 = iG;
                    Double.isNaN(d11);
                    iMax = (((Math.max(minBufferSize, (int) (d11 * d10)) + iO) - 1) / iO) * iO;
                }
                w wVar = new w();
                wVar.f335b = i13;
                wVar.f336c = i11;
                wVar.f334a = iB;
                wVar.f339f = iMax;
                wVar.f341h = sVar.f300e;
                wVar.f340g = dVar;
                wVar.f338e = c7 != 1;
                wVar.f337d = sVar.f302g;
                wVar.f343j = z10;
                wVar.f344k = z11;
                wVar.f342i = sVar.f301f;
                return new x(wVar);
            }
            Pair pairC = this.f123h.c(dVar2, pVar);
            if (pairC == null) {
                throw new r("Unable to configure passthrough for: " + pVar);
            }
            int iIntValue2 = ((Integer) pairC.first).intValue();
            iIntValue = ((Integer) pairC.second).intValue();
            iB = iIntValue2;
            z = false;
            iO = -1;
            c7 = 2;
        }
        z4 = false;
        zEquals = Objects.equals(str, "audio/vnd.dts.hd;profile=lbr");
        i10 = pVar.f13519j;
        if (zEquals) {
            i10 = 768000;
        }
        int i132 = pVar.H;
        iMax = sVar.f303h;
        if (iMax == -1) {
        }
        w wVar2 = new w();
        wVar2.f335b = i132;
        wVar2.f336c = i11;
        wVar2.f334a = iB;
        wVar2.f339f = iMax;
        wVar2.f341h = sVar.f300e;
        wVar2.f340g = dVar;
        wVar2.f338e = c7 != 1;
        wVar2.f337d = sVar.f302g;
        wVar2.f343j = z10;
        wVar2.f344k = z11;
        wVar2.f342i = sVar.f301f;
        return new x(wVar2);
    }

    public final void d() {
        j2.d dVar;
        j2.c cVar;
        Handler handler;
        u1.m mVar = this.f121f;
        if (mVar != null) {
            mVar.d();
        }
        l lVar = this.f124i;
        if (lVar == null || !lVar.f222k) {
            return;
        }
        lVar.f219h = null;
        Context context = lVar.f212a;
        s1.g.v(context).unregisterAudioDeviceCallback(lVar.f215d);
        if (Build.VERSION.SDK_INT >= 32 && (dVar = lVar.f218g) != null) {
            Spatializer spatializer = dVar.f9662a;
            if (spatializer != null && (cVar = dVar.f9665d) != null && (handler = dVar.f9664c) != null) {
                spatializer.removeOnSpatializerStateChangedListener(cVar);
                handler.removeCallbacksAndMessages(null);
            }
            lVar.f218g = null;
        }
        context.unregisterReceiver(lVar.f216e);
        j jVar = lVar.f217f;
        if (jVar != null) {
            jVar.f191a.unregisterContentObserver(jVar);
        }
        lVar.f222k = false;
    }

    public final void e(s sVar) {
        Context context;
        g gVarB;
        int i10 = 0;
        int i11 = 1;
        f();
        l lVar = this.f124i;
        r1.d dVar = sVar.f297b;
        if (lVar == null && (context = this.f116a) != null) {
            l lVar2 = new l(context, new a1.d(i11, this), dVar, sVar.f298c);
            this.f124i = lVar2;
            if (lVar2.f222k) {
                gVarB = lVar2.f219h;
                gVarB.getClass();
            } else {
                lVar2.f222k = true;
                j jVar = lVar2.f217f;
                if (jVar != null) {
                    jVar.f191a.registerContentObserver(jVar.f192b, false, jVar);
                }
                Context context2 = lVar2.f212a;
                AudioManager audioManagerV = s1.g.v(context2);
                Handler handler = lVar2.f214c;
                audioManagerV.registerAudioDeviceCallback(lVar2.f215d, handler);
                if (Build.VERSION.SDK_INT >= 32 && lVar2.f218g == null) {
                    lVar2.f218g = new j2.d(context2, new h(i10, lVar2), Boolean.valueOf(u1.f0.F(context2)));
                }
                gVarB = g.b(context2, context2.registerReceiver(lVar2.f216e, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, handler), lVar2.f221j, lVar2.f220i, lVar2.a());
                lVar2.f219h = gVarB;
            }
            this.f123h = gVarB;
        } else if (lVar != null) {
            AudioDeviceInfo audioDeviceInfo = sVar.f298c;
            if (audioDeviceInfo != null && !audioDeviceInfo.equals(lVar.f220i)) {
                lVar.f220i = audioDeviceInfo;
                r1.d dVar2 = lVar.f221j;
                List listA = lVar.a();
                u7.y0 y0Var = g.f163e;
                IntentFilter intentFilter = new IntentFilter("android.media.action.HDMI_AUDIO_PLUG");
                Context context3 = lVar.f212a;
                lVar.b(g.b(context3, context3.registerReceiver(null, intentFilter), dVar2, audioDeviceInfo, listA));
            }
            l lVar3 = this.f124i;
            if (!Objects.equals(dVar, lVar3.f221j)) {
                lVar3.f221j = dVar;
                AudioDeviceInfo audioDeviceInfo2 = lVar3.f220i;
                List listA2 = lVar3.a();
                u7.y0 y0Var2 = g.f163e;
                IntentFilter intentFilter2 = new IntentFilter("android.media.action.HDMI_AUDIO_PLUG");
                Context context4 = lVar3.f212a;
                lVar3.b(g.b(context4, context4.registerReceiver(null, intentFilter2), dVar, audioDeviceInfo2, listA2));
            }
        }
        this.f123h.getClass();
    }

    public final void f() {
        if (this.f116a == null) {
            return;
        }
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.f125j;
        boolean z = looper == null || looper == looperMyLooper;
        String name = looper == null ? "null" : looper.getThread().getName();
        String name2 = looperMyLooper != null ? looperMyLooper.getThread().getName() : "null";
        if (!z) {
            throw new IllegalStateException(android.support.v4.media.session.b.y("AudioTrackAudioOutputProvider accessed on multiple threads: %s and %s", name, name2));
        }
        this.f125j = looperMyLooper;
    }
}
