package h5;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseBooleanArray;
import com.yunpan.appmanage.ui.ActivityJiliE01;
import ha.wd;

/* loaded from: classes.dex */
public final class d0 implements wd {

    /* renamed from: a, reason: collision with root package name */
    public boolean f6546a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6547b;

    public /* synthetic */ d0(Object obj, boolean z) {
        this.f6547b = obj;
        this.f6546a = z;
    }

    @Override // ha.wd
    public void D() {
        ActivityJiliE01.x((ActivityJiliE01) this.f6547b, this.f6546a, true);
    }

    public void a(int i10) {
        a9.o.t(!this.f6546a);
        ((SparseBooleanArray) this.f6547b).append(i10, true);
    }

    public r1.n b() {
        a9.o.t(!this.f6546a);
        this.f6546a = true;
        return new r1.n((SparseBooleanArray) this.f6547b);
    }

    public boolean c() {
        return this.f6546a;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean d(int i10, CharSequence charSequence) {
        if (charSequence == null || i10 < 0 || charSequence.length() - i10 < 0) {
            throw new IllegalArgumentException();
        }
        if (((v0.h) this.f6547b) == null) {
            return c();
        }
        char c7 = 2;
        for (int i11 = 0; i11 < i10 && c7 == 2; i11++) {
            byte directionality = Character.getDirectionality(charSequence.charAt(i11));
            d0 d0Var = v0.i.f16318a;
            if (directionality == 0) {
                c7 = 1;
            } else if (directionality != 1 && directionality != 2) {
                switch (directionality) {
                    case 14:
                    case 15:
                        break;
                    case 16:
                    case 17:
                        break;
                    default:
                        c7 = 2;
                        break;
                }
            } else {
                c7 = 0;
            }
        }
        if (c7 == 0) {
            return true;
        }
        if (c7 != 1) {
            return c();
        }
        return false;
    }

    public synchronized void e(z zVar, boolean z) {
        try {
            if (this.f6546a || z) {
                ((Handler) this.f6547b).obtainMessage(1, zVar).sendToTarget();
            } else {
                this.f6546a = true;
                zVar.recycle();
                this.f6546a = false;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // ha.wd
    public void t() {
        ActivityJiliE01.x((ActivityJiliE01) this.f6547b, this.f6546a, false);
    }

    public d0(int i10) {
        switch (i10) {
            case 1:
                this.f6547b = new SparseBooleanArray();
                break;
            default:
                this.f6547b = new Handler(Looper.getMainLooper(), new c0(0));
                break;
        }
    }

    public d0(v0.h hVar, boolean z) {
        this.f6547b = hVar;
        this.f6546a = z;
    }
}
