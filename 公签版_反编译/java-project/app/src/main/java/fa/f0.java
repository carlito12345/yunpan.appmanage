package fa;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.yunpan.appmanage.base.AppStart;

/* loaded from: classes.dex */
public final class f0 implements ServiceConnection {
    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            AppStart.f3772h.f3773a.b(new oa.g(oa.e.h(iBinder).f()));
            u9.d.r(b.a(AppStart.f3772h)).e0(null);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
