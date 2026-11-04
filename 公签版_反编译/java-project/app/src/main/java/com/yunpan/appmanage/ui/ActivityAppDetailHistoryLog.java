package com.yunpan.appmanage.ui;

import android.app.usage.UsageEvents;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.AppDetailHistoryLogBean;
import com.yunpan.appmanage.ui.ActivityAppDetailHistoryLog;
import da.g;
import ha.fa;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import mc.b;
import mc.c;
import rc.f;
import tb.v;
import ua.k;
import ua.m;
import x9.n;

/* loaded from: classes.dex */
public class ActivityAppDetailHistoryLog extends g {
    public static final /* synthetic */ int L = 0;
    public TvRecyclerView C;
    public n D;
    public ConstraintLayout F;
    public LinearLayout G;
    public TextView H;
    public TextView I;
    public ArrayList E = new ArrayList();
    public int K = 1;

    public static String A(int i10) {
        return i10 == 1 ? "进入页面" : i10 == 2 ? "离开页面" : i10 == 5 ? "窗口变更" : i10 == 7 ? "用户交互" : i10 == 8 ? "应用快捷方式" : i10 == 11 ? "调整策略" : i10 == 15 ? "亮屏" : i10 == 16 ? "熄屏" : i10 == 17 ? "锁屏" : i10 == 18 ? "解锁" : i10 == 19 ? "启动前台服务" : i10 == 20 ? "退出前台服务" : i10 == 23 ? "退出应用" : i10 == 26 ? "关机/重启" : i10 == 27 ? "开机" : i10 == 12 ? "中断通知" : i10 == 3 ? "通宵连续使用" : i10 == 4 ? "隔天继续使用" : i10 == 6 ? "系统发生交互" : i10 == 9 ? "分享" : i10 == 10 ? "查看通知" : i10 == 13 ? "s固定一个Slice" : i10 == 14 ? "u固定一个Slice" : i10 == 21 ? "继续前台服务" : i10 == 22 ? "覆盖前台服务" : i10 == 24 ? "关闭应用" : i10 == 25 ? "保存数据" : i10 == 28 ? "首次解锁" : i10 == 29 ? "用户停止使用" : i10 == 30 ? "设置LocusID" : i10 == 31 ? "使用组件" : String.valueOf(i10);
    }

    public static void x(ActivityAppDetailHistoryLog activityAppDetailHistoryLog, b bVar) {
        long jY;
        UsageStatsManager usageStatsManager = (UsageStatsManager) activityAppDetailHistoryLog.getSystemService("usagestats");
        long jCurrentTimeMillis = System.currentTimeMillis() + 7200000;
        int i10 = activityAppDetailHistoryLog.K;
        if (i10 == 0) {
            jY = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        } else if (i10 == 1) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            jY = calendar.getTimeInMillis();
        } else if (i10 == 2) {
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(6, -1);
            calendar2.set(11, 0);
            calendar2.set(12, 0);
            calendar2.set(13, 0);
            calendar2.set(14, 0);
            long timeInMillis = calendar2.getTimeInMillis();
            Calendar calendar3 = Calendar.getInstance();
            calendar3.set(11, 0);
            calendar3.set(12, 0);
            calendar3.set(13, 0);
            calendar3.set(14, 0);
            jCurrentTimeMillis = calendar3.getTimeInMillis() - 1;
            jY = timeInMillis;
        } else if (i10 == 3) {
            jY = y(2);
            jCurrentTimeMillis = y(1) - 1;
        } else {
            jY = 0;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd");
        UsageEvents usageEventsQueryEvents = usageStatsManager.queryEvents(jY, jCurrentTimeMillis);
        String str = "";
        Object obj = "";
        while (usageEventsQueryEvents.hasNextEvent()) {
            UsageEvents.Event event = new UsageEvents.Event();
            usageEventsQueryEvents.getNextEvent(event);
            String str2 = simpleDateFormat2.format(new Date(event.getTimeStamp()));
            if (!str2.equals(obj)) {
                activityAppDetailHistoryLog.E.add(new AppDetailHistoryLogBean(str2));
                obj = str2;
            }
            activityAppDetailHistoryLog.E.add(new AppDetailHistoryLogBean(event.getEventType(), A(event.getEventType()), event.getPackageName() == null ? str : event.getPackageName(), event.getClassName() == null ? str : event.getClassName(), event.getTimeStamp(), simpleDateFormat.format(new Date(event.getTimeStamp()))));
            usageEventsQueryEvents = usageEventsQueryEvents;
            str = str;
        }
        bVar.b();
    }

