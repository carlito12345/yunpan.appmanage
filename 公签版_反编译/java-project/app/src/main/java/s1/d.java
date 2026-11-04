package s1;

import a2.g0;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import u1.f0;

/* loaded from: classes.dex */
public final class d implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f13888a;

    /* renamed from: b, reason: collision with root package name */
    public final AudioManager.OnAudioFocusChangeListener f13889b;

    public d(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
        this.f13889b = onAudioFocusChangeListener;
        Looper looper = handler.getLooper();
        String str = f0.f15206a;
        this.f13888a = new Handler(looper, null);
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i10) {
        f0.J(this.f13888a, new g0(i10, 3, this));
    }
}
