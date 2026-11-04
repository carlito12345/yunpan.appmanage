package fa;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.yunpan.appmanage.shizuku.IUserService;

/* loaded from: classes.dex */
public final class m0 implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o0 f5720a;

    public m0(o0 o0Var) {
        this.f5720a = o0Var;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        o0 o0Var = this.f5720a;
        System.out.getClass();
        if (iBinder != null) {
            try {
                if (iBinder.pingBinder()) {
                    o0Var.f5730e = IUserService.Stub.asInterface(iBinder);
                    o0Var.f5726a = true;
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        System.out.getClass();
    }
}
