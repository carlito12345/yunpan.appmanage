package ua;

import android.os.IBinder;
import com.autolink.adapterinterface.car.IALCarTyreListener;
import com.yunpan.appmanage.ui.ActivityJieTText;

/* loaded from: classes.dex */
public final class z2 implements IALCarTyreListener {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityJieTText f16073e;

    public z2(ActivityJieTText activityJieTText) {
        this.f16073e = activityJieTText;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return null;
    }

    @Override // com.autolink.adapterinterface.car.IALCarTyreListener
    public final void notifyTyreChange(int i10, int i11) {
        this.f16073e.T.setText("轮胎: " + i10 + " , " + i11);
    }

    @Override // com.autolink.adapterinterface.car.IALCarTyreListener
    public final void notifyTyreFloatChange(int i10, float f10) {
        this.f16073e.V.setText("胎压浮动: " + i10 + " , " + f10);
    }
}
