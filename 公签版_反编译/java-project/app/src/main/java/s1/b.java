package s1;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import ha.e1;
import java.io.Serializable;
import u1.a0;
import u1.b0;
import y1.f0;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final t7.n f13876a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f13877b;

    /* renamed from: c, reason: collision with root package name */
    public f0 f13878c;

    /* renamed from: d, reason: collision with root package name */
    public r1.d f13879d;

    /* renamed from: e, reason: collision with root package name */
    public int f13880e;

    /* renamed from: f, reason: collision with root package name */
    public int f13881f;

    /* renamed from: g, reason: collision with root package name */
    public float f13882g = 1.0f;

    /* renamed from: h, reason: collision with root package name */
    public e f13883h;

    public b(Context context, Looper looper, f0 f0Var) {
        f2.o oVar = new f2.o(1, context);
        this.f13876a = oVar instanceof Serializable ? new t7.o(oVar) : new t7.p(oVar);
        this.f13878c = f0Var;
        this.f13877b = new Handler(looper);
        this.f13880e = 0;
    }

    public final void a() {
        int i10 = this.f13880e;
        if (i10 == 1 || i10 == 0 || this.f13883h == null) {
            return;
        }
        AudioManager audioManager = (AudioManager) this.f13876a.get();
        e eVar = this.f13883h;
        if (Build.VERSION.SDK_INT < 26) {
            audioManager.abandonAudioFocus(eVar.f13891b);
            return;
        }
        Object obj = eVar.f13895f;
        obj.getClass();
        audioManager.abandonAudioFocusRequest(n5.a.i(obj));
    }

    public final void b(int i10) {
        f0 f0Var = this.f13878c;
        if (f0Var != null) {
            b0 b0Var = f0Var.f18660h;
            b0Var.getClass();
            a0 a0VarC = b0.c();
            a0VarC.f15183a = b0Var.f15188a.obtainMessage(33, i10, 0);
            a0VarC.b();
        }
    }

    public final void c(int i10) {
        if (this.f13880e == i10) {
            return;
        }
        this.f13880e = i10;
        float f10 = i10 == 4 ? 0.2f : 1.0f;
        if (this.f13882g == f10) {
            return;
        }
        this.f13882g = f10;
        f0 f0Var = this.f13878c;
        if (f0Var != null) {
            f0Var.f18660h.f(34);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int d(int i10, boolean z) {
        int i11;
        int iRequestAudioFocus;
        int volumeControlStream = 0;
        if (i10 == 1 || (i11 = this.f13881f) != 1) {
            a();
            c(0);
            return 1;
        }
        if (!z) {
            int i12 = this.f13880e;
            if (i12 != 1) {
                return i12 != 3 ? 1 : 0;
            }
            return -1;
        }
        if (this.f13880e == 2) {
            return 1;
        }
        e eVar = this.f13883h;
        if (eVar == null) {
            c cVar = eVar == null ? new c(i11) : new c(eVar);
            r1.d dVar = this.f13879d;
            boolean z4 = dVar != null && dVar.f13427a == 1;
            dVar.getClass();
            cVar.f13885b = dVar;
            cVar.f13886c = z4;
            cVar.f13887d = true;
            e1 e1Var = new e1(2, this);
            Handler handler = this.f13877b;
            handler.getClass();
            this.f13883h = new e(cVar.f13884a, e1Var, handler, cVar.f13885b, cVar.f13886c, cVar.f13887d);
        }
        AudioManager audioManager = (AudioManager) this.f13876a.get();
        e eVar2 = this.f13883h;
        int i13 = Build.VERSION.SDK_INT;
        if (i13 >= 26) {
            Object obj = eVar2.f13895f;
            obj.getClass();
            iRequestAudioFocus = audioManager.requestAudioFocus(n5.a.i(obj));
        } else {
            AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = eVar2.f13891b;
            r1.d dVar2 = eVar2.f13893d;
            dVar2.getClass();
            if (i13 >= 26) {
                try {
                    volumeControlStream = dVar2.a().getVolumeControlStream();
                } catch (RuntimeException unused) {
                }
                if (volumeControlStream == Integer.MIN_VALUE) {
                    volumeControlStream = 3;
                }
                iRequestAudioFocus = audioManager.requestAudioFocus(onAudioFocusChangeListener, volumeControlStream, eVar2.f13890a);
            } else {
                switch (dVar2.f13428b) {
                    case 3:
                        volumeControlStream = 8;
                        break;
                    case 4:
                        volumeControlStream = 4;
                        break;
                    case 5:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                        volumeControlStream = 5;
                        break;
                    case 6:
                        volumeControlStream = 2;
                        break;
                    case 11:
                        volumeControlStream = 10;
                        break;
                    case 13:
                        volumeControlStream = 1;
                        break;
                }
                iRequestAudioFocus = audioManager.requestAudioFocus(onAudioFocusChangeListener, volumeControlStream, eVar2.f13890a);
            }
        }
        if (iRequestAudioFocus == 1 || iRequestAudioFocus == 2) {
            c(2);
            return 1;
        }
        c(1);
        return -1;
    }
}
