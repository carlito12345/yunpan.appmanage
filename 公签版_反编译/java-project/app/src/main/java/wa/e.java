package wa;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.yunpan.appmanage.service.AccService;
import ua.g8;

/* loaded from: classes.dex */
public final class e implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AccService f17664a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17665b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Intent f17666c;

    public e(int i10, Intent intent, AccService accService) {
        this.f17664a = accService;
        this.f17665b = i10;
        this.f17666c = intent;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        AccService accService = this.f17664a;
        try {
            accService.unbindService(this);
        } catch (Exception unused) {
        }
        System.out.getClass();
        int i10 = this.f17665b;
        if (i10 == 8002 || i10 == 8004) {
            accService.N0.submit(new g8(11, this.f17666c));
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        System.out.getClass();
        this.f17664a.unbindService(this);
    }
}
