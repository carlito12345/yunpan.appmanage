package ha;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yunpan.appmanage.R;
import java.io.File;
import java.text.DecimalFormat;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public final class jc extends a4 {
    public jc(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_share, true);
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
        ImageView imageView = (ImageView) findViewById(R.id.v_btn_success_prompt_ico);
        imageView.setImageResource(com.yunpan.appmanage.util.v.f4106a.M ? R.drawable.tp_check1 : R.drawable.tp_check2);
        ((ConstraintLayout) findViewById(R.id.v_btn_success_prompt)).setOnClickListener(new f(imageView, 6));
        TextView textView = (TextView) findViewById(R.id.v_ip);
        StringBuilder sb2 = new StringBuilder("手机：直接扫码互传(建议用浏览器扫)\n电脑：浏览器输入：");
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        sb2.append(kVar.g());
        sb2.append(":");
        sb2.append(kVar.f4054j0);
        textView.setText(sb2.toString());
        String str = this.f6725b.getFilesDir().getPath() + "/qrCode_share";
        if (new File(str).exists()) {
            ((ImageView) findViewById(R.id.v_qrCode)).setImageURI(Uri.parse("file://" + str));
        } else {
            findViewById(R.id.v_qrCode).setVisibility(8);
            com.yunpan.appmanage.util.a0.z("二维码生成失败，请手动输入地址", false);
        }
        TextView textView2 = (TextView) findViewById(R.id.v_btn_close);
        textView2.requestFocus();
        textView2.setOnClickListener(new g9(11, this));
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(ja.c cVar) {
        if (cVar.f9826a == 9) {
            dismiss();
        }
    }
}
