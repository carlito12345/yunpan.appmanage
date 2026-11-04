package ua;

import android.widget.TextView;
import com.autolink.adapterinterface.IPowerCallback;
import com.yunpan.appmanage.ui.ActivityJieTText;

/* loaded from: classes.dex */
public final class u2 extends IPowerCallback.Stub {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityJieTText f15977e;

    public u2(ActivityJieTText activityJieTText) {
        this.f15977e = activityJieTText;
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onBrightnessModeChanged(int i10) {
        TextView textView = this.f15977e.F;
        StringBuilder sbN = g.b.n("亮度模式: ", i10, "  ");
        sbN.append(i10 == 0 ? " 自动" : " 手动");
        textView.setText(sbN.toString());
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onClusterNightModeSwitchChanged(int i10) {
        ta.q.s("仪表夜间模式: ", i10, this.f15977e.G);
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onDisplayDayNightModeChanged(int i10) {
        TextView textView = this.f15977e.H;
        StringBuilder sbN = g.b.n("夜间模式: ", i10, "  ");
        sbN.append(i10 == 1 ? "开" : "关");
        textView.setText(sbN.toString());
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onHmiBrightnessChanged(int i10) {
        ta.q.s("HMI亮度: ", i10, this.f15977e.I);
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onIviBrightnessChanged(int i10) {
        ta.q.s("IVI屏幕亮度: ", i10, this.f15977e.K);
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onIviDisplayPowerStateChanged(int i10) {
        TextView textView = this.f15977e.L;
        StringBuilder sbN = g.b.n("IVI屏幕电源: ", i10, "  ");
        sbN.append(i10 == 1 ? "屏幕开" : "屏幕关");
        textView.setText(sbN.toString());
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onPowerEventChanged(int i10, int i11) {
        this.f15977e.M.setText("电源事件: " + i10 + " ， " + i11);
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onScreensaverChanged(boolean z) {
        this.f15977e.N.setText("屏保: " + z);
    }
}
