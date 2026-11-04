package ha;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.os.Process;
import as.mke.eatmem.MainActivity;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.db.AppBean;
import java.text.DecimalFormat;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class n4 implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7461a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q4 f7462b;

    public /* synthetic */ n4(q4 q4Var, int i10) {
        this.f7461a = i10;
        this.f7462b = q4Var;
    }

    @Override // ec.d
    public final void g(mc.b bVar) throws InterruptedException {
        AppBean appBeanK;
        AppBean appBeanK2;
        AppBean appBeanK3;
        String strSubstring;
        int iLastIndexOf;
        String strSubstring2;
        int iLastIndexOf2;
        switch (this.f7461a) {
            case 0:
                q4 q4Var = this.f7462b;
                q4Var.getClass();
                HashSet hashSet = new HashSet();
                Context context = q4Var.f6725b;
                hashSet.add(context.getPackageName());
                hashSet.add("com.google.android.leanback.ime");
                hashSet.add("android.ext.services");
                String strU = qf.c.u(context);
                if (strU == null || strU.isEmpty()) {
                    Iterator it = qf.c.r(context).iterator();
                    while (it.hasNext()) {
                        DesktopBean desktopBean = (DesktopBean) it.next();
                        if (desktopBean.isSystemApp) {
                            hashSet.add(desktopBean.packageName);
                        }
                    }
                } else {
                    hashSet.add(strU);
                }
                int i10 = q4Var.f7610i;
                HashSet<String> hashSetB = null;
                if (i10 == 0) {
                    try {
                        hashSetB = q4.d();
                    } catch (Exception unused) {
                    }
                    if (hashSetB == null) {
                        try {
                            hashSetB = q4.b(context);
                        } catch (Exception unused2) {
                        }
                    }
                    if (hashSetB == null) {
                        try {
                            hashSetB = q4.c();
                        } catch (Exception unused3) {
                        }
                    }
                    if (hashSetB != null) {
                        for (String str : hashSetB) {
                            if (!wa.t.f17728a.f17756w.contains(str) && !hashSet.contains(str) && (appBeanK = android.support.v4.media.session.a.k(str)) != null && (!appBeanK.isSystem || (!str.startsWith("android.ext.") && !str.startsWith("com.android.")))) {
                                fa.b0.f5652a.getClass();
                                a2.w0.q(3333L, "am force-stop '" + str + "'");
                            }
                        }
                    }
                    fa.b0.f5652a.getClass();
                    a2.w0.q(3333L, "am kill-all");
                } else if (i10 == 1) {
                    try {
                        hashSetB = q4.d();
                    } catch (Exception unused4) {
                    }
                    if (hashSetB == null) {
                        try {
                            hashSetB = q4.b(context);
                        } catch (Exception unused5) {
                        }
                    }
                    if (hashSetB == null) {
                        try {
                            hashSetB = q4.c();
                        } catch (Exception unused6) {
                        }
                    }
                    if (hashSetB != null) {
                        for (String str2 : hashSetB) {
                            if (!wa.t.f17728a.f17756w.contains(str2) && !hashSet.contains(str2) && (appBeanK2 = android.support.v4.media.session.a.k(str2)) != null && (!appBeanK2.isSystem || (!str2.startsWith("android.ext.") && !str2.startsWith("com.android.")))) {
                                if (!appBeanK2.isSystem || appBeanK2.name.contains("地图") || appBeanK2.name.contains("高德") || appBeanK2.name.contains("百度") || appBeanK2.pack.contains(".autonavi.")) {
                                    fa.b0.f5652a.getClass();
                                    a2.w0.q(3333L, "am force-stop '" + str2 + "'");
                                }
                            }
                        }
                    }
                    fa.b0.f5652a.getClass();
                    a2.w0.q(5555L, "am kill-all");
                } else if (i10 == 2) {
                    fa.b0.f5652a.getClass();
                    a2.w0.q(5555L, "am kill-all");
                    HashSet hashSet2 = new HashSet();
                    Iterator it2 = a2.w0.q(6666L, "dumpsys activity all | grep ACTIVITY").f5649b.iterator();
                    while (it2.hasNext()) {
                        String strTrim = ((String) it2.next()).trim();
                        int iIndexOf = strTrim.indexOf("/");
                        if (iIndexOf != -1 && (iLastIndexOf2 = (strSubstring2 = strTrim.substring(0, iIndexOf)).lastIndexOf(" ")) != -1) {
                            String strTrim2 = strSubstring2.substring(iLastIndexOf2 + 1).trim();
                            if (!strTrim2.isEmpty() && !q4.e(strTrim2)) {
                                hashSet2.add(strTrim2);
                            }
                        }
                    }
                    if (hashSet2.isEmpty()) {
                        fa.b0.f5652a.getClass();
                        Iterator it3 = a2.w0.q(6666L, "am stack list | grep task").f5649b.iterator();
                        while (it3.hasNext()) {
                            String strTrim3 = ((String) it3.next()).trim();
                            int iIndexOf2 = strTrim3.indexOf("/");
                            if (iIndexOf2 != -1 && (iLastIndexOf = (strSubstring = strTrim3.substring(0, iIndexOf2)).lastIndexOf(":")) != -1) {
                                String strTrim4 = strSubstring.substring(iLastIndexOf + 1).trim();
                                if (!strTrim4.isEmpty() && strTrim4.contains(".") && !q4.e(strTrim4)) {
                                    hashSet2.add(strTrim4);
                                }
                            }
                        }
                    }
                    Iterator it4 = hashSet2.iterator();
                    while (it4.hasNext()) {
                        String str3 = (String) it4.next();
                        if (!wa.t.f17728a.f17756w.contains(str3) && !hashSet.contains(str3) && (appBeanK3 = android.support.v4.media.session.a.k(str3)) != null && (!appBeanK3.isSystem || (!str3.startsWith("android.ext.") && !str3.startsWith("com.android.")))) {
                            fa.b0.f5652a.getClass();
                            a2.w0.q(3333L, "am force-stop '" + str3 + "'");
                        }
                    }
                } else if (i10 == 3) {
                    fa.b0.f5652a.getClass();
                    a2.w0.q(5555L, "am kill-all");
                    try {
                        hashSetB = q4.d();
                    } catch (Exception unused7) {
                    }
                    if (hashSetB == null) {
                        try {
                            hashSetB = q4.b(context);
                        } catch (Exception unused8) {
                        }
                    }
                    if (hashSetB == null) {
                        try {
                            hashSetB = q4.c();
                        } catch (Exception unused9) {
                        }
                    }
                    if (hashSetB != null) {
                        for (String str4 : hashSetB) {
                            if (!str4.equals(com.yunpan.appmanage.util.j.f4033a.f4041d) && !wa.t.f17728a.f17756w.contains(str4) && android.support.v4.media.session.a.k(str4) != null && !hashSet.contains(str4)) {
                                fa.b0.f5652a.getClass();
                                a2.w0.q(PopupConst.DURATION_POPUP, "am kill '" + str4 + "'");
                            }
                        }
                    }
                } else if (i10 == 4) {
                    new MainActivity().native_eatmf();
                } else if (i10 == 5) {
                    fa.b0.f5652a.getClass();
                    a2.w0.q(2222L, "am kill-all");
                }
                bVar.b();
                break;
            default:
                q4 q4Var2 = this.f7462b;
                q4Var2.getClass();
                DecimalFormat decimalFormat = new DecimalFormat("0.00");
                ActivityManager activityManager = (ActivityManager) q4Var2.f6725b.getSystemService("activity");
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                do {
                    activityManager.getMemoryInfo(memoryInfo);
                    long j10 = memoryInfo.totalMem;
                    long j11 = memoryInfo.availMem;
                    p000if.a.D0(j10);
                    p000if.a.D0(j11);
                    bVar.f(ta.q.n(decimalFormat, ((j10 - j11) * 100.0f) / j10, new StringBuilder("内存使用："), "%"));
                    Debug.MemoryInfo memoryInfo2 = activityManager.getProcessMemoryInfo(new int[]{Process.myPid()})[0];
                    Thread.sleep(888L);
                } while (!q4Var2.f7611j);
        }
    }
}
