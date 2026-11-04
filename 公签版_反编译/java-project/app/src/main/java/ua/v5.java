package ua;

import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.bean.PsBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityPs;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final /* synthetic */ class v5 implements ec.d, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityPs f16000a;

    public /* synthetic */ v5(ActivityPs activityPs) {
        this.f16000a = activityPs;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x015d A[Catch: Exception -> 0x00e6, TryCatch #0 {Exception -> 0x00e6, blocks: (B:18:0x006d, B:20:0x00db, B:50:0x0179, B:52:0x0186, B:54:0x0190, B:55:0x019c, B:56:0x01ec, B:58:0x01f4, B:59:0x01fe, B:25:0x00e9, B:27:0x00f3, B:29:0x00fe, B:31:0x010b, B:32:0x0113, B:34:0x011d, B:35:0x0125, B:37:0x012d, B:39:0x013b, B:41:0x0144, B:42:0x014d, B:44:0x0153, B:45:0x015d, B:47:0x0165, B:49:0x0175), top: B:65:0x006d }] */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) {
        int i10 = ActivityPs.L;
        ActivityPs activityPs = this.f16000a;
        activityPs.getClass();
        fa.b0.f5652a.getClass();
        fa.a0 a0VarH = a2.w0.h("ps -A");
        if (a0VarH.f5648a != 0 || a0VarH.f5649b.size() < 20) {
            a0VarH = a2.w0.h("ps");
        }
        if (a0VarH.f5648a != 0 || a0VarH.f5649b.size() < 20) {
            android.support.v4.media.session.a.B("此设备不支持", bVar);
            return;
        }
        HashMap map = new HashMap();
        Pattern patternCompile = Pattern.compile(activityPs.K);
        for (String str : a0VarH.f5649b) {
            System.out.getClass();
            Matcher matcher = patternCompile.matcher(str.trim());
            if (matcher.matches()) {
                try {
                    PsBean psBean = new PsBean();
                    psBean.user = matcher.group(1);
                    psBean.pid = matcher.group(2);
                    psBean.ppid = matcher.group(3);
                    long jIntValue = Integer.valueOf(matcher.group(4)).intValue();
                    psBean.vsz = jIntValue;
                    psBean.vsz_str = p000if.a.l0(jIntValue);
                    long jIntValue2 = Integer.valueOf(matcher.group(5)).intValue();
                    psBean.rss = jIntValue2;
                    psBean.rss_str = p000if.a.l0(jIntValue2);
                    psBean.wchan = matcher.group(6);
                    psBean.addr = matcher.group(7);
                    psBean.state = matcher.group(8);
                    psBean.name = matcher.group(9);
                    if (psBean.user.startsWith("u") || psBean.user.startsWith("system")) {
                        if (!psBean.name.endsWith("]") && psBean.name.indexOf(".") != -1) {
                            String str2 = psBean.name;
                            psBean.packageName = str2;
                            int iIndexOf = str2.indexOf(":");
                            if (iIndexOf != -1) {
                                psBean.packageName = psBean.packageName.substring(0, iIndexOf);
                            }
                            int iIndexOf2 = psBean.packageName.indexOf("@");
                            if (iIndexOf2 != -1) {
                                psBean.packageName = psBean.packageName.substring(0, iIndexOf2);
                            }
                            if (!psBean.packageName.isEmpty()) {
                                String str3 = psBean.packageName;
                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                if (str3.startsWith(com.yunpan.appmanage.util.j.f4033a.f4041d)) {
                                    long j10 = psBean.vsz;
                                    if (j10 > 50000) {
                                        long j11 = j10 - 50000;
                                        psBean.vsz = j11;
                                        psBean.vsz_str = p000if.a.l0(j11);
                                    }
                                    long j12 = psBean.rss;
                                    if (j12 > 50000) {
                                        long j13 = j12 - 50000;
                                        psBean.rss = j13;
                                        psBean.rss_str = p000if.a.l0(j13);
                                    }
                                } else if (!psBean.packageName.isEmpty() && MyDb.get().getAppDao().get_appBean(psBean.packageName) == null) {
                                    psBean.packageName = "";
                                }
                            }
                        }
                    }
                    activityPs.E.add(psBean);
                    if (psBean.packageName.isEmpty()) {
                        PsBean psBean2 = (PsBean) map.get("android");
                        if (psBean2 == null) {
                            map.put("android", new PsBean(psBean));
                        } else {
                            psBean2.user = "系统";
                            psBean2.name = "系统和其它";
                            psBean2.pid = "0";
                            psBean2.ppid = "0";
                            long j14 = psBean2.vsz + psBean.vsz;
                            psBean2.vsz = j14;
                            psBean2.rss += psBean.rss;
                            psBean2.vsz_str = p000if.a.l0(j14);
                            psBean2.rss_str = p000if.a.l0(psBean2.rss);
                            map.put("android", psBean2);
                        }
                    } else {
                        PsBean psBean3 = (PsBean) map.get(psBean.packageName);
                        if (psBean3 == null) {
                            map.put(psBean.packageName, new PsBean(psBean));
                        } else {
                            psBean3.pid += "," + psBean.pid;
                            psBean3.ppid = "," + psBean.ppid;
                            long j15 = psBean3.vsz + psBean.vsz;
                            psBean3.vsz = j15;
                            psBean3.rss = psBean3.rss + psBean.rss;
                            psBean3.vsz_str = p000if.a.l0(j15);
                            psBean3.rss_str = p000if.a.l0(psBean3.rss);
                            String str4 = psBean.packageName;
                            psBean3.name = str4;
                            map.put(str4, psBean3);
                        }
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
        }
        activityPs.F.addAll(map.values());
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        ActivityPs activityPs = this.f16000a;
        PsBean psBean = (PsBean) activityPs.D.t(i10);
        String str = psBean.packageName;
        if (str == null || str.isEmpty() || psBean.packageName.startsWith(activityPs.A.getPackageName())) {
            Toaster.show((CharSequence) "禁止操作");
        } else {
            da.g gVar2 = activityPs.A;
            new ha.z6(gVar2, gVar2, "是否要关闭此进程 或 强制停止此应用", "", "关闭进程", "强制停止", new androidx.room.s((da.g) activityPs, (Object) psBean, i10, 17)).show();
        }
    }
}
