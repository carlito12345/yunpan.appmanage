package ha;

import android.media.MediaPlayer;

/* loaded from: classes.dex */
public final /* synthetic */ class e3 implements MediaPlayer.OnPreparedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6935a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a4 f6936b;

    public /* synthetic */ e3(a4 a4Var, int i10) {
        this.f6935a = i10;
        this.f6936b = a4Var;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        switch (this.f6935a) {
            case 0:
                j3.b((j3) this.f6936b, mediaPlayer);
                break;
            default:
                r3.b((r3) this.f6936b, mediaPlayer);
                break;
        }
    }
}
