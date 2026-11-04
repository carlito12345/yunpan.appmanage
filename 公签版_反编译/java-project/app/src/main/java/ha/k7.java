package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class k7 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final h8 f7309g;

    /* renamed from: h, reason: collision with root package name */
    public final String f7310h;

    /* renamed from: i, reason: collision with root package name */
    public final String f7311i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f7312j;

    public k7(Activity activity, Context context, String str, h8 h8Var) {
        super(activity, context, R.layout.dialog_input_string);
        this.f7312j = false;
        this.f7309g = h8Var;
        this.f7310h = "请输入关键字";
        this.f7311i = str;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String str = this.f7311i;
        if (str.contains("此ID")) {
            findViewById(R.id.v_btn_check).setVisibility(8);
        } else {
            findViewById(R.id.v_btn_check).setOnClickListener(new c6.c(this, 13, (ImageView) findViewById(R.id.v_btn_check_ico)));
        }
        ((TextView) findViewById(R.id.v_ts)).setText(str);
        TextView textView = (TextView) findViewById(R.id.v_btn);
        EditText editText = (EditText) findViewById(R.id.v_edit);
        editText.setHint(this.f7310h);
        editText.setOnKeyListener(new x6(textView, 5));
        textView.setOnClickListener(new c6.c(this, 14, editText));
    }
}
