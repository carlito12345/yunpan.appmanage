package ha;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.text.DecimalFormat;
import java.util.Enumeration;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* loaded from: classes.dex */
public final class q6 extends a4 {
    public q6(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_info);
    }

    public static int a(Context context) {
        BatteryManager batteryManager;
        int intProperty;
        if (Build.VERSION.SDK_INT >= 26 && (batteryManager = (BatteryManager) context.getSystemService("batterymanager")) != null && (intProperty = batteryManager.getIntProperty(4)) != -1) {
            return intProperty;
        }
        Intent intentRegisterReceiver = null;
        try {
            intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        if (intentRegisterReceiver == null && Build.VERSION.SDK_INT >= 26) {
            intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"), 2);
        }
        if (intentRegisterReceiver == null) {
            return -1;
        }
        int intExtra = intentRegisterReceiver.getIntExtra("level", -1);
        int intExtra2 = intentRegisterReceiver.getIntExtra("scale", -1);
        if (intExtra != -1 && intExtra2 != -1) {
            return (int) ((intExtra * 100.0f) / intExtra2);
        }
        return -1;
    }

    public static ba.h b() {
        try {
            String strD = d("https://qifu.baidu.com/api/v1/ip-portrait/brief-info/local", "https://www.baidu.com/");
            if (!strD.contains("Success")) {
                throw new Exception("请求失败");
            }
            z7.s sVarG = d.b.b0(strD).g();
            z7.s sVarG2 = sVarG.o("data").g();
            return new ba.h(sVarG.o("query_ip").i(), sVarG2.o("country").i() + " " + sVarG2.o("province").i() + " " + sVarG2.o("city").i() + " " + sVarG2.o("isp").i() + " " + sVarG2.o("scene").i(), 1);
        } catch (Exception unused) {
            ba.h hVar = new ba.h("查询失败", "查询失败", 1);
            try {
                z7.s sVarQ = d.b.b0(d("https://my.ip.cn/json/?ticket=" + p000if.a.N(d("https://www.ip.cn", "https://www.ip.cn/").replace(" ", "").trim(), "var_ticket=\"", "\";", false), "https://www.ip.cn/")).g().q("data");
                hVar.f2696b = sVarQ.o("ip").i();
                hVar.f2697c = sVarQ.o("country").i() + " " + sVarQ.o("province").i() + " " + sVarQ.o("city").i() + " " + sVarQ.o("district").i() + " " + sVarQ.o("isp").i();
            } catch (Exception unused2) {
            }
            if (hVar.f2697c.equals("查询失败") || hVar.f2697c.isEmpty()) {
                try {
                    String strD2 = d("https://2026.ip138.com", "https://www.ip138.com/");
                    hVar.f2696b = p000if.a.N(strD2, "<title>您的IP地址是：", "</title>", false);
                    hVar.f2697c = p000if.a.N(strD2, "<span>来自：", "</span>", true);
                } catch (Exception unused3) {
                }
            }
            if (hVar.f2697c.equals("查询失败") || hVar.f2697c.isEmpty()) {
                try {
                    String strD3 = d("https://www.ip131.com", "https://www.ip131.com/");
                    hVar.f2696b = p000if.a.N(strD3, "color:#0000FF\">", "</div>", false);
                    hVar.f2697c = p000if.a.N(strD3, "font-weight: bold;\">", "</div>", true);
                } catch (Exception unused4) {
                }
            }
            if (hVar.f2697c.equals("查询失败") || hVar.f2697c.isEmpty()) {
                try {
                    String strD4 = d("https://ip.zzgjp.com", "https://ip.zzgjp.com/");
                    hVar.f2696b = p000if.a.N(strD4, "data-info=\"我的IP: ", "\">", false);
                    String strN = p000if.a.N(strD4, ">地点:</span><span", "</", true);
                    hVar.f2697c = strN.substring(strN.lastIndexOf(">") + 1);
                } catch (Exception unused5) {
                }
            }
            return hVar;
        }
    }

    public static String c() throws Exception {
        Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
        while (networkInterfaces.hasMoreElements()) {
            NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
            if (!networkInterfaceNextElement.isLoopback() && networkInterfaceNextElement.isUp()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if ((inetAddressNextElement instanceof Inet6Address) && !inetAddressNextElement.isLinkLocalAddress()) {
                        return inetAddressNextElement.getHostAddress();
                    }
                }
            }
        }
        throw new Exception("未找到IPv6地址");
    }

    public static String d(String str, String str2) throws Exception {
        try {
            l9.a aVar = new l9.a(str);
            aVar.f11017i.b("Referer", str2);
            aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0");
            Response responseA = aVar.a();
            if (!responseA.isSuccessful()) {
                throw new Exception("请求失败");
            }
            ResponseBody responseBodyBody = responseA.body();
            if (responseBodyBody != null) {
                return responseBodyBody.string();
            }
            throw new Exception("请求失败");
        } catch (Exception unused) {
            return "";
        }
    }

    public static String e(double d10) {
        return d10 < 1024.0d ? String.format("%.2f", Double.valueOf(d10)).concat("k") : d10 < 1048576.0d ? String.format("%.2f", Double.valueOf(d10 / 1024.0d)).concat("M") : String.format("%.2f", Double.valueOf((d10 / 1024.0d) / 1024.0d)).concat("G");
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        x9.o2 o2Var = new x9.o2();
        tvRecyclerView.setAdapter(o2Var);
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        int i10 = com.yunpan.appmanage.util.j.f4033a.f4060n;
        if (i10 > 0) {
            o2Var.q(new x9.k5("用户", String.valueOf(i10), false));
        }
        String str = Build.BRAND;
        String str2 = Build.MANUFACTURER;
        if (str.equals(str2) || str2.equals("未知") || str2.equals("unknown") || str2.equals("null")) {
            o2Var.q(new x9.k5("品牌", str, false));
        } else {
            o2Var.q(new x9.k5("品牌", g.b.k(str, "、", str2), false));
        }
        new mc.c(0, new a1.d(27, this)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(12, o2Var));
    }
}
