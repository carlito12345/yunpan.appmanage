package com.yunpan.appmanage.ui;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import da.g;
import ha.tc;
import ha.u4;
import ha.v;
import ma.b;
import ph.j;
import q4.a;
import ua.g1;
import x9.l2;
import x9.w0;
import z7.s;

/* loaded from: classes.dex */
public class ActivityFloatButtonSet extends g {
    public static final /* synthetic */ int E = 0;
    public ImageView C;
    public int D;

    @Override // da.g
    public final int t() {
        return R.layout.activity_float_button_set;
    }

    @Override // da.g
    public final void u() {
        s sVarN = a.n(this);
        if (!sVarN.f19480a.containsKey("allow_move_outer_edge")) {
            sVarN.k("allow_move_outer_edge", Boolean.FALSE);
        }
        this.D = sVarN.o("ico").e();
        this.C = (ImageView) findViewById(R.id.v_ico);
        x();
        ViewGroup.LayoutParams layoutParams = this.C.getLayoutParams();
        int iE = sVarN.o("size").e();
        layoutParams.width = iE;
        layoutParams.height = iE;
        this.C.setLayoutParams(layoutParams);
        AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) findViewById(R.id.v_seek_size);
        appCompatSeekBar.setMax(100);
        appCompatSeekBar.setProgress(layoutParams.width / 5);
        AppCompatSeekBar appCompatSeekBar2 = (AppCompatSeekBar) findViewById(R.id.v_seek_trans);
        appCompatSeekBar2.setMax(255);
        appCompatSeekBar2.setProgress(sVarN.o("trans").e());
        this.C.setImageAlpha(sVarN.o("trans").e());
        appCompatSeekBar.setOnSeekBarChangeListener(new u4(this, 1, layoutParams));
        appCompatSeekBar2.setOnSeekBarChangeListener(new v(3, this));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_ico);
        boolean z = false;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 0, false));
        l2 l2Var = new l2();
        l2Var.q(Integer.valueOf(R.drawable.float_icon_transparent_1));
        l2Var.q(Integer.valueOf(R.drawable.float_icon_transparent_2));
        l2Var.q(Integer.valueOf(R.drawable.float_icon_transparent_3));
        l2Var.q(Integer.valueOf(R.drawable.float_icon_transparent_4));
        l2Var.q(Integer.valueOf(R.drawable.tp_return5));
        l2Var.q(Integer.valueOf(R.drawable.tp_add2));
        tvRecyclerView.setAdapter(l2Var);
        l2Var.f2881e = new b(this, 15, l2Var);
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list_set);
        tvRecyclerView2.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        w0 w0Var = new w0();
        w0Var.q(new StrIntBoolBean("60秒未触摸屏幕时自动隐藏(防烧屏冠军)", 0, sVarN.o("auto_hide").b()));
        w0Var.q(new StrIntBoolBean("60秒未触摸屏幕时增加透明(防烧屏亚军)", 1, sVarN.o("auto_trans").b()));
        w0Var.q(new StrIntBoolBean("防烧屏措施(轻微移动等措施，防烧屏季军)", 2, sVarN.o("antiBurnScreen").b()));
        w0Var.q(new StrIntBoolBean("允许拖到屏幕外(按钮的一半在屏幕外面)", 3, sVarN.o("allow_move_outer_edge").b()));
        if (sVarN.f19480a.containsKey("lock") && sVarN.o("lock").b()) {
            z = true;
        }
        w0Var.q(new StrIntBoolBean("锁定位置(也可以用映射来锁定 和 解除)", 4, z));
        tvRecyclerView2.setAdapter(w0Var);
        w0Var.f2881e = new j(17, w0Var);
        findViewById(R.id.v_btn_return).setOnClickListener(new g1(this, 3));
        findViewById(R.id.v_btn_yes).setOnClickListener(new tc(this, appCompatSeekBar, appCompatSeekBar2, w0Var, 1));
    }

    public final void x() {
        int i10 = this.D;
        if (i10 == -1) {
            this.C.setImageBitmap(BitmapFactory.decodeFile(this.A.getFilesDir() + "/FloatButtonIco"));
            return;
        }
        if (i10 == 1) {
            this.C.setImageResource(R.drawable.float_icon_transparent_1);
            return;
        }
        if (i10 == 2) {
            this.C.setImageResource(R.drawable.float_icon_transparent_2);
            return;
        }
        if (i10 == 3) {
            this.C.setImageResource(R.drawable.float_icon_transparent_3);
            return;
        }
        if (i10 == 4) {
            this.C.setImageResource(R.drawable.float_icon_transparent_4);
        } else {
            if (i10 == 5) {
                this.C.setImageResource(R.drawable.tp_return5);
                return;
            }
            try {
                this.C.setImageResource(i10);
            } catch (Exception unused) {
                this.C.setImageResource(R.drawable.float_icon_transparent_1);
            }
        }
    }
}
