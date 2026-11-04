package com.yunpan.appmanage.ui;

import android.app.usage.NetworkStats;
import android.app.usage.NetworkStatsManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.support.v4.media.session.a;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.AppTrafficBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityAppTraffic;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import da.g;
import ha.g9;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import mc.b;
import mc.c;
import qa.e;
import rc.f;
import tb.v;
import ua.f0;
import x9.z;

/* loaded from: classes.dex */
public class ActivityAppTraffic extends g {
    public static final /* synthetic */ int K = 0;
    public TextView C;
    public TvRecyclerView D;
    public z E;
    public ConstraintLayout G;
    public LinearLayout I;
    public ArrayList F = new ArrayList();
    public int H = 1;

    public static void x(ActivityAppTraffic activityAppTraffic, NetworkStatsManager networkStatsManager, HashMap map, b bVar) {
        activityAppTraffic.getClass();
        long jY = y();
        long jCurrentTimeMillis = System.currentTimeMillis() + 7200000;
        int i10 = activityAppTraffic.H;
        if (i10 == 1) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            jY = calendar.getTimeInMillis();
        } else if (i10 == 2) {
            Calendar calendar2 = Calendar.getInstance();
            int i11 = calendar2.get(7);
            calendar2.add(5, i11 == 1 ? -6 : 2 - i11);
            calendar2.set(11, 0);
            calendar2.set(12, 0);
            calendar2.set(13, 0);
            calendar2.set(14, 0);
            jY = calendar2.getTimeInMillis();
        } else if (i10 == 3) {
            jY = y();
        } else if (i10 == 4) {
            Calendar calendar3 = Calendar.getInstance();
            calendar3.add(6, -30);
            calendar3.set(11, 0);
            calendar3.set(12, 0);
            calendar3.set(13, 0);
            calendar3.set(14, 0);
            jY = calendar3.getTimeInMillis();
        } else if (i10 == 5) {
            Calendar calendar4 = Calendar.getInstance();
            calendar4.add(6, -1);
            calendar4.set(11, 0);
            calendar4.set(12, 0);
            calendar4.set(13, 0);
            calendar4.set(14, 0);
            jY = calendar4.getTimeInMillis();
            Calendar calendar5 = Calendar.getInstance();
            calendar5.set(11, 0);
            calendar5.set(12, 0);
            calendar5.set(13, 0);
            calendar5.set(14, 0);
            jCurrentTimeMillis = calendar5.getTimeInMillis() - 1;
        }
        HashMap map2 = new HashMap();
        NetworkStats networkStatsQueryDetails = networkStatsManager.queryDetails(1, null, jY, jCurrentTimeMillis);
        if (networkStatsQueryDetails == null) {
            a.B("无服务", bVar);
            return;
        }
        NetworkStats.Bucket bucket = new NetworkStats.Bucket();
        while (networkStatsQueryDetails.getNextBucket(bucket)) {
            long txBytes = bucket.getTxBytes() + bucket.getRxBytes();
            AppTrafficBean appTrafficBean = (AppTrafficBean) map2.get(String.valueOf(bucket.getUid()));
            if (appTrafficBean == null) {
                map2.put(String.valueOf(bucket.getUid()), new AppTrafficBean("", "", bucket.getUid(), 0L, txBytes, txBytes));
            } else {
                appTrafficBean.wifi += txBytes;
                appTrafficBean.count += txBytes;
            }
        }
        networkStatsQueryDetails.close();
        try {
            NetworkStats networkStatsQueryDetails2 = networkStatsManager.queryDetails(0, null, jY, jCurrentTimeMillis);
            NetworkStats.Bucket bucket2 = new NetworkStats.Bucket();
            while (networkStatsQueryDetails2.getNextBucket(bucket2)) {
                long rxBytes = bucket2.getRxBytes() + bucket2.getTxBytes();
                AppTrafficBean appTrafficBean2 = (AppTrafficBean) map2.get(String.valueOf(bucket2.getUid()));
                if (appTrafficBean2 == null) {
                    map2.put(String.valueOf(bucket2.getUid()), new AppTrafficBean("", "", bucket2.getUid(), rxBytes, 0L, rxBytes));
                } else {
                    appTrafficBean2.sim += rxBytes;
                    appTrafficBean2.count += rxBytes;
                }
            }
            networkStatsQueryDetails2.close();
        } catch (Exception unused) {
            Iterator it = map.keySet().iterator();
            while (it.hasNext()) {
                NetworkStats networkStatsQueryDetails3 = networkStatsManager.queryDetails(0, (String) it.next(), jY, jCurrentTimeMillis);
                NetworkStats.Bucket bucket3 = new NetworkStats.Bucket();
                while (networkStatsQueryDetails3.getNextBucket(bucket3)) {
                    long txBytes2 = bucket3.getTxBytes() + bucket3.getRxBytes();
                    AppTrafficBean appTrafficBean3 = (AppTrafficBean) map2.get(String.valueOf(bucket3.getUid()));
                    if (appTrafficBean3 == null) {
                        map2.put(String.valueOf(bucket3.getUid()), new AppTrafficBean("", "", bucket3.getUid(), txBytes2, 0L, txBytes2));
                    } else {
                        appTrafficBean3.sim += txBytes2;
                        appTrafficBean3.count += txBytes2;
                    }
                }
                networkStatsQueryDetails3.close();
            }
        }
        for (AppTrafficBean appTrafficBean4 : map2.values()) {
            List<AppBean> list = MyDb.get().getAppDao().get_appBean(appTrafficBean4.uid);
            if (list == null || list.isEmpty()) {
                int i12 = appTrafficBean4.uid;
                if (i12 == -4) {
                    appTrafficBean4.name = "已卸载的应用(all)";
                } else if (i12 % 100000 < 10000) {
                    appTrafficBean4.name = a.s(new StringBuilder("系统进程(uid="), appTrafficBean4.uid, ")");
                } else if (i12 == Process.myUid()) {
                    DecimalFormat decimalFormat = k.f4034u0;
                    k kVar = j.f4033a;
                    appTrafficBean4.name = kVar.f4035a.getResources().getString(R.string.app_name);
                    appTrafficBean4.packageName = kVar.f4041d;
                } else {
                    appTrafficBean4.name = a.s(new StringBuilder("进程(uid="), appTrafficBean4.uid, ")");
                }
                activityAppTraffic.F.add(appTrafficBean4);
            } else {
                if (list.size() == 1) {
                    appTrafficBean4.name = list.get(0).name;
                    appTrafficBean4.packageName = list.get(0).pack;
                    if (appTrafficBean4.name.equals("Shell")) {
                        appTrafficBean4.name = "系统进程(Shell)";
                        appTrafficBean4.packageName = "";
                    }
                } else {
                    appTrafficBean4.name = a.s(new StringBuilder("uid="), appTrafficBean4.uid, "(");
                    for (AppBean appBean : list) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(appTrafficBean4.name);
                        appTrafficBean4.name = g.b.l(appBean.name, ",", sb2);
                    }
                    appTrafficBean4.name = g.b.l(appTrafficBean4.name, ")", new StringBuilder());
                }
                activityAppTraffic.F.add(appTrafficBean4);
            }
        }
        Collections.sort(activityAppTraffic.F, new e(18));
        bVar.b();
    }

    public static long y() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(5, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        this.E.E(null);
        this.D = null;
        this.E = null;
        this.F = null;
        com.bumptech.glide.b.b(this.A).a();
        super.onDestroy();
        System.gc();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_app_traffic;
    }

    @Override // da.g
    public final void u() throws NoSuchMethodException, SecurityException {
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_loading);
        this.G = constraintLayout;
        constraintLayout.setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_read_ts_lay1);
        this.I = linearLayout;
        linearLayout.setVisibility(8);
        TextView textView = (TextView) findViewById(R.id.v_title);
        this.C = textView;
        textView.setText("今日流量使用情况");
        final int i10 = 3;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.d0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppTraffic f15629b;

            {
                this.f15629b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppTraffic activityAppTraffic = this.f15629b;
                switch (i10) {
                    case 0:
                        activityAppTraffic.D.stopScroll();
                        Collections.sort(activityAppTraffic.F, new qa.e(17));
                        activityAppTraffic.E.E(activityAppTraffic.F);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 1:
                        activityAppTraffic.D.stopScroll();
                        Collections.sort(activityAppTraffic.F, new qa.e(15));
                        activityAppTraffic.E.E(activityAppTraffic.F);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 2:
                        activityAppTraffic.D.stopScroll();
                        Collections.sort(activityAppTraffic.F, new qa.e(16));
                        activityAppTraffic.E.E(activityAppTraffic.F);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 3:
                        int i11 = ActivityAppTraffic.K;
                        activityAppTraffic.finish();
                        break;
                    default:
                        int i12 = ActivityAppTraffic.K;
                        ActivityAppTraffic activityAppTraffic2 = this.f15629b;
                        activityAppTraffic2.getClass();
                        new ha.z6(activityAppTraffic2, activityAppTraffic2, "流量统计数据是安卓系统自带的记录器记录的，管家只负责从数据库里面读取给你\n注：数据有时候会有些延迟，因为系统记录后需要等待一段时间才会保存到数据库中\n\n不管是内网还是外网的流量都会被统计到，比如管家局域网互传也会被记录", "uid=1000：是系统签名的应用，只能统计为一个", "明白了", "", new s5.c(3)).show();
                        break;
                }
            }
        });
        final int i11 = 4;
        findViewById(R.id.v_btn_help).setOnClickListener(new View.OnClickListener(this) { // from class: ua.d0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppTraffic f15629b;

            {
                this.f15629b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppTraffic activityAppTraffic = this.f15629b;
                switch (i11) {
                    case 0:
                        activityAppTraffic.D.stopScroll();
                        Collections.sort(activityAppTraffic.F, new qa.e(17));
                        activityAppTraffic.E.E(activityAppTraffic.F);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 1:
                        activityAppTraffic.D.stopScroll();
                        Collections.sort(activityAppTraffic.F, new qa.e(15));
                        activityAppTraffic.E.E(activityAppTraffic.F);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 2:
                        activityAppTraffic.D.stopScroll();
                        Collections.sort(activityAppTraffic.F, new qa.e(16));
                        activityAppTraffic.E.E(activityAppTraffic.F);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 3:
                        int i112 = ActivityAppTraffic.K;
                        activityAppTraffic.finish();
                        break;
                    default:
                        int i12 = ActivityAppTraffic.K;
                        ActivityAppTraffic activityAppTraffic2 = this.f15629b;
                        activityAppTraffic2.getClass();
                        new ha.z6(activityAppTraffic2, activityAppTraffic2, "流量统计数据是安卓系统自带的记录器记录的，管家只负责从数据库里面读取给你\n注：数据有时候会有些延迟，因为系统记录后需要等待一段时间才会保存到数据库中\n\n不管是内网还是外网的流量都会被统计到，比如管家局域网互传也会被记录", "uid=1000：是系统签名的应用，只能统计为一个", "明白了", "", new s5.c(3)).show();
                        break;
                }
            }
        });
        final int i12 = 0;
        ((LinearLayout) findViewById(R.id.v_btn_count)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.d0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppTraffic f15629b;

            {
                this.f15629b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppTraffic activityAppTraffic = this.f15629b;
                switch (i12) {
                    case 0:
                        activityAppTraffic.D.stopScroll();
                        Collections.sort(activityAppTraffic.F, new qa.e(17));
                        activityAppTraffic.E.E(activityAppTraffic.F);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 1:
                        activityAppTraffic.D.stopScroll();
                        Collections.sort(activityAppTraffic.F, new qa.e(15));
                        activityAppTraffic.E.E(activityAppTraffic.F);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 2:
                        activityAppTraffic.D.stopScroll();
                        Collections.sort(activityAppTraffic.F, new qa.e(16));
                        activityAppTraffic.E.E(activityAppTraffic.F);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 3:
                        int i112 = ActivityAppTraffic.K;
                        activityAppTraffic.finish();
                        break;
                    default:
                        int i122 = ActivityAppTraffic.K;
                        ActivityAppTraffic activityAppTraffic2 = this.f15629b;
                        activityAppTraffic2.getClass();
                        new ha.z6(activityAppTraffic2, activityAppTraffic2, "流量统计数据是安卓系统自带的记录器记录的，管家只负责从数据库里面读取给你\n注：数据有时候会有些延迟，因为系统记录后需要等待一段时间才会保存到数据库中\n\n不管是内网还是外网的流量都会被统计到，比如管家局域网互传也会被记录", "uid=1000：是系统签名的应用，只能统计为一个", "明白了", "", new s5.c(3)).show();
                        break;
                }
            }
        });
        final LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.v_btn_sim);
        final int i13 = 1;
        linearLayout2.setOnClickListener(new View.OnClickListener(this) { // from class: ua.d0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppTraffic f15629b;

            {
                this.f15629b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppTraffic activityAppTraffic = this.f15629b;
                switch (i13) {
                    case 0:
                        activityAppTraffic.D.stopScroll();
                        Collections.sort(activityAppTraffic.F, new qa.e(17));
                        activityAppTraffic.E.E(activityAppTraffic.F);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 1:
                        activityAppTraffic.D.stopScroll();
                        Collections.sort(activityAppTraffic.F, new qa.e(15));
                        activityAppTraffic.E.E(activityAppTraffic.F);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 2:
                        activityAppTraffic.D.stopScroll();
                        Collections.sort(activityAppTraffic.F, new qa.e(16));
                        activityAppTraffic.E.E(activityAppTraffic.F);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 3:
                        int i112 = ActivityAppTraffic.K;
                        activityAppTraffic.finish();
                        break;
                    default:
                        int i122 = ActivityAppTraffic.K;
                        ActivityAppTraffic activityAppTraffic2 = this.f15629b;
                        activityAppTraffic2.getClass();
                        new ha.z6(activityAppTraffic2, activityAppTraffic2, "流量统计数据是安卓系统自带的记录器记录的，管家只负责从数据库里面读取给你\n注：数据有时候会有些延迟，因为系统记录后需要等待一段时间才会保存到数据库中\n\n不管是内网还是外网的流量都会被统计到，比如管家局域网互传也会被记录", "uid=1000：是系统签名的应用，只能统计为一个", "明白了", "", new s5.c(3)).show();
                        break;
                }
            }
        });
        final LinearLayout linearLayout3 = (LinearLayout) findViewById(R.id.v_btn_wifi);
        final int i14 = 2;
        linearLayout3.setOnClickListener(new View.OnClickListener(this) { // from class: ua.d0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppTraffic f15629b;

            {
                this.f15629b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppTraffic activityAppTraffic = this.f15629b;
                switch (i14) {
                    case 0:
                        activityAppTraffic.D.stopScroll();
                        Collections.sort(activityAppTraffic.F, new qa.e(17));
                        activityAppTraffic.E.E(activityAppTraffic.F);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 1:
                        activityAppTraffic.D.stopScroll();
                        Collections.sort(activityAppTraffic.F, new qa.e(15));
                        activityAppTraffic.E.E(activityAppTraffic.F);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 2:
                        activityAppTraffic.D.stopScroll();
                        Collections.sort(activityAppTraffic.F, new qa.e(16));
                        activityAppTraffic.E.E(activityAppTraffic.F);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 3:
                        int i112 = ActivityAppTraffic.K;
                        activityAppTraffic.finish();
                        break;
                    default:
                        int i122 = ActivityAppTraffic.K;
                        ActivityAppTraffic activityAppTraffic2 = this.f15629b;
                        activityAppTraffic2.getClass();
                        new ha.z6(activityAppTraffic2, activityAppTraffic2, "流量统计数据是安卓系统自带的记录器记录的，管家只负责从数据库里面读取给你\n注：数据有时候会有些延迟，因为系统记录后需要等待一段时间才会保存到数据库中\n\n不管是内网还是外网的流量都会被统计到，比如管家局域网互传也会被记录", "uid=1000：是系统签名的应用，只能统计为一个", "明白了", "", new s5.c(3)).show();
                        break;
                }
            }
        });
        TextView textView2 = (TextView) findViewById(R.id.v_btn_switch);
        PopupMenu popupMenu = new PopupMenu(this.A, textView2);
        popupMenu.getMenuInflater().inflate(R.menu.menu_traffic, popupMenu.getMenu());
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: ua.e0
            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) throws NoSuchMethodException, SecurityException {
                int i15 = ActivityAppTraffic.K;
                ActivityAppTraffic activityAppTraffic = this.f15645a;
                activityAppTraffic.getClass();
                if (menuItem.getItemId() == R.id.menu_jr) {
                    activityAppTraffic.H = 1;
                    activityAppTraffic.C.setText("今日流量使用情况");
                } else if (menuItem.getItemId() == R.id.menu_jz) {
                    activityAppTraffic.H = 2;
                    activityAppTraffic.C.setText("本周流量使用情况");
                } else if (menuItem.getItemId() == R.id.menu_jy) {
                    activityAppTraffic.H = 3;
                    activityAppTraffic.C.setText("本月流量使用情况");
                } else if (menuItem.getItemId() == R.id.menu_yy) {
                    activityAppTraffic.H = 4;
                    activityAppTraffic.C.setText("30天流量使用情况");
                } else if (menuItem.getItemId() == R.id.menu_zr) {
                    activityAppTraffic.H = 5;
                    activityAppTraffic.C.setText("昨日流量使用情况");
                }
                int i16 = activityAppTraffic.H;
                LinearLayout linearLayout4 = linearLayout2;
                LinearLayout linearLayout5 = linearLayout3;
                if (i16 == 0) {
                    linearLayout4.setVisibility(8);
                    linearLayout5.setVisibility(8);
                } else {
                    linearLayout4.setVisibility(0);
                    linearLayout5.setVisibility(0);
                }
                activityAppTraffic.E.f18405i = activityAppTraffic.H;
                activityAppTraffic.z();
                return true;
            }
        });
        textView2.setOnClickListener(new g9(26, popupMenu));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.D = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        z zVar = new z(this.A, this.H);
        this.E = zVar;
        this.D.setAdapter(zVar);
        this.D.setOnItemListener(new f0());
        this.D.setOnInBorderKeyEventListener(new v(25));
        z();
    }

    public final void z() throws NoSuchMethodException, SecurityException {
        Method method;
        int i10 = 9;
        NetworkStatsManager networkStatsManagerD = r8.a.d(getSystemService("netstats"));
        HashMap map = new HashMap();
        TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
        SubscriptionManager subscriptionManagerC = n0.e.c(getSystemService("telephony_subscription_service"));
        try {
            String subscriberId = telephonyManager.getSubscriberId();
            if (subscriberId != null) {
                map.put(subscriberId, "");
            }
        } catch (Exception unused) {
        }
        try {
            method = TelephonyManager.class.getMethod("getSubscriberId", Integer.TYPE);
        } catch (Exception unused2) {
            method = null;
        }
        List activeSubscriptionInfoList = subscriptionManagerC.getActiveSubscriptionInfoList();
        if (activeSubscriptionInfoList != null) {
            try {
                Iterator it = activeSubscriptionInfoList.iterator();
                while (it.hasNext()) {
                    SubscriptionInfo subscriptionInfoB = n0.e.b(it.next());
                    String subscriberId2 = Build.VERSION.SDK_INT >= 24 ? telephonyManager.createForSubscriptionId(subscriptionInfoB.getSubscriptionId()).getSubscriberId() : (String) method.invoke(telephonyManager, Integer.valueOf(subscriptionInfoB.getSubscriptionId()));
                    if (subscriberId2 != null) {
                        map.put(subscriberId2, "");
                    }
                }
            } catch (Exception unused3) {
            }
        }
        this.F.clear();
        new c(0, new com.hjq.permissions.b(this, networkStatsManagerD, map, i10)).d(f.f13757b).a(fc.b.a()).b(new ka.c(i10, this));
    }
}
