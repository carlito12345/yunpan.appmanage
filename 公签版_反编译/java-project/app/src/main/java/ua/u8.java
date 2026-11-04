package ua;

import com.yunpan.appmanage.R;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final /* synthetic */ class u8 implements fa.w {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i9 f15990a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x9.w3 f15991b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15992c;

    public /* synthetic */ u8(i9 i9Var, int i10, x9.w3 w3Var) {
        this.f15990a = i9Var;
        this.f15992c = i10;
        this.f15991b = w3Var;
    }

    @Override // fa.w
    public void c(String str, boolean z) {
        i9 i9Var = this.f15990a;
        i9Var.f15744h.a();
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        x9.w3 w3Var = this.f15991b;
        String str2 = w3Var.f18365b;
        kVar.getClass();
        if (com.yunpan.appmanage.util.k.i(str2)) {
            if (!new File(w3Var.f18365b).exists()) {
                kVar.f4048g0.submit(new g8(1, w3Var));
            } else if (w3Var.f18366c) {
                kVar.f4046f0.submit(new com.yunpan.appmanage.util.z(new File(w3Var.f18365b)));
            }
        }
        if (!z) {
            com.yunpan.appmanage.util.a0.s("删除失败：" + str, false);
        } else {
            if (i9Var.z.b() == 1) {
                i9Var.f15755w.requestFocus();
                i9Var.v("没有文件", R.drawable.tp_nofile, true);
            }
            i9Var.z.C(this.f15992c);
        }
    }

    public /* synthetic */ u8(i9 i9Var, x9.w3 w3Var, int i10) {
        this.f15990a = i9Var;
        this.f15991b = w3Var;
        this.f15992c = i10;
    }
}
