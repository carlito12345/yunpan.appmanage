package ua;

import com.desay_svautomotive.libsvcarinfo.ICarInfoCallBack;
import com.yunpan.appmanage.ui.ActivityTextAiOnY;

/* loaded from: classes.dex */
public final class h7 extends ICarInfoCallBack.Stub {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityTextAiOnY f15719e;

    public h7(ActivityTextAiOnY activityTextAiOnY) {
        this.f15719e = activityTextAiOnY;
    }

    @Override // com.desay_svautomotive.libsvcarinfo.ICarInfoCallBack
    public final void onChangeEvent(int i10, int i11) {
        ActivityTextAiOnY activityTextAiOnY = this.f15719e;
        int i12 = activityTextAiOnY.R0 + 1;
        activityTextAiOnY.R0 = i12;
        if (i12 > 18) {
            activityTextAiOnY.R0 = 0;
        }
        int i13 = activityTextAiOnY.R0;
        (i13 == 0 ? activityTextAiOnY.C : i13 == 1 ? activityTextAiOnY.D : i13 == 2 ? activityTextAiOnY.E : i13 == 3 ? activityTextAiOnY.F : i13 == 4 ? activityTextAiOnY.G : i13 == 5 ? activityTextAiOnY.H : i13 == 6 ? activityTextAiOnY.I : i13 == 7 ? activityTextAiOnY.K : i13 == 8 ? activityTextAiOnY.L : i13 == 9 ? activityTextAiOnY.M : i13 == 10 ? activityTextAiOnY.N : i13 == 11 ? activityTextAiOnY.O : i13 == 12 ? activityTextAiOnY.P : i13 == 13 ? activityTextAiOnY.R : i13 == 14 ? activityTextAiOnY.S : i13 == 15 ? activityTextAiOnY.T : i13 == 16 ? activityTextAiOnY.V : i13 == 17 ? activityTextAiOnY.X : activityTextAiOnY.Y).setText("type: " + i10 + ", Value: " + i11);
    }
}
