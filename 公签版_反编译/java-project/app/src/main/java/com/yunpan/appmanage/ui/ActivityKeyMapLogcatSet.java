package com.yunpan.appmanage.ui;

import a2.u0;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyCodeBean;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import com.yunpan.appmanage.util.v;
import da.g;
import fc.b;
import ha.c0;
import ha.e2;
import ha.h2;
import ha.s6;
import java.util.ArrayList;
import mc.c;
import rc.f;
import ta.m;
import ua.g1;
import wa.t;
import wa.u;
import x9.w0;

/* loaded from: classes.dex */
public class ActivityKeyMapLogcatSet extends g {
    public static final /* synthetic */ int H = 0;
    public int C = 0;
    public EditText D;
    public TextView E;
    public w0 F;
    public RecyclerView G;

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() throws NumberFormatException {
        try {
            int i10 = Integer.parseInt(this.D.getText().toString());
            if (i10 < 1) {
                i10 = NoConst.RECORDING_TIME_INTERVAL;
            }
            if (this.C != i10) {
                u uVar = t.f17728a;
                uVar.getClass();
                try {
                    uVar.r = i10;
                    uVar.f17731b.l("KeyMapLogcatInterval", Integer.valueOf(i10));
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
        return R.layout.activity_key_map_logcat_set;
    }

    @Override // da.g
    public final void u() {
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_return);
        constraintLayout.setOnClickListener(new g1(this, 12));
        this.E = (TextView) findViewById(R.id.v_current_system_log_level);
        new c(0, new u0(17)).d(f.f13757b).a(b.a()).b(new ka.c(20, this));
        boolean booleanExtra = getIntent().getBooleanExtra("existsData", false);
        ConstraintLayout constraintLayout2 = (ConstraintLayout) findViewById(R.id.v_level);
        TextView textView = (TextView) findViewById(R.id.v_level_name);
        u uVar = t.f17728a;
        int i10 = uVar.L;
        if (i10 == 4) {
            textView.setText("INFO");
        } else if (i10 == 3) {
            textView.setText("DEBUG");
        } else if (i10 == 2) {
            textView.setText("VERBOSE");
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new KeyCodeBean(4, "INFO"));
        arrayList.add(new KeyCodeBean(3, "DEBUG"));
        arrayList.add(new KeyCodeBean(2, "VERBOSE"));
        constraintLayout2.setOnClickListener(new s6(this, arrayList, textView, 8));
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list);
        this.G = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(1, false));
        w0 w0Var = new w0();
        this.F = w0Var;
        w0Var.q(new StrIntBoolBean("特殊监听模式：监听日志时没有出现任何日志的情况下，可以勾选此项(能正常监听日志的话请不要勾选)", 1, v.f4106a.W));
        this.F.q(new StrIntBoolBean("当开机时间低于15秒时，等够15秒后再启动日志监听（某些系统启动快，但系统内的日志服务还没初始化，所以等待一下)", 2, uVar.J));
        this.F.q(new StrIntBoolBean("息屏时关闭日志映射，亮屏时重新启动日志映射，如果您的车机熄火后是深度睡眠的话可以勾选，如需开关门日志的请勿勾选", 3, uVar.K));
        this.G.setAdapter(this.F);
        this.F.f2881e = new h2(this, booleanExtra, 3);
        EditText editText = (EditText) findViewById(R.id.v_et_interval);
        this.D = editText;
        int i11 = uVar.r;
        this.C = i11;
        editText.setText(String.valueOf(i11));
        this.D.setOnKeyListener(new e2(constraintLayout2, constraintLayout, 7));
        constraintLayout.setOnKeyListener(new c0(this, 11));
    }
}
