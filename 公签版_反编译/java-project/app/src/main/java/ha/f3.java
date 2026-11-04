package ha;

import android.media.MediaPlayer;
import android.media.audiofx.LoudnessEnhancer;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final /* synthetic */ class f3 implements MediaPlayer.OnCompletionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7015a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a4 f7016b;

    public /* synthetic */ f3(a4 a4Var, int i10) {
        this.f7015a = i10;
        this.f7016b = a4Var;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i10;
        int i11;
        switch (this.f7015a) {
            case 0:
                j3 j3Var = (j3) this.f7016b;
                int i12 = j3Var.f7252y;
                if (i12 >= 0 && (i10 = j3Var.z) >= 0) {
                    if (i12 >= 100) {
                        com.yunpan.appmanage.carsdk.j0.f3843a.h(i12 - 100, i10);
                    } else {
                        j3Var.A.setStreamVolume(i12, i10, 0);
                    }
                    j3Var.f7252y = -1;
                    j3Var.z = -1;
                }
                LoudnessEnhancer loudnessEnhancer = j3Var.D;
                if (loudnessEnhancer != null) {
                    try {
                        loudnessEnhancer.release();
                    } catch (Exception unused) {
                    }
                    j3Var.D = null;
                }
                mediaPlayer.release();
                j3Var.c();
                j3Var.f7245p = null;
                j3Var.l.setText("试听播放");
                break;
            default:
                r3 r3Var = (r3) this.f7016b;
                int i13 = r3Var.f7674t;
                if (i13 >= 0 && (i11 = r3Var.f7675v) >= 0) {
                    if (i13 >= 100) {
                        com.yunpan.appmanage.carsdk.j0.f3843a.h(i13 - 100, i11);
                    } else {
                        r3Var.f7678y.setStreamVolume(i13, i11, 0);
                    }
                    r3Var.f7674t = -1;
                    r3Var.f7675v = -1;
                }
                LoudnessEnhancer loudnessEnhancer2 = r3Var.B;
                if (loudnessEnhancer2 != null) {
                    try {
                        loudnessEnhancer2.release();
                    } catch (Exception unused2) {
                    }
                    r3Var.B = null;
                }
                mediaPlayer.release();
                r3Var.c();
                r3Var.f7665h.setText("试听");
                r3Var.f7668k = null;
                break;
        }
    }
}
