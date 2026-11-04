package ha;

import android.app.Activity;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityAppBatch;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class fb extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f7039g;

    /* renamed from: h, reason: collision with root package name */
    public final String f7040h;

    /* renamed from: i, reason: collision with root package name */
    public TvRecyclerView f7041i;

    /* renamed from: j, reason: collision with root package name */
    public x9.l4 f7042j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f7043k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public final String f7044m;

    /* renamed from: n, reason: collision with root package name */
    public final ua.h f7045n;

    /* renamed from: p, reason: collision with root package name */
    public final int f7046p;

    /* renamed from: q, reason: collision with root package name */
    public final com.yunpan.appmanage.carsdk.u f7047q;

    public fb(Activity activity, da.g gVar, ArrayList arrayList, String str, ua.h hVar) {
        super(activity, gVar, R.layout.dialog_app_renwu);
        this.l = false;
        this.f7044m = "";
        this.f7046p = 1;
        this.f7047q = new com.yunpan.appmanage.carsdk.u(this, Looper.getMainLooper(), 9);
        this.f7039g = arrayList;
        this.f7040h = str;
        this.f7045n = hVar;
        fa.h0 h0Var = fa.g0.f5682a;
        if (h0Var.d().isEmpty()) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            Iterator it = com.yunpan.appmanage.util.j.f4033a.f4073v.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String str2 = (String) it.next();
                if (com.yunpan.appmanage.util.a0.d(str2)) {
                    this.f7044m = g.b.j(str2, "/Download");
                    break;
                }
            }
        } else {
            this.f7044m = g.b.g(h0Var, new StringBuilder(), "/Download");
        }
        if (!this.f7044m.isEmpty() || new File(this.f7044m).exists()) {
            return;
        }
        new File(this.f7044m).mkdir();
    }

    public static void a(fb fbVar) {
        if (fbVar.f7043k.getText().toString().equals("取消")) {
            fbVar.l = true;
        }
        super.dismiss();
        if (fbVar.f7040h.equals("卸载")) {
            ua.h hVar = fbVar.f7045n;
            hVar.getClass();
            int i10 = ActivityAppBatch.G;
            ActivityAppBatch activityAppBatch = hVar.f15705b;
            activityAppBatch.getClass();
            new mc.c(0, new tb.v(18)).d(rc.f.f13757b).a(fc.b.a()).b(new ka.c(6, activityAppBatch));
        }
    }

    public final void b(int i10, String str) {
        Message messageObtain = Message.obtain();
        messageObtain.what = this.f7046p;
        messageObtain.obj = new eb(i10, str);
        this.f7047q.sendMessage(messageObtain);
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7042j = new x9.l4(getContext());
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.f7041i = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        this.f7041i.setAdapter(this.f7042j);
        this.f7042j.E(this.f7039g);
        this.f7041i.setOnInBorderKeyEventListener(new g2.c(24));
        TextView textView = (TextView) findViewById(R.id.v_title);
        StringBuilder sb2 = new StringBuilder("批量");
        String str = this.f7040h;
        sb2.append(str);
        sb2.append("应用");
        textView.setText(sb2.toString());
        TextView textView2 = (TextView) findViewById(R.id.v_ts);
        if (str.equals("重置")) {
            textView2.setText("重置：是指清理APP所有配置和缓存数据");
        } else if (str.equals("提取")) {
            textView2.setText("提取：是指将APP的安装包提取出来，并保存到SD卡的Download目录下");
        } else if (str.equals("缓存")) {
            textView2.setText("缓存：是指将APP的缓存全部清理");
        } else if (str.equals("卸载")) {
            if (fa.g0.f5682a.f()) {
                textView2.setText("系统拥有root权限全自动卸载");
            } else if (fa.h.f5683a.i() || fa.l.f5712a.isConnected()) {
                textView2.setText("将采用adb命令方式自动卸载");
            } else {
                textView2.setText("需要手动确认卸载");
            }
        }
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_btn_yes);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.v_btn_no);
        this.f7043k = (TextView) findViewById(R.id.v_btn_no_text);
        linearLayout2.setOnClickListener(new g9(6, this));
        linearLayout.setOnClickListener(new c6.c(this, 20, linearLayout));
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
    }
}
