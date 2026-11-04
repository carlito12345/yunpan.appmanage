package ua;

import android.os.IBinder;
import com.autolink.adapterinterface.car.IALCarSteerListener;
import com.yunpan.appmanage.ui.ActivityJieTText;

/* loaded from: classes.dex */
public final class y2 implements IALCarSteerListener {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityJieTText f16051e;

    public y2(ActivityJieTText activityJieTText) {
        this.f16051e = activityJieTText;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return null;
    }

    @Override // com.autolink.adapterinterface.car.IALCarSteerListener
    public final void notifySteerChange(float f10) {
        this.f16051e.S.setText("方向盘转角: " + f10);
    }
}
