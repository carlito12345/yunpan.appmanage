package ua;

import android.os.IBinder;
import com.autolink.adapterinterface.car.ALCarPropertyEvent;
import com.autolink.adapterinterface.car.IALCarVehicleControlPropertyListener;
import com.yunpan.appmanage.ui.ActivityJieTText;

/* loaded from: classes.dex */
public final class x2 implements IALCarVehicleControlPropertyListener {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityJieTText f16031e;

    public x2(ActivityJieTText activityJieTText) {
        this.f16031e = activityJieTText;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return null;
    }

    @Override // com.autolink.adapterinterface.car.IALCarVehicleControlPropertyListener
    public final void notifyCarVehicleControlPropertyEvent(ALCarPropertyEvent aLCarPropertyEvent) {
        this.f16031e.R.setText("车辆控制属性回调: " + aLCarPropertyEvent.getId() + " , " + aLCarPropertyEvent.getValue());
    }
}
