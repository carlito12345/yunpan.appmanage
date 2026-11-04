package a2;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import java.util.List;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final Context f212a;

    /* renamed from: b, reason: collision with root package name */
    public final a1.d f213b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f214c;

    /* renamed from: d, reason: collision with root package name */
    public final i f215d;

    /* renamed from: e, reason: collision with root package name */
    public final k f216e;

    /* renamed from: f, reason: collision with root package name */
    public final j f217f;

    /* renamed from: g, reason: collision with root package name */
    public j2.d f218g;

    /* renamed from: h, reason: collision with root package name */
    public g f219h;

    /* renamed from: i, reason: collision with root package name */
    public AudioDeviceInfo f220i;

    /* renamed from: j, reason: collision with root package name */
    public r1.d f221j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f222k;

    public l(Context context, a1.d dVar, r1.d dVar2, AudioDeviceInfo audioDeviceInfo) {
        Context applicationContext = context.getApplicationContext();
        this.f212a = applicationContext;
        this.f213b = dVar;
        this.f221j = dVar2;
        this.f220i = audioDeviceInfo;
        String str = u1.f0.f15206a;
        Looper looperMyLooper = Looper.myLooper();
        Handler handler = new Handler(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper, null);
        this.f214c = handler;
        this.f215d = new i(this);
        this.f216e = new k(0, this);
        u7.y0 y0Var = g.f163e;
        String str2 = Build.MANUFACTURER;
        Uri uriFor = (str2.equals("Amazon") || str2.equals("Xiaomi")) ? Settings.Global.getUriFor("external_surround_sound_enabled") : null;
        this.f217f = uriFor != null ? new j(this, handler, applicationContext.getContentResolver(), uriFor) : null;
    }

    public final List a() {
        j2.d dVar;
        if (Build.VERSION.SDK_INT >= 32 && (dVar = this.f218g) != null) {
            return dVar.b();
        }
        u7.e0 e0Var = u7.g0.f15471b;
        return u7.y0.f15549e;
    }

    public final void b(g gVar) {
        if (!this.f222k || gVar.equals(this.f219h)) {
            return;
        }
        this.f219h = gVar;
        d1 d1Var = (d1) this.f213b.f71b;
        d1Var.f();
        g gVar2 = d1Var.f123h;
        if (gVar2 == null || gVar.equals(gVar2)) {
            return;
        }
        d1Var.f123h = gVar;
        u1.m mVar = d1Var.f121f;
        if (mVar != null) {
            mVar.e(-1, new u0(4));
        }
    }

    public final void c() {
        List listA = a();
        r1.d dVar = this.f221j;
        AudioDeviceInfo audioDeviceInfo = this.f220i;
        u7.y0 y0Var = g.f163e;
        IntentFilter intentFilter = new IntentFilter("android.media.action.HDMI_AUDIO_PLUG");
        Context context = this.f212a;
        b(g.b(context, context.registerReceiver(null, intentFilter), dVar, audioDeviceInfo, listA));
    }
}
