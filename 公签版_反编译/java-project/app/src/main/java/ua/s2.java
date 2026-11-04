package ua;

import android.os.IBinder;
import com.autolink.adapterinterface.car.ALCarPropertyEvent;
import com.autolink.adapterinterface.car.IALCarHvacPropertyListener;
import com.yunpan.appmanage.ui.ActivityJieTText;

/* loaded from: classes.dex */
public final class s2 implements IALCarHvacPropertyListener {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityJieTText f15945e;

    public s2(ActivityJieTText activityJieTText) {
        this.f15945e = activityJieTText;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return null;
    }

    @Override // com.autolink.adapterinterface.car.IALCarHvacPropertyListener
    public final void notifyCarHvacPropertyEvent(ALCarPropertyEvent aLCarPropertyEvent) {
        this.f15945e.f3979h0.setText("空调: " + aLCarPropertyEvent.getId() + " , " + aLCarPropertyEvent.getValue());
    }
}
