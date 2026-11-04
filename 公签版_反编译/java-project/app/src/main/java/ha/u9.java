package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public final class u9 extends a4 {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f7867k = 0;

    /* renamed from: g, reason: collision with root package name */
    public TextView f7868g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f7869h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7870i;

    /* renamed from: j, reason: collision with root package name */
    public final com.yunpan.appmanage.carsdk.u f7871j;

    public u9(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_load);
        this.f7871j = new com.yunpan.appmanage.carsdk.u(this, Looper.getMainLooper(), 7);
    }

    public final void a() {
        kh.e.b().l(this);
        this.f7871j.removeCallbacksAndMessages(null);
        super.dismiss();
    }

    public final void b(String str) {
        this.f7869h.setVisibility(0);
        this.f7869h.setText(str);
        com.yunpan.appmanage.carsdk.u uVar = this.f7871j;
        uVar.removeCallbacksAndMessages(null);
        if (this.f7870i.getVisibility() == 0) {
            this.f7870i.setVisibility(8);
            this.f7868g.requestFocus();
        }
        uVar.sendEmptyMessageDelayed(0, 15000L);
    }

    public final void c(String str) {
        super.show();
        if (!kh.e.b().e(this)) {
            kh.e.b().j(this);
        }
        this.f7868g.setText(str);
        this.f7869h.setText("");
        this.f7870i.setVisibility(8);
        this.f7871j.sendEmptyMessageDelayed(0, 15000L);
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TextView textView = (TextView) findViewById(R.id.v_title);
        this.f7868g = textView;
        int i10 = 1;
        textView.setOnKeyListener(new o4(i10));
        this.f7869h = (TextView) findViewById(R.id.v_content);
        TextView textView2 = (TextView) findViewById(R.id.v_btn_close);
        this.f7870i = textView2;
        textView2.setVisibility(8);
        this.f7870i.setOnClickListener(new g9(i10, this));
    }

    @Override // ha.a4, android.app.Dialog
    public final void show() {
        c("加载中");
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(ja.a aVar) {
    }
}
