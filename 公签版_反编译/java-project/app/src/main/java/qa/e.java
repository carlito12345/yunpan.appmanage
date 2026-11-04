package qa;

import android.app.ActivityManager;
import android.os.Build;
import com.yunpan.appmanage.bean.AppAttribBean;
import com.yunpan.appmanage.bean.AppSwitchClassBean;
import com.yunpan.appmanage.bean.AppTrafficBean;
import com.yunpan.appmanage.bean.PermissionBean;
import com.yunpan.appmanage.bean.PsBean;
import com.yunpan.appmanage.bean.PssBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.ui.ActivityAppInstallTime;
import com.yunpan.appmanage.ui.ActivityAppStorage;
import com.yunpan.appmanage.ui.ActivityAppTraffic;
import com.yunpan.appmanage.ui.ActivityAppsPermissionsAllow;
import com.yunpan.appmanage.ui.ActivityPs;
import com.yunpan.appmanage.ui.ActivityPss;
import com.yunpan.appmanage.ui.ActivityRunMemory;
import java.util.Comparator;
import v3.g0;
import x9.y;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13182a;

    public /* synthetic */ e(int i10) {
        this.f13182a = i10;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i10;
        int i11;
        int i12;
        int i13;
        switch (this.f13182a) {
            case 0:
                return ((WpPathBean) obj).name.compareToIgnoreCase(((WpPathBean) obj2).name);
            case 1:
                return ((WpPathBean) obj).name.compareToIgnoreCase(((WpPathBean) obj2).name);
            case 2:
                return ((WpPathBean) obj).name.compareToIgnoreCase(((WpPathBean) obj2).name);
            case 3:
                int i14 = ((r3.d) obj).f13687a.f13690b;
                int i15 = ((r3.d) obj2).f13687a.f13690b;
                if (i14 == i15) {
                    return 0;
                }
                return i14 < i15 ? -1 : 1;
            case 4:
                return (((r3.c) obj).f13684b > ((r3.c) obj2).f13684b ? 1 : (((r3.c) obj).f13684b == ((r3.c) obj2).f13684b ? 0 : -1));
            case 5:
                return ((AppSwitchClassBean) obj).sortLength - ((AppSwitchClassBean) obj2).sortLength;
            case 6:
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = (byte[]) obj2;
                if (bArr.length != bArr2.length) {
                    return bArr.length - bArr2.length;
                }
                for (int i16 = 0; i16 < bArr.length; i16++) {
                    byte b10 = bArr[i16];
                    byte b11 = bArr2[i16];
                    if (b10 != b11) {
                        return b10 - b11;
                    }
                }
                return 0;
            case 7:
                int i17 = ActivityAppInstallTime.H;
                long j10 = ((AppAttribBean) obj).installTime;
                long j11 = ((AppAttribBean) obj2).installTime;
                if (j10 == j11) {
                    return 0;
                }
                return j10 > j11 ? -1 : 1;
            case 8:
                int i18 = ActivityAppInstallTime.H;
                long j12 = ((AppAttribBean) obj).installTime;
                long j13 = ((AppAttribBean) obj2).installTime;
                if (j12 == j13) {
                    return 0;
                }
                return j12 > j13 ? -1 : 1;
            case 9:
                int i19 = ActivityAppInstallTime.H;
                long j14 = ((AppAttribBean) obj).updateTime;
                long j15 = ((AppAttribBean) obj2).updateTime;
                if (j14 == j15) {
                    return 0;
                }
                return j14 > j15 ? -1 : 1;
            case 10:
                int i20 = ActivityAppStorage.H;
                long j16 = ((y) obj).f18397e;
                long j17 = ((y) obj2).f18397e;
                if (j16 == j17) {
                    return 0;
                }
                return j16 > j17 ? -1 : 1;
            case 11:
                int i21 = ActivityAppStorage.H;
                long j18 = ((y) obj).f18396d;
                long j19 = ((y) obj2).f18396d;
                if (j18 == j19) {
                    return 0;
                }
                return j18 > j19 ? -1 : 1;
            case 12:
                int i22 = ActivityAppStorage.H;
                long j20 = ((y) obj).f18394b;
                long j21 = ((y) obj2).f18394b;
                if (j20 == j21) {
                    return 0;
                }
                return j20 > j21 ? -1 : 1;
            case 13:
                int i23 = ActivityAppStorage.H;
                long j22 = ((y) obj).f18394b;
                long j23 = ((y) obj2).f18394b;
                if (j22 == j23) {
                    return 0;
                }
                return j22 > j23 ? -1 : 1;
            case 14:
                int i24 = ActivityAppStorage.H;
                long j24 = ((y) obj).f18395c;
                long j25 = ((y) obj2).f18395c;
                if (j24 == j25) {
                    return 0;
                }
                return j24 > j25 ? -1 : 1;
            case 15:
                int i25 = ActivityAppTraffic.K;
                long j26 = ((AppTrafficBean) obj).sim;
                long j27 = ((AppTrafficBean) obj2).sim;
                if (j26 == j27) {
                    return 0;
                }
                return j26 > j27 ? -1 : 1;
            case 16:
                int i26 = ActivityAppTraffic.K;
                long j28 = ((AppTrafficBean) obj).wifi;
                long j29 = ((AppTrafficBean) obj2).wifi;
                if (j28 == j29) {
                    return 0;
                }
                return j28 > j29 ? -1 : 1;
            case 17:
                int i27 = ActivityAppTraffic.K;
                long j30 = ((AppTrafficBean) obj).count;
                long j31 = ((AppTrafficBean) obj2).count;
                if (j30 == j31) {
                    return 0;
                }
                return j30 > j31 ? -1 : 1;
            case 18:
                int i28 = ActivityAppTraffic.K;
                long j32 = ((AppTrafficBean) obj).count;
                long j33 = ((AppTrafficBean) obj2).count;
                if (j32 == j33) {
                    return 0;
                }
                return j32 > j33 ? -1 : 1;
            case 19:
                int i29 = ActivityAppsPermissionsAllow.R;
                boolean zIsEmpty = ((PermissionBean) obj).permissionName_ops.isEmpty();
                if ((!zIsEmpty) == (!((PermissionBean) obj2).permissionName_ops.isEmpty())) {
                    return 0;
                }
                return zIsEmpty ? 1 : -1;
            case 20:
                int i30 = ActivityPs.L;
                long j34 = ((PsBean) obj).vsz;
                long j35 = ((PsBean) obj2).vsz;
                if (j34 == j35) {
                    return 0;
                }
                return j34 > j35 ? -1 : 1;
            case 21:
                int i31 = ActivityPs.L;
                long j36 = ((PsBean) obj).rss;
                long j37 = ((PsBean) obj2).rss;
                if (j36 == j37) {
                    return 0;
                }
                return j36 > j37 ? -1 : 1;
            case 22:
                int i32 = ActivityPss.M;
                long j38 = ((PssBean) obj).pss;
                long j39 = ((PssBean) obj2).pss;
                if (j38 == j39) {
                    return 0;
                }
                return j38 > j39 ? -1 : 1;
            case 23:
                int i33 = ActivityPss.M;
                long j40 = ((PssBean) obj).pss;
                long j41 = ((PssBean) obj2).pss;
                if (j40 == j41) {
                    return 0;
                }
                return j40 > j41 ? -1 : 1;
            case 24:
                int i34 = ActivityRunMemory.I;
                long j42 = ((PssBean) obj).pss;
                long j43 = ((PssBean) obj2).pss;
                if (j42 == j43) {
                    return 0;
                }
                return j42 > j43 ? -1 : 1;
            case 25:
                g0 g0Var = (g0) obj;
                g0 g0Var2 = (g0) obj2;
                int i35 = g0Var2.f16482b;
                int i36 = g0Var.f16482b;
                if (i35 == i36) {
                    i = 0;
                } else if (i35 >= i36) {
                    i = 1;
                }
                if (i != 0) {
                    return i;
                }
                int iCompareTo = g0Var.f16483c.compareTo(g0Var2.f16483c);
                return iCompareTo != 0 ? iCompareTo : g0Var.f16484d.compareTo(g0Var2.f16484d);
            case 26:
                g0 g0Var3 = (g0) obj;
                g0 g0Var4 = (g0) obj2;
                int i37 = g0Var4.f16481a;
                int i38 = g0Var3.f16481a;
                if (i37 == i38) {
                    i = 0;
                } else if (i37 >= i38) {
                    i = 1;
                }
                if (i != 0) {
                    return i;
                }
                int iCompareTo2 = g0Var4.f16483c.compareTo(g0Var3.f16483c);
                return iCompareTo2 != 0 ? iCompareTo2 : g0Var4.f16484d.compareTo(g0Var3.f16484d);
            case 27:
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) obj;
                ActivityManager.RunningTaskInfo runningTaskInfo2 = (ActivityManager.RunningTaskInfo) obj2;
                if (Build.VERSION.SDK_INT >= 29) {
                    i10 = runningTaskInfo.taskId;
                    i11 = runningTaskInfo2.taskId;
                } else {
                    i10 = runningTaskInfo.id;
                    i11 = runningTaskInfo2.id;
                }
                return i10 - i11;
            default:
                ActivityManager.RunningTaskInfo runningTaskInfo3 = (ActivityManager.RunningTaskInfo) obj;
                ActivityManager.RunningTaskInfo runningTaskInfo4 = (ActivityManager.RunningTaskInfo) obj2;
                if (Build.VERSION.SDK_INT >= 29) {
                    i12 = runningTaskInfo3.taskId;
                    i13 = runningTaskInfo4.taskId;
                } else {
                    i12 = runningTaskInfo3.id;
                    i13 = runningTaskInfo4.id;
                }
                return i12 - i13;
        }
    }
}
