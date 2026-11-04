package com.yunpan.appmanage.ui;

import a2.w0;
import android.content.Context;
import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.StringBoolBean;
import com.yunpan.appmanage.service.StartService;
import com.yunpan.appmanage.ui.ActivityBootStartTask;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import da.g;
import fa.b0;
import ha.db;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import q4.a;
import ua.u0;
import ua.v0;
import wa.t;
import x9.i0;
import z7.o;
import z7.p;
import z7.r;
import z7.s;

/* loaded from: classes.dex */
public class ActivityBootStartTask extends g implements View.OnKeyListener {
    public static final /* synthetic */ int G = 0;
    public ConstraintLayout C;
    public TvRecyclerView D;
    public i0 E;
    public o F;

    public static void x(ActivityBootStartTask activityBootStartTask, int i10, int i11) throws IOException {
        s sVarG = activityBootStartTask.F.l(i10).g();
        activityBootStartTask.F.n(i10);
        o oVar = new o();
        int size = activityBootStartTask.F.f19478a.size();
        for (int i12 = 0; i12 < size; i12++) {
            System.out.getClass();
            if (i12 == i11) {
                oVar.k(sVarG);
            }
            oVar.k(activityBootStartTask.F.l(i12));
        }
        if (oVar.f19478a.size() - 1 < i11) {
            oVar.k(sVarG);
        }
        activityBootStartTask.F = oVar;
        a.P(activityBootStartTask.A, oVar);
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
        return i10 == 20 && this.E.b() == 0;
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_boot_start_task;
    }

