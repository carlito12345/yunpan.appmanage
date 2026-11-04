package ua;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameIcoTypeBean;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcat;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcatHelp;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcatSet;
import ha.ia;
import ha.ja;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class k3 implements c6.e, ec.d, ia {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15780a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityKeyMapLogcat f15781b;

    public /* synthetic */ k3(ActivityKeyMapLogcat activityKeyMapLogcat, int i10) {
        this.f15780a = i10;
        this.f15781b = activityKeyMapLogcat;
    }

    @Override // ha.ia
    public void b(int i10) {
        ActivityKeyMapLogcat activityKeyMapLogcat = this.f15781b;
        activityKeyMapLogcat.I.n(i10);
        q4.a.M(new File(activityKeyMapLogcat.A.getFilesDir().getAbsolutePath(), "KeyMapLogcatSuperDiy.json"), activityKeyMapLogcat.I.toString());
        com.yunpan.appmanage.util.a0.w("删除成功");
    }

    @Override // ec.d
    public void g(mc.b bVar) throws IllegalAccessException, Resources.NotFoundException, IOException, IllegalArgumentException, InvocationTargetException {
        z7.o oVar;
        z7.o oVar2;
        int i10 = ActivityKeyMapLogcat.L;
        ActivityKeyMapLogcat activityKeyMapLogcat = this.f15781b;
        da.g gVar = activityKeyMapLogcat.A;
        StringBuilder sb2 = new StringBuilder();
        try {
            InputStream inputStreamOpenRawResource = gVar.getResources().openRawResource(R.raw.key_map_logcat_super_self);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    } else if (!line.isEmpty()) {
                        sb2.append(line);
                    }
                }
                bufferedReader.close();
                if (inputStreamOpenRawResource != null) {
                    inputStreamOpenRawResource.close();
                }
            } catch (Throwable th2) {
                if (inputStreamOpenRawResource != null) {
                    try {
                        inputStreamOpenRawResource.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                }
                throw th2;
            }
        } catch (Exception unused2) {
        }
        try {
            oVar = d.b.b0(sb2.toString()).f();
        } catch (Exception unused3) {
            oVar = new z7.o();
        }
        activityKeyMapLogcat.H = oVar;
        try {
            try {
                oVar2 = d.b.b0(q4.a.J(new File(activityKeyMapLogcat.A.getFilesDir().getAbsolutePath(), "KeyMapLogcatSuperDiy.json"))).f();
            } catch (Exception unused4) {
                oVar2 = new z7.o();
            }
        } catch (Exception unused5) {
            oVar2 = new z7.o();
        }
        activityKeyMapLogcat.I = oVar2;
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f15780a) {
            case 0:
                int i11 = ActivityKeyMapLogcat.L;
                ActivityKeyMapLogcat activityKeyMapLogcat = this.f15781b;
                activityKeyMapLogcat.getClass();
                if (i10 == 0) {
                    activityKeyMapLogcat.finish();
                    break;
                } else if (i10 == 1) {
                    z7.s sVar = activityKeyMapLogcat.G;
                    sVar.k("isOn", Boolean.valueOf(true ^ sVar.o("isOn").b()));
                    x9.t0 t0Var = activityKeyMapLogcat.D;
                    ((NameIcoTypeBean) t0Var.t(i10)).resId = activityKeyMapLogcat.G.o("isOn").b() ? R.drawable.tp_check1 : R.drawable.tp_check2;
                    t0Var.e(i10);
                    q4.a.V(activityKeyMapLogcat.A, activityKeyMapLogcat.G);
                    ta.m.g(activityKeyMapLogcat.A);
                    break;
                } else if (i10 == 2) {
                    activityKeyMapLogcat.x(-1);
                    break;
                } else if (i10 == 3) {
                    new ha.p(activityKeyMapLogcat, activityKeyMapLogcat.A, activityKeyMapLogcat.G).show();
                    break;
                } else if (i10 == 4) {
                    new ha.w1(activityKeyMapLogcat, activityKeyMapLogcat.A, activityKeyMapLogcat.G).show();
                    break;
                } else if (i10 == 5) {
                    if (activityKeyMapLogcat.K == null) {
                        activityKeyMapLogcat.K = view;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (int i12 = 0; i12 < activityKeyMapLogcat.H.f19478a.size(); i12++) {
                        arrayList.add(activityKeyMapLogcat.H.l(i12).g().o("name").i());
                    }
                    for (int i13 = 0; i13 < activityKeyMapLogcat.I.f19478a.size(); i13++) {
                        arrayList.add(activityKeyMapLogcat.I.l(i13).g().o("name").i());
                    }
                    arrayList.add("导入方案(json)");
                    arrayList.add("导出方案(json)");
                    arrayList.add("导出方案(包含操作)");
                    arrayList.add("删除方案");
                    new ja(activityKeyMapLogcat, activityKeyMapLogcat.A, activityKeyMapLogcat.K, arrayList, new ma.b(activityKeyMapLogcat, 23, arrayList)).show();
                    break;
                } else if (i10 != 6) {
                    if (i10 == 7) {
                        Intent intent = new Intent(activityKeyMapLogcat.A, (Class<?>) ActivityKeyMapLogcatSet.class);
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("existsData", activityKeyMapLogcat.F.b() > 0);
                        intent.putExtras(bundle);
                        activityKeyMapLogcat.startActivity(intent);
                        break;
                    } else if (i10 == 8) {
                        Intent intent2 = new Intent(activityKeyMapLogcat.A, (Class<?>) ActivityKeyMapLogcatHelp.class);
                        Bundle bundle2 = new Bundle();
                        bundle2.putBoolean("existsData", activityKeyMapLogcat.F.b() > 0);
                        intent2.putExtras(bundle2);
                        activityKeyMapLogcat.startActivity(intent2);
                        break;
                    }
                } else if (activityKeyMapLogcat.F.b() != 0) {
                    new ha.z6(activityKeyMapLogcat, activityKeyMapLogcat, "确定要删除所有日志映射吗？", "", "确定", "取消", new m3(activityKeyMapLogcat, z ? 1 : 0)).show();
                    break;
                }
                break;
            default:
                int i14 = ActivityKeyMapLogcat.L;
                this.f15781b.x(i10);
                break;
        }
    }
}
