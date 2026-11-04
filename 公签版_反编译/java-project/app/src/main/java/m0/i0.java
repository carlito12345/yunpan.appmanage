package m0;

import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class i0 {

    /* renamed from: d, reason: collision with root package name */
    public static String f10759d;

    /* renamed from: g, reason: collision with root package name */
    public static h0 f10762g;

    /* renamed from: a, reason: collision with root package name */
    public final Context f10763a;

    /* renamed from: b, reason: collision with root package name */
    public final NotificationManager f10764b;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f10758c = new Object();

    /* renamed from: e, reason: collision with root package name */
    public static HashSet f10760e = new HashSet();

    /* renamed from: f, reason: collision with root package name */
    public static final Object f10761f = new Object();

    public i0(Context context) {
        this.f10763a = context;
        this.f10764b = (NotificationManager) context.getSystemService("notification");
    }

    public final void a(int i10) {
        this.f10764b.cancel(null, i10);
        if (Build.VERSION.SDK_INT <= 19) {
            e0 e0Var = new e0(this.f10763a.getPackageName(), i10);
            synchronized (f10761f) {
                try {
                    if (f10762g == null) {
                        f10762g = new h0(this.f10763a.getApplicationContext());
                    }
                    f10762g.f10755b.obtainMessage(0, e0Var).sendToTarget();
                } finally {
                }
            }
        }
    }
}