    public static long y(int i10) {
        Calendar calendar = Calendar.getInstance();
        calendar.add(6, -i10);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        this.D.E(null);
        this.C = null;
        this.D = null;
        this.E = null;
        com.bumptech.glide.b.b(this.A).a();
        super.onDestroy();
        System.gc();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_app_history_log;
    }

    @Override // da.g
    public final void u() {
        final int i10 = 1;
        final int i11 = 0;
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_loading);
        this.F = constraintLayout;
        constraintLayout.setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_read_ts_lay1);
        this.G = linearLayout;
        linearLayout.setVisibility(8);
        this.H = (TextView) findViewById(R.id.v_title);
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.l

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppDetailHistoryLog f15793b;

            {
                this.f15793b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppDetailHistoryLog activityAppDetailHistoryLog = this.f15793b;
                switch (i11) {
                    case 0:
                        int i12 = ActivityAppDetailHistoryLog.L;
                        activityAppDetailHistoryLog.finish();
                        break;
                    default:
                        if (activityAppDetailHistoryLog.D.b() != 0) {
                            new mc.c(0, new k(activityAppDetailHistoryLog, 3)).d(rc.f.f13757b).a(fc.b.a()).b(new n(activityAppDetailHistoryLog, 0));
                            break;
                        } else {
                            Toaster.show((CharSequence) "没有数据");
                            break;
                        }
                }
            }
        });
        TextView textView = (TextView) findViewById(R.id.v_btn_save);
        this.I = textView;
        textView.setVisibility(0);
        this.I.setOnClickListener(new View.OnClickListener(this) { // from class: ua.l

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppDetailHistoryLog f15793b;

            {
                this.f15793b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppDetailHistoryLog activityAppDetailHistoryLog = this.f15793b;
                switch (i10) {
                    case 0:
                        int i12 = ActivityAppDetailHistoryLog.L;
                        activityAppDetailHistoryLog.finish();
                        break;
                    default:
                        if (activityAppDetailHistoryLog.D.b() != 0) {
                            new mc.c(0, new k(activityAppDetailHistoryLog, 3)).d(rc.f.f13757b).a(fc.b.a()).b(new n(activityAppDetailHistoryLog, 0));
                            break;
                        } else {
                            Toaster.show((CharSequence) "没有数据");
                            break;
                        }
                }
            }
        });
        findViewById(R.id.v_btn_switch).setOnClickListener(new m(new fa(this, this, null, Arrays.asList("本次开机后的", "今天使用记录", "昨天使用记录", "前天使用记录"), new k(this, i10)), 0));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        n nVar = new n(this.A, 0);
        this.D = nVar;
        this.C.setAdapter(nVar);
        this.D.f2881e = new k(this, 2);
        this.C.setOnInBorderKeyEventListener(new v(20));
        z();
    }

    public final void z() {
        int i10 = this.K;
        if (i10 == 0) {
            this.H.setText("开机后设备详细使用记录(开发者专用)");
        } else if (i10 == 1) {
            this.H.setText("今日设备详细使用记录(开发者专用)");
        } else if (i10 == 2) {
            this.H.setText("昨日设备详细使用记录(开发者专用)");
        } else if (i10 == 3) {
            this.H.setText("前天设备详细使用记录(开发者专用)");
        }
        this.E.clear();
        this.D.E(this.E);
        new c(0, new k(this, 0)).d(f.f13757b).a(fc.b.a()).b(new ua.n(this, 1));
    }
}
