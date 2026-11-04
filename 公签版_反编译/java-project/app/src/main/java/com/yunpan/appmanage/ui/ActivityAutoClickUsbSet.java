package com.yunpan.appmanage.ui;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.support.v4.media.session.a;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import c6.c;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.db.AppBean;
import da.g;
import ha.g9;
import java.io.PrintStream;
import java.util.Iterator;
import ph.j;
import wa.t;
import wa.u;
import x9.n3;
import x9.o3;

/* loaded from: classes.dex */
public class ActivityAutoClickUsbSet extends g {
    public static final /* synthetic */ int E = 0;
    public o3 C;
    public TvRecyclerView D;

    @Override // da.g
    public final int t() {
        return R.layout.activity_auto_click_usb_set;
    }

    @Override // da.g
    public final void u() {
        findViewById(R.id.v_btn_return).setOnClickListener(new g9(29, this));
        ImageView imageView = (ImageView) findViewById(R.id.v_btn_check_ico);
        imageView.setImageResource(t.f17728a.W ? R.drawable.tp_check1 : R.drawable.tp_check2);
        ((ConstraintLayout) findViewById(R.id.v_btn_check)).setOnClickListener(new c(this, 27, imageView));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.D = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this.A, 6));
        o3 o3Var = new o3(this.A);
        this.C = o3Var;
        this.D.setAdapter(o3Var);
        this.C.f2881e = new j(13, this);
        Iterator<ResolveInfo> it = this.A.getPackageManager().queryIntentActivities(new Intent("android.hardware.usb.action.USB_DEVICE_ATTACHED"), 131072).iterator();
        while (it.hasNext()) {
            AppBean appBeanK = a.k(it.next().activityInfo.packageName);
            if (appBeanK != null) {
                PrintStream printStream = System.out;
                u uVar = t.f17728a;
                String str = uVar.X;
                printStream.getClass();
                this.C.q(new n3(appBeanK.name, appBeanK.pack, appBeanK.isSystem, a.D(new StringBuilder(","), appBeanK.name, ",", uVar.X)));
            }
        }
    }
}
