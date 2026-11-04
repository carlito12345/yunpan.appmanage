package com.yunpan.appmanage.ui;

import a2.w0;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.y;
import com.bumptech.glide.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import da.g;
import fa.b0;
import fa.s;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import u9.d;
import ua.g1;
import ua.g5;
import ua.t6;
import ua.u6;
import ua.v6;
import x9.y4;

/* loaded from: classes.dex */
public class ActivityStart extends g {
    public static final /* synthetic */ int G = 0;
    public TvRecyclerView C;
    public y4 D;
    public final ArrayList E = new ArrayList();
    public final ArrayList F = new ArrayList();

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
        return R.layout.activity_start;
    }

    @Override // da.g
    public final void u() {
        findViewById(R.id.v_btn_return).setOnClickListener(new g1(this, 28));
        this.D = new y4(this.A);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.C = tvRecyclerView;
        int i10 = 0;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        this.C.setAdapter(this.D);
        y yVar = new y(this.A);
        yVar.e(n0.g.e(this, R.drawable.divider));
        this.C.addItemDecoration(yVar);
        List<ResolveInfo> listQueryBroadcastReceivers = getPackageManager().queryBroadcastReceivers(new Intent("android.intent.action.BOOT_COMPLETED"), 512);
        while (true) {
            int size = listQueryBroadcastReceivers.size();
            ArrayList arrayList = this.E;
            if (i10 >= size) {
                this.D.r(arrayList);
                this.D.q(new ResolveInfo());
                ((ProgressBar) findViewById(R.id.v_loading)).setVisibility(8);
                this.D.f2881e = new g5(4, this);
                this.C.setOnItemListener(new v6());
                this.C.setOnInBorderKeyEventListener(new t6(0));
                return;
            }
            ResolveInfo resolveInfo = listQueryBroadcastReceivers.get(i10);
            AppBean appBean = MyDb.get().getAppDao().get_appBean(resolveInfo.activityInfo.packageName);
            if (appBean == null || (!appBean.isDisable && !appBean.isUnInstall)) {
                if ((resolveInfo.activityInfo.applicationInfo.flags & 1) != 0) {
                    this.F.add(resolveInfo);
                } else {
                    arrayList.add(resolveInfo);
                }
            }
            i10++;
        }
    }

    public final void x(ResolveInfo resolveInfo, boolean z, int i10) {
        try {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
            DecimalFormat decimalFormat = k.f4034u0;
            j.f4033a.f4037b.setComponentEnabledSetting(componentName, z ? 2 : 1, 1);
            StringBuilder sb2 = new StringBuilder("更改成功 (");
            sb2.append(z ? "禁用" : "启用");
            sb2.append(")");
            a0.v(sb2.toString(), true);
            this.D.e(i10);
        } catch (Exception unused) {
            String str = resolveInfo.activityInfo.packageName + "/" + resolveInfo.activityInfo.name;
            w0 w0Var = b0.f5652a;
            w0Var.f347c = new u6(this, z, i10);
            d.f15554a.execute(new s(w0Var, str, z, 0));
        }
    }
}
