package ua;

import android.widget.TextView;
import com.autolink.adapterinterface.IHardKeyCallback;
import com.yunpan.appmanage.ui.ActivityJieTText;

/* loaded from: classes.dex */
public final class t2 extends IHardKeyCallback.Stub {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityJieTText f15965e;

    public t2(ActivityJieTText activityJieTText) {
        this.f15965e = activityJieTText;
    }

    @Override // com.autolink.adapterinterface.IHardKeyCallback
    public final void onKeyEvent(int i10, int i11, int i12) {
        TextView textView = this.f15965e.C;
        StringBuilder sbO = ta.q.o(i10, i11, "按键事件: ", " ", " ");
        sbO.append(i12);
        textView.setText(sbO.toString());
    }

    @Override // com.autolink.adapterinterface.IHardKeyCallback
    public final void onKeyPressed(int i10) {
        ta.q.s("按键按下: ", i10, this.f15965e.D);
    }

    @Override // com.autolink.adapterinterface.IHardKeyCallback
    public final void onKeyReleased(int i10) {
        ta.q.s("按键松开: ", i10, this.f15965e.E);
    }
}
