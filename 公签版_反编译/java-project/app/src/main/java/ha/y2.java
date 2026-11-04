package ha;

import android.view.MenuItem;
import android.view.View;
import android.widget.PopupMenu;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityApps;
import com.yunpan.appmanage.ui.ActivityShell;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class y2 implements PopupMenu.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8076a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View.OnCreateContextMenuListener f8077b;

    public /* synthetic */ y2(View.OnCreateContextMenuListener onCreateContextMenuListener, int i10) {
        this.f8076a = i10;
        this.f8077b = onCreateContextMenuListener;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        String strL;
        int i10 = 2;
        View.OnCreateContextMenuListener onCreateContextMenuListener = this.f8077b;
        int i11 = 0;
        int i12 = 1;
        switch (this.f8076a) {
            case 0:
                j3 j3Var = (j3) onCreateContextMenuListener;
                j3Var.getClass();
                if (menuItem.getItemId() != R.id.menu1) {
                    if (menuItem.getItemId() == R.id.menu2) {
                        ArrayList arrayList = new ArrayList();
                        new mc.c(0, new a3(i11, arrayList)).d(rc.f.f13757b).a(fc.b.a()).b(new h3(j3Var, 0, arrayList));
                        break;
                    }
                } else {
                    new vb(j3Var.f6724a, j3Var.f6725b).c("请选择文件", new w2(j3Var));
                    break;
                }
                break;
            case 1:
                int i13 = ActivityApps.L;
                ActivityApps activityApps = (ActivityApps) onCreateContextMenuListener;
                activityApps.getClass();
                if (menuItem.getItemId() == R.id.menu0) {
                    com.yunpan.appmanage.util.v.f4106a.q(0);
                } else if (menuItem.getItemId() == R.id.menu1) {
                    com.yunpan.appmanage.util.v.f4106a.q(1);
                } else if (menuItem.getItemId() == R.id.menu2) {
                    com.yunpan.appmanage.util.v.f4106a.q(2);
                }
                int iF = activityApps.D.F();
                if (iF == 0) {
                    activityApps.C.setVisibility(0);
                    activityApps.I.setVisibility(8);
                    activityApps.D.G(2);
                }
                activityApps.x(iF);
                break;
            case 2:
                ActivityShell activityShell = (ActivityShell) onCreateContextMenuListener;
                activityShell.D.setText("激活中");
                try {
                    StringBuilder sb2 = new StringBuilder();
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    sb2.append(new File(com.yunpan.appmanage.util.j.f4033a.f4069s).getParentFile().getParentFile().getPath());
                    sb2.append("/");
                    strL = sb2.toString();
                } catch (Exception unused) {
                    strL = null;
                }
                if (menuItem.getItemId() == R.id.menu_jh_1) {
                    AppBean appBeanK = android.support.v4.media.session.a.k("moe.shizuku.privileged.api");
                    if (appBeanK != null || (appBeanK = MyDb.get().getAppDao().get_appBean_name("Shizuku")) != null) {
                        try {
                            File[] fileArrListFiles = new File(new File(appBeanK.apkPath).getParentFile().getPath(), "lib").listFiles();
                            if (fileArrListFiles != null) {
                                int length = fileArrListFiles.length;
                                while (i11 < length) {
                                    String str = fileArrListFiles[i11].getPath() + "/libshizuku.so";
                                    if (new File(str).exists()) {
                                        System.out.getClass();
                                        fa.b0.f5652a.g(str, new ua.h6(activityShell, i12));
                                        break;
                                    } else {
                                        i11++;
                                    }
                                }
                            }
                        } catch (Exception unused2) {
                        }
                        strL = g.b.A("sh ", strL, "moe.shizuku.privileged.api/start.sh");
                        fa.b0.f5652a.g(strL, new ua.h6(activityShell, i10));
                        break;
                    } else {
                        activityShell.D.setText("未安装shizuku");
                        break;
                    }
                } else if (menuItem.getItemId() == R.id.menu_jh_2) {
                    if (android.support.v4.media.session.a.k("com.rosan.dhizuku") == null) {
                        activityShell.D.setText("未安装Dhizuku");
                        break;
                    } else {
                        strL = "dpm set-device-owner com.rosan.dhizuku/.server.DhizukuDAReceiver";
                        fa.b0.f5652a.g(strL, new ua.h6(activityShell, i10));
                    }
                } else if (menuItem.getItemId() != R.id.menu_jh_3) {
                    fa.b0.f5652a.g(strL, new ua.h6(activityShell, i10));
                } else if (strL == null) {
                    activityShell.D.setText("不存在内部存储，无法激活");
                    break;
                } else {
                    AppBean appBeanK2 = MyDb.get().getAppDao().get_appBean_name("权限狗");
                    if (appBeanK2 == null) {
                        appBeanK2 = android.support.v4.media.session.a.k("com.web1n.permissiondog");
                    }
                    if (appBeanK2 == null) {
                        activityShell.D.setText("未安装权限狗");
                        break;
                    } else {
                        StringBuilder sb3 = new StringBuilder("sh ");
                        sb3.append(strL);
                        strL = g.b.l(appBeanK2.pack, "/files/starter.sh", sb3);
                        fa.b0.f5652a.g(strL, new ua.h6(activityShell, i10));
                    }
                }
                break;
            case 3:
                ua.q8 q8Var = (ua.q8) onCreateContextMenuListener;
                q8Var.getClass();
                new hb(q8Var.f4530f, q8Var.f4529e, (x9.w3) g.b.d(q8Var.l, 1), menuItem.getItemId() == R.id.menu_new_file ? 0 : 1, new ua.d8(q8Var, 10)).show();
                break;
            default:
                ua.i9 i9Var = (ua.i9) onCreateContextMenuListener;
                i9Var.getClass();
                new hb(i9Var.f4530f, i9Var.f4529e, (x9.w3) g.b.d(i9Var.f15756x, 1), menuItem.getItemId() == R.id.menu_new_file ? 0 : 1, new ua.r8(i9Var, 18)).show();
                break;
        }
        return true;
    }
}
