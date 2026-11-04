package com.yunpan.appmanage.ui;

import android.content.Intent;
import android.os.RemoteException;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.carsdk.f;
import da.g;
import g.b;
import ua.o7;
import ua.z6;
import x8.a;
import x8.c;

/* loaded from: classes.dex */
public class ActivityTextIflytek extends g {
    public static final /* synthetic */ int I = 0;
    public TextView C;
    public TextView D;
    public TextView E;
    public c F;
    public final f G = new f(7, this);
    public final o7 H = new o7(this);

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        try {
            c cVar = this.F;
            if (cVar != null) {
                ((a) cVar).l(this.H);
                ((a) this.F).j(null);
                ((a) this.F).h(null);
                ((a) this.F).i();
            }
        } catch (RemoteException e7) {
            e7.printStackTrace();
        }
        unbindService(this.G);
        super.onDestroy();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_nissan_vehicle;
    }

    @Override // da.g
    public final void u() {
        ((TextView) findViewById(R.id.v_title)).setText("科大讯飞-测试");
        findViewById(R.id.v_btn_return).setOnClickListener(new z6(3, this));
        this.C = (TextView) findViewById(R.id.v_ts0);
        this.D = (TextView) findViewById(R.id.v_ts1);
        this.E = (TextView) findViewById(R.id.v_ts2);
        try {
            Intent intent = new Intent("com.iflytek.autofly.EVENTBUS");
            intent.setPackage("com.iflytek.cutefly.speechclient.hmi");
            bindService(intent, this.G, 1);
        } catch (Exception e7) {
            b.s(e7, new StringBuilder("无法绑定："));
        }
    }
}
