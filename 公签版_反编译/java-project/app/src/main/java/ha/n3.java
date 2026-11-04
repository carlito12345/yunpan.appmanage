package ha;

import android.media.audiofx.LoudnessEnhancer;
import android.os.Build;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public final /* synthetic */ class n3 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7459a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r3 f7460b;

    public /* synthetic */ n3(r3 r3Var, int i10) {
        this.f7459a = i10;
        this.f7460b = r3Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException, IOException {
        int i10;
        switch (this.f7459a) {
            case 0:
                this.f7460b.f7665h.setText("试听");
                return;
            default:
                r3 r3Var = this.f7460b;
                r3Var.getClass();
                try {
                    byte[] bArr = new byte[1024];
                    FileInputStream fileInputStream = new FileInputStream(r3Var.C.f18365b);
                    while (true) {
                        int i11 = fileInputStream.read(bArr);
                        if (i11 != -1 && !r3Var.l) {
                            r3Var.f7669m.write(bArr, 0, i11);
                        }
                    }
                } catch (Exception unused) {
                }
                LoudnessEnhancer loudnessEnhancer = r3Var.B;
                if (loudnessEnhancer != null) {
                    try {
                        loudnessEnhancer.release();
                    } catch (Exception unused2) {
                    }
                    r3Var.B = null;
                }
                try {
                    int i12 = r3Var.f7674t;
                    if (i12 >= 0 && (i10 = r3Var.f7675v) >= 0) {
                        if (i12 >= 100) {
                            com.yunpan.appmanage.carsdk.j0.f3843a.h(i12 - 100, i10);
                        } else {
                            r3Var.f7678y.setStreamVolume(i12, i10, 0);
                        }
                        r3Var.f7674t = -1;
                        r3Var.f7675v = -1;
                    }
                    r3Var.f7669m.stop();
                    if (Build.VERSION.SDK_INT >= 23) {
                        r3Var.f7669m.setPreferredDevice(null);
                    }
                    r3Var.f7669m.flush();
                } catch (Exception unused3) {
                }
                try {
                    r3Var.f7669m.release();
                } catch (Exception unused4) {
                } catch (Throwable th2) {
                    r3Var.f7669m = null;
                    throw th2;
                }
                r3Var.f7669m = null;
                r3Var.c();
                if (r3Var.l) {
                    return;
                }
                r3Var.f7665h.post(new n3(r3Var, 0));
                return;
        }
    }
}
