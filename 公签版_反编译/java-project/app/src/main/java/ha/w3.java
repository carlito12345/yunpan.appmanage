package ha;

import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.db.MyDb;
import java.io.File;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

/* loaded from: classes.dex */
public final /* synthetic */ class w3 implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7995a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y3 f7996b;

    public /* synthetic */ w3(y3 y3Var, int i10) {
        this.f7995a = i10;
        this.f7996b = y3Var;
    }

    @Override // ec.d
    public void g(mc.b bVar) throws Exception {
        switch (this.f7995a) {
            case 1:
                y3 y3Var = this.f7996b;
                String str = y3Var.f8078g;
                boolean zIsEmpty = str.isEmpty();
                HashMap map = y3Var.f8080i;
                if (zIsEmpty) {
                    for (String str2 : map.keySet()) {
                        File file = new File(y3Var.f6725b.getFilesDir().getPath() + "/" + ((String) map.get(str2)));
                        if (com.yunpan.appmanage.util.a0.f(file) && file.length() > 25) {
                            bVar.f(new x9.x0(str2, true));
                        }
                    }
                } else {
                    try {
                        y3Var.f8079h = d.b.b0(q4.a.J(new File(str))).g();
                        int i10 = 0;
                        for (String str3 : map.keySet()) {
                            if (y3Var.f8079h.f19480a.containsKey(str3)) {
                                i10++;
                                bVar.f(new x9.x0(str3, true));
                            }
                        }
                        if (i10 == 0) {
                            throw new Exception("错误的配置文件");
                        }
                    } catch (Exception e7) {
                        com.yunpan.appmanage.util.a0.u("文件格式错误");
                        bVar.d(e7);
                        return;
                    }
                }
                bVar.b();
                break;
            default:
                StringBuilder sb2 = new StringBuilder();
                y3 y3Var2 = this.f7996b;
                sb2.append(y3Var2.f6725b.getFilesDir().getPath());
                sb2.append("/");
                String string = sb2.toString();
                boolean zIsEmpty2 = y3Var2.f8078g.isEmpty();
                HashMap map2 = y3Var2.f8080i;
                int i11 = 0;
                if (zIsEmpty2) {
                    z7.s sVar = new z7.s();
                    for (x9.x0 x0Var : y3Var2.l.v()) {
                        if (x0Var.f18384b) {
                            try {
                                PrintStream printStream = System.out;
                                printStream.getClass();
                                sVar.j(x0Var.f18383a, d.b.b0(q4.a.J(new File(string + ((String) map2.get(x0Var.f18383a))))));
                                i11++;
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    }
                    if (i11 == 0) {
                        Toaster.show((CharSequence) "请选择要导出的配置");
                    } else {
                        fa.h0 h0Var = fa.g0.f5682a;
                        if (h0Var.d().isEmpty()) {
                            Toaster.show((CharSequence) "没有内部存储(SD卡)无法保存配置");
                        } else {
                            new File(g.b.g(h0Var, new StringBuilder(), "/Download")).mkdir();
                            String str4 = h0Var.d() + "/Download/管家配置" + new SimpleDateFormat("MM月dd日HH时mm分").format(new Date()) + ".json";
                            q4.a.M(new File(str4), sVar.toString());
                            MyDb.get().lambda$addFile_thread$1(str4);
                            com.yunpan.appmanage.util.a0.w("已保存在Download目录");
                        }
                    }
                } else {
                    for (x9.x0 x0Var2 : y3Var2.l.v()) {
                        if (x0Var2.f18384b) {
                            i11++;
                            StringBuilder sbM = g.b.m(string);
                            sbM.append((String) map2.get(x0Var2.f18383a));
                            q4.a.M(new File(sbM.toString()), y3Var2.f8079h.o(x0Var2.f18383a).toString());
                        }
                    }
                    if (i11 == 0) {
                        Toaster.show((CharSequence) "请选择要导入的配置");
                    } else {
                        com.yunpan.appmanage.util.a0.w("导入成功！请重启管家，重启自动化任务！");
                        com.yunpan.appmanage.util.v.f4106a.j(AppStart.f3772h);
                        wa.t.f17728a.b(AppStart.f3772h);
                    }
                }
                bVar.b();
                break;
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        y3 y3Var = this.f7996b;
        ((x9.x0) y3Var.l.t(i10)).f18384b = !((x9.x0) y3Var.l.t(i10)).f18384b;
        y3Var.l.e(i10);
    }
}
