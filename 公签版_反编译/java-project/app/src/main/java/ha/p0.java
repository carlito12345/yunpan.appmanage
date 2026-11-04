package ha;

import android.graphics.Bitmap;
import android.os.Build;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.DownProgressBean;
import com.yunpan.appmanage.bean.LogcatBean;
import com.yunpan.appmanage.bean.NamePackBoolSelectBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.view.MyProgressViewTest;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class p0 extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7561b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7562c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p0(int i10, Object obj) {
        super(28);
        this.f7561b = i10;
        this.f7562c = obj;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        String strL = "";
        Object obj = this.f7562c;
        switch (this.f7561b) {
            case 6:
                h4 h4Var = (h4) obj;
                h4Var.r.setVisibility(8);
                h4Var.b("失败：" + th2.getMessage(), R.drawable.tp_noroot, true);
                break;
            case 8:
                b5 b5Var = (b5) obj;
                b5Var.f6794t.setVisibility(8);
                b5Var.b("失败：" + th2.getMessage(), R.drawable.tp_noroot, true);
                break;
            case 9:
                z5 z5Var = (z5) obj;
                if (z5Var.f8137h.filePath.startsWith(fa.g0.f5682a.d())) {
                    strL = "不能修改SD卡里的文件权限";
                } else {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                    if (!kVar.f4073v.isEmpty()) {
                        Iterator it = kVar.f4073v.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (z5Var.f8137h.filePath.startsWith((String) it.next())) {
                                    strL = "不能修改U盘里的文件权限";
                                }
                            }
                        }
                    }
                }
                if (strL.isEmpty()) {
                    strL = g.b.l(z5Var.f8137h.isDirectory ? "目录" : "文件", "权限", new StringBuilder("无法修改此"));
                }
                com.yunpan.appmanage.util.a0.u(strL);
                z5Var.dismiss();
                break;
            case 10:
                com.yunpan.appmanage.util.a0.s("" + th2.getMessage(), false);
                ((s5) obj).f7734h.setText("连接");
                break;
            case 12:
                th2.printStackTrace();
                com.yunpan.appmanage.util.a0.t("出错：" + th2.getMessage());
                break;
            case 14:
                k9 k9Var = (k9) obj;
                k9Var.f7324n.setVisibility(8);
                k9Var.b("失败：" + th2.getMessage(), R.drawable.tp_noroot, true);
                break;
            case 17:
                za zaVar = (za) obj;
                zaVar.f8169j.setVisibility(8);
                zaVar.dismiss();
                break;
            case 18:
                nb nbVar = (nb) obj;
                nbVar.f7485s.setVisibility(8);
                nbVar.b("失败：" + th2.getMessage(), R.drawable.tp_noroot, true);
                break;
            case 20:
                vb vbVar = (vb) obj;
                vbVar.r.setVisibility(8);
                vbVar.b("失败：" + th2.getMessage(), R.drawable.tp_noroot, true);
                break;
            case 21:
                com.yunpan.appmanage.util.a0.s("" + th2.getMessage(), false);
                ((w) obj).f7971j.setText("连接");
                break;
            case 22:
                com.yunpan.appmanage.util.a0.s("" + th2.getMessage(), false);
                ((TextView) ((s5) obj).f7735i).setText("连接");
                break;
            case 25:
                z6 z6Var = (z6) obj;
                ((TextView) z6Var.f8154j).setText(String.valueOf(th2.getMessage()));
                ((LinearLayout) z6Var.f8155k).setVisibility(0);
                break;
            case 26:
                com.yunpan.appmanage.util.a0.s("" + th2.getMessage(), false);
                ((se) obj).l.setText("连接");
                break;
            case 27:
                w wVar = (w) obj;
                ((TextView) wVar.f7974n).setText("重新尝试");
                wVar.f7971j.setText("失败：" + th2.getMessage());
                com.yunpan.appmanage.util.a0.t("下载失败：" + th2.getMessage());
                break;
            case 28:
                com.yunpan.appmanage.util.a0.s("" + th2.getMessage(), false);
                ((ye) obj).f8111h.setText("登录");
                break;
            case 29:
                ff ffVar = (ff) obj;
                ffVar.r.setVisibility(8);
                ffVar.b("失败：" + th2.getMessage(), R.drawable.tp_noroot, true);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f7561b) {
            case 0:
                try {
                    ((r0) this.f7562c).f7652h.E((List) obj);
                    break;
                } catch (Exception unused) {
                    return;
                }
            case 1:
                List list = (List) obj;
                if (list.isEmpty()) {
                    com.yunpan.appmanage.util.a0.t("没有找到视频文件");
                    break;
                } else {
                    x0 x0Var = (x0) this.f7562c;
                    new b6(x0Var.f6724a, x0Var.f6725b, list, new a1.d(8, this)).show();
                    break;
                }
            case 3:
                try {
                    ((q2) this.f7562c).f7602h.E((List) obj);
                    break;
                } catch (Exception unused2) {
                    return;
                }
            case 4:
                try {
                    ((t2) this.f7562c).f7783h.E((List) obj);
                    break;
                } catch (Exception unused3) {
                    return;
                }
            case 6:
                List list2 = (List) obj;
                h4 h4Var = (h4) this.f7562c;
                h4Var.r.setVisibility(8);
                if (list2.size() == 0) {
                    h4Var.b("没有其它目录", R.drawable.tp_nofile, true);
                    break;
                } else {
                    h4Var.f7148k.E(list2);
                    break;
                }
            case 7:
                ((t4) this.f7562c).f7793j.setText((String) obj);
                break;
            case 8:
                List list3 = (List) obj;
                b5 b5Var = (b5) this.f7562c;
                b5Var.f6794t.setVisibility(8);
                if (list3.isEmpty()) {
                    b5Var.b("没有其它目录", R.drawable.tp_nofile, true);
                    break;
                } else {
                    b5Var.f6789m.E(list3);
                    break;
                }
            case 11:
                if (obj instanceof String) {
                    ((n6) this.f7562c).f7468j.q((String) obj);
                    break;
                }
                break;
            case 12:
                ((x9.o2) this.f7562c).q((x9.k5) obj);
                break;
            case 13:
                ((j7) this.f7562c).f7272h.setImageBitmap((Bitmap) obj);
                break;
            case 14:
                List list4 = (List) obj;
                k9 k9Var = (k9) this.f7562c;
                k9Var.f7324n.setVisibility(8);
                if (list4.size() == 0) {
                    k9Var.b("空目录", R.drawable.tp_nofile, true);
                    break;
                } else {
                    k9Var.f7321j.E(list4);
                    break;
                }
            case 15:
                if (obj instanceof LogcatBean) {
                    ba baVar = (ba) this.f7562c;
                    baVar.f6811i.q((LogcatBean) obj);
                    baVar.f6813k.setText(String.valueOf(baVar.f6811i.b()));
                    break;
                }
                break;
            case 16:
                try {
                    ((ma) this.f7562c).f7438h.E((List) obj);
                    break;
                } catch (Exception unused4) {
                    return;
                }
            case 17:
                za zaVar = (za) this.f7562c;
                zaVar.f8169j.setVisibility(8);
                zaVar.l.E((List) obj);
                if (zaVar.l.b() == 0) {
                    com.yunpan.appmanage.util.a0.w("此应用无需管理权限");
                    zaVar.dismiss();
                    break;
                }
                break;
            case 18:
                List list5 = (List) obj;
                nb nbVar = (nb) this.f7562c;
                nbVar.f7485s.setVisibility(8);
                if (list5.isEmpty()) {
                    nbVar.b("没有其它目录", R.drawable.tp_nofile, true);
                    break;
                } else {
                    nbVar.f7480k.E(list5);
                    break;
                }
            case 19:
                ArrayList arrayList = new ArrayList();
                Iterator it = ((List) obj).iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    tb tbVar = (tb) this.f7562c;
                    if (zHasNext) {
                        AppBean appBean = (AppBean) it.next();
                        String str = appBean.name;
                        String str2 = appBean.pack;
                        arrayList.add(new NamePackBoolSelectBean(str, str2, appBean.isSystem, tbVar.f7832k.contains(str2)));
                    } else {
                        try {
                            tbVar.f7829h.E(arrayList);
                            break;
                        } catch (Exception unused5) {
                            return;
                        }
                    }
                }
            case 20:
                List list6 = (List) obj;
                vb vbVar = (vb) this.f7562c;
                vbVar.r.setVisibility(8);
                if (list6.isEmpty()) {
                    vbVar.b("没有其它目录", R.drawable.tp_nofile, true);
                    break;
                } else {
                    vbVar.f7952m.E(list6);
                    break;
                }
            case 23:
                md mdVar = (md) this.f7562c;
                new qd(mdVar.f6724a, mdVar.f6725b, (gh.a) obj).show();
                mdVar.dismiss();
                break;
            case 24:
                ((TextView) ((z6) ((p0) this.f7562c).f7562c).f8154j).setText(String.valueOf(obj));
                break;
            case 25:
                boolean z = obj instanceof Integer;
                z6 z6Var = (z6) this.f7562c;
                if (z) {
                    ((MyProgressViewTest) z6Var.f8153i).setCurrentCount(r7.intValue());
                    TextView textView = (TextView) z6Var.f8154j;
                    textView.setText(((Integer) obj).intValue() + "%");
                    break;
                } else {
                    ((MyProgressViewTest) z6Var.f8153i).setCurrentCount(100.0f);
                    ((TextView) z6Var.f8154j).setText("下载完成，安装中");
                    break;
                }
            case 27:
                DownProgressBean downProgressBean = (DownProgressBean) obj;
                w wVar = (w) this.f7562c;
                ((MyProgressViewTest) wVar.f7973m).setCurrentCount(downProgressBean.bfb);
                wVar.f7971j.setText("下载中：" + downProgressBean.bfb + "%   " + downProgressBean.downSize);
                break;
            case 29:
                ff ffVar = (ff) this.f7562c;
                ffVar.r.setVisibility(8);
                List list7 = (List) obj;
                for (int size = list7.size() - 1; size >= 0; size--) {
                    if (!((WpPathBean) list7.get(size)).is_dir) {
                        list7.remove(size);
                    }
                }
                if (list7.isEmpty()) {
                    ffVar.b("没有其它目录", R.drawable.tp_nofile, true);
                    break;
                } else {
                    ffVar.f7065k.E(list7);
                    break;
                }
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f7561b) {
            case 17:
                ((za) this.f7562c).f8169j.setVisibility(0);
                break;
            case 24:
                ((TextView) ((z6) ((p0) this.f7562c).f7562c).f8154j).setText("下载完成，安装中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        String strK;
        int i10 = 0;
        int i11 = 2;
        int i12 = 1;
        Object obj = this.f7562c;
        switch (this.f7561b) {
            case 2:
                ((g1) obj).f7078i.setText("逐一测试喇叭(请仔细聆听，自行甄别)");
                break;
            case 5:
                ((j3) obj).f7242k.setText("测试通道");
                break;
            case 9:
                com.yunpan.appmanage.util.a0.w("修改完成");
                ((z5) obj).dismiss();
                break;
            case 10:
                s5 s5Var = (s5) obj;
                s5Var.dismiss();
                com.yunpan.appmanage.util.a0.v("连接成功", true);
                ((i6) s5Var.f7736j).a();
                break;
            case 11:
                ((n6) obj).f7466h.setText("监听日志");
                break;
            case 15:
                ((ba) obj).f6809g.setText("开始监听");
                break;
            case 21:
                w wVar = (w) obj;
                wVar.dismiss();
                com.yunpan.appmanage.util.a0.v("连接成功", true);
                ((ic) wVar.l).a();
                break;
            case 22:
                s5 s5Var2 = (s5) obj;
                s5Var2.dismiss();
                com.yunpan.appmanage.util.a0.v("连接成功", true);
                ((oc) s5Var2.f7737k).a();
                break;
            case 25:
                com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                if (wVar2.T != 2 && wVar2.f4112c0 != 3) {
                    z6 z6Var = (z6) obj;
                    if (!wVar2.f4152y) {
                        a2.w0 w0Var = fa.b0.f5652a;
                        w0Var.getClass();
                        if (a2.w0.Q() && z6Var.l) {
                            String str = z6Var.f8152h;
                            w0Var.f348d = new me(this, i12);
                            u9.d.f15554a.execute(new fa.u(w0Var, str, i12));
                            break;
                        }
                    }
                    if (!z6Var.l) {
                        a2.w0 w0Var2 = fa.b0.f5652a;
                        w0Var2.getClass();
                        if (a2.w0.P()) {
                            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                            if (com.yunpan.appmanage.util.j.f4033a.f4058m) {
                                String str2 = z6Var.f8152h;
                                w0Var2.f348d = new me(this, i11);
                                u9.d.f15554a.execute(new fa.u(w0Var2, str2, i12));
                                break;
                            }
                        }
                    }
                    if (wVar2.f4112c0 != 0 && (z6Var.l || Build.VERSION.SDK_INT < 21)) {
                        com.bumptech.glide.c.I(z6Var.f6725b, z6Var.f8152h);
                        break;
                    } else {
                        com.yunpan.appmanage.util.a0.v("安装中", true);
                        ma.h.f11033a.c(z6Var.f8152h, new jd(i12));
                        break;
                    }
                } else {
                    new mc.c(i10, new me(this, i10)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(24, this));
                    break;
                }
                break;
            case 26:
                se seVar = (se) obj;
                seVar.dismiss();
                com.yunpan.appmanage.util.a0.v("连接成功", true);
                seVar.f7769h.a();
                break;
            case 27:
                w wVar3 = (w) obj;
                String str3 = (String) wVar3.f7976q;
                String strSubstring = ((WpPathBean) wVar3.l).name;
                if (strSubstring.length() > 80) {
                    strSubstring = strSubstring.substring(strSubstring.length() - 80, strSubstring.length());
                }
                int i13 = ((x9.n5) wVar3.f7972k).f18290a;
                if ((i13 == 2 || i13 == 20 || i13 == 21) && ((WpPathBean) wVar3.l).is_dir) {
                    strK = str3 + "/" + strSubstring + ".rar";
                } else {
                    strK = g.b.k(str3, "/", strSubstring);
                }
                String strReplace = strK.replace("//", "/");
                h2 h2Var = (h2) wVar3.f7975p;
                ua.i9 i9Var = (ua.i9) h2Var.f7140c;
                if (h2Var.f7139b) {
                    i9Var.s(strReplace);
                } else {
                    i9Var.n((x9.w3) g.b.d(i9Var.f15756x, 1), false);
                }
                wVar3.dismiss();
                Toaster.show((CharSequence) "下载完成");
                break;
            case 28:
                ye yeVar = (ye) obj;
                yeVar.dismiss();
                com.yunpan.appmanage.util.a0.v("登录成功", true);
                yeVar.f8110g.c();
                break;
        }
    }

    private final void Y() {
    }

    private final void Z() {
    }

    private final void a0() {
    }

    private final void b0() {
    }

    private final void c0() {
    }

    private final void d0() {
    }

    private final void e0(Throwable th2) {
    }

    private final void f0(Object obj) {
    }

    private final void g0(Object obj) {
    }
}
