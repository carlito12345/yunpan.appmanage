package ua;

import android.os.IBinder;
import com.autolink.adapterinterface.car.ALCarPropertyEvent;
import com.autolink.adapterinterface.car.IALCarExtPropertyListener;
import com.yunpan.appmanage.ui.ActivityJieTText;

/* loaded from: classes.dex */
public final class r2 implements IALCarExtPropertyListener {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityJieTText f15929e;

    public r2(ActivityJieTText activityJieTText) {
        this.f15929e = activityJieTText;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return null;
    }

    @Override // com.autolink.adapterinterface.car.IALCarExtPropertyListener
    public final void notifyCarExtPropertyEvent(ALCarPropertyEvent aLCarPropertyEvent) {
        this.f15929e.Z.setText("扩展属性: " + aLCarPropertyEvent.getId() + " , " + aLCarPropertyEvent.getValue());
    }
}
