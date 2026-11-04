package ha;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.animation.CycleInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.core.NoConst;
import com.hsae.autosdk.source.SourceConst;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.ui.ActivityKeyMapEvent;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class a9 extends a4 implements View.OnClickListener {

    /* renamed from: g, reason: collision with root package name */
    public TextView f6736g;

    /* renamed from: h, reason: collision with root package name */
    public ConstraintLayout f6737h;

    /* renamed from: i, reason: collision with root package name */
    public ImageView f6738i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f6739j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f6740k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public TextView f6741m;

    /* renamed from: n, reason: collision with root package name */
    public TvRecyclerView f6742n;

    /* renamed from: p, reason: collision with root package name */
    public x9.t2 f6743p;

    /* renamed from: q, reason: collision with root package name */
    public final z7.s f6744q;
    public final int r;

    /* renamed from: s, reason: collision with root package name */
    public final z7.s f6745s;

    /* renamed from: t, reason: collision with root package name */
    public final ua.j3 f6746t;

    public a9(ActivityKeyMapEvent activityKeyMapEvent, da.g gVar, z7.s sVar, int i10, ua.j3 j3Var) {
        super(activityKeyMapEvent, gVar, R.layout.dialog_key_map_event_add);
        this.f6744q = sVar;
        this.r = i10;
        this.f6746t = j3Var;
        if (i10 != -1) {
            this.f6745s = sVar.p("keys").l(i10).g();
            return;
        }
        z7.s sVar2 = new z7.s();
        this.f6745s = sVar2;
        try {
            sVar2.m("name", "");
            sVar2.k("isOpen", Boolean.TRUE);
            sVar2.j("event", new z7.s());
            sVar2.j("click", new z7.o());
        } catch (Exception unused) {
        }
    }

    public final void a() {
        this.f6743p.E(new ArrayList());
        try {
            z7.o oVarP = this.f6745s.p("click");
            if (oVarP.f19478a.isEmpty()) {
                return;
            }
            for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                this.f6743p.q(oVarP.l(i10).g());
            }
        } catch (Exception unused) {
        }
    }

    public final void b(String str) {
        this.f6736g.setText(str);
        this.f6736g.setTextColor(this.f6725b.getResources().getColor(R.color.color_1));
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f6736g, View.TRANSLATION_X.getName(), 0.0f, 20.0f);
        objectAnimatorOfFloat.setDuration(500);
        objectAnimatorOfFloat.setInterpolator(new CycleInterpolator(3));
        objectAnimatorOfFloat.start();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws PackageManager.NameNotFoundException {
        if (view == null) {
            return;
        }
        int id2 = view.getId();
        Activity activity = this.f6724a;
        Context context = this.f6725b;
        if (id2 == R.id.v_btn_select) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new KeyMapSelectBean("某应用显示时", 100));
            arrayList.add(new KeyMapSelectBean("某应用显示时(首次)", 101));
            arrayList.add(new KeyMapSelectBean("自动化启动时(仅测试)", 102));
            arrayList.add(new KeyMapSelectBean("屏幕点亮时(仅支持个别)", 110));
            arrayList.add(new KeyMapSelectBean("屏幕熄灭时(仅支持个别)", 111));
            arrayList.add(new KeyMapSelectBean("(原生)系统切换成日间时", 120));
            arrayList.add(new KeyMapSelectBean("(原生)系统切换成夜间时", 121));
            arrayList.add(new KeyMapSelectBean("(原生)蓝牙功能开启时", 200));
            arrayList.add(new KeyMapSelectBean("(原生)蓝牙功能关闭时", CarSettingID.Recv.IGM_INPUT_OVER_VOLT));
            arrayList.add(new KeyMapSelectBean("(原生)有蓝牙连接成功时", CarSettingID.Recv.IGM_OVER_TEMP));
            arrayList.add(new KeyMapSelectBean("(原生)有蓝牙断开连接时", CarSettingID.Recv.IGM_OUTPUT_OPEN_LODE));
            arrayList.add(new KeyMapSelectBean("(原生)WIFI功能开启时", NoConst.RECORDING_TIME_INTERVAL));
            arrayList.add(new KeyMapSelectBean("(原生)WIFI功能关闭时", 301));
            arrayList.add(new KeyMapSelectBean("(原生)有WIFI连接成功时", 302));
            arrayList.add(new KeyMapSelectBean("(原生)有WIFI断开连接时", 303));
            arrayList.add(new KeyMapSelectBean("(原生)指定WIFI连接成功时", SourceConst.IOCTL_TEST_CHECKDEVICE_DISABLE));
            arrayList.add(new KeyMapSelectBean("USB设备插入时", 350));
            arrayList.add(new KeyMapSelectBean("USB设备拔除时", 351));
            arrayList.add(new KeyMapSelectBean("USB设备插入时(指定ID)", 352));
            arrayList.add(new KeyMapSelectBean("指定时间段(触发一次)", 501));
            arrayList.add(new KeyMapSelectBean("光照亮度变化时", 502));
            arrayList.add(new KeyMapSelectBean("屏幕亮度变化时", 503));
            int i10 = com.yunpan.appmanage.carsdk.m.f3854e;
            try {
                context.getPackageManager().getApplicationInfo("com.desay.svcarinfo", 0);
                arrayList.add(new KeyMapSelectBean("德赛车机-开大灯时", 504));
                arrayList.add(new KeyMapSelectBean("德赛车机-关大灯时", 505));
            } catch (Exception unused) {
            }
            g.b.u("每隔N分钟", 506, arrayList);
            try {
                AppStart.f3772h.f3775c.getApplicationInfo("com.hsae.core", 0);
                arrayList.add(new KeyMapSelectBean("日产车机-开大灯时", 10000));
                arrayList.add(new KeyMapSelectBean("日产车机-关大灯时", 10001));
                arrayList.add(new KeyMapSelectBean("日产车机-开电源时", 10003));
                arrayList.add(new KeyMapSelectBean("日产车机-关电源时", 10004));
                arrayList.add(new KeyMapSelectBean("日产-开机(一般没啥用)", 10005));
                arrayList.add(new KeyMapSelectBean("日产-关机(熄火后开门时)", 10006));
                arrayList.add(new KeyMapSelectBean("日产车机-开始倒挡时", 10008));
                arrayList.add(new KeyMapSelectBean("日产车机-停止倒挡时", 10009));
                if (Build.VERSION.SDK_INT >= 26) {
                    arrayList.add(new KeyMapSelectBean("日产车机-换档时", 10002));
                    arrayList.add(new KeyMapSelectBean("日产车机-换档时(瞬间)", 10007));
                    arrayList.add(new KeyMapSelectBean("日产车机-L挡起步时", 10010));
                    arrayList.add(new KeyMapSelectBean("日产D档10秒后还未起步时", 10011));
                    arrayList.add(new KeyMapSelectBean("日产挂档10秒后还未起步时", 10012));
                }
            } catch (Exception unused2) {
            }
            new ie(activity, context, arrayList, new d2.w(this, 16, arrayList)).show();
            return;
        }
        if (view.getId() == R.id.v_btn_add) {
            t8.a(activity, context, 0, false, new y8(this, 3));
            return;
        }
        int id3 = view.getId();
        ua.j3 j3Var = this.f6746t;
        z7.s sVar = this.f6744q;
        int i11 = this.r;
        if (id3 != R.id.v_btn_save) {
            if (view.getId() == R.id.v_btn_delete) {
                if (i11 != -1) {
                    sVar.p("keys").n(i11);
                    q4.a.S(context, sVar);
                }
                ta.m.c(context, "UP_KEYMAP_EVENT");
                int i12 = j3Var.f15764a;
                if (i12 != -1) {
                    ActivityKeyMapEvent activityKeyMapEvent = j3Var.f15765b;
                    if (activityKeyMapEvent.D.b() == 1) {
                        activityKeyMapEvent.findViewById(R.id.v_btn_return).requestFocus();
                    }
                    activityKeyMapEvent.D.C(i12);
                }
                dismiss();
                return;
            }
            return;
        }
        if (this.f6736g.getText().toString().trim().isEmpty()) {
            Toaster.show((CharSequence) "请先选择触发事件");
            return;
        }
        if (this.f6743p.b() == 0) {
            Toaster.show((CharSequence) "请添加至少一个操作");
            return;
        }
        z7.o oVar = new z7.o();
        z7.s sVar2 = this.f6745s;
        sVar2.j("click", oVar);
        Iterator it = this.f6743p.v().iterator();
        while (it.hasNext()) {
            sVar2.p("click").k((z7.s) it.next());
        }
        if (i11 == -1) {
            sVar.p("keys").k(sVar2);
        } else {
            sVar.p("keys").o(i11, sVar2);
        }
        q4.a.S(context, sVar);
        ta.m.c(context, "UP_KEYMAP_EVENT");
        j3Var.getClass();
        int i13 = ActivityKeyMapEvent.F;
        j3Var.f15765b.z();
        dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z7.s sVar = this.f6745s;
        this.f6737h = (ConstraintLayout) findViewById(R.id.v_select_open);
        this.f6738i = (ImageView) findViewById(R.id.v_select_open_ico);
        this.f6737h.setOnClickListener(new com.google.android.material.datepicker.l(this, 29));
        this.f6736g = (TextView) findViewById(R.id.v_name);
        this.f6739j = (TextView) findViewById(R.id.v_btn_select);
        this.f6740k = (TextView) findViewById(R.id.v_btn_add);
        this.l = (TextView) findViewById(R.id.v_btn_save);
        this.f6741m = (TextView) findViewById(R.id.v_btn_delete);
        this.f6739j.setOnClickListener(this);
        this.f6739j.requestFocus();
        this.f6740k.setOnClickListener(this);
        this.l.setOnClickListener(this);
        this.f6741m.setOnClickListener(this);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f6742n = tvRecyclerView;
        boolean zB = true;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        x9.t2 t2Var = new x9.t2();
        this.f6743p = t2Var;
        t2Var.f18336h = "映射操作：";
        this.f6742n.setAdapter(t2Var);
        d6.a aVar = new d6.a();
        aVar.f4496h = 3;
        aVar.f4495g = false;
        aVar.d(this.f6742n);
        aVar.g(this.f6743p);
        this.f6743p.f2881e = new y8(this, 2);
        try {
            this.f6736g.setText(sVar.o("name").i());
            if (sVar.f19480a.containsKey("isOpen")) {
                zB = sVar.o("isOpen").b();
            } else {
                sVar.k("isOpen", Boolean.TRUE);
            }
            this.f6738i.setImageResource(zB ? R.drawable.tp_check1 : R.drawable.tp_check2);
            a();
        } catch (Exception unused) {
        }
    }
}
