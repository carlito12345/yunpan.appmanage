package ha;

import android.app.Activity;
import android.app.AlarmManager;
import android.content.ContentResolver;
import android.content.Context;
import android.os.Bundle;
import android.provider.Settings;
import android.view.View;
import android.widget.TextView;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import j$.util.DesugarTimeZone;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import okhttp3.Response;

/* loaded from: classes.dex */
public final class pe extends a4 implements View.OnClickListener {

    /* renamed from: g, reason: collision with root package name */
    public TextView f7589g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f7590h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7591i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f7592j;

    public pe(Activity activity, da.g gVar) {
        super(activity, gVar, R.layout.dialog_updata_system_time);
    }

    public static Date a() {
        Date date;
        String strB = b("https://www.beijing-time.org/t/time.asp");
        Date date2 = null;
        if (strB.isEmpty()) {
            date = null;
        } else {
            try {
                int i10 = Integer.parseInt(p000if.a.N(strB, "nyear=", ";", false));
                int i11 = Integer.parseInt(p000if.a.N(strB, "nmonth=", ";", false));
                int i12 = Integer.parseInt(p000if.a.N(strB, "nday=", ";", false));
                int i13 = Integer.parseInt(p000if.a.N(strB, "nhrs=", ";", false));
                int i14 = Integer.parseInt(p000if.a.N(strB, "nmin=", ";", false));
                int i15 = Integer.parseInt(p000if.a.N(strB, "nsec=", ";", false));
                date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(i10 + "-" + i11 + "-" + i12 + " " + i13 + ":" + i14 + ":" + i15);
            } catch (Exception unused) {
            }
        }
        if (date != null) {
            return date;
        }
        String strB2 = b("https://www.beijingtime.com.cn/");
        if (!strB2.isEmpty()) {
            try {
                String strN = p000if.a.N(strB2, ">初次校对时间：", "<", false);
                if (!strN.isEmpty()) {
                    date2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(strN);
                }
            } catch (Exception unused2) {
            }
        }
        return date2;
    }

