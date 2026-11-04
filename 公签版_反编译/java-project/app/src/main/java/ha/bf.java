package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class bf extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f6827g;

    /* renamed from: h, reason: collision with root package name */
    public final x9.n5 f6828h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f6829i;

    /* renamed from: j, reason: collision with root package name */
    public final Object f6830j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bf(Activity activity, Context context, x9.n5 n5Var, Object obj, int i10) {
        super(activity, context, R.layout.dialog_login_qrcode);
        this.f6827g = i10;
        this.f6829i = false;
        this.f6830j = obj;
        this.f6828h = n5Var;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        switch (this.f6827g) {
            case 0:
                this.f6829i = true;
                super.dismiss();
                break;
            default:
                this.f6829i = true;
                super.dismiss();
                break;
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        switch (this.f6827g) {
            case 0:
                super.onCreate(bundle);
                ((TextView) findViewById(R.id.v_text_ts2)).setText("请使用 光鸭云盘app 扫码登录");
                ImageView imageView = (ImageView) findViewById(R.id.v_image);
                TextView textView = (TextView) findViewById(R.id.v_text_ts3);
                textView.setText("正在获取二维码(需联网)");
                new mc.c(0, new p7(25, this)).d(rc.f.f13757b).a(fc.b.a()).b(new ze((Object) this, (Object) imageView, (Object) textView, 0));
                break;
            default:
                super.onCreate(bundle);
                ImageView imageView2 = (ImageView) findViewById(R.id.v_image);
                TextView textView2 = (TextView) findViewById(R.id.v_text_ts3);
                textView2.setText("正在获取二维码(需联网)");
                new mc.c(0, new p7(26, this)).d(rc.f.f13757b).a(fc.b.a()).b(new ze((Object) this, (Object) imageView2, (Object) textView2, 1));
                break;
        }
    }
}
