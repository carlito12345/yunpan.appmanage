package ua;

import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.view.View;
import com.yunpan.appmanage.bean.RotationBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityRotation;
import ha.fa;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class a6 implements ec.d, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityRotation f15566a;

    public /* synthetic */ a6(ActivityRotation activityRotation) {
        this.f15566a = activityRotation;
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        ArrayList arrayList;
        int i10;
        int i11 = ActivityRotation.F;
        ActivityRotation activityRotation = this.f15566a;
        activityRotation.getClass();
        Iterator<AppBean> it = MyDb.get().getAppDao().get_app_canStart().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            arrayList = activityRotation.E;
            int i12 = 2;
            if (!zHasNext) {
                break;
            }
            AppBean next = it.next();
            wa.u uVar = wa.t.f17728a;
            if (android.support.v4.media.session.a.D(new StringBuilder("|"), next.pack, "|", uVar.N)) {
                i12 = 1;
            } else if (!android.support.v4.media.session.a.D(new StringBuilder("|"), next.pack, "|", uVar.O)) {
                i12 = 0;
            }
            arrayList.add(new RotationBean(next.name, next.pack, i12));
        }
        for (AppBean appBean : MyDb.get().getAppDao().get_app_NoCanStart()) {
            try {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                ActivityInfo[] activityInfoArr = com.yunpan.appmanage.util.j.f4033a.f4037b.getPackageInfo(appBean.pack, 1).activities;
                if (activityInfoArr != null) {
                    int length = activityInfoArr.length;
                    int i13 = 0;
                    while (true) {
                        if (i13 >= length) {
                            break;
                        }
                        if (activityInfoArr[i13].exported) {
                            wa.u uVar2 = wa.t.f17728a;
                            if (uVar2.N.contains("|" + appBean.pack + "|")) {
                                i10 = 1;
                            } else {
                                String str = uVar2.O;
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("|");
                                sb2.append(appBean.pack);
                                sb2.append("|");
                                i10 = str.contains(sb2.toString()) ? 2 : 0;
                            }
                            arrayList.add(new RotationBean(appBean.name, appBean.pack, i10));
                        } else {
                            i13++;
                        }
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        ActivityRotation activityRotation = this.f15566a;
        RotationBean rotationBean = (RotationBean) activityRotation.D.t(i10);
        ArrayList arrayList = new ArrayList();
        arrayList.add("默认");
        arrayList.add("横屏显示");
        arrayList.add("竖屏显示");
        new fa(activityRotation, activityRotation.A, null, arrayList, new ha.v1(activityRotation, rotationBean, i10, 12)).show();
    }
}
