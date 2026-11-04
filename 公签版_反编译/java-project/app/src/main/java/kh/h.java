package kh;

import a2.w0;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.accessibility.AccessibilityNodeInfo;
import fa.b0;
import ha.wd;
import java.util.HashMap;
import ua.i8;

/* loaded from: classes3.dex */
public final class h implements wd {

    /* renamed from: b, reason: collision with root package name */
    public static h f10352b;

    /* renamed from: a, reason: collision with root package name */
    public final Object f10353a;

    public /* synthetic */ h(Object obj) {
        this.f10353a = obj;
    }

    public static p000if.a a(p000if.a aVar) {
        new i8(6);
        aVar.getClass();
        new HashMap();
        throw null;
    }

    public static h b(int i10, int i11, int i12, boolean z) {
        int i13 = Build.VERSION.SDK_INT;
        return i13 >= 21 ? new h(AccessibilityNodeInfo.CollectionInfo.obtain(i10, i11, z, i12)) : i13 >= 19 ? new h(AccessibilityNodeInfo.CollectionInfo.obtain(i10, i11, z)) : new h((Object) null);
    }

    public void c() {
        synchronized (this.f10353a) {
        }
    }

    @Override // ha.wd
    public void t() {
        w0 w0Var = b0.f5652a;
        String str = "rm -rf '" + this.f10353a + "'";
        w0Var.getClass();
        w0.h(str);
    }

    public h(int i10) {
        switch (i10) {
            case 3:
                this.f10353a = new Object();
                new Handler(Looper.getMainLooper(), new o7.d(0, this));
                break;
            default:
                this.f10353a = new Object();
                break;
        }
    }

    @Override // ha.wd
    public void D() {
    }
}
