package ha;

import android.view.View;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class yc implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextView f8106a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f8107b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ad f8108c;

    public yc(ad adVar, TextView textView, TextView textView2) {
        this.f8108c = adVar;
        this.f8106a = textView;
        this.f8107b = textView2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ad adVar = this.f8108c;
        if (adVar.f6758c.isEmpty()) {
            return;
        }
        boolean z = adVar.f6757b;
        TextView textView = this.f8106a;
        if (!z) {
            com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
            if (wVar.f4125j.equals(adVar.f6758c)) {
                adVar.a();
                return;
            }
            if (adVar.f6758c.equals("右右右右右右右右右右右右右右右右右右右右")) {
                com.yunpan.appmanage.util.a0.v("已清除密码", true);
                wVar.B("");
                adVar.a();
                return;
            } else {
                adVar.f6758c = "";
                textView.setText("");
                com.yunpan.appmanage.util.a0.s("密码错误，请重新输入", true);
                return;
            }
        }
        if (adVar.f6758c.length() < 4) {
            com.yunpan.appmanage.util.a0.u("密码需至少四位");
            return;
        }
        boolean zIsEmpty = adVar.f6759d.isEmpty();
        TextView textView2 = this.f8107b;
        if (zIsEmpty) {
            adVar.f6759d = adVar.f6758c;
            adVar.f6758c = "";
            textView.setText("");
            textView2.setText("请二次输入密码确认");
            return;
        }
        if (adVar.f6759d.equals(adVar.f6758c)) {
            com.yunpan.appmanage.util.a0.v("设置成功", true);
            com.yunpan.appmanage.util.v.f4106a.B(adVar.f6758c);
            adVar.a();
        } else {
            com.yunpan.appmanage.util.a0.s("与第一次输入的密码不一致，请重新设置", false);
            adVar.f6759d = "";
            adVar.f6758c = "";
            textView.setText("");
            textView2.setText("请设置管家启动密码");
        }
    }
}
