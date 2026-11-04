package x9;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import ha.ze;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class f2 extends c6.g {

    /* renamed from: h, reason: collision with root package name */
    public final Context f18227h;

    public f2(Context context) {
        this.f18227h = context;
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        return new h6.a(R.layout.item_file, viewGroup);
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        h6.a aVar = (h6.a) viewHolder;
        w3 w3Var = (w3) obj;
        if (w3Var.f18372i) {
            aVar.b(R.id.v_select, R.drawable.tick0);
        } else {
            aVar.b(R.id.v_select, 0);
        }
        aVar.d(R.id.v_item_state, false);
        ImageView imageView = (ImageView) aVar.a(R.id.v_file_ico_xiao);
        imageView.setImageDrawable(null);
        ImageView imageView2 = (ImageView) aVar.a(R.id.v_file_image);
        imageView2.setImageDrawable(null);
        ImageView imageView3 = (ImageView) aVar.a(R.id.v_file_ico);
        imageView3.setImageDrawable(null);
        boolean z = w3Var.f18366c;
        Context context = this.f18227h;
        if (z) {
            imageView3.setImageResource(R.drawable.folder1);
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
                pVarF.o(new com.bumptech.glide.n(imageView));
                com.bumptech.glide.m mVarA = com.bumptech.glide.b.f(context).u("file://" + com.yunpan.appmanage.util.v.f4106a.f4107a + w3Var.l + ".png").a(w5.e.z(new o5.x(8)));
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                int i11 = com.yunpan.appmanage.util.j.f4033a.R;
                ((com.bumptech.glide.m) mVarA.o(i11, i11)).D(imageView);
                string = string + "    " + w3Var.f18375m;
            }
            aVar.c(R.id.v_file_attribute, string);
            return;
        }
        aVar.c(R.id.v_file_name, w3Var.f18364a);
        aVar.c(R.id.v_file_attribute, w3Var.f18371h + "  " + p000if.a.D0(w3Var.f18367d));
        String strSubstring = w3Var.f18364a;
        int iLastIndexOf = strSubstring.lastIndexOf(".");
        if (iLastIndexOf != -1) {
            strSubstring = w3Var.f18364a.substring(iLastIndexOf);
        }
        if (!w3Var.f18364a.contains(".")) {
            imageView3.setImageResource(R.drawable.tp_file_wz);
            return;
        }
        if (p000if.a.c0(w3Var.f18364a)) {
            if (com.yunpan.appmanage.util.v.f4106a.f4128k0) {
                imageView2.setImageResource(R.drawable.tp);
                return;
            }
            com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(context);
            pVarF2.getClass();
            pVarF2.o(new com.bumptech.glide.n(imageView2));
            com.bumptech.glide.m mVarU = com.bumptech.glide.b.f(context).u("file://" + w3Var.f18365b);
            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
            int i12 = com.yunpan.appmanage.util.j.f4033a.R;
            ((com.bumptech.glide.m) ((com.bumptech.glide.m) ((com.bumptech.glide.m) mVarU.o(i12, i12)).t(new la.a(w3Var.f18365b + w3Var.f18371h))).g(R.drawable.tp)).D(imageView2);
            return;
        }
        if (p000if.a.X(w3Var.f18364a)) {
            if (w3Var.f18367d < 8) {
                imageView3.setImageResource(R.drawable.tp_file_wz);
                return;
            }
            aVar.c(R.id.v_item_state, "安装");
            aVar.d(R.id.v_item_state, true);
            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.j.f4033a.f4048g0.submit(new a2.e0(this, w3Var, imageView3, 22));
            return;
        }
        if (p000if.a.f0(w3Var.f18364a)) {
            imageView3.setImageResource(R.drawable.tp_music1);
            return;
        }
        if (p000if.a.j0(w3Var.f18364a)) {
            imageView3.setImageResource(R.drawable.tp_video1);
            imageView.setImageDrawable(o0.o.b(AppStart.f3772h.getResources(), R.drawable.tp_bf3, null));
            q4.a.y(w3Var.f18365b).b(new ze(this, imageView2, imageView3, 8));
            return;
        }
        if (za.g.g(strSubstring)) {
            imageView3.setImageResource(R.drawable.tp_rar);
            return;
        }
        if (strSubstring.endsWith(".txt")) {
            imageView3.setImageResource(R.drawable.tp_txt);
            return;
        }
        if (strSubstring.endsWith(".doc")) {
            imageView3.setImageResource(R.drawable.doc);
            return;
        }
        if (strSubstring.endsWith(".docx")) {
            imageView3.setImageResource(R.drawable.docx);
            return;
        }
        if (strSubstring.endsWith(".xls")) {
            imageView3.setImageResource(R.drawable.xls);
            return;
        }
        if (strSubstring.endsWith(".xlsx")) {
            imageView3.setImageResource(R.drawable.xlsx);
            return;
        }
        if (strSubstring.endsWith(".csv")) {
            imageView3.setImageResource(R.drawable.tp_csv);
            return;
        }
        if (strSubstring.endsWith(".psd")) {
            imageView3.setImageResource(R.drawable.psd);
            return;
        }
        if (strSubstring.endsWith(".iso")) {
            imageView3.setImageResource(R.drawable.iso);
            return;
        }
        if (strSubstring.endsWith(".ttf")) {
            imageView3.setImageResource(R.drawable.ttf);
            return;
        }
        if (strSubstring.endsWith(".dll")) {
            imageView3.setImageResource(R.drawable.dll);
            return;
        }
        if (strSubstring.endsWith(".exe")) {
            imageView3.setImageResource(R.drawable.exe);
            return;
        }
        if (strSubstring.endsWith(".xml")) {
            imageView3.setImageResource(R.drawable.xml);
            return;
        }
        if (strSubstring.endsWith(".db")) {
            imageView3.setImageResource(R.drawable.db);
            return;
        }
        if (strSubstring.endsWith(".json")) {
            imageView3.setImageResource(R.drawable.json);
            return;
        }
        if (strSubstring.endsWith(".log")) {
            imageView3.setImageResource(R.drawable.log);
        } else if (strSubstring.endsWith(".gj")) {
            imageView3.setImageResource(R.drawable.tp_apk2);
        } else {
            imageView3.setImageResource(R.drawable.tp_file_wz);
        }
    }
}
