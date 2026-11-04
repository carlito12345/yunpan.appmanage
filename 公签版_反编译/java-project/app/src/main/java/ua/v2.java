package ua;

import android.os.IBinder;
import com.autolink.adapterinterface.car.IALCarSpeedListener;
import com.yunpan.appmanage.ui.ActivityJieTText;

/* loaded from: classes.dex */
public final class v2 implements IALCarSpeedListener {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityJieTText f15995e;

    public v2(ActivityJieTText activityJieTText) {
        this.f15995e = activityJieTText;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return null;
    }

    @Override // com.autolink.adapterinterface.car.IALCarSpeedListener
    public final void notifySpeedChange(float f10, int i10) {
        this.f15995e.O.setText("速度: " + f10 + " , " + i10);
    }
}