    public static String b(String str) {
        try {
            l9.b bVar = new l9.b(str);
            bVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
            Response responseA = bVar.a();
            return responseA.isSuccessful() ? responseA.body().string() : "";
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view.getId() == R.id.v_btn_ntp1) {
            new mc.c(0, new d2.w(this, 28, "ntp.ntsc.ac.cn")).d(rc.f.f13757b).a(fc.b.a()).b(new l2(28));
        } else if (view.getId() == R.id.v_btn_ntp2) {
            new mc.c(0, new d2.w(this, 28, "ntp1.aliyun.com")).d(rc.f.f13757b).a(fc.b.a()).b(new l2(28));
        } else if (view.getId() == R.id.v_btn_gps) {
            final int i10 = 0;
            new mc.c(0, new ec.d(this) { // from class: ha.oe

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ pe f7545b;

                {
                    this.f7545b = this;
                }

                @Override // ec.d
                public final void g(mc.b bVar) {
                    pe peVar = this.f7545b;
                    switch (i10) {
                        case 0:
                            v3.f fVar = new v3.f(peVar.f6725b);
                            try {
                                fVar.y();
                            } catch (Exception e7) {
                                fVar.P();
                                e7.printStackTrace();
                                com.yunpan.appmanage.util.a0.t("获取时间失败");
                            }
                            bVar.b();
                            break;
                        default:
                            peVar.getClass();
                            Date dateA = pe.a();
                            if (dateA != null) {
                                Toaster.show((CharSequence) ("当前北京时间：" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(dateA)));
                                Context context = peVar.f6725b;
                                ContentResolver contentResolver = context.getContentResolver();
                                try {
                                    Settings.Global.putInt(contentResolver, "auto_time", 0);
                                    Settings.Global.putInt(contentResolver, "auto_time_zone", 0);
                                    Settings.Global.putString(contentResolver, "time_zone", "Asia/Hong_Kong");
                                    Settings.Global.putString(contentResolver, "ntp_server", "ntp.ntsc.ac.cn");
                                } catch (Exception unused) {
                                }
                                try {
                                    TimeZone.setDefault(DesugarTimeZone.getTimeZone("Asia/Hong_Kong"));
                                } catch (Exception unused2) {
                                }
                                fa.b0.f5652a.getClass();
                                a2.w0.o(2000L, "setprop persist.sys.timezone Asia/Hong_Kong");
                                a2.w0.o(2000L, "settings put global time_zone Asia/Hong_Kong");
                                a2.w0.o(2000L, "service call alarm 3 s16 Asia/Hong_Kong");
                                try {
                                    AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
                                    alarmManager.setTimeZone("Asia/Hong_Kong");
                                    alarmManager.setTime(dateA.getTime());
                                } catch (Exception unused3) {
                                    if (!u9.d.r("date " + new SimpleDateFormat("MMddHHmmyyyy").format(dateA)).l0().q()) {
                                        com.yunpan.appmanage.util.a0.t("失败：无权限修改系统时间");
                                    }
                                }
                                fa.b0.f5652a.getClass();
                                a2.w0.o(2000L, "am broadcast -a android.intent.action.CONFIGURATION_CHANGED");
                                com.yunpan.appmanage.util.a0.w("修改完成");
                                bVar.b();
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.t("获取时间失败");
                                bVar.b();
                                break;
                            }
                    }
                }
            }).d(rc.f.f13757b).a(fc.b.a()).b(new m6(7));
        } else if (view.getId() == R.id.v_btn_http) {
            final int i11 = 1;
            new mc.c(0, new ec.d(this) { // from class: ha.oe

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ pe f7545b;

                {
                    this.f7545b = this;
                }

                @Override // ec.d
                public final void g(mc.b bVar) {
                    pe peVar = this.f7545b;
                    switch (i11) {
                        case 0:
                            v3.f fVar = new v3.f(peVar.f6725b);
                            try {
                                fVar.y();
                            } catch (Exception e7) {
                                fVar.P();
                                e7.printStackTrace();
                                com.yunpan.appmanage.util.a0.t("获取时间失败");
                            }
                            bVar.b();
                            break;
                        default:
                            peVar.getClass();
                            Date dateA = pe.a();
                            if (dateA != null) {
                                Toaster.show((CharSequence) ("当前北京时间：" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(dateA)));
                                Context context = peVar.f6725b;
                                ContentResolver contentResolver = context.getContentResolver();
                                try {
                                    Settings.Global.putInt(contentResolver, "auto_time", 0);
                                    Settings.Global.putInt(contentResolver, "auto_time_zone", 0);
                                    Settings.Global.putString(contentResolver, "time_zone", "Asia/Hong_Kong");
                                    Settings.Global.putString(contentResolver, "ntp_server", "ntp.ntsc.ac.cn");
                                } catch (Exception unused) {
                                }
                                try {
                                    TimeZone.setDefault(DesugarTimeZone.getTimeZone("Asia/Hong_Kong"));
                                } catch (Exception unused2) {
                                }
                                fa.b0.f5652a.getClass();
                                a2.w0.o(2000L, "setprop persist.sys.timezone Asia/Hong_Kong");
                                a2.w0.o(2000L, "settings put global time_zone Asia/Hong_Kong");
                                a2.w0.o(2000L, "service call alarm 3 s16 Asia/Hong_Kong");
                                try {
                                    AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
                                    alarmManager.setTimeZone("Asia/Hong_Kong");
                                    alarmManager.setTime(dateA.getTime());
                                } catch (Exception unused3) {
                                    if (!u9.d.r("date " + new SimpleDateFormat("MMddHHmmyyyy").format(dateA)).l0().q()) {
                                        com.yunpan.appmanage.util.a0.t("失败：无权限修改系统时间");
                                    }
                                }
                                fa.b0.f5652a.getClass();
                                a2.w0.o(2000L, "am broadcast -a android.intent.action.CONFIGURATION_CHANGED");
                                com.yunpan.appmanage.util.a0.w("修改完成");
                                bVar.b();
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.t("获取时间失败");
                                bVar.b();
                                break;
                            }
                    }
                }
            }).d(rc.f.f13757b).a(fc.b.a()).b(new m6(6));
        }
        dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7589g = (TextView) findViewById(R.id.v_btn_ntp1);
        this.f7590h = (TextView) findViewById(R.id.v_btn_ntp2);
        this.f7591i = (TextView) findViewById(R.id.v_btn_gps);
        this.f7592j = (TextView) findViewById(R.id.v_btn_http);
        this.f7589g.setOnClickListener(this);
        this.f7590h.setOnClickListener(this);
        this.f7591i.setOnClickListener(this);
        this.f7592j.setOnClickListener(this);
    }
}
