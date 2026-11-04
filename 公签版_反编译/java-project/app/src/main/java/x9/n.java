package x9;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.AppDetailHistoryLogBean;
import com.yunpan.appmanage.bean.AppHistoryLogBean;
import com.yunpan.appmanage.bean.PresentationBean;
import com.yunpan.appmanage.bean.StackBean;
import ha.ze;
import java.io.File;
import java.text.DecimalFormat;
import java.util.List;

/* loaded from: classes.dex */
public final class n extends c6.b {

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f18283i;

    /* renamed from: j, reason: collision with root package name */
    public final Context f18284j;

    public n(da.g gVar, int i10) {
        this.f18283i = i10;
        switch (i10) {
            case 1:
                this.f18284j = gVar;
                this.f2874h.put(1, new q(this));
                this.f2874h.put(2, new p(this));
                break;
            case 2:
                this.f18284j = gVar;
                this.f2874h.put(1, new z3(this));
                this.f2874h.put(2, new y3(this));
                break;
            case 3:
                this.f18284j = gVar;
                this.f2874h.put(1, new d4(this));
                this.f2874h.put(2, new c4(this));
                break;
            default:
                this.f18284j = gVar;
                this.f2874h.put(1, new k(this));
                this.f2874h.put(2, new j(this));
                break;
        }
    }

    public void G(h6.a aVar, AppDetailHistoryLogBean appDetailHistoryLogBean) {
        if (appDetailHistoryLogBean.timeStamp == 0) {
            aVar.c(R.id.v_name, appDetailHistoryLogBean.timeStr);
            return;
        }
        aVar.c(R.id.v_time, appDetailHistoryLogBean.timeStr);
        aVar.c(R.id.v_pack, appDetailHistoryLogBean.className.isEmpty() ? appDetailHistoryLogBean.packageName : appDetailHistoryLogBean.className);
        TextView textView = (TextView) aVar.a(R.id.v_state);
        textView.setText(appDetailHistoryLogBean.state);
        boolean zEquals = appDetailHistoryLogBean.state.equals("进入页面");
        da.g gVar = (da.g) this.f18284j;
        if (zEquals) {
            textView.setTextColor(gVar.getResources().getColor(R.color.color_3));
        } else if (appDetailHistoryLogBean.state.equals("离开页面") || appDetailHistoryLogBean.state.equals("亮屏")) {
            textView.setTextColor(gVar.getResources().getColor(R.color.color_FFFFFF));
        } else if (appDetailHistoryLogBean.state.equals("息屏")) {
            textView.setTextColor(gVar.getResources().getColor(R.color.color_10));
        } else if (appDetailHistoryLogBean.state.startsWith("关机")) {
            textView.setTextColor(gVar.getResources().getColor(R.color.color_theme));
        } else {
            textView.setTextColor(gVar.getResources().getColor(R.color.color_5));
        }
        aVar.c(R.id.v_state, appDetailHistoryLogBean.state);
    }

    public void H(h6.a aVar, AppHistoryLogBean appHistoryLogBean) {
        aVar.c(R.id.v_name, appHistoryLogBean.name);
        if (appHistoryLogBean.packageName.isEmpty()) {
            return;
        }
        aVar.c(R.id.v_time_start_to_end, "使用时段：" + appHistoryLogBean.time_start_str + " - " + appHistoryLogBean.time_end_str);
        StringBuilder sb2 = new StringBuilder("用了：");
        sb2.append(appHistoryLogBean.time_str);
        aVar.c(R.id.v_time, sb2.toString());
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        da.g gVar = (da.g) this.f18284j;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(appHistoryLogBean.packageName, ".png", sb3)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
    }

