package ua;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.CycleInterpolator;
import android.widget.TextView;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.ImageData;
import com.yunpan.appmanage.ui.ActivityImage;
import ha.gb;
import ha.hb;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class c8 implements ha.y6, gb, fa.w {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q8 f15619a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15620b;

    public /* synthetic */ c8(q8 q8Var, int i10) {
        this.f15619a = q8Var;
        this.f15620b = i10;
    }

    @Override // ha.gb
    public void a(x9.w3 w3Var) {
        this.f15619a.f15914n.D(this.f15620b, w3Var);
    }

    public void b(String str) {
        int i10 = 8;
        q8 q8Var = this.f15619a;
        q8Var.getClass();
        if (str.equals("打开")) {
            x9.w3 w3Var = q8Var.B;
            if (w3Var.f18366c) {
                q8Var.l.q(w3Var);
                q8Var.f15912k.requestFocus();
                g.b.x(q8Var.l, 1, q8Var.f15912k);
                q8Var.v(q8Var.B, false);
                return;
            }
            return;
        }
        boolean zEquals = str.equals("浏览");
        int i11 = this.f15620b;
        if (zEquals) {
            ArrayList arrayList = new ArrayList();
            int size = 0;
            for (int i12 = 0; i12 < q8Var.f15914n.b(); i12++) {
                if (p000if.a.c0(((x9.w3) q8Var.f15914n.t(i12)).f18364a)) {
                    arrayList.add((x9.w3) q8Var.f15914n.t(i12));
                    if (i12 == i11) {
                        size = arrayList.size() - 1;
                    }
                }
            }
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.j.f4033a.f4076y = new ImageData(size, arrayList);
            q8Var.l(ActivityImage.class);
            return;
        }
        if (str.equals("改名")) {
            new hb(q8Var.f4530f, q8Var.f4529e, q8Var.B, 2, new c8(q8Var, i11)).show();
            return;
        }
        boolean zEquals2 = str.equals("复制");
        ArrayList arrayList2 = q8Var.L;
        if (zEquals2 || str.equals("剪切")) {
            q8Var.K.setVisibility(0);
            TextView textView = q8Var.K;
            StringBuilder sbD = da.b.d("已", str, "：");
            sbD.append(q8Var.B.f18365b);
            textView.setText(sbD.toString());
            q8Var.I.setVisibility(0);
            arrayList2.clear();
            arrayList2.add(q8Var.B);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(q8Var.I, View.TRANSLATION_X.getName(), 0.0f, 20.0f);
            objectAnimatorOfFloat.setDuration(500);
            objectAnimatorOfFloat.setInterpolator(new CycleInterpolator(4));
            objectAnimatorOfFloat.start();
            return;
        }
        if (str.equals("复制到") || str.equals("剪切到")) {
            q8Var.K.setVisibility(8);
            q8Var.I.setVisibility(8);
            arrayList2.clear();
            arrayList2.add(q8Var.B);
            ha.b5 b5Var = new ha.b5(q8Var.f4530f, q8Var.f4529e);
            g6 g6Var = new g6(q8Var, 5, str);
            b5Var.show();
            b5Var.f6795v = g6Var;
            b5Var.f6784g.setText(str);
            String string = b5Var.f6796w.getString("lastDirPath", "");
            boolean zIsEmpty = string.isEmpty();
            x9.g0 g0Var = b5Var.f6788k;
            if (!zIsEmpty) {
                String string2 = b5Var.f6796w.getString("lastRootDirName", "");
                String string3 = b5Var.f6796w.getString("lastRootDirPath", "");
                if (string2.equals("系统根")) {
                    File file = new File(string);
                    while (!file.getPath().equals("/")) {
                        g0Var.p(0, new x9.w3(file.getName(), file.getPath()));
                        file = file.getParentFile();
                        if (file == null) {
                            break;
                        }
                    }
                    g0Var.p(0, new x9.w3("系统根", "/"));
                    b5Var.a();
                    return;
                }
                if (com.yunpan.appmanage.util.a0.g(string)) {
                    File file2 = new File(string);
                    while (!file2.getPath().equals(string3)) {
                        g0Var.p(0, new x9.w3(file2.getName(), file2.getPath()));
                        file2 = file2.getParentFile();
                        if (file2 == null) {
                            break;
                        }
                    }
                    g0Var.p(0, new x9.w3(string2, string3));
                    b5Var.a();
                    return;
                }
            }
            g0Var.q((x9.w3) b5Var.f6786i.t(0));
            b5Var.a();
            return;
        }
        if (str.equals("压缩")) {
            q8Var.o(false);
            return;
        }
        if (str.equals("解压")) {
            q8Var.q(null);
            return;
        }
        if (str.equals("传送")) {
            com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
            if (wVar.f4119g.size() != 1) {
                new ha.r7(q8Var.f4530f, q8Var.f4529e, new d8(q8Var, i10)).show();
                return;
            }
            ArrayList arrayList3 = wVar.f4119g;
            String str2 = ((com.yunpan.appmanage.util.d) arrayList3.get(0)).f4004b;
            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
            if (!str2.equals(com.yunpan.appmanage.util.j.f4033a.f4052i0)) {
                q8Var.E(((com.yunpan.appmanage.util.d) arrayList3.get(0)).f4004b);
                return;
            }
            arrayList3.remove(0);
            Toaster.showLong((CharSequence) ("未找到路由器中其它设备\n需双方都打开" + q8Var.f4529e.getString(R.string.str_gj) + "方可使用传送功能"));
            return;
        }
        if (str.equals("安装") || str.equals("重装")) {
            android.support.v4.media.session.b.s(q8Var.f4530f, q8Var.f4529e, q8Var.f15908g, q8Var.B);
            return;
        }
        if (str.equals("删除")) {
            q8Var.f15908g.c("删除中");
            a2.w0 w0Var = fa.b0.f5652a;
            String str3 = q8Var.B.f18365b;
            w0Var.f347c = new c8(q8Var, i11);
            u9.d.f15554a.execute(new fa.u(w0Var, str3, 4));
            return;
        }
        if (str.equals("目录")) {
            q8Var.f15909h.requestFocus();
            q8Var.l.E(new ArrayList());
            String str4 = q8Var.B.f18365b;
            fa.h0 h0Var = fa.g0.f5682a;
            String strReplace = str4.replace("/storage/emulated/0", h0Var.d());
            String strSubstring = strReplace.substring(0, strReplace.lastIndexOf("/"));
            if (strSubstring.startsWith(h0Var.d())) {
                q8Var.l.q(new x9.w3("内部存储", h0Var.d(), true));
                String strReplace2 = strSubstring.replace(h0Var.d(), "");
                if (!strReplace2.isEmpty()) {
                    String[] strArrSplit = strReplace2.substring(1).split("/");
                    for (int i13 = 0; i13 < strArrSplit.length; i13++) {
                        String string4 = "";
                        for (int i14 = 0; i14 <= i13; i14++) {
                            StringBuilder sbB = d0.f.b(string4, "/");
                            sbB.append(strArrSplit[i14]);
                            string4 = sbB.toString();
                        }
                        q8Var.l.q(new x9.w3(strArrSplit[i13], g.b.g(fa.g0.f5682a, new StringBuilder(), string4), true));
                    }
                }
            } else {
                String[] strArrSplit2 = strSubstring.substring(1).split("/");
                for (int i15 = 0; i15 < strArrSplit2.length; i15++) {
                    String string5 = "";
                    for (int i16 = 0; i16 <= i15; i16++) {
                        StringBuilder sbB2 = d0.f.b(string5, "/");
                        sbB2.append(strArrSplit2[i16]);
                        string5 = sbB2.toString();
                    }
                    q8Var.l.q(new x9.w3(strArrSplit2[i15], da.b.c("/", string5), true));
                }
            }
            q8Var.v((x9.w3) g.b.d(q8Var.l, 1), false);
            g.b.x(q8Var.l, 1, q8Var.f15912k);
            q8Var.f15912k.requestFocus();
        }
    }

    @Override // fa.w
    public void c(String str, boolean z) {
        q8 q8Var = this.f15619a;
        q8Var.f15908g.a();
        if (q8.w(q8Var.B.f18365b)) {
            if (!com.yunpan.appmanage.util.a0.g(q8Var.B.f18365b)) {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.j.f4033a.f4048g0.submit(new g8(0, q8Var));
            } else if (q8Var.B.f18366c) {
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.j.f4033a.f4046f0.submit(new com.yunpan.appmanage.util.z(new File(q8Var.B.f18365b)));
            }
        }
        if (!z) {
            com.yunpan.appmanage.util.a0.s("删除失败：" + str, false);
        } else {
            if (q8Var.f15914n.b() == 1) {
                q8Var.f15912k.requestFocus();
                q8Var.C("没有文件", R.drawable.tp_nofile, true);
            }
            q8Var.f15914n.C(this.f15620b);
        }
    }

    @Override // ha.y6
    public void n(String str, boolean z) {
        q8 q8Var = this.f15619a;
        q8Var.getClass();
        int i10 = this.f15620b;
        if (z) {
            if (!str.isEmpty()) {
                q8Var.B.f18364a = str;
            }
            com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
            x9.w3 w3Var = q8Var.B;
            wVar.getClass();
            try {
                z7.o oVarF = wVar.f4123i.o("CollDirs").f();
                z7.s sVarG = oVarF.l(i10).g();
                sVarG.r("file_name");
                sVarG.m("file_name", w3Var.f18364a);
                oVarF.o(i10, sVarG);
                wVar.f4123i.j("CollDirs", oVarF);
                wVar.m();
            } catch (Exception unused) {
            }
            q8Var.f15914n.D(i10, q8Var.B);
            return;
        }
        com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
        wVar2.getClass();
        try {
            z7.o oVarF2 = wVar2.f4123i.o("CollDirs").f();
            oVarF2.n(i10);
            wVar2.f4123i.j("CollDirs", oVarF2);
            wVar2.m();
        } catch (Exception unused2) {
        }
        if (q8Var.f15914n.b() == 1) {
            q8Var.f15909h.requestFocus();
            int i11 = 0;
            while (true) {
                if (i11 >= q8Var.f15910i.b()) {
                    break;
                }
                if (((x9.w3) q8Var.f15910i.t(i11)).f18364a.equals("收藏栏")) {
                    q8Var.f15910i.C(i11);
                    break;
                }
                i11++;
            }
            q8Var.l.E(new ArrayList());
            q8Var.C("收藏栏为空", R.drawable.tp_nofile, true);
        }
        q8Var.f15914n.C(i10);
    }
}
