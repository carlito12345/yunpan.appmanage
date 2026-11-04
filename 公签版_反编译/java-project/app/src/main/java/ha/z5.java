package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.FileAttributeBean;

/* loaded from: classes.dex */
public final class z5 extends a4 implements View.OnClickListener, CompoundButton.OnCheckedChangeListener {
    public CheckBox A;
    public EditText B;

    /* renamed from: g, reason: collision with root package name */
    public final x9.w3 f8136g;

    /* renamed from: h, reason: collision with root package name */
    public final FileAttributeBean f8137h;

    /* renamed from: i, reason: collision with root package name */
    public int f8138i;

    /* renamed from: j, reason: collision with root package name */
    public String f8139j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f8140k;
    public LinearLayout l;

    /* renamed from: m, reason: collision with root package name */
    public CheckBox f8141m;

    /* renamed from: n, reason: collision with root package name */
    public CheckBox f8142n;

    /* renamed from: p, reason: collision with root package name */
    public CheckBox f8143p;

    /* renamed from: q, reason: collision with root package name */
    public CheckBox f8144q;
    public CheckBox r;

    /* renamed from: s, reason: collision with root package name */
    public CheckBox f8145s;

    /* renamed from: t, reason: collision with root package name */
    public CheckBox f8146t;

    /* renamed from: v, reason: collision with root package name */
    public CheckBox f8147v;

    /* renamed from: w, reason: collision with root package name */
    public CheckBox f8148w;

    /* renamed from: x, reason: collision with root package name */
    public CheckBox f8149x;

    /* renamed from: y, reason: collision with root package name */
    public CheckBox f8150y;
    public CheckBox z;

