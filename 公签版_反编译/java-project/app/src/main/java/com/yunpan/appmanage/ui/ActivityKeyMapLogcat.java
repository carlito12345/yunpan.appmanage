package com.yunpan.appmanage.ui;

import android.content.Context;
import android.view.View;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameIcoTypeBean;
import com.yunpan.appmanage.util.a0;
import da.g;
import fa.g0;
import fa.h0;
import fc.b;
import ha.e9;
import ha.l2;
import ha.z6;
import java.io.File;
import java.util.ArrayList;
import mc.c;
import q4.a;
import rc.f;
import ua.k3;
import x9.s2;
import x9.t0;
import z7.o;
import z7.s;

/* loaded from: classes.dex */
public class ActivityKeyMapLogcat extends g {
    public static final /* synthetic */ int L = 0;
    public TvRecyclerView C;
    public TvRecyclerView E;
    public s2 F;
    public s G;
    public o H;
    public o I;
    public final t0 D = new t0(0);
    public View K = null;

    @Override // da.g
    public final int t() {
        return R.layout.activity_key_map_logcat;
    }

    @Override // da.g
    public final void u() {
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_gn);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 0, false));
        NameIcoTypeBean nameIcoTypeBean = new NameIcoTypeBean(R.drawable.return2, "返回", 1);
        t0 t0Var = this.D;
        t0Var.q(nameIcoTypeBean);
        t0Var.q(new NameIcoTypeBean(R.drawable.tp_check1, "开启日志映射", 2));
        t0Var.q(new NameIcoTypeBean(R.drawable.add1, "添加日志", 1));
        t0Var.q(new NameIcoTypeBean(R.drawable.tp_door1, "车门", 1));
        t0Var.q(new NameIcoTypeBean(R.drawable.tp_mkf1, "语音", 1));
        t0Var.q(new NameIcoTypeBean(R.drawable.tp_gh1, "方案", 1));
        t0Var.q(new NameIcoTypeBean(R.drawable.tp_delete3, "清空", 1));
        t0Var.q(new NameIcoTypeBean(R.drawable.shezhi3, "设置", 1));
        t0Var.q(new NameIcoTypeBean(R.drawable.tp_help1, "说明", 1));
        this.C.setAdapter(t0Var);
        t0Var.f2881e = new k3(this, 0);
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list);
        this.E = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7GridLayoutManager(this, 3));
        s2 s2Var = new s2();
        this.F = s2Var;
        this.E.setAdapter(s2Var);
        this.F.f2881e = new k3(this, 1);
        z();
        new c(0, new k3(this, 2)).d(f.f13757b).a(b.a()).b(new l2(28));
    }

    public final void x(int i10) {
        if (i10 < -1 || i10 >= this.F.b()) {
            Toaster.show((CharSequence) "出错：离谱的错误");
        } else {
            new e9(this, this.A, this.G, i10, new d3.g(i10, 12, this)).show();
        }
    }

    public final void y(boolean z) {
        if (this.F.b() == 0) {
            Toaster.show((CharSequence) "没有日志方案");
            return;
        }
        h0 h0Var = g0.f5682a;
        if (h0Var.d().isEmpty()) {
            Toaster.show((CharSequence) "没有内部存储，无法保存");
            return;
        }
        File file = new File(h0Var.d(), "Download");
        if (!a0.f(file)) {
            try {
                if (!file.mkdir()) {
                    throw new Exception("创建目录失败");
                }
            } catch (Exception unused) {
                a0.t("创建Download目录失败");
                return;
            }
        }
        int i10 = 1;
        while (true) {
            if (!a0.g(file.getPath() + "/日志方案" + i10 + ".json")) {
                new z6(this, this, "保存文件名", da.b.a(i10, "日志方案"), "请输入文件名", "确定", "取消", new com.bumptech.glide.manager.s(6, this, file, z)).show();
                return;
            }
            i10++;
        }
    }

    public final void z() {
        t0 t0Var = this.D;
        try {
            this.F.E(new ArrayList());
            s sVarI = a.I(new File(this.A.getFilesDir().getAbsolutePath(), "KeyMapLogcatSuper.json"));
            this.G = sVarI;
            o oVarP = sVarI.p("keys");
            for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                this.F.q(oVarP.l(i10).g());
            }
            if (!this.G.f19480a.containsKey("isOn")) {
                this.G.k("isOn", Boolean.TRUE);
            }
            ((NameIcoTypeBean) t0Var.t(1)).resId = this.G.o("isOn").b() ? R.drawable.tp_check1 : R.drawable.tp_check2;
            t0Var.e(1);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }
}
