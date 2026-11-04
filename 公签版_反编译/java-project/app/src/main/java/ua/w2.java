package ua;

import android.os.IBinder;
import com.autolink.adapterinterface.car.IALCarEngineSpeedListener;
import com.yunpan.appmanage.ui.ActivityJieTText;

/* loaded from: classes.dex */
public final class w2 implements IALCarEngineSpeedListener {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityJieTText f16012e;

    public w2(ActivityJieTText activityJieTText) {
        this.f16012e = activityJieTText;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return null;
    }

    @Override // com.autolink.adapterinterface.car.IALCarEngineSpeedListener
    public final void notifyEngineSpeedChange(float f10, int i10) {
        this.f16012e.P.setText("发动机速度: " + f10 + " , " + i10);
    }
}
