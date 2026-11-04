package ua;

import com.autolink.app.vehicleservice.IVehicleControlCallback;
import com.yunpan.appmanage.ui.ActivityJieTText2;

/* loaded from: classes.dex */
public final class c3 extends IVehicleControlCallback.Stub {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityJieTText2 f15603e;

    public c3(ActivityJieTText2 activityJieTText2) {
        this.f15603e = activityJieTText2;
    }

    @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
    public final void onOnlySyncFloatData(int i10, float f10) {
        ActivityJieTText2.x(this.f15603e, i10, f10 + "");
    }

    @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
    public final void onOnlySyncIntData(int i10, int i11) {
        ActivityJieTText2.x(this.f15603e, i10, i11 + "");
    }

    @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
    public final void onReceiveFloat(int i10, float f10, boolean z) {
        ActivityJieTText2.x(this.f15603e, i10, f10 + "");
    }

    @Override // com.autolink.app.vehicleservice.IVehicleControlCallback
    public final void onReceiveInt(int i10, int i11, boolean z) {
        ActivityJieTText2.x(this.f15603e, i10, i11 + "");
    }
}
