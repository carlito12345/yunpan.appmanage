package ua;

import android.os.IBinder;
import com.autolink.adapterinterface.car.ALCarPropertyEvent;
import com.autolink.adapterinterface.car.IALCarAVMPropertyListener;
import com.yunpan.appmanage.ui.ActivityJieTText;

/* loaded from: classes.dex */
public final class a3 implements IALCarAVMPropertyListener {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityJieTText f15562e;

    public a3(ActivityJieTText activityJieTText) {
        this.f15562e = activityJieTText;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return null;
    }

    @Override // com.autolink.adapterinterface.car.IALCarAVMPropertyListener
    public final void notifyCarAVMPropertyEvent(ALCarPropertyEvent aLCarPropertyEvent) {
        this.f15562e.X.setText("AVM属性: " + aLCarPropertyEvent.getId() + " , " + aLCarPropertyEvent.getValue());
    }
}
