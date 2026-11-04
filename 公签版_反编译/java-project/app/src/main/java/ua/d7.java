package ua;

import android.os.Build;
import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.ui.ActivitySystemHasWrite;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class d7 implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivitySystemHasWrite f15639a;

    public /* synthetic */ d7(ActivitySystemHasWrite activitySystemHasWrite) {
        this.f15639a = activitySystemHasWrite;
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        int i10 = ActivitySystemHasWrite.F;
        ActivitySystemHasWrite activitySystemHasWrite = this.f15639a;
        activitySystemHasWrite.getClass();
        HashSet hashSet = new HashSet();
        fa.b0.f5652a.getClass();
        for (String str : a2.w0.h("pm list users").f5649b) {
            if (str.contains("UserInfo{")) {
                String strTrim = p000if.a.N(str, "UserInfo{", ":", false).trim();
                if (!strTrim.isEmpty()) {
                    hashSet.add(strTrim);
                }
            }
        }
        if (hashSet.isEmpty()) {
            hashSet.add("0");
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            System.out.getClass();
            fa.b0.f5652a.getClass();
            a2.w0.h("pm uninstall --user " + str2 + " com.autonavi.amapauto");
            a2.w0.h("rm -rf '/data/user/" + str2 + "/com.autonavi.amapauto'");
            a2.w0.h("rm -rf '/data/user_de/" + str2 + "/com.autonavi.amapauto'");
        }
        fa.b0.f5652a.getClass();
        a2.w0.h("rm -rf '/data/data/com.autonavi.amapauto'");
        a2.w0.h("rm -rf '/data4write/data/com.autonavi.amapauto'");
        a2.w0.h("rm -rf '" + activitySystemHasWrite.A.getCacheDir().getParentFile().getParentFile() + "/com.autonavi.amapauto'");
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = 1;
        int i12 = ActivitySystemHasWrite.F;
        ActivitySystemHasWrite activitySystemHasWrite = this.f15639a;
        activitySystemHasWrite.getClass();
        if (i10 == 0) {
            activitySystemHasWrite.y(true);
            return;
        }
        if (i10 == 1) {
            activitySystemHasWrite.y(false);
            return;
        }
        if (i10 != 2 && i10 != 3) {
            if (i10 == 4) {
                activitySystemHasWrite.z(false);
                return;
            }
            if (i10 == 5) {
                activitySystemHasWrite.z(true);
                return;
            }
            if (i10 != 6) {
                Toaster.show((CharSequence) "此功能暂未开放");
                return;
            } else if (android.support.v4.media.session.a.k("com.autonavi.amapauto") != null) {
                Toaster.show((CharSequence) "您还没有删除高德，无需此操作");
                return;
            } else {
                new mc.c(0, new d7(activitySystemHasWrite)).d(rc.f.f13757b).a(fc.b.a()).b(new f7(activitySystemHasWrite, 3));
                return;
            }
        }
        boolean z = i10 == 2;
        if (Build.VERSION.SDK_INT < 21) {
            Toaster.show((CharSequence) "仅支持安卓5.0以上系统");
            return;
        }
        fa.b0.f5652a.getClass();
        if (!a2.w0.P()) {
            Toaster.show((CharSequence) "请先连接adb");
            return;
        }
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        if (com.yunpan.appmanage.util.j.f4033a.f4058m) {
            ArrayList arrayList = new ArrayList();
            new mc.c(0, new ha.a3(7, arrayList)).d(rc.f.f13757b).a(fc.b.a()).b(new z3(i11, activitySystemHasWrite, arrayList, z));
        } else {
            Toaster.show((CharSequence) "无权限：请先提权");
            activitySystemHasWrite.finish();
        }
    }
}
