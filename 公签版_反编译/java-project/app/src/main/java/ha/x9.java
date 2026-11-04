package ha;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.view.View;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcat;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public final /* synthetic */ class x9 implements ec.d, v8.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ba f8057a;

    public /* synthetic */ x9(ba baVar) {
        this.f8057a = baVar;
    }

    @Override // v8.c
    public void e(v8.a aVar, View view) {
        TextView textView = (TextView) view;
        ba baVar = this.f8057a;
        baVar.getClass();
        boolean zEquals = textView.getText().toString().equals("停止监听");
        Context context = baVar.f6725b;
        if (!zEquals) {
            textView.setText("停止监听");
            p000if.a.F0(context);
            TextView textView2 = (TextView) textView.getRootView().findViewById(R.id.v_ts);
            g0.e eVar = baVar.f6812j;
            HashMap map = baVar.f6816p;
            eVar.getClass();
            new mc.c(0, new ma.b(eVar, 4, map)).d(rc.f.f13757b).a(fc.b.a()).b(new h3(baVar, 5, textView2));
            return;
        }
        baVar.f6812j.k();
        try {
            Intent intent = new Intent(context, (Class<?>) ActivityKeyMapLogcat.class);
            intent.setPackage(null);
            intent.setFlags(270532608);
            p000if.a.x0(1, context, intent);
        } catch (Exception unused) {
        }
        x9.t0 t0Var = baVar.f6811i;
        ArrayList arrayList = baVar.f6815n;
        t0Var.E(arrayList);
        baVar.f6813k.setText("日志数量：" + arrayList.size());
        aVar.g();
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        String strTrim;
        int iLastIndexOf;
        int iIndexOf;
        String strTrim2;
        int iIndexOf2;
        ba baVar = this.f8057a;
        baVar.getClass();
        a2.w0 w0Var = fa.b0.f5652a;
        String str = Build.VERSION.SDK_INT >= 28 ? "ps -A" : "ps";
        w0Var.getClass();
        for (String str2 : a2.w0.h(str).f5649b) {
            System.out.getClass();
            if (!str2.endsWith("]") && str2.lastIndexOf("@") == -1 && (iLastIndexOf = (strTrim = str2.trim()).lastIndexOf(" ")) != -1) {
                String strSubstring = strTrim.substring(iLastIndexOf + 1);
                if (strSubstring.contains(".") && (iIndexOf = strTrim.indexOf(" ")) != -1 && (iIndexOf2 = (strTrim2 = strTrim.substring(iIndexOf + 1).trim()).indexOf(" ")) != -1) {
                    baVar.f6816p.put(strTrim2.substring(0, iIndexOf2), strSubstring);
                }
            }
        }
        bVar.b();
    }
}
