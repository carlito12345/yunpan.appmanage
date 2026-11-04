package com.yunpan.appmanage.ui;

import android.widget.EditText;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.R;
import da.g;
import q4.a;
import ua.g1;
import z7.s;

/* loaded from: classes.dex */
public class ActivityKeyMapXingyuanSet extends g {
    public static final /* synthetic */ int H = 0;
    public int C = 500;
    public int D = NoConst.RECORDING_TIME_INTERVAL;
    public EditText E;
    public EditText F;
    public s G;

    @Override // da.g
    public final int t() {
        return R.layout.activity_key_map_xingyuan_set;
    }

    @Override // da.g
    public final void u() {
        ((ConstraintLayout) findViewById(R.id.v_btn_return)).setOnClickListener(new g1(this, 14));
        s sVarR = a.r(this);
        this.G = sVarR;
        if (sVarR.f19480a.containsKey("triggerTime_double")) {
            this.C = this.G.o("triggerTime_double").e();
        }
        if (this.G.f19480a.containsKey("triggerTime_long")) {
            this.D = this.G.o("triggerTime_long").e();
        }
        EditText editText = (EditText) findViewById(R.id.v_et_double);
        this.E = editText;
        editText.setText(String.valueOf(this.C));
        EditText editText2 = (EditText) findViewById(R.id.v_et_long);
        this.F = editText2;
        editText2.setText(String.valueOf(this.D));
    }
}
