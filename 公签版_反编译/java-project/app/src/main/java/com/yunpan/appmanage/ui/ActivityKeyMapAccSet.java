package com.yunpan.appmanage.ui;

import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yunpan.appmanage.R;
import da.g;
import ha.c0;
import ta.m;
import ua.g1;
import ua.h3;
import wa.t;
import wa.u;

/* loaded from: classes.dex */
public class ActivityKeyMapAccSet extends g {
    public static final /* synthetic */ int E = 0;
    public int C = 0;
    public EditText D;

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() throws NumberFormatException {
        try {
            int i10 = Integer.parseInt(this.D.getText().toString());
            if (i10 < 1) {
                i10 = 600;
            }
            if (this.C != i10) {
                u uVar = t.f17728a;
                uVar.getClass();
                try {
                    uVar.f17751q = i10;
                    uVar.f17731b.l("KeyMapAccInterval", Integer.valueOf(i10));
                } catch (Exception unused) {
                }
                uVar.i();
                m.e(this.A);
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        super.onDestroy();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_key_map_acc_set;
    }

    @Override // da.g
    public final void u() {
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_return);
        constraintLayout.setOnClickListener(new g1(this, 10));
        ((TextView) findViewById(R.id.v_ts3)).setText(R.string.activity_key_map_acc_help);
        EditText editText = (EditText) findViewById(R.id.v_et_interval);
        this.D = editText;
        int i10 = t.f17728a.f17751q;
        this.C = i10;
        editText.setText(String.valueOf(i10));
        this.D.setOnKeyListener(new h3(constraintLayout, 0));
        constraintLayout.setOnKeyListener(new c0(this, 10));
    }
}
