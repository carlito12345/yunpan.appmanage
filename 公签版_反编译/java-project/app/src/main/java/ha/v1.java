package ha;

import android.content.ClipData;
import android.content.ClipboardManager;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.bean.LogcatBean;
import com.yunpan.appmanage.bean.PermissionBean;
import com.yunpan.appmanage.bean.RotationBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.ui.ActivityAutoClick;
import com.yunpan.appmanage.ui.ActivityDisplayStartApp;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaper;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaperL;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaperX;
import com.yunpan.appmanage.ui.ActivityOuShangStatusBar;
import com.yunpan.appmanage.ui.ActivityOuShangStatusBarNoRoot;
import com.yunpan.appmanage.ui.ActivityRotation;
import com.yunpan.appmanage.ui.ActivityStudy;
import com.yunpan.appmanage.ui.ActivityUsers;
import com.yunpan.appmanage.ui.ActivityUsersApps;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

/* loaded from: classes.dex */
public final /* synthetic */ class v1 implements ea.b, ea, fa.w, zc, ia, ec.d, u1.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7895a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7896b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7897c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f7898d;

    public /* synthetic */ v1(int i10, r1.l0 l0Var, r1.l0 l0Var2) {
        this.f7895a = 16;
        this.f7896b = i10;
        this.f7897c = l0Var;
        this.f7898d = l0Var2;
    }

    @Override // u1.j
    /* renamed from: a */
    public void mo12a(Object obj) {
        r1.k0 k0Var = (r1.k0) obj;
        k0Var.getClass();
        k0Var.B(this.f7896b, (r1.l0) this.f7897c, (r1.l0) this.f7898d);
    }

    @Override // ha.ea
    public void b(int i10) {
        String str;
        int i11 = 14;
        str = "";
        int i12 = 2;
        int i13 = this.f7896b;
        Object obj = this.f7898d;
        Object obj2 = this.f7897c;
        switch (this.f7895a) {
            case 1:
                ClipboardManager clipboardManager = (ClipboardManager) obj;
                ba baVar = (ba) obj2;
                if (i10 == 0) {
                    str = ((LogcatBean) baVar.f6811i.t(i13)).log;
                } else if (i10 == 1) {
                    str = ((LogcatBean) baVar.f6811i.t(i13)).tag;
                } else if (i10 == 2) {
                    str = ((LogcatBean) baVar.f6811i.t(i13)).msg;
                } else {
                    baVar.getClass();
                }
                try {
                    clipboardManager.setPrimaryClip(ClipData.newPlainText(AnnotatedPrivateKey.LABEL, str));
                    com.yunpan.appmanage.util.a0.w("已复制");
                    break;
                } catch (Exception unused) {
                    com.yunpan.appmanage.util.a0.w("复制失败，可能没有剪切板权限");
                    return;
                }
            case 2:
            case 3:
            case 4:
            default:
                int i14 = ActivityRotation.F;
                ActivityRotation activityRotation = (ActivityRotation) obj2;
                activityRotation.getClass();
                RotationBean rotationBean = (RotationBean) obj;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2 && rotationBean.mode != 2) {
                            rotationBean.mode = 2;
                            activityRotation.D.e(i13);
                            wa.u uVar = wa.t.f17728a;
                            uVar.e(uVar.N.replace("|" + rotationBean.pack + "|", ""));
                            String str2 = uVar.O;
                            if (!android.support.v4.media.session.a.D(new StringBuilder("|"), rotationBean.pack, "|", str2)) {
                                StringBuilder sbB = d0.f.b(str2, "|");
                                sbB.append(rotationBean.pack);
                                sbB.append("|");
                                uVar.f(sbB.toString());
                                break;
                            }
                        }
                    } else if (rotationBean.mode != 1) {
                        rotationBean.mode = 1;
                        activityRotation.D.e(i13);
                        wa.u uVar2 = wa.t.f17728a;
                        String str3 = uVar2.N;
                        if (!android.support.v4.media.session.a.D(new StringBuilder("|"), rotationBean.pack, "|", str3)) {
                            StringBuilder sbB2 = d0.f.b(str3, "|");
                            sbB2.append(rotationBean.pack);
                            sbB2.append("|");
                            uVar2.e(sbB2.toString());
                        }
                        uVar2.f(uVar2.O.replace("|" + rotationBean.pack + "|", ""));
                        break;
                    }
                } else if (rotationBean.mode != 0) {
                    rotationBean.mode = 0;
                    activityRotation.D.e(i13);
                    wa.u uVar3 = wa.t.f17728a;
                    String strReplace = uVar3.N.replace("|" + rotationBean.pack + "|", "");
                    if (strReplace.length() < 2) {
                        strReplace = "";
                    }
                    uVar3.e(strReplace);
                    String strReplace2 = uVar3.O.replace("|" + rotationBean.pack + "|", "");
                    uVar3.f(strReplace2.length() >= 2 ? strReplace2 : "");
                    break;
                }
                break;
            case 5:
                int i15 = ActivityAutoClick.E;
                ActivityAutoClick activityAutoClick = (ActivityAutoClick) obj2;
                activityAutoClick.getClass();
                wa.u uVar4 = wa.t.f17728a;
                ArrayList arrayList = (ArrayList) obj;
                String str4 = ((DesktopBean) arrayList.get(i10)).packageName;
                uVar4.getClass();
                try {
                    uVar4.Z = str4;
                    uVar4.f17731b.m("AutoClick_DESKTOP_SELECT_NAME", str4);
                } catch (Exception unused2) {
                }
                uVar4.i();
                wa.u uVar5 = wa.t.f17728a;
                String str5 = ((DesktopBean) arrayList.get(i10)).name;
                uVar5.getClass();
                try {
                    uVar5.f17730a0 = str5;
                    uVar5.f17731b.m("AutoClick_DESKTOP_SELECT_NAME2", str5);
                } catch (Exception unused3) {
                }
                uVar5.i();
                wa.u uVar6 = wa.t.f17728a;
                boolean z = !uVar6.Y;
                try {
                    uVar6.Y = z;
                    uVar6.f17731b.k("AutoClick_DESKTOP_SELECT", Boolean.valueOf(z));
                } catch (Exception unused4) {
                }
                uVar6.i();
                ta.m.e(activityAutoClick.A);
                x9.l3 l3Var = (x9.l3) activityAutoClick.D.t(i13);
                l3Var.f18271a = uVar6.Y ? R.drawable.tp_check1 : R.drawable.tp_check2;
                activityAutoClick.D.D(i13, l3Var);
                break;
            case 6:
                int i16 = ActivityDisplayStartApp.F;
                ActivityDisplayStartApp activityDisplayStartApp = (ActivityDisplayStartApp) obj2;
                activityDisplayStartApp.getClass();
                new mc.c(i, new p8(activityDisplayStartApp, i13, i10, (ArrayList) obj)).d(rc.f.f13757b).a(fc.b.a()).b(new l2(28));
                break;
            case 7:
                int i17 = ActivityNezhaWallpaper.R;
                ActivityNezhaWallpaper activityNezhaWallpaper = (ActivityNezhaWallpaper) obj2;
                activityNezhaWallpaper.getClass();
                c6.g gVar = (c6.g) obj;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            new z6(activityNezhaWallpaper, activityNezhaWallpaper, "更改名称", ((AppBean) gVar.t(i13)).name, "请输入新名称", "确定", "取消", new androidx.room.s((da.g) activityNezhaWallpaper, (Object) gVar, i13, i11)).show();
                            break;
                        }
                    } else {
                        HashSet hashSet = new HashSet();
                        int i18 = 0;
                        while (true) {
                            ArrayList arrayList2 = activityNezhaWallpaper.G;
                            if (i18 >= arrayList2.size()) {
                                new ma(activityNezhaWallpaper, activityNezhaWallpaper, hashSet, new ua.b4(activityNezhaWallpaper, i13, i)).show();
                                break;
                            } else {
                                hashSet.add(((AppBean) arrayList2.get(i18)).pack);
                                i18++;
                            }
                        }
                    }
                } else {
                    gVar.C(i13);
                    activityNezhaWallpaper.M.n(i13);
                    break;
                }
                break;
            case 8:
                int i19 = ActivityNezhaWallpaperL.T;
                ActivityNezhaWallpaperL activityNezhaWallpaperL = (ActivityNezhaWallpaperL) obj2;
                activityNezhaWallpaperL.getClass();
                c6.g gVar2 = (c6.g) obj;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            new z6(activityNezhaWallpaperL, activityNezhaWallpaperL, "更改名称", ((AppBean) gVar2.t(i13)).name, "请输入新名称", "确定", "取消", new androidx.room.s((da.g) activityNezhaWallpaperL, (Object) gVar2, i13, 15)).show();
                            break;
                        }
                    } else {
                        HashSet hashSet2 = new HashSet();
                        while (true) {
                            ArrayList arrayList3 = activityNezhaWallpaperL.G;
                            if (i >= arrayList3.size()) {
                                new ma(activityNezhaWallpaperL, activityNezhaWallpaperL, hashSet2, activityNezhaWallpaperL.R, new ua.j4(activityNezhaWallpaperL, i13, i12)).show();
                                break;
                            } else {
                                hashSet2.add(((AppBean) arrayList3.get(i)).pack);
                                i++;
                            }
                        }
                    }
                } else {
                    gVar2.C(i13);
                    activityNezhaWallpaperL.M.n(i13);
                    break;
                }
                break;
            case 9:
                int i20 = ActivityNezhaWallpaperX.N;
                ActivityNezhaWallpaperX activityNezhaWallpaperX = (ActivityNezhaWallpaperX) obj2;
                activityNezhaWallpaperX.getClass();
                c6.g gVar3 = (c6.g) obj;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            new z6(activityNezhaWallpaperX, activityNezhaWallpaperX, "更改名称", ((AppBean) gVar3.t(i13)).name, "请输入新名称", "确定", "取消", new androidx.room.s((da.g) activityNezhaWallpaperX, (Object) gVar3, i13, 16)).show();
                            break;
                        }
                    } else {
                        HashSet hashSet3 = new HashSet();
                        while (true) {
                            ArrayList arrayList4 = activityNezhaWallpaperX.E;
                            if (i >= arrayList4.size()) {
                                hashSet3.add("com.hozonauto.netahome.mini");
                                new ma(activityNezhaWallpaperX, activityNezhaWallpaperX, hashSet3, new o(i13, i11, activityNezhaWallpaperX)).show();
                                break;
                            } else {
                                hashSet3.add(((AppBean) arrayList4.get(i)).pack);
                                i++;
                            }
                        }
                    }
                } else {
                    gVar3.C(i13);
                    activityNezhaWallpaperX.I.n(i13);
                    break;
                }
                break;
            case 10:
                int i21 = ActivityOuShangStatusBar.E;
                ActivityOuShangStatusBar activityOuShangStatusBar = (ActivityOuShangStatusBar) obj2;
                activityOuShangStatusBar.getClass();
                ua.p2 p2Var = (ua.p2) obj;
                p2Var.f15877c = !p2Var.f15877c;
                activityOuShangStatusBar.D.e(i13);
                a2.w0 w0Var = fa.b0.f5652a;
                StringBuilder sb2 = new StringBuilder("am broadcast -a com.chinatsp.systemui.ACTION_APP_INFO --es packageName '");
                sb2.append(p2Var.f15876b);
                sb2.append("' --ei appCentered ");
                sb2.append(i10 == 0 ? 2 : 0);
                w0Var.g(sb2.toString(), null);
                break;
            case 11:
                int i22 = ActivityOuShangStatusBarNoRoot.F;
                ActivityOuShangStatusBarNoRoot activityOuShangStatusBarNoRoot = (ActivityOuShangStatusBarNoRoot) obj2;
                activityOuShangStatusBarNoRoot.getClass();
                ua.p2 p2Var2 = (ua.p2) obj;
                p2Var2.f15877c = !p2Var2.f15877c;
                activityOuShangStatusBarNoRoot.D.e(i13);
                a2.w0 w0Var2 = fa.b0.f5652a;
                StringBuilder sb3 = new StringBuilder("am broadcast -a com.chinatsp.systemui.ACTION_APP_INFO --es packageName '");
                sb3.append(p2Var2.f15876b);
                sb3.append("' --ei appCentered ");
                sb3.append(i10 == 0 ? 2 : 0);
                w0Var2.g(sb3.toString(), null);
                break;
        }
    }

    @Override // fa.w
    public void c(String str, boolean z) {
        switch (this.f7895a) {
            case 2:
                ya yaVar = (ya) this.f7897c;
                yaVar.getClass();
                if (!z) {
                    com.yunpan.appmanage.util.a0.s(str, false);
                    break;
                } else {
                    PermissionBean permissionBean = (PermissionBean) this.f7898d;
                    boolean z4 = permissionBean.isOpen;
                    permissionBean.isOpen = !z4;
                    permissionBean.str_status = !z4 ? "已允许" : "已拒绝";
                    yaVar.f8102d.l.e(this.f7896b);
                    break;
                }
            default:
                ya yaVar2 = (ya) this.f7897c;
                yaVar2.getClass();
                if (!z) {
                    com.yunpan.appmanage.util.a0.s(str, false);
                    break;
                } else {
                    PermissionBean permissionBean2 = (PermissionBean) this.f7898d;
                    boolean z10 = permissionBean2.isOpen;
                    permissionBean2.isOpen = !z10;
                    permissionBean2.str_status = !z10 ? "已允许" : "已取消";
                    yaVar2.f8102d.l.e(this.f7896b);
                    break;
                }
        }
    }

    @Override // ha.zc
    public void d(boolean z) {
        if (z) {
            x9.x0 x0Var = (x9.x0) this.f7897c;
            x0Var.f18384b = !x0Var.f18384b;
            ((x9.y0) this.f7898d).D(this.f7896b, x0Var);
        }
    }

    @Override // ea.b
    public void f(boolean z) {
        w1 w1Var = (w1) this.f7897c;
        int i10 = this.f7896b;
        if (!z) {
            w1Var.f7988s.C(i10);
            return;
        }
        w1Var.getClass();
        z7.s sVar = (z7.s) this.f7898d;
        String strI = sVar.o("name").i();
        for (int i11 = 0; i11 < w1Var.f7988s.b(); i11++) {
            if (i11 != i10 && ((z7.s) w1Var.f7988s.t(i11)).o("name").i().equals(strI)) {
                com.yunpan.appmanage.util.a0.u("关键字已存在，请勿重复添加");
                return;
            }
        }
        w1Var.f7988s.D(i10, sVar);
    }

    @Override // ec.d
    public void g(mc.b bVar) throws Exception {
        String str;
        int i10 = this.f7896b;
        Object obj = this.f7898d;
        Object obj2 = this.f7897c;
        switch (this.f7895a) {
            case 13:
                ActivityStudy.x((ActivityStudy) obj2, (String) obj, i10, bVar);
                return;
            case 14:
                int i11 = ActivityUsers.G;
                ActivityUsers activityUsers = (ActivityUsers) obj2;
                activityUsers.getClass();
                try {
                    if (i10 == 0) {
                        fa.b0.f5652a.getClass();
                        fa.a0 a0VarQ = a2.w0.q(2000L, "am get-current-user");
                        if (a0VarQ.f5648a != 0) {
                            throw new Exception("无法获取：" + a0VarQ.a());
                        }
                        Iterator it = a0VarQ.f5649b.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                String strTrim = ((String) it.next()).trim();
                                str = (strTrim.isEmpty() || strTrim.contains(":") || strTrim.contains("/") || strTrim.length() > 3 || Integer.valueOf(strTrim).intValue() >= 100) ? "" : strTrim;
                            }
                        }
                        Toaster.show((CharSequence) ("当前用户ID：" + str + "\n\n方法二：" + p000if.a.T()));
                    } else {
                        HashSet hashSet = activityUsers.F;
                        HashMap map = activityUsers.E;
                        if (i10 == 1) {
                            map.clear();
                            hashSet.clear();
                            fa.b0.f5652a.getClass();
                            for (String str2 : a2.w0.q(2000L, "pm list users").f5649b) {
                                if (str2.contains("UserInfo{")) {
                                    map.put(p000if.a.N(str2, "UserInfo{", ":", false), p000if.a.N(str2, ":", ":", false));
                                    if (str2.contains("running")) {
                                        hashSet.add(p000if.a.N(str2, "UserInfo{", ":", false));
                                    }
                                }
                            }
                            if (map.isEmpty()) {
                                fa.b0.f5652a.getClass();
                                throw new Exception(a2.w0.N() ? "未找到用户" : "请先连接adb");
                            }
                            StringBuffer stringBuffer = new StringBuffer();
                            for (String str3 : map.keySet()) {
                                stringBuffer.append(str3);
                                stringBuffer.append(":");
                                stringBuffer.append((String) map.get(str3));
                                if (hashSet.contains(str3)) {
                                    stringBuffer.append("(运行中)");
                                }
                                stringBuffer.append(SignParameters.NEW_LINE);
                            }
                            Toaster.show((CharSequence) stringBuffer.toString());
                        } else {
                            String str4 = (String) obj;
                            if (i10 == 2) {
                                fa.b0.f5652a.getClass();
                                fa.a0 a0VarQ2 = a2.w0.q(2000L, "pm create-user '" + str4 + "'");
                                if (a0VarQ2.f5648a != 0) {
                                    throw new Exception("失败：" + a0VarQ2.a());
                                }
                                Iterator it2 = a0VarQ2.f5649b.iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        String str5 = (String) it2.next();
                                        if (str5.contains("created user id")) {
                                            String strSubstring = str5.substring(str5.lastIndexOf(" ") + 1);
                                            map.put(strSubstring.trim(), str4);
                                            com.yunpan.appmanage.util.a0.w("创建成功：" + str4 + "(" + strSubstring.trim() + ")");
                                        }
                                    }
                                }
                            } else if (i10 == 3) {
                                fa.b0.f5652a.getClass();
                                fa.a0 a0VarQ3 = a2.w0.q(2000L, "pm remove-user " + str4);
                                if (a0VarQ3.f5648a != 0) {
                                    throw new Exception("失败：" + a0VarQ3.a());
                                }
                                map.remove(str4);
                                hashSet.remove(str4);
                                com.yunpan.appmanage.util.a0.w("删除成功：" + str4);
                            } else if (i10 == 4) {
                                fa.b0.f5652a.getClass();
                                fa.a0 a0VarQ4 = a2.w0.q(2000L, "am switch-user " + str4);
                                if (a0VarQ4.f5648a != 0) {
                                    throw new Exception("失败：" + a0VarQ4.a());
                                }
                                com.yunpan.appmanage.util.a0.w("切换成功：" + str4);
                            }
                        }
                    }
                    bVar.b();
                    return;
                } catch (Exception e7) {
                    com.yunpan.appmanage.util.a0.t(String.valueOf(e7.getMessage()));
                    bVar.d(e7);
                    return;
                }
            default:
                androidx.room.s sVar = (androidx.room.s) obj2;
                sVar.getClass();
                c6.g gVar = (c6.g) obj;
                String str6 = ((AppBean) gVar.t(i10)).pack;
                String str7 = ((AppBean) gVar.t(i10)).apkParentPath;
                Iterator it3 = ((ActivityUsersApps) sVar.f2428d).I.iterator();
                boolean z = true;
                while (it3.hasNext()) {
                    String str8 = (String) it3.next();
                    if (str7.contains("," + str8 + ",")) {
                        fa.b0.f5652a.getClass();
                        fa.a0 a0VarQ5 = a2.w0.q(2000L, "pm uninstall --user " + str8 + " " + str6);
                        if (!a0VarQ5.b()) {
                            StringBuilder sbD = da.b.d("用户", str8, "卸载失败：");
                            sbD.append(a0VarQ5.a());
                            com.yunpan.appmanage.util.a0.u(sbD.toString());
                            z = false;
                        }
                    }
                }
                if (z) {
                    bVar.f(Integer.valueOf(i10));
                }
                bVar.b();
                return;
        }
    }

    public /* synthetic */ v1(Object obj, int i10, Object obj2, int i11) {
        this.f7895a = i11;
        this.f7897c = obj;
        this.f7896b = i10;
        this.f7898d = obj2;
    }

    public /* synthetic */ v1(Object obj, Object obj2, int i10, int i11) {
        this.f7895a = i11;
        this.f7897c = obj;
        this.f7898d = obj2;
        this.f7896b = i10;
    }
}
