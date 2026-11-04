package ua;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.bean.StringBoolBean;
import com.yunpan.appmanage.ui.ActivityBootStartTask;
import ha.fa;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class u0 implements c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityBootStartTask f15976a;

    public /* synthetic */ u0(ActivityBootStartTask activityBootStartTask) {
        this.f15976a = activityBootStartTask;
    }

    public void a(KeyMapSelectBean keyMapSelectBean) {
        int i10 = 10;
        int i11 = 7;
        int i12 = 6;
        int i13 = 5;
        int i14 = 3;
        int i15 = 4;
        int i16 = 0;
        int i17 = 1;
        int i18 = ActivityBootStartTask.G;
        ActivityBootStartTask activityBootStartTask = this.f15976a;
        activityBootStartTask.getClass();
        int i19 = keyMapSelectBean.gn_type;
        if (i19 == 101) {
            new ha.z6(activityBootStartTask, activityBootStartTask, "请输入显示内容", new t0(activityBootStartTask, keyMapSelectBean, i)).show();
            return;
        }
        if (i19 == 100) {
            da.g gVar = activityBootStartTask.A;
            new fa(gVar, gVar, null, Arrays.asList("1秒", "2秒", "3秒", "4秒", "5秒", "6秒", "7秒", "8秒", "9秒", "10秒", "12秒", "14秒", "16秒", "18秒", "20秒", "22秒", "24秒", "26秒", "28秒", "30秒", "35秒", "40秒"), new t0(activityBootStartTask, keyMapSelectBean, i16)).show();
            return;
        }
        if (i19 == 500 || i19 == 501 || i19 == 503 || i19 == 504) {
            new ha.o1((Activity) activityBootStartTask, (Context) activityBootStartTask, (ha.h7) new t0(activityBootStartTask, keyMapSelectBean, i12)).show();
            return;
        }
        if (i19 == 600) {
            new ha.o1((Activity) activityBootStartTask, (Context) activityBootStartTask, (ha.n1) new t0(activityBootStartTask, keyMapSelectBean, i13)).show();
            return;
        }
        if (i19 == 502) {
            new ha.o1((Activity) activityBootStartTask, (Context) activityBootStartTask, new t0(activityBootStartTask, keyMapSelectBean, i11)).show();
            return;
        }
        if (i19 == 102 || i19 == 104) {
            new ha.j3(activityBootStartTask, activityBootStartTask, new t0(activityBootStartTask, keyMapSelectBean, i14)).show();
            return;
        }
        if (i19 == 105) {
            if (XXPermissions.isGrantedPermission(activityBootStartTask, PermissionLists.getSystemAlertWindowPermission())) {
                new ha.x0(activityBootStartTask, activityBootStartTask, new t0(activityBootStartTask, keyMapSelectBean, i17)).show();
                return;
            } else {
                XXPermissions.with(activityBootStartTask).permission(PermissionLists.getSystemAlertWindowPermission()).request(new tb.v(29));
                return;
            }
        }
        if (i19 == 110 || i19 == 113 || i19 == 114 || i19 == 111 || i19 == 112) {
            i = (i19 == 110 || i19 == 113 || i19 == 114) ? 1 : 2;
            if (i19 == 112) {
                i = 4;
            }
            new ha.r0(activityBootStartTask, activityBootStartTask, i, new t0(activityBootStartTask, keyMapSelectBean, i15)).show();
            return;
        }
        if (i19 == 402) {
            new ha.z6(activityBootStartTask, activityBootStartTask, "如果你的系统是采用匹配码来连接adb的，则可以使用此功能\n否则千万不要开启无线调试(匹配码)", "警告！警告！警告！", "确定添加", "取消添加", new w0(activityBootStartTask, keyMapSelectBean, i16)).show();
            return;
        }
        if (i19 == 405) {
            new ha.z6(activityBootStartTask, activityBootStartTask, "此功能是极个别特殊设备用的 或者 手机使用的，不了解请勿用此功能", "", "确定", "取消", new w0(activityBootStartTask, keyMapSelectBean, i17)).show();
            return;
        }
        if (i19 != 1000 && i19 != 1001) {
            z7.s sVar = new z7.s();
            sVar.k("isOpen", Boolean.TRUE);
            sVar.l("type", Integer.valueOf(keyMapSelectBean.gn_type));
            sVar.m("name", keyMapSelectBean.gn_name);
            activityBootStartTask.y(-1, sVar, keyMapSelectBean.gn_name);
            if (keyMapSelectBean.gn_type == 406) {
                new ha.z6(activityBootStartTask, activityBootStartTask, "提示：此功能需要开启自动化服务哟！", "").show();
                return;
            }
            return;
        }
        ArrayList arrayListR = qf.c.r(activityBootStartTask);
        if (arrayListR.isEmpty()) {
            com.yunpan.appmanage.util.a0.u("没有桌面可选");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = arrayListR.iterator();
        while (it.hasNext()) {
            arrayList.add(((DesktopBean) it.next()).name);
        }
        new fa(activityBootStartTask, activityBootStartTask.A, null, arrayList, new com.hjq.permissions.b(activityBootStartTask, keyMapSelectBean, arrayListR, i10)).show();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = ActivityBootStartTask.G;
        ActivityBootStartTask activityBootStartTask = this.f15976a;
        activityBootStartTask.getClass();
        new ha.t7(activityBootStartTask, activityBootStartTask, ((StringBoolBean) activityBootStartTask.E.t(i10)).isCheck, activityBootStartTask.E.b(), i10, new l5.y(27, activityBootStartTask)).show();
    }
}
