package com.yunpan.appmanage.ui;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaper;
import d6.a;
import da.g;
import fa.g0;
import java.io.File;
import java.util.ArrayList;
import mc.c;
import rc.f;
import ua.d4;
import ua.e4;
import ua.f4;
import ua.g4;
import ua.h4;
import x9.r3;
import z7.o;

/* loaded from: classes.dex */
public class ActivityNezhaWallpaper extends g {
    public static final /* synthetic */ int R = 0;
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
        this.O = new File("/data/user_de/0/com.hozonauto.netahome/shared_prefs/EP40_ep36_data_wallpaper_1.2.xml");
        File file = new File(g0.f5682a.d() + "/." + this.A.getPackageName() + "/EP_data_wallpaper_1.2.xml");
        this.P = file;
        file.getParentFile().mkdirs();
        this.I = (ConstraintLayout) findViewById(R.id.v_loading);
        this.K = (TextView) findViewById(R.id.v_loading_ts);
        final int i10 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.c4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityNezhaWallpaper f15605b;

            {
                this.f15605b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i11 = 0;
                ActivityNezhaWallpaper activityNezhaWallpaper = this.f15605b;
                switch (i10) {
                    case 0:
                        int i12 = ActivityNezhaWallpaper.R;
                        activityNezhaWallpaper.finish();
                        break;
                    case 1:
                        int i13 = ActivityNezhaWallpaper.R;
                        activityNezhaWallpaper.getClass();
                        new mc.c(i11, new d4(activityNezhaWallpaper, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new e4(activityNezhaWallpaper, i11));
                        break;
                    default:
                        int i14 = ActivityNezhaWallpaper.R;
                        ActivityNezhaWallpaper activityNezhaWallpaper2 = this.f15605b;
                        activityNezhaWallpaper2.getClass();
                        new ha.z6(activityNezhaWallpaper2, activityNezhaWallpaper2, "修改后需点击保存方可生效\n\n点击图标：可移除、改名、插入\n\n按住图标：可拖动调整位置", "", "好的", "", new s5.c(9)).show();
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.v_btn_save).setOnClickListener(new View.OnClickListener(this) { // from class: ua.c4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityNezhaWallpaper f15605b;

            {
                this.f15605b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i112 = 0;
                ActivityNezhaWallpaper activityNezhaWallpaper = this.f15605b;
                switch (i11) {
                    case 0:
                        int i12 = ActivityNezhaWallpaper.R;
                        activityNezhaWallpaper.finish();
                        break;
                    case 1:
                        int i13 = ActivityNezhaWallpaper.R;
                        activityNezhaWallpaper.getClass();
                        new mc.c(i112, new d4(activityNezhaWallpaper, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new e4(activityNezhaWallpaper, i112));
                        break;
                    default:
                        int i14 = ActivityNezhaWallpaper.R;
                        ActivityNezhaWallpaper activityNezhaWallpaper2 = this.f15605b;
                        activityNezhaWallpaper2.getClass();
                        new ha.z6(activityNezhaWallpaper2, activityNezhaWallpaper2, "修改后需点击保存方可生效\n\n点击图标：可移除、改名、插入\n\n按住图标：可拖动调整位置", "", "好的", "", new s5.c(9)).show();
                        break;
                }
            }
        });
        final int i12 = 2;
        findViewById(R.id.v_btn_help).setOnClickListener(new View.OnClickListener(this) { // from class: ua.c4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityNezhaWallpaper f15605b;

            {
                this.f15605b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i112 = 0;
                ActivityNezhaWallpaper activityNezhaWallpaper = this.f15605b;
                switch (i12) {
                    case 0:
                        int i122 = ActivityNezhaWallpaper.R;
                        activityNezhaWallpaper.finish();
                        break;
                    case 1:
                        int i13 = ActivityNezhaWallpaper.R;
                        activityNezhaWallpaper.getClass();
                        new mc.c(i112, new d4(activityNezhaWallpaper, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new e4(activityNezhaWallpaper, i112));
                        break;
                    default:
                        int i14 = ActivityNezhaWallpaper.R;
                        ActivityNezhaWallpaper activityNezhaWallpaper2 = this.f15605b;
                        activityNezhaWallpaper2.getClass();
                        new ha.z6(activityNezhaWallpaper2, activityNezhaWallpaper2, "修改后需点击保存方可生效\n\n点击图标：可移除、改名、插入\n\n按住图标：可拖动调整位置", "", "好的", "", new s5.c(9)).show();
                        break;
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this.A, 7));
        r3 r3Var = new r3(this);
        this.D = r3Var;
        this.C.setAdapter(r3Var);
        this.D.f2881e = new d4(this, 2);
        this.C.setOnItemListener(new f4());
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list_dock);
        this.E = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7GridLayoutManager(this.A, 7));
        r3 r3Var2 = new r3(this);
        this.F = r3Var2;
        this.E.setAdapter(r3Var2);
        this.F.f2881e = new d4(this, 3);
        a aVar = new a();
        aVar.f4496h = 12;
        aVar.f4495g = false;
        aVar.d(this.E);
        aVar.g(this.F);
        aVar.f4497i = new g4(this);
        a aVar2 = new a();
        aVar2.f4496h = 15;
        aVar2.f4495g = false;
        aVar2.d(this.C);
        aVar2.g(this.D);
        aVar2.f4497i = new h4(this);
        new c(0, new d4(this, 0)).d(f.f13757b).a(fc.b.a()).b(new e4(this, 1));
    }
}
