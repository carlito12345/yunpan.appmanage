package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class vc extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f7957g;

    /* renamed from: h, reason: collision with root package name */
    public final h8 f7958h;

    /* renamed from: i, reason: collision with root package name */
    public String f7959i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vc(Activity activity, Context context, h8 h8Var, int i10) {
        super(activity, context, R.layout.dialog_split_screen_window_add);
        this.f7957g = i10;
        switch (i10) {
            case 1:
                super(activity, context, R.layout.dialog_write_system_log);
                this.f7958h = h8Var;
                break;
            default:
                this.f7959i = "";
                this.f7958h = h8Var;
                break;
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        switch (this.f7957g) {
            case 0:
                super.onCreate(bundle);
                TextView textView = (TextView) findViewById(R.id.v_ts1);
                EditText editText = (EditText) findViewById(R.id.v_edit);
                TextView textView2 = (TextView) findViewById(R.id.v_btn_yes);
                TextView textView3 = (TextView) findViewById(R.id.v_btn_select1);
                TextView textView4 = (TextView) findViewById(R.id.v_btn_select2);
                textView3.setOnClickListener(new c6.c(this, 23, textView));
                editText.setOnKeyListener(new uc(textView2, 0));
                ArrayList arrayList = new ArrayList();
                arrayList.add("默认");
                arrayList.add("1/2 左");
                arrayList.add("1/2 右");
                arrayList.add("1/2 上");
                arrayList.add("1/2 下");
                arrayList.add("1/3 左");
                arrayList.add("1/3 中");
                arrayList.add("1/3 右");
                arrayList.add("1/3 上");
                arrayList.add("1/3 中");
                arrayList.add("1/3 下");
                arrayList.add("1/4 左上");
                arrayList.add("1/4 右上");
                arrayList.add("1/4 左下");
                arrayList.add("1/4 右下");
                arrayList.add("2/3 左");
                arrayList.add("2/3 右");
                textView4.setOnClickListener(new tc(this, arrayList, editText, p000if.a.R(this.f6725b), 0));
                textView2.setOnClickListener(new c6.c(this, 24, editText));
                break;
            default:
                super.onCreate(bundle);
                TextView textView5 = (TextView) findViewById(R.id.v_type_name);
                ArrayList arrayList2 = new ArrayList();
                this.f7959i = "d";
                textView5.setText("等级：调试  D");
                arrayList2.add("等级：调试  D");
                arrayList2.add("等级：信息  I");
                arrayList2.add("等级：警告  W");
                arrayList2.add("等级：详细  V");
                arrayList2.add("等级：错误  E");
                findViewById(R.id.v_type).setOnClickListener(new s6(this, arrayList2, textView5, 7));
                TextView textView6 = (TextView) findViewById(R.id.v_btn);
                EditText editText2 = (EditText) findViewById(R.id.v_edit_tag);
                EditText editText3 = (EditText) findViewById(R.id.v_edit_message);
                editText2.setOnKeyListener(new r6(1, editText3));
                editText3.setOnKeyListener(new j1(textView6, editText2, 5));
                textView6.setOnClickListener(new s6(this, editText2, editText3, 6));
                break;
        }
    }
}
