package ta;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.util.a0;
import org.simpleframework.xml.strategy.Name;
import z7.s;

/* loaded from: classes.dex */
public abstract class m {
    public static String a(String str) {
        return g.b.j(str, ".BROADCAST_FRONT_DESK_SERVICE");
    }

    public static void b(Context context, boolean z) {
        try {
            Intent intent = new Intent(context.getPackageName() + ".BROADCAST_TO_ACC");
            intent.setPackage(context.getPackageName());
            intent.putExtra("typeName", "INTERCEPT_KEY_ACC");
            intent.putExtra("bool", z);
            context.sendBroadcast(intent);
        } catch (Exception unused) {
        }
    }

    public static void c(Context context, String str) {
        try {
            Intent intent = new Intent(context.getPackageName() + ".BROADCAST_TO_ACC");
            intent.setPackage(context.getPackageName());
            intent.putExtra("typeName", str);
            context.sendBroadcast(intent);
        } catch (Exception unused) {
        }
    }

    public static void d(Context context, String str) {
        try {
            Intent intent = new Intent(context.getPackageName() + ".BROADCAST_TO_ACTIVITY");
            intent.setPackage(context.getPackageName());
            intent.putExtra("typeName", str);
            context.sendBroadcast(intent);
        } catch (Exception unused) {
        }
    }

    public static void e(Context context) {
        c(context, "UP_AUTO_INIT");
    }

    public static void f(da.g gVar) {
        c(gVar, "UP_INIT_JIE_TU");
    }

    public static void g(Context context) {
        c(context, "UP_KEYMAP_LOGCAT");
    }

    public static void h(AccService accService, s sVar) {
        try {
            Intent intent = new Intent();
            z7.p pVarO = sVar.o("category");
            b8.n nVar = sVar.f19480a;
            if (pVarO != null) {
                for (String str : sVar.o("category").i().trim().replace("，", ",").split(",")) {
                    if (!str.isEmpty()) {
                        intent.addCategory(str);
                    }
                }
            }
            if (nVar.containsKey("action")) {
                intent.setAction(sVar.o("action").i().trim());
            }
            if (nVar.containsKey("package")) {
                String strI = sVar.o("package").i();
                if (strI.equals("null")) {
                    strI = null;
                }
                intent.setPackage(strI);
            }
            if (nVar.containsKey(Name.LABEL)) {
                if (sVar.o(Name.LABEL).i().contains("/")) {
                    ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(sVar.o(Name.LABEL).i());
                    intent.setClassName(componentNameUnflattenFromString.getPackageName(), componentNameUnflattenFromString.getClassName());
                } else {
                    intent.setClassName(sVar.o("package").i(), sVar.o(Name.LABEL).i());
                }
            }
            if (nVar.containsKey("data")) {
                intent.setData(Uri.parse(sVar.o("data").i()));
            }
            if (nVar.containsKey("dataType")) {
                intent.setType(sVar.o("dataType").i());
            }
            if (!nVar.containsKey("flags") || sVar.o("flags").e() <= 0) {
                intent.setFlags(268435456);
            } else {
                intent.setFlags(sVar.o("flags").e());
            }
            if (nVar.containsKey("extras")) {
                z7.o oVarF = sVar.o("extras").f();
                for (int i10 = 0; i10 < oVarF.f19478a.size(); i10++) {
                    s sVarG = oVarF.l(i10).g();
                    int iE = sVarG.o("extraType").e();
                    if (iE == 6) {
                        intent.putExtra(sVarG.o("name").i(), Boolean.valueOf(sVarG.o("value").i()));
                    } else if (iE == 5) {
                        intent.putExtra(sVarG.o("name").i(), Double.valueOf(sVarG.o("value").i()));
                    } else if (iE == 4) {
                        intent.putExtra(sVarG.o("name").i(), Float.valueOf(sVarG.o("value").i()));
                    } else if (iE == 2) {
                        intent.putExtra(sVarG.o("name").i(), Integer.valueOf(sVarG.o("value").i()));
                    } else if (iE == 3) {
                        intent.putExtra(sVarG.o("name").i(), Long.valueOf(sVarG.o("value").i()));
                    } else if (iE == 9) {
                        intent.putExtra(sVarG.o("name").i(), Short.valueOf(sVarG.o("value").i()));
                    } else if (iE == 1) {
                        intent.putExtra(sVarG.o("name").i(), sVarG.o("value").i());
                    }
                }
            }
            int iE2 = sVar.o("sendMode").e();
            int iE3 = sVar.o("sendType").e();
            if (iE2 != 0) {
                p000if.a.x0(iE3 + 1, accService, intent);
                return;
            }
            if (iE3 == 0) {
                accService.startActivity(intent);
                return;
            }
            if (iE3 == 1) {
                accService.sendBroadcast(intent);
            } else if (iE3 == 2) {
                if (Build.VERSION.SDK_INT >= 26) {
                    accService.startForegroundService(intent);
                } else {
                    accService.startService(intent);
                }
            }
        } catch (Exception e7) {
            a0.u("intent发送失败");
            e7.printStackTrace();
        }
    }
}
