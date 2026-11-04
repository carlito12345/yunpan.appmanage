package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public final class j7 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final h5.m f7271g;

    /* renamed from: h, reason: collision with root package name */
    public ImageView f7272h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7273i;

    public j7(Activity activity, Context context, h5.m mVar) {
        super(activity, context, R.layout.dialog_input_sm);
        this.f7271g = mVar;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        kh.e.b().l(this);
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        kh.e.b().j(this);
        this.f7272h = (ImageView) findViewById(R.id.v_ewm);
        this.f7273i = (TextView) findViewById(R.id.v_ts);
        new mc.c(0, new a1.d(28, this)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(13, this));
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(ja.a aVar) {
        int i10 = aVar.f9813a;
        if (i10 == 6) {
            this.f7272h.setImageBitmap(null);
            this.f7273i.setText("等待输入中");
        } else if (i10 == 5) {
            dismiss();
            this.f7271g.a((String) aVar.f9814b);
        }
    }
}
