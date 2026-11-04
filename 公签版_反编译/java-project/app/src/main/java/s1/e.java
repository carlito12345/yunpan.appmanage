package s1;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final int f13890a;

    /* renamed from: b, reason: collision with root package name */
    public final AudioManager.OnAudioFocusChangeListener f13891b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f13892c;

    /* renamed from: d, reason: collision with root package name */
    public final r1.d f13893d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f13894e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f13895f;

    public e(int i10, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, r1.d dVar, boolean z, boolean z4) {
        this.f13890a = i10;
        this.f13892c = handler;
        this.f13893d = dVar;
        this.f13894e = z;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 26) {
            this.f13891b = new d(onAudioFocusChangeListener, handler);
        } else {
            this.f13891b = onAudioFocusChangeListener;
        }
        if (i11 >= 26) {
            this.f13895f = new AudioFocusRequest.Builder(i10).setAudioAttributes(dVar.a()).setWillPauseWhenDucked(z).setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler).setAcceptsDelayedFocusGain(z4).build();
        } else {
            this.f13895f = null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f13890a == eVar.f13890a && this.f13894e == eVar.f13894e && Objects.equals(this.f13891b, eVar.f13891b) && Objects.equals(this.f13892c, eVar.f13892c) && Objects.equals(this.f13893d, eVar.f13893d);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f13890a), this.f13891b, this.f13892c, this.f13893d, Boolean.valueOf(this.f13894e));
    }
}
