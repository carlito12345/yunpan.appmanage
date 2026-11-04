package com.yunpan.appmanage.ui;

import android.widget.EditText;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.R;
import da.g;
import ha.c0;
import q4.a;
import ta.m;
import ua.g1;
import ua.h3;
import wa.t;
import wa.u;
import z7.s;

/* loaded from: classes.dex */
public class ActivityKeyMapNissanSet extends g {
    public static final /* synthetic */ int E = 0;
    public int C = NoConst.RECORDING_TIME_INTERVAL;
    public EditText D;

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() throws NumberFormatException {
        try {
            int i10 = Integer.parseInt(this.D.getText().toString());
            if (i10 < 1) {
                i10 = NoConst.RECORDING_TIME_INTERVAL;
            }
            if (this.C != i10) {
                s sVarT = a.t(this.A);
                sVarT.l("intervalTime", Integer.valueOf(i10));
                a.W(this.A, sVarT);
                u uVar = t.f17728a;
                uVar.getClass();
                try {
                    uVar.f17751q = i10;
                    uVar.f17731b.l("KeyMapAccInterval", Integer.valueOf(i10));
                } catch (Exception unused) {
                }
                uVar.i();
                m.c(this.A, "UP_KEYMAP_NISSAN");
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        super.onDestroy();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_key_map_nissan_set;
    }

    @Override // da.g
    public final void u() {
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_return);
        constraintLayout.setOnClickListener(new g1(this, 13));
        this.D = (EditText) findViewById(R.id.v_et_interval);
        try {
            this.C = a.t(this.A).o("intervalTime").e();
        } catch (Exception unused) {
        }
        this.D.setText(String.valueOf(this.C));
        this.D.setOnKeyListener(new h3(constraintLayout, 1));
        constraintLayout.setOnKeyListener(new c0(this, 12));
    }
}
