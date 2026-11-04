package com.yunpan.appmanage.ui;

import android.widget.EditText;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import da.g;
import ua.i5;
import ua.z6;

/* loaded from: classes.dex */
public class ActivityWindowInputAdbPair extends g {
    public static final /* synthetic */ int E = 0;
    public TextView C;
    public TextView D;

    @Override // da.g
    public final int t() {
        return R.layout.activity_window_input_adb_pair;
    }

    @Override // da.g
    public final void u() {
        EditText editText = (EditText) findViewById(R.id.et_pair);
        findViewById(R.id.v_btn_no).setOnClickListener(new z6(5, this));
        this.C = (TextView) findViewById(R.id.v_ts);
        try {
            String stringExtra = getIntent().getStringExtra("str");
            if (stringExtra != null) {
                this.C.setText(stringExtra);
            }
        } catch (Exception unused) {
        }
        TextView textView = (TextView) findViewById(R.id.v_btn_yes);
        this.D = textView;
        textView.setOnClickListener(new i5(this, editText, 3));
    }
}
