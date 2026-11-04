package ua;

import android.R;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import com.hjq.permissions.OnPermissionCallback;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.bean.KeyCodeBean;
import com.yunpan.appmanage.bean.StackBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityAppTraffic;
import com.yunpan.appmanage.ui.ActivityOuShangStatusBarNoRoot;
import com.yunpan.appmanage.ui.ActivityPresentation2;
import com.yunpan.appmanage.ui.ActivitySeccompRoot;
import com.yunpan.appmanage.ui.ActivityStart;
import com.yunpan.appmanage.ui.ActivitySystemHasWrite;
import com.yunpan.appmanage.ui.ActivityTextDesaysvVds;
import com.yunpan.appmanage.ui.ActivityTextFlyOS12;
import com.yunpan.appmanage.ui.ActivityTextFlyOSAll;
import com.yunpan.appmanage.ui.ActivityUsers;
import com.yunpan.appmanage.ui.ActivityUsersApps;
import ha.ga;
import ha.ha;
import ha.ja;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class g5 implements c6.e, ec.d, ha.a6, ha.p2, OnPermissionCallback, db.n, v8.c, wb.b, u1.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15693a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15694b;

    public /* synthetic */ g5(int i10, Object obj) {
        this.f15693a = i10;
        this.f15694b = obj;
    }

    @Override // u1.j
    /* renamed from: a */
    public void mo12a(Object obj) {
        switch (this.f15693a) {
            case 20:
                ((r1.k0) obj).m((r1.b0) this.f15694b);
                break;
            case 21:
                ((r1.k0) obj).u((r1.d) this.f15694b);
                break;
            case 22:
                ((r1.k0) obj).e((r1.v0) this.f15694b);
                break;
            case 23:
                ((r1.k0) obj).q((t1.c) this.f15694b);
                break;
            case 24:
                ((r1.k0) obj).m(((y1.t) this.f15694b).f18808a.Z);
                break;
            case 25:
                ((r1.k0) obj).x((r1.d0) this.f15694b);
                break;
            case 26:
                ((r1.k0) obj).F((u7.y0) this.f15694b);
                break;
            case 27:
                z1.h hVar = (z1.h) ((z1.b) obj);
                int i10 = hVar.f19387y;
                y1.c cVar = (y1.c) this.f15694b;
                hVar.f19387y = i10 + cVar.f18593g;
                hVar.z += cVar.f18591e;
                break;
            case 28:
                ((z1.b) obj).getClass();
                break;
            default:
                ((z1.h) ((z1.b) obj)).f19378o = (y1.k) this.f15694b;
                break;
        }
    }

    @Override // ha.p2
    public void c(String str, String str2) {
        ActivitySystemHasWrite activitySystemHasWrite = ((g7) this.f15694b).f15700c;
        int i10 = ActivitySystemHasWrite.F;
        activitySystemHasWrite.getClass();
        new ha.z6(activitySystemHasWrite, activitySystemHasWrite, "可以将应用转为普通系统应用 或 超级系统应用", "有些车机要转为超级系统应用才能使用(2代哈佛H6)", "普通系统应用", "超级系统应用", new kf.d(28, activitySystemHasWrite, str2, false)).show();
    }

    @Override // db.n
    public void d(bi.a aVar) {
        switch (this.f15693a) {
            case 16:
                db.e eVar = (db.e) aVar;
                i1 i1Var = (i1) this.f15694b;
                i1Var.getClass();
                ue.d.e(eVar, "event");
                ContextMenu contextMenu = eVar.f4535c;
                ue.d.e(contextMenu, "menu");
                CodeEditor codeEditor = (CodeEditor) i1Var.f15727b;
                Context context = codeEditor.getContext();
                ue.d.d(context, "getContext(...)");
                ArrayList arrayList = new ArrayList();
                vb.m mVar = new vb.m(context);
                mVar.b(R.string.selectAll);
                mVar.f16752d = com.yunpan.appmanage.R.drawable.round_select_all_20;
                mb.g text = codeEditor.getText();
                ue.d.d(text, "getText(...)");
                mVar.f16751c = !(text.length() == 0);
                mVar.a(new vb.l(3, i1Var));
                arrayList.add(mVar);
                vb.m mVar2 = new vb.m(context);
                mVar2.b(R.string.copy);
                mVar2.f16752d = com.yunpan.appmanage.R.drawable.round_content_copy_20;
                mVar2.f16751c = codeEditor.g1.a();
                mVar2.a(new vb.l(1, i1Var));
                arrayList.add(mVar2);
                vb.m mVar3 = new vb.m(context);
                mVar3.b(R.string.cut);
                mVar3.f16752d = com.yunpan.appmanage.R.drawable.round_content_cut_20;
                mVar3.f16751c = codeEditor.g1.a();
                mVar3.a(new vb.l(2, i1Var));
                arrayList.add(mVar3);
                vb.m mVar4 = new vb.m(context);
                mVar4.b(R.string.paste);
                mVar4.f16752d = com.yunpan.appmanage.R.drawable.round_content_paste_20;
                mVar4.f16751c = codeEditor.f8710e1.hasPrimaryClip();
                mVar4.a(new vb.l(0, i1Var));
                arrayList.add(mVar4);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    vb.m mVar5 = (vb.m) it.next();
                    mVar5.getClass();
                    MenuItem onMenuItemClickListener = contextMenu.add(0, 0, 0, mVar5.f16750b).setEnabled(mVar5.f16751c).setOnMenuItemClickListener(mVar5.f16753e);
                    int i10 = mVar5.f16752d;
                    if (i10 != 0) {
                        onMenuItemClickListener.setIcon(i10);
                    }
                }
                break;
            default:
                vb.v vVar = (vb.v) this.f15694b;
                Drawable background = vVar.f16777b.getContentView().getBackground();
                if (background != null) {
                    background.setTint(vVar.f16776a.getColorScheme().f19543a.get(4));
                    break;
                }
                break;
        }
    }

    @Override // v8.c
    public void e(v8.a aVar, View view) {
        ((wa.s) this.f15694b).r(false);
    }

    @Override // ha.a6
    public void f(x9.w3 w3Var) {
        switch (this.f15693a) {
            case 5:
                y6 y6Var = (y6) this.f15694b;
                y6Var.getClass();
                new mc.c(0, new ha.d4(w3Var, 6)).d(rc.f.f13757b).a(fc.b.a()).b(new ka.c(28, y6Var));
                break;
            case 6:
                y6 y6Var2 = (y6) this.f15694b;
                y6Var2.getClass();
                new mc.c(0, new ha.d4(w3Var, 7)).d(rc.f.f13757b).a(fc.b.a()).b(new ka.c(29, y6Var2));
                break;
            default:
                v7 v7Var = (v7) this.f15694b;
                v7Var.getClass();
                x7 x7Var = v7Var.f16002c;
                Activity activity = x7Var.f4530f;
                Context context = x7Var.f4529e;
                String str = w3Var.f18365b;
                ha.y3 y3Var = new ha.y3(activity, context);
                y3Var.f8078g = str;
                y3Var.show();
                break;
        }
    }

    @Override // ec.d
    public void g(mc.b bVar) throws NumberFormatException {
        String str;
        String str2;
        String str3;
        int i10 = ActivityPresentation2.H;
        String str4 = "ComponentInfo{";
        ActivityPresentation2 activityPresentation2 = (ActivityPresentation2) this.f15694b;
        activityPresentation2.F = qf.c.u(activityPresentation2.A);
        fa.b0.f5652a.getClass();
        fa.a0 a0VarH = a2.w0.h("am stack list");
        if (a0VarH.f5648a != 0) {
            com.yunpan.appmanage.util.a0.u("无法获取屏幕信息");
            bVar.b();
            return;
        }
        ArrayList arrayList = new ArrayList();
        try {
            int i11 = -1;
            String strReplace = "";
            int i12 = -1;
            int i13 = -1;
            for (String str5 : a0VarH.f5649b) {
                if (str5.contains("tack id=") && str5.contains("displayId")) {
                    i11 = Integer.parseInt(str5.substring(str5.indexOf("ack id=") + 7, str5.indexOf(" bounds")).trim());
                    int i14 = Integer.parseInt(str5.substring(str5.indexOf("displayId=") + 10, str5.indexOf(" userId")).trim());
                    strReplace = str5.substring(str5.indexOf("][") + 2, str5.indexOf("] ")).replace(",", "x");
                    int i15 = Integer.parseInt(str5.substring(str5.lastIndexOf("=") + 1).trim());
                    activityPresentation2.E.add(Integer.valueOf(i14));
                    str = str4;
                    i13 = i15;
                    i12 = i14;
                } else if (str5.contains("taskId=")) {
                    int i16 = Integer.parseInt(str5.substring(str5.indexOf("askId=") + 6, str5.indexOf(":")).trim());
                    String strReplace2 = str5.substring(str5.indexOf("][") + 2, str5.indexOf("] ")).replace(",", "x");
                    String strSubstring = str5.substring(str5.indexOf(": ") + 2, str5.indexOf(" bounds"));
                    String strSubstring2 = strSubstring.substring(0, strSubstring.indexOf("/"));
                    String strSubstring3 = str5.contains(str4) ? str5.substring(str5.indexOf(str4) + 14, str5.lastIndexOf("}")) : "";
                    AppBean appBean = MyDb.get().getAppDao().get_appBean(strSubstring2);
                    if (appBean == null) {
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                        if (strSubstring2.equals(kVar.f4041d)) {
                            str2 = kVar.f4039c;
                        } else {
                            str3 = strSubstring2;
                            str = str4;
                            arrayList.add(new StackBean(i12, strReplace, i11, i13, i16, str3, strSubstring2, strSubstring, strSubstring3, strReplace2));
                        }
                    } else {
                        str2 = appBean.name;
                    }
                    str3 = str2;
                    str = str4;
                    arrayList.add(new StackBean(i12, strReplace, i11, i13, i16, str3, strSubstring2, strSubstring, strSubstring3, strReplace2));
                } else {
                    str = str4;
                }
                str4 = str;
            }
            bVar.f(arrayList);
            bVar.b();
        } catch (Exception e7) {
            e7.printStackTrace();
            com.yunpan.appmanage.util.a0.u("无法获取屏幕信息");
            bVar.b();
        }
    }

    @Override // wb.b
    public void h(int i10, Object[] objArr) {
        wb.n nVar = (wb.n) this.f15694b;
        CodeEditor codeEditor = nVar.f17777a;
        if (codeEditor != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : objArr) {
                arrayList.add((wb.m) obj);
            }
            Collections.sort(arrayList);
            codeEditor.Z(new a2.e0(nVar, codeEditor, arrayList, 17));
        }
    }

    @Override // com.hjq.permissions.OnPermissionCallback
    public void onPermissionResult(List list, List list2) {
        ((x7) ((i1) this.f15694b).f15727b).l(ActivityAppTraffic.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // c6.e
    public void x(c6.g gVar, View view, final int i10) {
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        final int i11 = 1;
        Object obj = this.f15694b;
        switch (this.f15693a) {
            case 0:
                ActivityOuShangStatusBarNoRoot activityOuShangStatusBarNoRoot = (ActivityOuShangStatusBarNoRoot) obj;
                p2 p2Var = (p2) activityOuShangStatusBarNoRoot.D.t(i10);
                if (p2Var != null) {
                    if (activityOuShangStatusBarNoRoot.E) {
                        boolean z = p2Var.f15877c;
                        if (z) {
                            p2Var.f15877c = !z;
                            activityOuShangStatusBarNoRoot.D.e(i10);
                            fa.b0.f5652a.g("am broadcast -a com.chinatsp.systemui.ACTION_APP_INFO --es packageName '" + p2Var.f15876b + "' --ei appCentered 1", null);
                            break;
                        } else {
                            new ja(activityOuShangStatusBarNoRoot, activityOuShangStatusBarNoRoot, view, Arrays.asList("全屏", "全屏(有车标)"), new ha.v1(activityOuShangStatusBarNoRoot, p2Var, i10, 11)).show();
                            break;
                        }
                    } else {
                        new ja(activityOuShangStatusBarNoRoot, activityOuShangStatusBarNoRoot, view, Arrays.asList("全屏", "全屏(有车标)", "取消全屏"), new ma.b(activityOuShangStatusBarNoRoot, 26, p2Var)).show();
                        break;
                    }
                }
                break;
            case 1:
            case 3:
            case 5:
            case 6:
            case 7:
            default:
                int i12 = ActivityUsers.G;
                final ActivityUsers activityUsers = (ActivityUsers) obj;
                activityUsers.getClass();
                if (i10 != 0 && i10 != 1) {
                    if (i10 == 2) {
                        new ha.z6(activityUsers, activityUsers.A, "请输入用户名", "新用户", "", "确定", "取消", new d3.g(i10, 20, activityUsers)).show();
                        break;
                    } else {
                        HashMap map = activityUsers.E;
                        if (i10 == 3) {
                            if (map.size() == 1) {
                                com.yunpan.appmanage.util.a0.u("目前只有一个用户，禁止删除");
                                break;
                            } else {
                                final ArrayList arrayList = new ArrayList();
                                for (String str : map.keySet()) {
                                    arrayList.add(new KeyCodeBean(Integer.valueOf(str.trim()).intValue(), ((String) map.get(str)) + "(" + str + ")"));
                                }
                                da.g gVar2 = activityUsers.A;
                                final Object[] objArr3 = objArr2 == true ? 1 : 0;
                                new ha(activityUsers, gVar2, null, arrayList, new ga() { // from class: ua.p7
                                    @Override // ha.ga
                                    public final void b(int i13) {
                                        int i14 = i10;
                                        ArrayList arrayList2 = arrayList;
                                        ActivityUsers activityUsers2 = activityUsers;
                                        switch (objArr3) {
                                            case 0:
                                                int i15 = ActivityUsers.G;
                                                activityUsers2.getClass();
                                                activityUsers2.x(i14, String.valueOf(((KeyCodeBean) arrayList2.get(i13)).keyCode));
                                                break;
                                            default:
                                                int i16 = ActivityUsers.G;
                                                activityUsers2.getClass();
                                                activityUsers2.x(i14, String.valueOf(((KeyCodeBean) arrayList2.get(i13)).keyCode));
                                                break;
                                        }
                                    }
                                }).show();
                                break;
                            }
                        } else if (i10 == 4) {
                            if (map.size() == 1) {
                                com.yunpan.appmanage.util.a0.u("目前只有一个用户，无需切换");
                                break;
                            } else {
                                final ArrayList arrayList2 = new ArrayList();
                                for (String str2 : map.keySet()) {
                                    arrayList2.add(new KeyCodeBean(Integer.valueOf(str2.trim()).intValue(), ((String) map.get(str2)) + "(" + str2 + ")"));
                                }
                                new ha(activityUsers, activityUsers.A, null, arrayList2, new ga() { // from class: ua.p7
                                    @Override // ha.ga
                                    public final void b(int i13) {
                                        int i14 = i10;
                                        ArrayList arrayList22 = arrayList2;
                                        ActivityUsers activityUsers2 = activityUsers;
                                        switch (i11) {
                                            case 0:
                                                int i15 = ActivityUsers.G;
                                                activityUsers2.getClass();
                                                activityUsers2.x(i14, String.valueOf(((KeyCodeBean) arrayList22.get(i13)).keyCode));
                                                break;
                                            default:
                                                int i16 = ActivityUsers.G;
                                                activityUsers2.getClass();
                                                activityUsers2.x(i14, String.valueOf(((KeyCodeBean) arrayList22.get(i13)).keyCode));
                                                break;
                                        }
                                    }
                                }).show();
                                break;
                            }
                        } else if (i10 == 5) {
                            if (map.size() == 1) {
                                com.yunpan.appmanage.util.a0.u("目前只有一个用户，无需此");
                                break;
                            } else {
                                fa.b0.f5652a.getClass();
                                if (a2.w0.O()) {
                                    activityUsers.w(ActivityUsersApps.class);
                                    break;
                                } else {
                                    com.yunpan.appmanage.util.a0.u("需连接adb");
                                    break;
                                }
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.u("暂未开放");
                            break;
                        }
                    }
                } else {
                    activityUsers.x(i10, "");
                    break;
                }
            case 2:
                int i13 = ActivitySeccompRoot.G;
                ActivitySeccompRoot activitySeccompRoot = (ActivitySeccompRoot) obj;
                activitySeccompRoot.getClass();
                if (i10 == 0) {
                    if (fa.g0.f5682a.f()) {
                        com.yunpan.appmanage.util.a0.w("您本身已有root权限了");
                        break;
                    } else {
                        new mc.c(objArr == true ? 1 : 0, new v0(28)).d(rc.f.f13757b).a(fc.b.a()).b(new ka.c(27, activitySeccompRoot));
                        break;
                    }
                } else if (i10 == 1) {
                    if (com.yunpan.appmanage.util.a0.g(activitySeccompRoot.A.getFilesDir().getPath() + "/EnableAccSeccompRoot")) {
                        if (new File(activitySeccompRoot.A.getFilesDir().getPath() + "/EnableAccSeccompRoot").delete()) {
                            ((x9.l3) activitySeccompRoot.D.t(i10)).f18271a = com.yunpan.appmanage.R.drawable.tp_check2;
                            activitySeccompRoot.D.e(i10);
                            break;
                        }
                    } else {
                        try {
                            if (new File(activitySeccompRoot.A.getFilesDir().getPath() + "/EnableAccSeccompRoot").createNewFile()) {
                                ((x9.l3) activitySeccompRoot.D.t(i10)).f18271a = com.yunpan.appmanage.R.drawable.tp_check1;
                                activitySeccompRoot.D.e(i10);
                                break;
                            }
                        } catch (Exception unused) {
                            return;
                        }
                    }
                }
                break;
            case 4:
                int i14 = ActivityStart.G;
                ActivityStart activityStart = (ActivityStart) obj;
                activityStart.getClass();
                try {
                    ResolveInfo resolveInfo = (ResolveInfo) activityStart.D.t(i10);
                    if (i10 == activityStart.D.b() - 1 && resolveInfo.activityInfo == null) {
                        activityStart.D.C(i10);
                        activityStart.D.r(activityStart.F);
                    } else {
                        fa.b0.f5652a.getClass();
                        if (a2.w0.O()) {
                            ActivityInfo activityInfo = resolveInfo.activityInfo;
                            int componentEnabledSetting = activityStart.getPackageManager().getComponentEnabledSetting(new ComponentName(activityInfo.packageName, activityInfo.name));
                            boolean z4 = componentEnabledSetting == 1 || componentEnabledSetting == 0;
                            if ((resolveInfo.activityInfo.applicationInfo.flags & 1) == 0 || !z4) {
                                activityStart.x(resolveInfo, z4, i10);
                            } else {
                                da.g gVar3 = activityStart.A;
                                new ha.z6(gVar3, gVar3, "此应用是系统应用，你确定要禁止此APP的开机自启动？？？\n\n这是非常危险的！！！如果你执意要这样做我也不拦你！！！", "", "算了", "确定", new kf.f(activityStart, resolveInfo, z4, i10)).show();
                            }
                        } else {
                            Toaster.show((CharSequence) "无权限更改状态(需root或adb)");
                        }
                    }
                    break;
                } catch (Exception e7) {
                    e7.printStackTrace();
                    com.yunpan.appmanage.util.a0.y("出错：" + e7.getMessage());
                    return;
                }
            case 8:
                int i15 = ActivityTextDesaysvVds.K;
                ActivityTextDesaysvVds activityTextDesaysvVds = (ActivityTextDesaysvVds) obj;
                if (i10 == 0) {
                    activityTextDesaysvVds.finish();
                    break;
                } else {
                    activityTextDesaysvVds.getClass();
                    break;
                }
            case 9:
                int i16 = ActivityTextFlyOS12.I;
                ActivityTextFlyOS12 activityTextFlyOS12 = (ActivityTextFlyOS12) obj;
                if (i10 == 0) {
                    activityTextFlyOS12.finish();
                    break;
                } else {
                    activityTextFlyOS12.getClass();
                    break;
                }
            case 10:
                int i17 = ActivityTextFlyOSAll.L;
                ActivityTextFlyOSAll activityTextFlyOSAll = (ActivityTextFlyOSAll) obj;
                if (i10 == 0) {
                    activityTextFlyOSAll.finish();
                    break;
                } else {
                    activityTextFlyOSAll.getClass();
                    break;
                }
        }
    }

    public /* synthetic */ g5(z1.a aVar, Object obj, int i10) {
        this.f15693a = i10;
        this.f15694b = obj;
    }

    public /* synthetic */ g5(z1.a aVar, Object obj, long j10) {
        this.f15693a = 28;
        this.f15694b = obj;
    }
}
