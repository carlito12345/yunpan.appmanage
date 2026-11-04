package com.yunpan.appmanage.ui;

import android.app.usage.UsageEvents;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.os.SystemClock;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.AppHistoryLogBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import da.g;
import ha.fa;
import ha.g9;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import mc.b;
import mc.c;
import rc.f;
import tb.v;
import ua.m;
import ua.p;
import ua.q;
import x9.n;

/* loaded from: classes.dex */
public class ActivityAppHistoryLog extends g {
    public static final /* synthetic */ int K = 0;
    public TvRecyclerView C;
    public n D;
    public ConstraintLayout F;
    public LinearLayout G;
    public TextView H;
    public ArrayList E = new ArrayList();
    public int I = 1;

    public static String B(long j10) {
        double d10 = j10;
        Double.isNaN(d10);
        double d11 = d10 / 1000.0d;
        return String.format("%d分%.1f秒", Long.valueOf(((long) d11) / 60), Double.valueOf(d11 % 60.0d));
    }

    public static void x(ActivityAppHistoryLog activityAppHistoryLog, b bVar) {
        long jY;
        long jY2;
        long jY3;
        int i10;
        String packageName;
        UsageStatsManager usageStatsManager = (UsageStatsManager) activityAppHistoryLog.A.getSystemService("usagestats");
        long jCurrentTimeMillis = System.currentTimeMillis() + 7200000;
        int i11 = activityAppHistoryLog.I;
        int i12 = 2;
        if (i11 == 0) {
            jY = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        } else if (i11 == 1) {
            jY = z();
        } else {
            if (i11 == 2) {
                Calendar calendar = Calendar.getInstance();
                calendar.add(6, -1);
                calendar.set(11, 0);
                calendar.set(12, 0);
                calendar.set(13, 0);
                calendar.set(14, 0);
                jY2 = calendar.getTimeInMillis();
                jY3 = z();
            } else if (i11 == 3) {
                jY2 = y(2);
                jY3 = y(1);
            } else {
                jY = i11 == 4 ? y(2) : 0L;
            }
            long j10 = jY2;
            jCurrentTimeMillis = jY3 - 1;
            jY = j10;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd");
        UsageEvents usageEventsQueryEvents = usageStatsManager.queryEvents(jY, jCurrentTimeMillis);
        String str = "";
        AppHistoryLogBean appHistoryLogBean = null;
        while (usageEventsQueryEvents.hasNextEvent()) {
            UsageEvents.Event event = new UsageEvents.Event();
            usageEventsQueryEvents.getNextEvent(event);
            new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(event.getTimeStamp()));
            event.getEventType();
            event.getPackageName();
            if (event.getEventType() == 1) {
                if (appHistoryLogBean != null && appHistoryLogBean.time_end > 0) {
                    if (!appHistoryLogBean.packageName.equals(event.getPackageName()) || Math.abs(event.getTimeStamp() - appHistoryLogBean.time_end) >= 1000) {
                        activityAppHistoryLog.E.add(0, appHistoryLogBean);
                    } else {
                        appHistoryLogBean.time_end = 0L;
                    }
                }
                String packageName2 = event.getPackageName();
                DecimalFormat decimalFormat = k.f4034u0;
                if (packageName2.equals(j.f4033a.f4041d)) {
                    packageName = activityAppHistoryLog.A.getResources().getString(R.string.app_name);
                } else {
                    AppBean appBean = MyDb.get().getAppDao().get_appBean(event.getPackageName());
                    packageName = appBean == null ? event.getPackageName() : appBean.name;
                }
                appHistoryLogBean = new AppHistoryLogBean(packageName, event.getPackageName(), event.getTimeStamp(), simpleDateFormat.format(new Date(event.getTimeStamp())));
                String str2 = simpleDateFormat2.format(new Date(appHistoryLogBean.time_start));
                if (str.isEmpty()) {
                    str = str2;
                    i12 = 2;
                } else {
                    if (!str2.equals(str)) {
                        activityAppHistoryLog.E.add(0, new AppHistoryLogBean(str));
                        str = str2;
                    }
                    i12 = 2;
                }
            } else {
                i12 = 2;
                if (event.getEventType() == 2) {
                    if (appHistoryLogBean != null) {
                        appHistoryLogBean.time_end = event.getTimeStamp();
                        appHistoryLogBean.time_end_str = simpleDateFormat.format(new Date(event.getTimeStamp()));
                        long j11 = appHistoryLogBean.time_end - appHistoryLogBean.time_start;
                        appHistoryLogBean.time = j11;
                        String strB = B(j11);
                        appHistoryLogBean.time_str = strB;
                        if (strB.startsWith("0分")) {
                            i12 = 2;
                            appHistoryLogBean.time_str = appHistoryLogBean.time_str.substring(2);
                        }
                    }
                }
            }
            i12 = 2;
        }
        if (appHistoryLogBean != null) {
            if (appHistoryLogBean.time_end == 0) {
                int i13 = activityAppHistoryLog.I;
                if (i13 == i12) {
                    appHistoryLogBean.time_end = z();
                } else if (i13 == 3) {
                    appHistoryLogBean.time_end = y(1);
                } else {
                    appHistoryLogBean.time_end = System.currentTimeMillis();
                }
                System.out.getClass();
                appHistoryLogBean.time_end_str = simpleDateFormat.format(new Date(appHistoryLogBean.time_end));
                long j12 = appHistoryLogBean.time_end - appHistoryLogBean.time_start;
                appHistoryLogBean.time = j12;
                String strB2 = B(j12);
                appHistoryLogBean.time_str = strB2;
                if (strB2.startsWith("0分")) {
                    appHistoryLogBean.time_str = appHistoryLogBean.time_str.substring(2);
                }
            }
            i10 = 0;
            activityAppHistoryLog.E.add(0, appHistoryLogBean);
        } else {
            i10 = 0;
        }
        if (!activityAppHistoryLog.E.isEmpty() && !((AppHistoryLogBean) activityAppHistoryLog.E.get(i10)).packageName.isEmpty()) {
            activityAppHistoryLog.E.add(i10, new AppHistoryLogBean(simpleDateFormat2.format(new Date(((AppHistoryLogBean) activityAppHistoryLog.E.get(i10)).time_start))));
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

    public static long z() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public final void A() {
        int i10 = this.I;
        if (i10 == 0) {
            this.H.setText("本次开机后应用使用记录");
        } else if (i10 == 1) {
            this.H.setText("今日应用使用记录");
        } else if (i10 == 2) {
            this.H.setText("昨日应用使用记录");
        } else if (i10 == 3) {
            this.H.setText("前天应用使用记录");
        } else if (i10 == 4) {
            this.H.setText("三天应用使用记录");
        }
        this.E.clear();
        this.D.E(this.E);
        new c(0, new p(this)).d(f.f13757b).a(fc.b.a()).b(new ka.c(7, this));
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
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_loading);
        this.F = constraintLayout;
        constraintLayout.setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_read_ts_lay1);
        this.G = linearLayout;
        linearLayout.setVisibility(8);
        this.H = (TextView) findViewById(R.id.v_title);
        findViewById(R.id.v_btn_return).setOnClickListener(new g9(25, this));
        findViewById(R.id.v_btn_switch).setOnClickListener(new m(new fa(this, this, null, Arrays.asList("本次开机后的", "今天使用记录", "昨天使用记录", "前天使用记录", "三天使用记录"), new p(this)), 1));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        n nVar = new n(this.A, 1);
        this.D = nVar;
        this.C.setAdapter(nVar);
        this.C.setOnItemListener(new q());
        this.C.setOnInBorderKeyEventListener(new v(22));
        A();
    }
}