    @Override // da.g
    public final void u() throws IOException {
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_return);
        this.C = constraintLayout;
        final int i10 = 0;
        constraintLayout.setOnClickListener(new View.OnClickListener(this) { // from class: ua.s0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityBootStartTask f15943b;

            {
                this.f15943b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                ActivityBootStartTask activityBootStartTask = this.f15943b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityBootStartTask.G;
                        activityBootStartTask.finish();
                        break;
                    case 1:
                        int i12 = ActivityBootStartTask.G;
                        activityBootStartTask.getClass();
                        new ha.j4(activityBootStartTask, activityBootStartTask, new u0(activityBootStartTask)).show();
                        break;
                    case 2:
                        if (activityBootStartTask.E.b() != 0) {
                            activityBootStartTask.E.E(new ArrayList());
                            q4.a.P(activityBootStartTask.A, null);
                            activityBootStartTask.F = new z7.o();
                            break;
                        }
                        break;
                    case 3:
                        int i13 = ActivityBootStartTask.G;
                        activityBootStartTask.getClass();
                        new ha.z6(activityBootStartTask, activityBootStartTask, activityBootStartTask.A.getString(R.string.str_gj) + "往往会比桌面更快启动,如果执行了开机任务之后,桌面才打开的话,那么你先打开的应用就会被桌面覆盖，或无法打开任务里的应用！如果您有时候行有时候不行,那肯定是延时不足！请在【设置】里设置开机后延时！", "要学会灵活使用\"延时\"和\"提示\"功能，能解决您很多困惑").show();
                        break;
                    default:
                        int i14 = ActivityBootStartTask.G;
                        activityBootStartTask.getClass();
                        new ha.m4(activityBootStartTask, activityBootStartTask).show();
                        break;
                }
            }
        });
        this.C.requestFocus();
        final int i11 = 1;
        ((ConstraintLayout) findViewById(R.id.v_btn_add)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.s0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityBootStartTask f15943b;

            {
                this.f15943b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                ActivityBootStartTask activityBootStartTask = this.f15943b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityBootStartTask.G;
                        activityBootStartTask.finish();
                        break;
                    case 1:
                        int i12 = ActivityBootStartTask.G;
                        activityBootStartTask.getClass();
                        new ha.j4(activityBootStartTask, activityBootStartTask, new u0(activityBootStartTask)).show();
                        break;
                    case 2:
                        if (activityBootStartTask.E.b() != 0) {
                            activityBootStartTask.E.E(new ArrayList());
                            q4.a.P(activityBootStartTask.A, null);
                            activityBootStartTask.F = new z7.o();
                            break;
                        }
                        break;
                    case 3:
                        int i13 = ActivityBootStartTask.G;
                        activityBootStartTask.getClass();
                        new ha.z6(activityBootStartTask, activityBootStartTask, activityBootStartTask.A.getString(R.string.str_gj) + "往往会比桌面更快启动,如果执行了开机任务之后,桌面才打开的话,那么你先打开的应用就会被桌面覆盖，或无法打开任务里的应用！如果您有时候行有时候不行,那肯定是延时不足！请在【设置】里设置开机后延时！", "要学会灵活使用\"延时\"和\"提示\"功能，能解决您很多困惑").show();
                        break;
                    default:
                        int i14 = ActivityBootStartTask.G;
                        activityBootStartTask.getClass();
                        new ha.m4(activityBootStartTask, activityBootStartTask).show();
                        break;
                }
            }
        });
        final int i12 = 2;
        ((ConstraintLayout) findViewById(R.id.v_btn_remove_all)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.s0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityBootStartTask f15943b;

            {
                this.f15943b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                ActivityBootStartTask activityBootStartTask = this.f15943b;
                switch (i12) {
                    case 0:
                        int i112 = ActivityBootStartTask.G;
                        activityBootStartTask.finish();
                        break;
                    case 1:
                        int i122 = ActivityBootStartTask.G;
                        activityBootStartTask.getClass();
                        new ha.j4(activityBootStartTask, activityBootStartTask, new u0(activityBootStartTask)).show();
                        break;
                    case 2:
                        if (activityBootStartTask.E.b() != 0) {
                            activityBootStartTask.E.E(new ArrayList());
                            q4.a.P(activityBootStartTask.A, null);
                            activityBootStartTask.F = new z7.o();
                            break;
                        }
                        break;
                    case 3:
                        int i13 = ActivityBootStartTask.G;
                        activityBootStartTask.getClass();
                        new ha.z6(activityBootStartTask, activityBootStartTask, activityBootStartTask.A.getString(R.string.str_gj) + "往往会比桌面更快启动,如果执行了开机任务之后,桌面才打开的话,那么你先打开的应用就会被桌面覆盖，或无法打开任务里的应用！如果您有时候行有时候不行,那肯定是延时不足！请在【设置】里设置开机后延时！", "要学会灵活使用\"延时\"和\"提示\"功能，能解决您很多困惑").show();
                        break;
                    default:
                        int i14 = ActivityBootStartTask.G;
                        activityBootStartTask.getClass();
                        new ha.m4(activityBootStartTask, activityBootStartTask).show();
                        break;
                }
            }
        });
        final int i13 = 3;
        findViewById(R.id.v_btn_help).setOnClickListener(new View.OnClickListener(this) { // from class: ua.s0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityBootStartTask f15943b;

            {
                this.f15943b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                ActivityBootStartTask activityBootStartTask = this.f15943b;
                switch (i13) {
                    case 0:
                        int i112 = ActivityBootStartTask.G;
                        activityBootStartTask.finish();
                        break;
                    case 1:
                        int i122 = ActivityBootStartTask.G;
                        activityBootStartTask.getClass();
                        new ha.j4(activityBootStartTask, activityBootStartTask, new u0(activityBootStartTask)).show();
                        break;
                    case 2:
                        if (activityBootStartTask.E.b() != 0) {
                            activityBootStartTask.E.E(new ArrayList());
                            q4.a.P(activityBootStartTask.A, null);
                            activityBootStartTask.F = new z7.o();
                            break;
                        }
                        break;
                    case 3:
                        int i132 = ActivityBootStartTask.G;
                        activityBootStartTask.getClass();
                        new ha.z6(activityBootStartTask, activityBootStartTask, activityBootStartTask.A.getString(R.string.str_gj) + "往往会比桌面更快启动,如果执行了开机任务之后,桌面才打开的话,那么你先打开的应用就会被桌面覆盖，或无法打开任务里的应用！如果您有时候行有时候不行,那肯定是延时不足！请在【设置】里设置开机后延时！", "要学会灵活使用\"延时\"和\"提示\"功能，能解决您很多困惑").show();
                        break;
                    default:
                        int i14 = ActivityBootStartTask.G;
                        activityBootStartTask.getClass();
                        new ha.m4(activityBootStartTask, activityBootStartTask).show();
                        break;
                }
            }
        });
        final int i14 = 4;
        findViewById(R.id.v_btn_special).setOnClickListener(new View.OnClickListener(this) { // from class: ua.s0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityBootStartTask f15943b;

            {
                this.f15943b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IOException {
                ActivityBootStartTask activityBootStartTask = this.f15943b;
                switch (i14) {
                    case 0:
                        int i112 = ActivityBootStartTask.G;
                        activityBootStartTask.finish();
                        break;
                    case 1:
                        int i122 = ActivityBootStartTask.G;
                        activityBootStartTask.getClass();
                        new ha.j4(activityBootStartTask, activityBootStartTask, new u0(activityBootStartTask)).show();
                        break;
                    case 2:
                        if (activityBootStartTask.E.b() != 0) {
                            activityBootStartTask.E.E(new ArrayList());
                            q4.a.P(activityBootStartTask.A, null);
                            activityBootStartTask.F = new z7.o();
                            break;
                        }
                        break;
                    case 3:
                        int i132 = ActivityBootStartTask.G;
                        activityBootStartTask.getClass();
                        new ha.z6(activityBootStartTask, activityBootStartTask, activityBootStartTask.A.getString(R.string.str_gj) + "往往会比桌面更快启动,如果执行了开机任务之后,桌面才打开的话,那么你先打开的应用就会被桌面覆盖，或无法打开任务里的应用！如果您有时候行有时候不行,那肯定是延时不足！请在【设置】里设置开机后延时！", "要学会灵活使用\"延时\"和\"提示\"功能，能解决您很多困惑").show();
                        break;
                    default:
                        int i142 = ActivityBootStartTask.G;
                        activityBootStartTask.getClass();
                        new ha.m4(activityBootStartTask, activityBootStartTask).show();
                        break;
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.D = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this, 1, false));
        this.E = new i0();
        o oVarK = a.K(this.A);
        this.F = oVarK;
        if (oVarK == null) {
            this.F = new o();
        } else {
            boolean zB = true;
            for (int i15 = 0; i15 < this.F.f19478a.size(); i15++) {
                if (this.F.l(i15).g().o("isOpen") != null) {
                    zB = this.F.l(i15).g().o("isOpen").b();
                }
                this.E.q(new StringBoolBean(android.support.v4.media.session.a.v(this.F, i15, "name"), zB));
            }
        }
        this.D.setAdapter(this.E);
        i0 i0Var = this.E;
        i0Var.f2881e = new u0(this);
        if (i0Var.b() <= 0 || Build.VERSION.SDK_INT < 18) {
            return;
        }
        t.f17728a.g(System.currentTimeMillis());
        if (XXPermissions.isGrantedPermission(this.A, PermissionLists.getBindNotificationListenerServicePermission(StartService.class))) {
            return;
        }
        b0.f5652a.getClass();
        if (!w0.M()) {
            XXPermissions.with(this).permission(PermissionLists.getBindNotificationListenerServicePermission(StartService.class)).request(new v0(i10));
        } else {
            DecimalFormat decimalFormat = k.f4034u0;
            j.f4033a.f4048g0.submit(new db(26, this));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [z7.r] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v2 */
    public final void y(int i10, s sVar, String str) throws IOException {
        ?? r32;
        if (i10 == -1) {
            this.E.q(new StringBoolBean(str, true));
            this.F.k(sVar);
        } else {
            this.E.p(i10, new StringBoolBean(str, true));
            ArrayList arrayList = new ArrayList();
            int size = this.F.f19478a.size();
            int i11 = 0;
            while (true) {
                r32 = r.f19479a;
                if (i11 >= size) {
                    break;
                }
                if (i11 == i10) {
                    arrayList.add(sVar == null ? r32 : sVar);
                }
                p pVarL = this.F.l(i11);
                if (pVarL != null) {
                    r32 = pVarL;
                }
                arrayList.add(r32);
                i11++;
            }
            if (arrayList.size() - 1 < i10) {
                if (sVar == null) {
                    sVar = r32;
                }
                arrayList.add(sVar);
            }
            o oVar = new o();
            this.F = oVar;
            oVar.f19478a.addAll(arrayList);
        }
        a.P(this.A, this.F);
    }
}
