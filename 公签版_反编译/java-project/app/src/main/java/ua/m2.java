package ua;

import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.provider.Settings;
import android.view.View;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityImmersive;
import ha.ea;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class m2 implements ea, c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15820a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityImmersive f15821b;

    public /* synthetic */ m2(ActivityImmersive activityImmersive, int i10) {
        this.f15820a = i10;
        this.f15821b = activityImmersive;
    }

    @Override // ha.ea
    public void b(int i10) {
        ActivityImmersive activityImmersive = this.f15821b;
        p2 p2Var = (p2) activityImmersive.H.t(activityImmersive.I);
        if (i10 > 1 || p2Var.f15878d != i10) {
            p2Var.f15878d = i10;
            activityImmersive.H.e(activityImmersive.I);
            Iterator it = activityImmersive.M.iterator();
            String strK = "immersive.status=";
            String strK2 = "immersive.navigation=";
            while (it.hasNext()) {
                p2 p2Var2 = (p2) it.next();
                int i11 = p2Var2.f15878d;
                String str = p2Var2.f15876b;
                if (i11 == 1) {
                    strK2 = g.b.k(strK2, str, ",");
                } else if (i11 != 2) {
                    if (i11 == 3) {
                        strK2 = g.b.k(strK2, str, ",");
                    }
                }
                strK = g.b.k(strK, str, ",");
            }
            String string = "";
            if (strK.endsWith(",")) {
                string = "" + strK.substring(0, strK.length() - 1);
            }
            if (strK2.endsWith(",")) {
                if (!string.isEmpty()) {
                    string = string.concat(":");
                }
                StringBuilder sbM = g.b.m(string);
                sbM.append(strK2.substring(0, strK2.length() - 1));
                string = sbM.toString();
            }
            activityImmersive.x(string);
        }
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        String strA = "";
        ActivityImmersive activityImmersive = this.f15821b;
        ArrayList arrayList = activityImmersive.M;
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        arrayList.add(new p2(kVar.f4039c, kVar.f4041d, false));
        for (AppBean appBean : MyDb.get().getAppDao().get_app_canStart()) {
            arrayList.add(new p2(appBean.name, appBean.pack, false));
        }
        for (AppBean appBean2 : MyDb.get().getAppDao().get_app_NoCanStart()) {
            try {
                ActivityInfo[] activityInfoArr = com.yunpan.appmanage.util.j.f4033a.f4037b.getPackageInfo(appBean2.pack, 1).activities;
                if (activityInfoArr != null) {
                    int length = activityInfoArr.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= length) {
                            break;
                        }
                        if (activityInfoArr[i10].exported) {
                            arrayList.add(new p2(appBean2.name, appBean2.pack, false));
                            break;
                        }
                        i10++;
                    }
                }
            } catch (PackageManager.NameNotFoundException e7) {
                e7.printStackTrace();
            }
        }
        try {
            String string = Settings.Global.getString(activityImmersive.getContentResolver(), "policy_control");
            if (string != null) {
                strA = string;
            }
        } catch (Exception unused) {
            fa.b0.f5652a.getClass();
            fa.a0 a0VarH = a2.w0.h("settings get global policy_control");
            if (a0VarH.f5648a == 0) {
                strA = a0VarH.a();
            }
        }
        bVar.f(strA);
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f15820a) {
            case 1:
                ActivityImmersive activityImmersive = this.f15821b;
                activityImmersive.I = i10;
                if (activityImmersive.L != 2) {
                    ((p2) activityImmersive.H.t(i10)).f15877c = !((p2) activityImmersive.H.t(i10)).f15877c;
                    activityImmersive.H.e(i10);
                    int i11 = activityImmersive.L;
                    String strL = i11 == 1 ? "immersive.full=" : i11 == 3 ? "immersive.status=" : i11 == 4 ? "immersive.navigation=" : "";
                    Iterator it = activityImmersive.M.iterator();
                    int i12 = 0;
                    while (it.hasNext()) {
                        p2 p2Var = (p2) it.next();
                        if (p2Var.f15877c) {
                            strL = g.b.l(p2Var.f15876b, ",", g.b.m(strL));
                        } else {
                            i12++;
                        }
                    }
                    if (i12 == 0) {
                        int i13 = activityImmersive.L;
                        if (i13 == 1) {
                            strL = "immersive.full=*";
                        } else if (i13 == 3) {
                            strL = "immersive.status=*";
                        } else if (i13 == 4) {
                            strL = "immersive.navigation=*";
                        }
                    }
                    activityImmersive.x(strL);
                    break;
                } else {
                    activityImmersive.K.show();
                    break;
                }
            default:
                ActivityImmersive activityImmersive2 = this.f15821b;
                int i14 = activityImmersive2.L;
                if (i14 != i10) {
                    ((x9.j1) activityImmersive2.F.t(i14)).f18249b = false;
                    activityImmersive2.F.e(activityImmersive2.L);
                    activityImmersive2.L = i10;
                    ((x9.j1) activityImmersive2.F.t(i10)).f18249b = true;
                    activityImmersive2.F.e(activityImmersive2.L);
                    activityImmersive2.G.stopScroll();
                    ArrayList arrayList = activityImmersive2.M;
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        p2 p2Var2 = (p2) it2.next();
                        p2Var2.f15877c = false;
                        p2Var2.f15878d = 0;
                    }
                    activityImmersive2.H.E(arrayList);
                    activityImmersive2.x("null");
                    int i15 = activityImmersive2.L;
                    if (i15 != 0) {
                        if (i15 != 2) {
                            activityImmersive2.C.setText("在下面选中要实行此模式的应用");
                            activityImmersive2.D.setVisibility(8);
                            activityImmersive2.G.setVisibility(0);
                            break;
                        } else {
                            activityImmersive2.C.setText("下面点击应用进行单独设置模式");
                            activityImmersive2.D.setVisibility(8);
                            activityImmersive2.G.setVisibility(0);
                            break;
                        }
                    } else {
                        activityImmersive2.C.setText("简要说明：");
                        activityImmersive2.D.setVisibility(0);
                        activityImmersive2.G.setVisibility(8);
                        break;
                    }
                }
                break;
        }
    }
}
