package com.yunpan.appmanage.ui;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaperL;
import d6.a;
import da.g;
import fa.g0;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import mc.c;
import rc.f;
import ua.k4;
import ua.l4;
import ua.m4;
import ua.n4;
import ua.o4;
import x9.r3;
import z7.o;

/* loaded from: classes.dex */
public class ActivityNezhaWallpaperL extends g {
    public static final /* synthetic */ int T = 0;
    public TvRecyclerView C;
    public r3 D;
    public TvRecyclerView E;
    public r3 F;
    public ConstraintLayout I;
    public TextView K;
    public o L;
    public o M;
    public File O;
    public File P;
    public final ArrayList G = new ArrayList();
    public final ArrayList H = new ArrayList();
    public int N = -1;
    public final ArrayList R = new ArrayList();
    public final HashMap S = new HashMap();

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        this.D.E(null);
        this.C = null;
        this.D = null;
        b.b(this.A).a();
        super.onDestroy();
        System.gc();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_nezha_wallpaper;
    }

    @Override // da.g
    public final void u() {
        this.O = new File("/data/user_de/0/com.hozonauto.netahome/shared_prefs/ep32_data_1.2.xml");
        File file = new File(g0.f5682a.d() + "/." + this.A.getPackageName() + "/ep32_data_1.2.xml");
        this.P = file;
        file.getParentFile().mkdirs();
        this.I = (ConstraintLayout) findViewById(R.id.v_loading);
        this.K = (TextView) findViewById(R.id.v_loading_ts);
        final int i10 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.i4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityNezhaWallpaperL f15733b;

            {
                this.f15733b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityNezhaWallpaperL activityNezhaWallpaperL = this.f15733b;
                int i11 = 0;
                switch (i10) {
                    case 0:
                        int i12 = ActivityNezhaWallpaperL.T;
                        activityNezhaWallpaperL.finish();
                        break;
                    case 1:
                        int i13 = ActivityNezhaWallpaperL.T;
                        activityNezhaWallpaperL.getClass();
                        new mc.c(i11, new k4(activityNezhaWallpaperL, 3)).d(rc.f.f13757b).a(fc.b.a()).b(new l4(activityNezhaWallpaperL, i11));
                        break;
                    default:
                        int i14 = ActivityNezhaWallpaperL.T;
                        ActivityNezhaWallpaperL activityNezhaWallpaperL2 = this.f15733b;
                        activityNezhaWallpaperL2.getClass();
                        new ha.z6(activityNezhaWallpaperL2, activityNezhaWallpaperL2, "修改后需点击保存方可生效\n\n点击图标：可移除、改名、插入\n\n按住图标：可拖动调整位置", "", "好的", "", new s9.a(9, false)).show();
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.v_btn_save).setOnClickListener(new View.OnClickListener(this) { // from class: ua.i4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityNezhaWallpaperL f15733b;

            {
                this.f15733b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityNezhaWallpaperL activityNezhaWallpaperL = this.f15733b;
                int i112 = 0;
                switch (i11) {
                    case 0:
                        int i12 = ActivityNezhaWallpaperL.T;
                        activityNezhaWallpaperL.finish();
                        break;
                    case 1:
                        int i13 = ActivityNezhaWallpaperL.T;
                        activityNezhaWallpaperL.getClass();
                        new mc.c(i112, new k4(activityNezhaWallpaperL, 3)).d(rc.f.f13757b).a(fc.b.a()).b(new l4(activityNezhaWallpaperL, i112));
                        break;
                    default:
                        int i14 = ActivityNezhaWallpaperL.T;
                        ActivityNezhaWallpaperL activityNezhaWallpaperL2 = this.f15733b;
                        activityNezhaWallpaperL2.getClass();
                        new ha.z6(activityNezhaWallpaperL2, activityNezhaWallpaperL2, "修改后需点击保存方可生效\n\n点击图标：可移除、改名、插入\n\n按住图标：可拖动调整位置", "", "好的", "", new s9.a(9, false)).show();
                        break;
                }
            }
        });
        final int i12 = 2;
        findViewById(R.id.v_btn_help).setOnClickListener(new View.OnClickListener(this) { // from class: ua.i4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityNezhaWallpaperL f15733b;

            {
                this.f15733b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityNezhaWallpaperL activityNezhaWallpaperL = this.f15733b;
                int i112 = 0;
                switch (i12) {
                    case 0:
                        int i122 = ActivityNezhaWallpaperL.T;
                        activityNezhaWallpaperL.finish();
                        break;
                    case 1:
                        int i13 = ActivityNezhaWallpaperL.T;
                        activityNezhaWallpaperL.getClass();
                        new mc.c(i112, new k4(activityNezhaWallpaperL, 3)).d(rc.f.f13757b).a(fc.b.a()).b(new l4(activityNezhaWallpaperL, i112));
                        break;
                    default:
                        int i14 = ActivityNezhaWallpaperL.T;
                        ActivityNezhaWallpaperL activityNezhaWallpaperL2 = this.f15733b;
                        activityNezhaWallpaperL2.getClass();
                        new ha.z6(activityNezhaWallpaperL2, activityNezhaWallpaperL2, "修改后需点击保存方可生效\n\n点击图标：可移除、改名、插入\n\n按住图标：可拖动调整位置", "", "好的", "", new s9.a(9, false)).show();
                        break;
                }
            }
        });
        ArrayList arrayList = this.R;
        arrayList.add(new AppBean("空调开关", "shortcut_hvac"));
        arrayList.add(new AppBean("主驾通风", "shortcut_driver_ventilate"));
        arrayList.add(new AppBean("座椅", "shortcut_seat"));
        arrayList.add(new AppBean("后除霜", "shortcut_rear_defrost"));
        arrayList.add(new AppBean("前除霜", "shortcut_front_defrost"));
        arrayList.add(new AppBean("循环模式", "shortcut_inner_loop"));
        arrayList.add(new AppBean("副驾通风", "shortcut_secondary_ventilate"));
        arrayList.add(new AppBean("冰箱开关", "shortcut_fridge"));
        arrayList.add(new AppBean("主驾加热", "shortcut_driver_heat"));
        arrayList.add(new AppBean("副驾加热", "shortcut_secondary_heat"));
        HashMap map = this.S;
        map.put("shortcut_hvac", "allapps_icon_shortcut_hvac_idle_comfort_night");
        map.put("shortcut_driver_ventilate", "allapps_icon_shortcut_driver_ventilate_idle_comfort_night");
        map.put("shortcut_seat", "allapps_icon_shortcut_seat_idle_comfort_night");
        map.put("shortcut_rear_defrost", "allapps_icon_shortcut_rear_defrost_idle");
        map.put("shortcut_front_defrost", "allapps_icon_shortcut_front_defrost_idle");
        map.put("shortcut_inner_loop", "allapps_icon_shortcut_auto_loop_idle");
        map.put("shortcut_secondary_ventilate", "allapps_icon_shortcut_secondary_ventilate_idle");
        map.put("shortcut_fridge", "allapps_icon_shortcut_fridge");
        map.put("shortcut_driver_heat", "allapps_icon_shortcut_driver_heat_idle");
        map.put("shortcut_secondary_heat", "allapps_icon_shortcut_secondary_heat_idle");
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this.A, 9));
        r3 r3Var = new r3(this);
        this.D = r3Var;
        this.C.setAdapter(r3Var);
        this.D.f2881e = new k4(this, 1);
        this.C.setOnItemListener(new m4());
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list_dock);
        this.E = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7GridLayoutManager(this.A, 7));
        r3 r3Var2 = new r3((g) this);
        this.F = r3Var2;
        this.E.setAdapter(r3Var2);
        this.F.f2881e = new k4(this, 2);
        a aVar = new a();
        aVar.f4496h = 12;
        aVar.f4495g = false;
        aVar.d(this.E);
        aVar.g(this.F);
        aVar.f4497i = new n4(this);
        a aVar2 = new a();
        aVar2.f4496h = 15;
        aVar2.f4495g = false;
        aVar2.d(this.C);
        aVar2.g(this.D);
        aVar2.f4497i = new o4(this);
        new c(0, new k4(this, 0)).d(f.f13757b).a(fc.b.a()).b(new l4(this, 1));
    }
}
