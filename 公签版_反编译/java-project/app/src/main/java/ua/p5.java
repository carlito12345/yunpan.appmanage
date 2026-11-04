package ua;

import android.view.View;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.yunpan.appmanage.bean.PresentationBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityPresentation;
import ha.fa;
import j$.util.Iterator$EL;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class p5 implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityPresentation f15883a;

    public /* synthetic */ p5(ActivityPresentation activityPresentation) {
        this.f15883a = activityPresentation;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00e0  */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws NumberFormatException {
        Iterator it;
        int i10 = ActivityPresentation.H;
        ActivityPresentation activityPresentation = this.f15883a;
        activityPresentation.F = qf.c.u(activityPresentation.A);
        fa.b0.f5652a.getClass();
        fa.a0 a0VarH = a2.w0.h("dumpsys window displays");
        if (a0VarH.f5648a != 0) {
            com.yunpan.appmanage.util.a0.u("无法获取屏幕信息");
            bVar.b();
            return;
        }
        String strA = a0VarH.a();
        if (!strA.contains("mDisplayId")) {
            com.yunpan.appmanage.util.a0.u("无法获取屏幕信息");
            bVar.b();
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        String[] strArrSplit = strA.split("Display: mDisplayId=");
        int length = strArrSplit.length;
        int i11 = 0;
        int i12 = 0;
        while (i12 < length) {
            String str = strArrSplit[i12];
            if (str.contains("Application")) {
                String strTrim = str.substring(i11, str.indexOf(SignParameters.NEW_LINE)).trim();
                if (strTrim.contains(" ")) {
                    strTrim = strTrim.substring(i11, strTrim.indexOf(" "));
                }
                int i13 = Integer.parseInt(strTrim);
                activityPresentation.E.add(Integer.valueOf(i13));
                if (i13 == 0) {
                    arrayList.add(i11, new PresentationBean(i13, 0, "主屏", "", ""));
                } else {
                    arrayList.add(new PresentationBean(i13, 0, g.b.i("副屏（ID=", i13, "）"), "", ""));
                }
                Iterator it2 = p000if.a.O(str, " ActivityRecord{", "}").iterator();
                int i14 = 0;
                while (it2.hasNext()) {
                    String[] strArrSplit2 = ((String) it2.next()).trim().split(" ");
                    if (strArrSplit2.length == 4 && strArrSplit2[2].contains("/") && strArrSplit2[3].startsWith("t")) {
                        String str2 = strArrSplit2[2];
                        String strSubstring = str2.substring(0, str2.indexOf("/"));
                        if (hashSet.contains(strSubstring)) {
                            it = it2;
                        } else {
                            hashSet.add(strSubstring);
                            AppBean appBean = MyDb.get().getAppDao().get_appBean(strSubstring);
                            String str3 = appBean == null ? strSubstring : appBean.name;
                            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                            String str4 = str3.equals(kVar.f4041d) ? kVar.f4039c : str3;
                            i14++;
                            if (i13 == 0) {
                                it = it2;
                                arrayList.add(i14, new PresentationBean(i13, Integer.parseInt(strArrSplit2[3].substring(1)), str4, strSubstring, strArrSplit2[2]));
                            } else {
                                it = it2;
                                arrayList.add(new PresentationBean(i13, Integer.parseInt(strArrSplit2[3].substring(1)), str4, strSubstring, strArrSplit2[2]));
                            }
                        }
                    }
                    it2 = it;
                }
            }
            i12++;
            i11 = 0;
        }
        bVar.f(arrayList);
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        ActivityPresentation activityPresentation = this.f15883a;
        PresentationBean presentationBean = (PresentationBean) activityPresentation.D.t(i10);
        if (presentationBean == null || presentationBean.packageName.isEmpty()) {
            return;
        }
        if (presentationBean.packageName.equals(activityPresentation.A.getPackageName())) {
            com.yunpan.appmanage.util.a0.u("禁止更改本程序");
            return;
        }
        if (presentationBean.packageName.equals(activityPresentation.F)) {
            com.yunpan.appmanage.util.a0.u("禁止更改默认桌面");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator$EL.forEachRemaining(activityPresentation.E.iterator(), new q5(0, arrayList));
        arrayList.add("强制关闭");
        new fa(activityPresentation, activityPresentation.A, null, arrayList, new com.hjq.permissions.b(activityPresentation, arrayList, presentationBean, 13)).show();
    }
}