    public void I(h6.a aVar, PresentationBean presentationBean) {
        aVar.c(R.id.v_name, presentationBean.name);
        if (presentationBean.packageName.isEmpty()) {
            return;
        }
        aVar.c(R.id.v_class, presentationBean.packageName);
        aVar.c(R.id.v_state, presentationBean.mDisplayId == 0 ? "在主屏" : "在副屏");
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        da.g gVar = (da.g) this.f18284j;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(presentationBean.packageName, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
    }

    public void J(h6.a aVar, StackBean stackBean) {
        aVar.c(R.id.v_name, stackBean.appName);
        if (stackBean.packageName.isEmpty()) {
            return;
        }
        aVar.c(R.id.v_class, stackBean.packageName);
        if (stackBean.displayBounds.equals(stackBean.appBounds)) {
            aVar.c(R.id.v_state, "在屏幕" + stackBean.displayId + "中");
        } else {
            aVar.c(R.id.v_state, "在屏幕" + stackBean.displayId + "(" + stackBean.displayBounds + ")  app(" + stackBean.appBounds + ")");
        }
        ImageView imageView = (ImageView) aVar.a(R.id.v_ico);
        da.g gVar = (da.g) this.f18284j;
        com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(gVar);
        pVarF.getClass();
        pVarF.o(new com.bumptech.glide.n(imageView));
        com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(gVar);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
        com.bumptech.glide.m mVarS = pVarF2.s(new File(g.b.l(stackBean.packageName, ".png", sb2)));
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        mVarS.a(com.yunpan.appmanage.util.j.f4033a.f4051i).D(imageView);
    }

    public void K(h6.a aVar, w3 w3Var) {
        int i10;
        ImageView imageView;
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        int i11 = kVar.R;
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        int i12 = wVar.f4118f0;
        if (i12 == 3 || i12 == 5) {
            i11 = kVar.S;
            i10 = kVar.T;
        } else {
            i10 = i11;
        }
        if (w3Var == null) {
            return;
        }
        if (w3Var.f18372i) {
            aVar.b(R.id.v_select, R.drawable.tick0);
        } else {
            aVar.b(R.id.v_select, 0);
        }
        if (wVar.f4118f0 <= 1) {
            aVar.d(R.id.v_item_state, false);
        }
        ImageView imageView2 = (ImageView) aVar.a(R.id.v_file_image);
        imageView2.setImageDrawable(null);
        ImageView imageView3 = (ImageView) aVar.a(R.id.v_file_ico);
        imageView3.setImageDrawable(null);
        ImageView imageView4 = (ImageView) aVar.a(R.id.v_file_ico_xiao);
        imageView4.setImageDrawable(null);
        boolean z = w3Var.f18366c;
        Context context = this.f18284j;
        if (z) {
            if (w3Var.f18364a.equals("Download") && fa.g0.f5682a.d().equals(w3Var.f18368e)) {
                imageView3.setImageResource(R.drawable.tp_download1);
            } else {
                imageView3.setImageResource(R.drawable.folder1);
            }
            aVar.c(R.id.v_file_name, w3Var.f18364a);
            String string = w3Var.f18371h;
            long j10 = w3Var.f18367d;
            if (j10 == -2) {
                string = g.b.j(string, "  无权查看");
            } else if (j10 != -1) {
                StringBuilder sbB = d0.f.b(string, "  ");
                sbB.append(p000if.a.D0(w3Var.f18367d));
                string = sbB.toString();
            }
            if (!w3Var.l.isEmpty()) {
                com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(context);
                pVarF.getClass();
                pVarF.o(new com.bumptech.glide.n(imageView4));
                com.bumptech.glide.m mVarA = com.bumptech.glide.b.f(context).u("file://" + wVar.f4107a + w3Var.l + ".png").a(w5.e.z(new o5.x(8)));
                int i13 = kVar.R;
                ((com.bumptech.glide.m) mVarA.o(i13, i13)).D(imageView4);
                string = string + "    " + w3Var.f18375m;
            }
            int i14 = wVar.f4118f0;
            if (i14 <= 1 || i14 == 5) {
                aVar.c(R.id.v_file_attribute, string);
                return;
            }
            return;
        }
        aVar.c(R.id.v_file_name, w3Var.f18364a);
        int i15 = wVar.f4118f0;
        if (i15 <= 1 || i15 == 5) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(w3Var.f18371h);
            sb2.append("  ");
            imageView = imageView3;
            sb2.append(p000if.a.D0(w3Var.f18367d));
            aVar.c(R.id.v_file_attribute, sb2.toString());
        } else {
            imageView = imageView3;
        }
        String lowerCase = w3Var.f18364a.toLowerCase();
        int iLastIndexOf = w3Var.f18364a.lastIndexOf(".");
        if (iLastIndexOf != -1) {
            lowerCase = w3Var.f18364a.substring(iLastIndexOf);
        }
        if (!w3Var.f18364a.contains(".")) {
            imageView.setImageResource(R.drawable.tp_file_wz);
            return;
        }
        if (p000if.a.c0(w3Var.f18364a)) {
            if (wVar.f4128k0) {
                imageView2.setImageResource(R.drawable.tp);
                return;
            }
            com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(context);
            pVarF2.getClass();
            pVarF2.o(new com.bumptech.glide.n(imageView2));
            ((com.bumptech.glide.m) ((com.bumptech.glide.m) ((com.bumptech.glide.m) com.bumptech.glide.b.f(context).u("file://" + w3Var.f18365b).o(i11, i10)).t(new la.a(w3Var.f18365b + w3Var.f18371h))).g(R.drawable.tp)).D(imageView2);
            return;
        }
        if (p000if.a.X(w3Var.f18364a)) {
            if (w3Var.f18367d < 8) {
                imageView.setImageResource(R.drawable.tp_file_wz);
                return;
            }
            if (wVar.f4118f0 <= 1) {
                aVar.c(R.id.v_item_state, "安装");
                aVar.d(R.id.v_item_state, true);
            }
            kVar.f4048g0.submit(new a2.e0(this, w3Var, imageView, 20));
            return;
        }
        if (p000if.a.f0(w3Var.f18364a)) {
            imageView.setImageResource(R.drawable.tp_music1);
            return;
        }
        if (p000if.a.j0(w3Var.f18364a)) {
            imageView.setImageResource(R.drawable.tp_video1);
            imageView4.setImageResource(R.drawable.tp_bf6);
            q4.a.y(w3Var.f18365b).b(new ze(this, imageView2, imageView, 7));
            return;
        }
        if (za.g.g(lowerCase)) {
            imageView.setImageResource(R.drawable.tp_rar);
            return;
        }
        if (lowerCase.endsWith(".txt")) {
            imageView.setImageResource(R.drawable.tp_txt);
            return;
        }
        if (lowerCase.endsWith(".doc")) {
            imageView.setImageResource(R.drawable.doc);
            return;
        }
        if (lowerCase.endsWith(".docx")) {
            imageView.setImageResource(R.drawable.docx);
            return;
        }
        if (lowerCase.endsWith(".xls")) {
            imageView.setImageResource(R.drawable.xls);
            return;
        }
        if (lowerCase.endsWith(".xlsx")) {
            imageView.setImageResource(R.drawable.xlsx);
            return;
        }
        if (lowerCase.endsWith(".psd")) {
            imageView.setImageResource(R.drawable.psd);
            return;
        }
        if (lowerCase.endsWith(".iso")) {
            imageView.setImageResource(R.drawable.iso);
            return;
        }
        if (lowerCase.endsWith(".ttf")) {
            imageView.setImageResource(R.drawable.ttf);
            return;
        }
        if (lowerCase.endsWith(".dll")) {
            imageView.setImageResource(R.drawable.dll);
            return;
        }
        if (lowerCase.endsWith(".exe")) {
            imageView.setImageResource(R.drawable.exe);
            return;
        }
        if (lowerCase.endsWith(".xml")) {
            imageView.setImageResource(R.drawable.xml);
            return;
        }
        if (lowerCase.endsWith(".csv")) {
            imageView.setImageResource(R.drawable.tp_csv);
            return;
        }
        if (lowerCase.endsWith(".db")) {
            imageView.setImageResource(R.drawable.db);
            return;
        }
        if (lowerCase.endsWith(".json")) {
            imageView.setImageResource(R.drawable.json);
            return;
        }
        if (lowerCase.endsWith(".log")) {
            imageView.setImageResource(R.drawable.log);
            return;
        }
        if (lowerCase.endsWith(".asp")) {
            imageView.setImageResource(R.drawable.tp_asp);
            return;
        }
        if (lowerCase.endsWith(".aspx")) {
            imageView.setImageResource(R.drawable.tp_aspx);
            return;
        }
        if (lowerCase.endsWith(".class")) {
            imageView.setImageResource(R.drawable.tp_class);
            return;
        }
        if (lowerCase.endsWith(".css")) {
            imageView.setImageResource(R.drawable.tp_css);
            return;
        }
        if (lowerCase.endsWith(".dex") || lowerCase.endsWith(".odex") || lowerCase.endsWith(".vdex")) {
            imageView.setImageResource(R.drawable.tp_dex);
            return;
        }
        if (lowerCase.endsWith(".html")) {
            imageView.setImageResource(R.drawable.tp_html);
            return;
        }
        if (lowerCase.endsWith(".jar")) {
            imageView.setImageResource(R.drawable.tp_jar);
            return;
        }
        if (lowerCase.endsWith(".java")) {
            imageView.setImageResource(R.drawable.tp_java);
            return;
        }
        if (lowerCase.endsWith(".js")) {
            imageView.setImageResource(R.drawable.tp_js);
            return;
        }
        if (lowerCase.endsWith(".php")) {
            imageView.setImageResource(R.drawable.tp_php);
            return;
        }
        if (lowerCase.endsWith(".py")) {
            imageView.setImageResource(R.drawable.tp_py);
        } else if (lowerCase.endsWith(".gj")) {
            imageView.setImageResource(R.drawable.tp_apk2);
        } else {
            imageView.setImageResource(R.drawable.tp_file_wz);
        }
    }

    @Override // c6.g
    public final int u(int i10, List list) {
        switch (this.f18283i) {
            case 0:
                return ((AppDetailHistoryLogBean) list.get(i10)).timeStamp > 0 ? 1 : 2;
            case 1:
                return ((AppHistoryLogBean) list.get(i10)).packageName.isEmpty() ? 2 : 1;
            case 2:
                return ((StackBean) list.get(i10)).packageName.isEmpty() ? 2 : 1;
            case 3:
                return ((PresentationBean) list.get(i10)).packageName.isEmpty() ? 2 : 1;
            default:
                int i11 = com.yunpan.appmanage.util.v.f4106a.f4118f0;
                if (i11 == 0) {
                    return 1;
                }
                return i11;
        }
    }

    public n(Context context) {
        this.f18283i = 4;
        this.f2874h.put(1, new z1(this));
        this.f2874h.put(2, new y1(this));
        this.f2874h.put(3, new x1(this));
        this.f2874h.put(4, new w1(this));
        this.f2874h.put(5, new v1(this));
        this.f18284j = context;
    }
}
