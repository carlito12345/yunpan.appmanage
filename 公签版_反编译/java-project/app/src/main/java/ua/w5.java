package ua;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.RemoteException;
import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.PssBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityPss;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final /* synthetic */ class w5 implements ec.d, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16017a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityPss f16018b;

    public /* synthetic */ w5(ActivityPss activityPss, int i10) {
        this.f16017a = i10;
        this.f16018b = activityPss;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0047  */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) {
        boolean z;
        int i10 = ActivityPss.M;
        ActivityPss activityPss = this.f16018b;
        activityPss.getClass();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        ResolveInfo resolveInfoResolveActivity = com.yunpan.appmanage.util.j.f4033a.f4037b.resolveActivity(intent, 65536);
        if (resolveInfoResolveActivity != null) {
            String str = resolveInfoResolveActivity.activityInfo.packageName;
        }
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        ArrayList arrayList = new ArrayList();
        fa.b0.f5652a.getClass();
        if (fa.g0.f5682a.f()) {
            z = true;
        } else {
            fa.j jVar = fa.h.f5683a;
            if (!jVar.i() || !jVar.f5701g) {
                fa.m mVar = fa.l.f5712a;
                if (!mVar.isConnected() || !mVar.f5716c) {
                    fa.o0 o0Var = fa.n0.f5722a;
                    if (o0Var.f5726a && o0Var.f5730e != null) {
                        int uid = hi.b.f8210c;
                        if (uid == -1) {
                            try {
                                uid = ((df.a) hi.b.j()).getUid();
                                hi.b.f8210c = uid;
                            } catch (RemoteException e7) {
                                throw new RuntimeException(e7);
                            } catch (SecurityException unused) {
                                uid = -1;
                            }
                        }
                        if (uid == 0) {
                        }
                    }
                    z = false;
                }
            }
        }
        if (z) {
            String str2 = AppStart.f3772h.getPackageName() + ":acc";
            fa.b0.f5652a.getClass();
            fa.a0 a0VarN = a2.w0.n(25000L, "procrank");
            if (a0VarN.f5649b.size() > 10) {
                Pattern patternCompile = Pattern.compile("^([^\\s]+)\\s+([^\\s]+)K\\s+([^\\s]+)K\\s+([^\\s]+)K\\s+([^\\s]+)K\\s+(.*)$");
                Iterator it = a0VarN.f5649b.iterator();
                while (it.hasNext()) {
                    Matcher matcher = patternCompile.matcher(((String) it.next()).trim());
                    if (matcher.matches()) {
                        try {
                            PssBean pssBean = new PssBean();
                            pssBean.pid = matcher.group(1);
                            long jLongValue = Long.valueOf(matcher.group(4)).longValue();
                            pssBean.pss = jLongValue;
                            pssBean.pss_str = p000if.a.l0(jLongValue);
                            String strGroup = matcher.group(6);
                            pssBean.pack_str = strGroup;
                            if (!strGroup.startsWith("/") && !pssBean.pack_str.equals("su") && pssBean.pack_str.indexOf(".") > 0) {
                                String strSubstring = pssBean.pack_str;
                                int iIndexOf = strSubstring.indexOf(":");
                                if (iIndexOf != -1) {
                                    strSubstring = strSubstring.substring(0, iIndexOf);
                                    pssBean.process_name = pssBean.pack_str.substring(iIndexOf + 1) + "进程";
                                    if (pssBean.pack_str.equals(str2)) {
                                        pssBean.process_name = "自动化任务";
                                    }
                                } else {
                                    int iIndexOf2 = strSubstring.indexOf("@");
                                    if (iIndexOf2 != -1) {
                                        strSubstring = strSubstring.substring(0, iIndexOf2);
                                        pssBean.process_name = pssBean.pack_str.substring(iIndexOf2 + 1) + "服务";
                                    } else {
                                        pssBean.process_name = "主程序";
                                    }
                                }
                                AppBean appBean = MyDb.get().getAppDao().get_appBean(strSubstring);
                                if (appBean != null) {
                                    pssBean.name = appBean.name;
                                    pssBean.pack = appBean.pack;
                                    pssBean.isCanStarted = appBean.isCanStart;
                                } else {
                                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                    if (strSubstring.startsWith(kVar.f4041d)) {
                                        pssBean.name = kVar.f4039c;
                                        pssBean.pack = kVar.f4041d;
                                        long j10 = pssBean.pss;
                                        if (j10 > 70000) {
                                            pssBean.pss = j10 - 10240;
                                        }
                                        pssBean.pss_str = p000if.a.l0(pssBean.pss);
                                        pssBean.isCanStarted = true;
                                    }
                                }
                            }
                            arrayList.add(pssBean);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }
            }
        }
        activityPss.G = arrayList;
        if (arrayList.size() < 10) {
            activityPss.G = android.support.v4.media.session.b.q();
        }
        if (activityPss.G.size() < 10) {
            activityPss.G = android.support.v4.media.session.b.p(activityPss.A);
        }
        Iterator it2 = activityPss.G.iterator();
        while (it2.hasNext()) {
            PssBean pssBean2 = (PssBean) it2.next();
            if (pssBean2.pack.isEmpty() || !pssBean2.isCanStarted) {
                PssBean pssBean3 = (PssBean) map.get("android");
                if (pssBean3 == null) {
                    PssBean pssBean4 = new PssBean(pssBean2);
                    pssBean4.name = " 其它";
                    pssBean4.pid = "0";
                    pssBean4.pack = "";
                    pssBean4.pack_str = "";
                    pssBean4.process_name = "";
                    map.put("android", pssBean4);
                } else {
                    long j11 = pssBean3.pss + pssBean2.pss;
                    pssBean3.pss = j11;
                    pssBean3.pss_str = p000if.a.l0(j11);
                    map.put("android", pssBean3);
                }
            } else {
                map.put(pssBean2.pack + pssBean2.process_name, new PssBean(pssBean2));
            }
            if (pssBean2.pack.isEmpty()) {
                PssBean pssBean5 = (PssBean) map2.get("android");
                if (pssBean5 == null) {
                    PssBean pssBean6 = new PssBean(pssBean2);
                    pssBean6.name = "其它";
                    pssBean6.pid = "0";
                    pssBean6.pack = "";
                    pssBean6.pack_str = "";
                    pssBean6.process_name = "";
                    map2.put("android", pssBean6);
                } else {
                    long j12 = pssBean5.pss + pssBean2.pss;
                    pssBean5.pss = j12;
                    pssBean5.pss_str = p000if.a.l0(j12);
                    map2.put("android", pssBean5);
                }
            } else {
                PssBean pssBean7 = (PssBean) map2.get(pssBean2.pack);
                if (pssBean7 == null) {
                    map2.put(pssBean2.pack, new PssBean(pssBean2));
                } else {
                    pssBean7.pid += "," + pssBean2.pid;
                    long j13 = pssBean7.pss + pssBean2.pss;
                    pssBean7.pss = j13;
                    pssBean7.pss_str = p000if.a.l0(j13);
                    pssBean7.process_name += " + " + pssBean2.process_name;
                    map2.put(pssBean2.pack, pssBean7);
                }
            }
        }
        ArrayList arrayList2 = activityPss.H;
        arrayList2.addAll(map.values());
        ArrayList arrayList3 = activityPss.I;
        arrayList3.addAll(map2.values());
        Collections.sort(arrayList2, new qa.e(22));
        Collections.sort(arrayList3, new qa.e(23));
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f16017a) {
            case 1:
                ActivityPss activityPss = this.f16018b;
                activityPss.D.G(i10);
                com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                wVar.Q = i10;
                try {
                    wVar.f4123i.l("Pss_mode", Integer.valueOf(i10));
                } catch (Exception unused) {
                }
                wVar.m();
                activityPss.E.stopScroll();
                int i11 = com.yunpan.appmanage.util.v.f4106a.Q;
                if (i11 != 0) {
                    if (i11 != 1) {
                        activityPss.F.E(activityPss.I);
                        break;
                    } else {
                        activityPss.F.E(activityPss.H);
                        break;
                    }
                } else {
                    activityPss.F.E(activityPss.G);
                    break;
                }
            default:
                ActivityPss activityPss2 = this.f16018b;
                PssBean pssBean = (PssBean) activityPss2.F.t(i10);
                String str = pssBean.pack;
                if (str != null && !str.isEmpty() && !pssBean.pack.startsWith(activityPss2.A.getPackageName())) {
                    if (com.yunpan.appmanage.util.v.f4106a.Q <= 0) {
                        da.g gVar2 = activityPss2.A;
                        new ha.z6(gVar2, gVar2, "是否要关闭此进程", "", "关闭进程", "", new y5(activityPss2, pssBean, i10, 1)).show();
                        break;
                    } else {
                        da.g gVar3 = activityPss2.A;
                        new ha.z6(gVar3, gVar3, "是否要关闭此进程 或 强制停止此应用", "", "关闭进程", "强制停止", new y5(activityPss2, pssBean, i10, 0)).show();
                        break;
                    }
                } else {
                    Toaster.show((CharSequence) "禁止操作");
                    break;
                }
                break;
        }
    }
}
