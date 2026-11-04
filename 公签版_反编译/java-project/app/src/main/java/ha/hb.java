package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class hb extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final x9.w3 f7166g;

    /* renamed from: h, reason: collision with root package name */
    public final gb f7167h;

    /* renamed from: i, reason: collision with root package name */
    public final int f7168i;

    public hb(Activity activity, Context context, x9.w3 w3Var, int i10, gb gbVar) {
        super(activity, context, R.layout.dialog_input);
        this.f7166g = w3Var;
        this.f7168i = i10;
        this.f7167h = gbVar;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TextView textView = (TextView) findViewById(R.id.v_btn_one);
        EditText editText = (EditText) findViewById(R.id.v_edit);
        TextView textView2 = (TextView) findViewById(R.id.v_title);
        int i10 = this.f7168i;
        if (i10 == 0) {
            textView2.setText("新建文件");
        } else if (i10 == 1) {
            textView2.setText("新建文件夹");
        } else if (i10 == 2) {
            textView2.setText("重命名");
            editText.setText(this.f7166g.f18364a);
        }
        editText.setOnKeyListener(new x6(textView, 9));
        textView.setOnClickListener(new c6.c(this, 21, editText));
        findViewById(R.id.v_btn_two).setOnClickListener(new g9(7, this));
    }
}
