package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.Selection;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class m9 extends a4 implements View.OnClickListener, View.OnKeyListener {

    /* renamed from: g, reason: collision with root package name */
    public EditText f7430g;

    /* renamed from: h, reason: collision with root package name */
    public EditText f7431h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7432i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f7433j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f7434k;
    public final p9 l;

    /* renamed from: m, reason: collision with root package name */
    public j6 f7435m;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f7436n;

    public m9(Activity activity, Context context, p9 p9Var) {
        super(activity, context, R.layout.dialog_keycode_add);
        this.f7436n = nh.b.y();
        this.l = p9Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view == null) {
            return;
        }
        if (view.getId() == R.id.v_btn_select_name) {
            new ha(this.f6724a, this.f6725b, null, this.f7436n, new l9(this)).show();
            return;
        }
        if (view.getId() == R.id.v_btn_select_keycode) {
            this.f7435m.a(new l9(this));
            return;
        }
        if (view.getId() == R.id.v_btn_yes) {
            if (this.f7430g.getText().toString().isEmpty()) {
                com.yunpan.appmanage.util.a0.u("请输入名称");
                return;
            }
            if (this.f7431h.getText().toString().isEmpty()) {
                com.yunpan.appmanage.util.a0.u("请输入键码");
                return;
            }
            int iIntValue = Integer.valueOf(this.f7431h.getText().toString()).intValue();
            String string = this.f7430g.getText().toString();
            q9 q9Var = this.l.f7583b;
            q9Var.getClass();
            String strValueOf = String.valueOf(iIntValue);
            z7.s sVar = q9Var.f7624h;
            if (sVar.f19480a.containsKey(strValueOf)) {
                Toaster.show((CharSequence) "已存在此按键");
            } else {
                z7.s sVar2 = new z7.s();
                sVar2.m("name", string);
                sVar2.j("maps", new z7.o());
                sVar.j(String.valueOf(iIntValue), sVar2);
                StrIntBoolBean strIntBoolBean = new StrIntBoolBean(string, iIntValue);
                x9.u0 u0Var = q9Var.f7628m;
                u0Var.q(strIntBoolBean);
                int iB = u0Var.b() - 1;
                q9Var.f7625i = iB;
                u0Var.F(iB);
                q9Var.l.smoothScrollToPositionWithOffset(q9Var.f7625i, 0, true);
                q9Var.f7630p.E(new ArrayList());
            }
            dismiss();
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7430g = (EditText) findViewById(R.id.v_edit_name);
        this.f7431h = (EditText) findViewById(R.id.v_edit_keycode);
        TextView textView = (TextView) findViewById(R.id.v_btn_select_name);
        this.f7432i = textView;
        textView.requestFocus();
        this.f7433j = (TextView) findViewById(R.id.v_btn_select_keycode);
        TextView textView2 = (TextView) findViewById(R.id.v_btn_yes);
        this.f7434k = textView2;
        textView2.setOnClickListener(this);
        this.f7432i.setOnClickListener(this);
        this.f7433j.setOnClickListener(this);
        this.f7430g.setOnKeyListener(this);
        this.f7431h.setOnKeyListener(this);
        this.f7435m = new j6(this.f6724a, this.f6725b);
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        if (i10 == 20) {
            try {
                if (view.getId() == R.id.v_edit_name) {
                    this.f7431h.requestFocus();
                    return true;
                }
                if (view.getId() != R.id.v_edit_keycode) {
                    return false;
                }
                this.f7434k.requestFocus();
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        if (i10 == 19) {
            if (view.getId() != R.id.v_edit_keycode) {
                return false;
            }
            this.f7430g.requestFocus();
            return false;
        }
        if (i10 != 22) {
            return false;
        }
        if (view.getId() == R.id.v_edit_name) {
            if (Selection.getSelectionStart(this.f7430g.getText()) != this.f7430g.getText().length() || Selection.getSelectionEnd(this.f7430g.getText()) != this.f7430g.getText().length()) {
                return false;
            }
            this.f7432i.requestFocus();
            return true;
        }
        if (view.getId() != R.id.v_edit_keycode || Selection.getSelectionStart(this.f7431h.getText()) != this.f7431h.getText().length() || Selection.getSelectionEnd(this.f7431h.getText()) != this.f7431h.getText().length()) {
            return false;
        }
        this.f7433j.requestFocus();
        return true;
    }
}