    public z5(Activity activity, Context context, x9.w3 w3Var, FileAttributeBean fileAttributeBean) {
        super(activity, context, R.layout.dialog_file_permis);
        this.f8138i = 0;
        this.f8136g = w3Var;
        this.f8137h = fileAttributeBean;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f8139j = "";
        if (this.f8141m.isChecked()) {
            this.f8139j = g.b.l(this.f8139j, "r", new StringBuilder());
        } else {
            this.f8139j = g.b.l(this.f8139j, "-", new StringBuilder());
        }
        if (this.f8142n.isChecked()) {
            this.f8139j = g.b.l(this.f8139j, "w", new StringBuilder());
        } else {
            this.f8139j = g.b.l(this.f8139j, "-", new StringBuilder());
        }
        if (this.f8143p.isChecked()) {
            if (this.f8149x.isChecked()) {
                this.f8139j = g.b.l(this.f8139j, "s", new StringBuilder());
            } else {
                this.f8139j = g.b.l(this.f8139j, "x", new StringBuilder());
            }
        } else if (this.f8149x.isChecked()) {
            this.f8139j = g.b.l(this.f8139j, "S", new StringBuilder());
        } else {
            this.f8139j = g.b.l(this.f8139j, "-", new StringBuilder());
        }
        if (this.f8144q.isChecked()) {
            this.f8139j = g.b.l(this.f8139j, "r", new StringBuilder());
        } else {
            this.f8139j = g.b.l(this.f8139j, "-", new StringBuilder());
        }
        if (this.r.isChecked()) {
            this.f8139j = g.b.l(this.f8139j, "w", new StringBuilder());
        } else {
            this.f8139j = g.b.l(this.f8139j, "-", new StringBuilder());
        }
        if (this.f8145s.isChecked()) {
            if (this.f8150y.isChecked()) {
                this.f8139j = g.b.l(this.f8139j, "s", new StringBuilder());
            } else {
                this.f8139j = g.b.l(this.f8139j, "x", new StringBuilder());
            }
        } else if (this.f8150y.isChecked()) {
            this.f8139j = g.b.l(this.f8139j, "S", new StringBuilder());
        } else {
            this.f8139j = g.b.l(this.f8139j, "-", new StringBuilder());
        }
        if (this.f8146t.isChecked()) {
            this.f8139j = g.b.l(this.f8139j, "r", new StringBuilder());
        } else {
            this.f8139j = g.b.l(this.f8139j, "-", new StringBuilder());
        }
        if (this.f8147v.isChecked()) {
            this.f8139j = g.b.l(this.f8139j, "w", new StringBuilder());
        } else {
            this.f8139j = g.b.l(this.f8139j, "-", new StringBuilder());
        }
        if (this.f8148w.isChecked()) {
            if (this.z.isChecked()) {
                this.f8139j = g.b.l(this.f8139j, "s", new StringBuilder());
            } else {
                this.f8139j = g.b.l(this.f8139j, "x", new StringBuilder());
            }
        } else if (this.z.isChecked()) {
            this.f8139j = g.b.l(this.f8139j, "S", new StringBuilder());
        } else {
            this.f8139j = g.b.l(this.f8139j, "-", new StringBuilder());
        }
        this.f8138i = com.yunpan.appmanage.util.a0.h(this.f8139j);
        this.f8140k.setText(this.f8139j + " (" + this.f8138i + ")");
        EditText editText = this.B;
        StringBuilder sb2 = new StringBuilder("");
        sb2.append(this.f8138i);
        editText.setText(sb2.toString());
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view.getId() != R.id.v_btn_yes) {
            if (view.getId() == R.id.v_btn_no) {
                dismiss();
                return;
            }
            return;
        }
        com.bumptech.glide.c.i(1000, view);
        int iIntValue = Integer.valueOf(this.B.getText().toString()).intValue();
        this.f8138i = iIntValue;
        if (this.f8137h.filePermission == iIntValue) {
            dismiss();
        } else {
            new mc.c(0, new a1.d(22, this)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(9, this));
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f8141m = (CheckBox) findViewById(R.id.v_all_r);
        this.f8142n = (CheckBox) findViewById(R.id.v_all_w);
        this.f8143p = (CheckBox) findViewById(R.id.v_all_x);
        this.f8144q = (CheckBox) findViewById(R.id.v_user_r);
        this.r = (CheckBox) findViewById(R.id.v_user_w);
        this.f8145s = (CheckBox) findViewById(R.id.v_user_x);
        this.f8146t = (CheckBox) findViewById(R.id.v_other_r);
        this.f8147v = (CheckBox) findViewById(R.id.v_other_w);
        this.f8148w = (CheckBox) findViewById(R.id.v_other_x);
        this.f8149x = (CheckBox) findViewById(R.id.v_ts_uid);
        this.f8150y = (CheckBox) findViewById(R.id.v_ts_gid);
        this.z = (CheckBox) findViewById(R.id.v_ts_zz);
        this.A = (CheckBox) findViewById(R.id.v_all);
        this.B = (EditText) findViewById(R.id.v_edit);
        this.f8140k = (TextView) findViewById(R.id.v_text);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_btn_yes);
        this.l = linearLayout;
        linearLayout.setOnClickListener(this);
        ((LinearLayout) findViewById(R.id.v_btn_no)).setOnClickListener(this);
        CheckBox checkBox = this.A;
        FileAttributeBean fileAttributeBean = this.f8137h;
        checkBox.setVisibility(fileAttributeBean.isDirectory ? 0 : 8);
        if (fileAttributeBean.filePermissions.charAt(0) == 'r') {
            this.f8141m.setChecked(true);
        }
        if (fileAttributeBean.filePermissions.charAt(1) == 'w') {
            this.f8142n.setChecked(true);
        }
        if (fileAttributeBean.filePermissions.charAt(2) == 'x') {
            this.f8143p.setChecked(true);
        } else if (fileAttributeBean.filePermissions.charAt(2) == 's') {
            this.f8143p.setChecked(true);
            this.f8149x.setChecked(true);
        } else if (fileAttributeBean.filePermissions.charAt(2) == 'S') {
            this.f8149x.setChecked(true);
        }
        if (fileAttributeBean.filePermissions.charAt(3) == 'r') {
            this.f8144q.setChecked(true);
        }
        if (fileAttributeBean.filePermissions.charAt(4) == 'w') {
            this.r.setChecked(true);
        }
        if (fileAttributeBean.filePermissions.charAt(5) == 'x') {
            this.f8145s.setChecked(true);
        } else if (fileAttributeBean.filePermissions.charAt(5) == 's') {
            this.f8145s.setChecked(true);
            this.f8150y.setChecked(true);
        } else if (fileAttributeBean.filePermissions.charAt(5) == 'S') {
            this.f8150y.setChecked(true);
        }
        if (fileAttributeBean.filePermissions.charAt(6) == 'r') {
            this.f8146t.setChecked(true);
        }
        if (fileAttributeBean.filePermissions.charAt(7) == 'w') {
            this.f8147v.setChecked(true);
        }
        if (fileAttributeBean.filePermissions.charAt(8) == 'x') {
            this.f8148w.setChecked(true);
        } else if (fileAttributeBean.filePermissions.charAt(8) == 't') {
            this.f8148w.setChecked(true);
            this.z.setChecked(true);
        } else if (fileAttributeBean.filePermissions.charAt(8) == 'T') {
            this.z.setChecked(true);
        }
        this.f8139j = fileAttributeBean.filePermissions;
        this.f8138i = fileAttributeBean.filePermission;
        this.f8140k.setText(this.f8139j + " (" + this.f8138i + ")");
        EditText editText = this.B;
        StringBuilder sb2 = new StringBuilder("");
        sb2.append(this.f8138i);
        editText.setText(sb2.toString());
        this.B.setOnKeyListener(new c0(this, 2));
        this.f8141m.setOnCheckedChangeListener(this);
        this.f8142n.setOnCheckedChangeListener(this);
        this.f8143p.setOnCheckedChangeListener(this);
        this.f8144q.setOnCheckedChangeListener(this);
        this.r.setOnCheckedChangeListener(this);
        this.f8145s.setOnCheckedChangeListener(this);
        this.f8146t.setOnCheckedChangeListener(this);
        this.f8147v.setOnCheckedChangeListener(this);
        this.f8148w.setOnCheckedChangeListener(this);
        this.f8149x.setOnCheckedChangeListener(this);
        this.f8150y.setOnCheckedChangeListener(this);
        this.z.setOnCheckedChangeListener(this);
    }
}
