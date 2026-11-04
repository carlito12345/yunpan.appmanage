package com.yunpan.appmanage.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import c6.e;
import com.bumptech.glide.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.ui.ActivityAppsPermissions;
import com.yunpan.appmanage.ui.ActivityAppsPermissionsAllow;
import da.g;
import ha.aa;
import ha.e2;
import ha.g9;
import ha.o;
import mc.c;
import rc.f;
import x9.a0;
import x9.c0;

/* loaded from: classes.dex */
public class ActivityAppsPermissions extends g {
    public static final /* synthetic */ int K = 0;
    public RecyclerView C;
    public c0 D;
    public TvRecyclerView E;
    public a0 F;
    public LinearLayout G;
    public EditText H;
    public String I;

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        b.b(this.A).a();
        super.onDestroy();
        System.gc();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_apps;
    }

    @Override // da.g
    public final void u() {
        TextView textView = (TextView) findViewById(R.id.v_btn_return);
        textView.setOnClickListener(new g9(27, this));
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_read_ts_lay);
        this.G = linearLayout;
        linearLayout.setVisibility(8);
        EditText editText = (EditText) findViewById(R.id.v_search);
        this.H = editText;
        editText.setVisibility(8);
        this.H.setOnKeyListener(new e2(this, textView, 6));
        this.H.addTextChangedListener(new aa(this, 4));
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list_type);
        this.C = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(0, false));
        c0 c0Var = new c0();
        this.D = c0Var;
        g.b.w("搜索", false, c0Var);
        g.b.w("全部应用", false, this.D);
        g.b.w("个人应用", true, this.D);
        g.b.w("系统应用", false, this.D);
        g.b.w("服务插件", false, this.D);
        this.C.setAdapter(this.D);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.E = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 7));
        a0 a0Var = new a0(this);
        this.F = a0Var;
        this.E.setAdapter(a0Var);
        final int i10 = 0;
        this.D.f2881e = new e(this) { // from class: ua.l0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppsPermissions f15795b;

            {
                this.f15795b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i11) {
                ActivityAppsPermissions activityAppsPermissions = this.f15795b;
                switch (i10) {
                    case 0:
                        activityAppsPermissions.D.G(i11);
                        activityAppsPermissions.E.stopScroll();
                        if (i11 != 0) {
                            activityAppsPermissions.x(i11);
                            break;
                        } else {
                            activityAppsPermissions.H.setVisibility(0);
                            activityAppsPermissions.H.requestFocus();
                            activityAppsPermissions.C.setVisibility(8);
                            break;
                        }
                    default:
                        int i12 = ActivityAppsPermissions.K;
                        activityAppsPermissions.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putString("packageName", ((AppBean) activityAppsPermissions.F.t(i11)).pack);
                        Intent intent = new Intent(activityAppsPermissions.A, (Class<?>) ActivityAppsPermissionsAllow.class);
                        intent.putExtras(bundle);
                        activityAppsPermissions.startActivity(intent);
                        break;
                }
            }
        };
        final int i11 = 1;
        this.F.f2881e = new e(this) { // from class: ua.l0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppsPermissions f15795b;

            {
                this.f15795b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i112) {
                ActivityAppsPermissions activityAppsPermissions = this.f15795b;
                switch (i11) {
                    case 0:
                        activityAppsPermissions.D.G(i112);
                        activityAppsPermissions.E.stopScroll();
                        if (i112 != 0) {
                            activityAppsPermissions.x(i112);
                            break;
                        } else {
                            activityAppsPermissions.H.setVisibility(0);
                            activityAppsPermissions.H.requestFocus();
                            activityAppsPermissions.C.setVisibility(8);
                            break;
                        }
                    default:
                        int i12 = ActivityAppsPermissions.K;
                        activityAppsPermissions.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putString("packageName", ((AppBean) activityAppsPermissions.F.t(i112)).pack);
                        Intent intent = new Intent(activityAppsPermissions.A, (Class<?>) ActivityAppsPermissionsAllow.class);
                        intent.putExtras(bundle);
                        activityAppsPermissions.startActivity(intent);
                        break;
                }
            }
        };
        x(2);
    }

    public final void x(int i10) {
        new c(0, new o(i10, 9, this)).d(f.f13757b).a(fc.b.a()).b(new ka.c(10, this));
    }
}
