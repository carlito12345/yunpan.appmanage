package ua;

import android.os.IBinder;
import com.autolink.adapterinterface.car.ALCarPropertyEvent;
import com.autolink.adapterinterface.car.IALCarWindListener;
import com.yunpan.appmanage.ui.ActivityJieTText;

/* loaded from: classes.dex */
public final class b3 implements IALCarWindListener {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityJieTText f15581e;

    public b3(ActivityJieTText activityJieTText) {
        this.f15581e = activityJieTText;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return null;
    }

    @Override // com.autolink.adapterinterface.car.IALCarWindListener
    public final void notifyCarWindEvent(ALCarPropertyEvent aLCarPropertyEvent) {
        this.f15581e.Y.setText("车窗: " + aLCarPropertyEvent.getId() + " , " + aLCarPropertyEvent.getValue());
    }
}
