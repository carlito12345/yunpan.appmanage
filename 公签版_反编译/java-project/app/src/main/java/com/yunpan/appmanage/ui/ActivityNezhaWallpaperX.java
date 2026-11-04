package com.yunpan.appmanage.ui;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaperX;
import d6.a;
import da.g;
import fa.g0;
import java.io.File;
import java.util.ArrayList;
import mc.c;
import rc.f;
import ua.q4;
import ua.r4;
import ua.s4;
import ua.t4;
import x9.r3;
import z7.o;
import z7.s;

/* loaded from: classes.dex */
public class ActivityNezhaWallpaperX extends g {
    public static final /* synthetic */ int N = 0;
    public TvRecyclerView C;
    public r3 D;
    public ConstraintLayout F;
    public TextView G;
    public s H;
    public o I;
    public File L;
    public File M;
    public final ArrayList E = new ArrayList();
    public int K = -1;

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
        return R.layout.activity_nezha_wallpaper_x;
    }

    @Override // da.g
    public final void u() {
        this.L = new File("/data/user_de/0/com.android.systemui/shared_prefs/AppInfo.xml");
        File file = new File(g0.f5682a.d() + "/." + this.A.getPackageName() + "/AppInfo.xml");
        this.M = file;
        file.getParentFile().mkdirs();
        this.F = (ConstraintLayout) findViewById(R.id.v_loading);
        this.G = (TextView) findViewById(R.id.v_loading_ts);
        final int i10 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.p4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityNezhaWallpaperX f15882b;

            {
                this.f15882b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i11 = 0;
                ActivityNezhaWallpaperX activityNezhaWallpaperX = this.f15882b;
                switch (i10) {
                    case 0:
                        int i12 = ActivityNezhaWallpaperX.N;
                        activityNezhaWallpaperX.finish();
                        break;
                    case 1:
                        int i13 = ActivityNezhaWallpaperX.N;
                        activityNezhaWallpaperX.getClass();
                        new mc.c(i11, new q4(activityNezhaWallpaperX, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new r4(activityNezhaWallpaperX, i11));
                        break;
                    default:
                        int i14 = ActivityNezhaWallpaperX.N;
                        ActivityNezhaWallpaperX activityNezhaWallpaperX2 = this.f15882b;
                        activityNezhaWallpaperX2.getClass();
                        new ha.z6(activityNezhaWallpaperX2, activityNezhaWallpaperX2, "修改后需点击保存方可生效\n\n点击图标：可移除、改名、插入\n\n按住图标：可拖动调整位置", "", "好的", "", new s5.c(10)).show();
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.v_btn_save).setOnClickListener(new View.OnClickListener(this) { // from class: ua.p4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityNezhaWallpaperX f15882b;

            {
                this.f15882b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i112 = 0;
                ActivityNezhaWallpaperX activityNezhaWallpaperX = this.f15882b;
                switch (i11) {
                    case 0:
                        int i12 = ActivityNezhaWallpaperX.N;
                        activityNezhaWallpaperX.finish();
                        break;
                    case 1:
                        int i13 = ActivityNezhaWallpaperX.N;
                        activityNezhaWallpaperX.getClass();
                        new mc.c(i112, new q4(activityNezhaWallpaperX, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new r4(activityNezhaWallpaperX, i112));
                        break;
                    default:
                        int i14 = ActivityNezhaWallpaperX.N;
                        ActivityNezhaWallpaperX activityNezhaWallpaperX2 = this.f15882b;
                        activityNezhaWallpaperX2.getClass();
                        new ha.z6(activityNezhaWallpaperX2, activityNezhaWallpaperX2, "修改后需点击保存方可生效\n\n点击图标：可移除、改名、插入\n\n按住图标：可拖动调整位置", "", "好的", "", new s5.c(10)).show();
                        break;
                }
            }
        });
        final int i12 = 2;
        findViewById(R.id.v_btn_help).setOnClickListener(new View.OnClickListener(this) { // from class: ua.p4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityNezhaWallpaperX f15882b;

            {
                this.f15882b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i112 = 0;
                ActivityNezhaWallpaperX activityNezhaWallpaperX = this.f15882b;
                switch (i12) {
                    case 0:
                        int i122 = ActivityNezhaWallpaperX.N;
                        activityNezhaWallpaperX.finish();
                        break;
                    case 1:
                        int i13 = ActivityNezhaWallpaperX.N;
                        activityNezhaWallpaperX.getClass();
                        new mc.c(i112, new q4(activityNezhaWallpaperX, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new r4(activityNezhaWallpaperX, i112));
                        break;
                    default:
                        int i14 = ActivityNezhaWallpaperX.N;
                        ActivityNezhaWallpaperX activityNezhaWallpaperX2 = this.f15882b;
                        activityNezhaWallpaperX2.getClass();
                        new ha.z6(activityNezhaWallpaperX2, activityNezhaWallpaperX2, "修改后需点击保存方可生效\n\n点击图标：可移除、改名、插入\n\n按住图标：可拖动调整位置", "", "好的", "", new s5.c(10)).show();
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
        this.D.f2881e = new q4(this, 2);
        this.C.setOnItemListener(new s4());
        a aVar = new a();
        aVar.f4496h = 15;
        aVar.f4495g = false;
        aVar.d(this.C);
        aVar.g(this.D);
        aVar.f4497i = new t4(this);
        new c(0, new q4(this, 0)).d(f.f13757b).a(fc.b.a()).b(new r4(this, 1));
    }
}
