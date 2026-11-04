package ha;

import android.media.AudioTrack;
import android.media.audiofx.LoudnessEnhancer;
import android.os.Build;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public final /* synthetic */ class b3 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6781a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j3 f6782b;

    public /* synthetic */ b3(j3 j3Var, int i10) {
        this.f6781a = i10;
        this.f6782b = j3Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        AudioTrack audioTrack;
        int i10;
        switch (this.f6781a) {
            case 0:
                this.f6782b.l.setText("试听播放");
                return;
            default:
                j3 j3Var = this.f6782b;
                j3Var.getClass();
                try {
                    byte[] bArr = new byte[1024];
                    FileInputStream fileInputStream = new FileInputStream(j3Var.f7239h.f18365b);
                    while (true) {
                        int i11 = fileInputStream.read(bArr);
                        if (i11 != -1 && !j3Var.f7246q) {
                            j3Var.r.write(bArr, 0, i11);
                        }
                    }
                } catch (Exception unused) {
                }
                LoudnessEnhancer loudnessEnhancer = j3Var.D;
                if (loudnessEnhancer != null) {
                    try {
                        loudnessEnhancer.release();
                    } catch (Exception unused2) {
                    }
                    j3Var.D = null;
                }
                try {
                    try {
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
                        if (Build.VERSION.SDK_INT >= 23) {
                            j3Var.r.setPreferredDevice(null);
                        }
                        j3Var.r.stop();
                        j3Var.r.flush();
                        audioTrack = j3Var.r;
                    } catch (Exception unused3) {
                    }
                } catch (Exception unused4) {
                    audioTrack = j3Var.r;
                } catch (Throwable th2) {
                    try {
                        j3Var.r.release();
                    } catch (Exception unused5) {
                    }
                    j3Var.r = null;
                    throw th2;
                }
                audioTrack.release();
                j3Var.r = null;
                j3Var.c();
                if (j3Var.f7246q) {
                    return;
                }
                j3Var.l.post(new b3(j3Var, 0));
                return;
        }
    }
}
