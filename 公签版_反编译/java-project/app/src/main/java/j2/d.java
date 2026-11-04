package j2;

import a2.y0;
import a9.o;
import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import j$.util.Objects;
import java.util.List;
import r1.p;
import s1.g;
import u1.f0;
import u7.g0;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final Spatializer f9662a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f9663b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f9664c;

    /* renamed from: d, reason: collision with root package name */
    public final c f9665d;

    public d(Context context, Runnable runnable, Boolean bool) {
        AudioManager audioManagerV = context == null ? null : g.v(context);
        if (audioManagerV == null || (bool != null && bool.booleanValue())) {
            this.f9662a = null;
            this.f9663b = false;
            this.f9664c = null;
            this.f9665d = null;
            return;
        }
        Spatializer spatializer = audioManagerV.getSpatializer();
        this.f9662a = spatializer;
        this.f9663b = spatializer.getImmersiveAudioLevel() != 0;
        Looper looperMyLooper = Looper.myLooper();
        looperMyLooper.getClass();
        Handler handler = new Handler(looperMyLooper);
        this.f9664c = handler;
        c cVar = new c(runnable);
        this.f9665d = cVar;
        spatializer.addOnSpatializerStateChangedListener(new y0(0, handler), cVar);
    }

    public final boolean a(r1.d dVar, p pVar) throws IllegalArgumentException {
        Spatializer spatializer;
        Spatializer spatializer2 = this.f9662a;
        if (!(spatializer2 != null && this.f9663b && spatializer2.isAvailable() && (spatializer = this.f9662a) != null && spatializer.isEnabled())) {
            return false;
        }
        boolean zEquals = Objects.equals(pVar.f13523o, "audio/eac3-joc");
        int i10 = pVar.G;
        if (!zEquals) {
            String str = pVar.f13523o;
            if (Objects.equals(str, "audio/iamf")) {
                if (i10 == -1) {
                    i10 = 6;
                }
            } else if (Objects.equals(str, "audio/ac4") && (i10 == 18 || i10 == 21)) {
                i10 = 24;
            }
        } else if (i10 == 16) {
            i10 = 12;
        }
        int iN = f0.n(i10);
        if (iN == 0) {
            return false;
        }
        AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(iN);
        int i11 = pVar.H;
        if (i11 != -1) {
            channelMask.setSampleRate(i11);
        }
        Spatializer spatializer3 = this.f9662a;
        spatializer3.getClass();
        return b.c(spatializer3).canBeSpatialized(dVar.a(), channelMask.build());
    }

    public final List b() {
        Spatializer spatializer;
        Spatializer spatializer2 = this.f9662a;
        if (spatializer2 == null || !this.f9663b || !spatializer2.isAvailable() || (spatializer = this.f9662a) == null || !spatializer.isEnabled()) {
            return g0.p();
        }
        if (Build.VERSION.SDK_INT < 36) {
            return g0.r(252);
        }
        Spatializer spatializer3 = this.f9662a;
        o.n(spatializer3);
        return b.c(spatializer3).getSpatializedChannelMasks();
    }
}
