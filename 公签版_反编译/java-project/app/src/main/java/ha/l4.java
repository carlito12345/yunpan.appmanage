package ha;

import com.yunpan.appmanage.bean.NameContentSelectBean;
import com.yunpan.appmanage.bean.SpecialPermissionsBean;
import com.yunpan.appmanage.ui.ActivityAccessibility;
import com.yunpan.appmanage.ui.ActivityAppStorage;
import com.yunpan.appmanage.ui.ActivityPermissions;
import com.yunpan.appmanage.ui.ActivityShell;
import java.io.File;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class l4 extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7352b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7353c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f7354d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7355e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l4(da.g gVar, Object obj, int i10, int i11) {
        super(28);
        this.f7352b = i11;
        this.f7355e = gVar;
        this.f7354d = obj;
        this.f7353c = i10;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f7352b) {
            case 1:
                x9.b bVar = (x9.b) this.f7354d;
                bVar.f18201f = !bVar.f18201f;
                ((ActivityAccessibility) this.f7355e).D.D(this.f7353c, bVar);
                com.yunpan.appmanage.util.a0.y("失败：" + th2.getMessage());
                break;
            case 3:
                SpecialPermissionsBean specialPermissionsBean = (SpecialPermissionsBean) this.f7354d;
                specialPermissionsBean.isGrant = !specialPermissionsBean.isGrant;
                ((ActivityPermissions) this.f7355e).E.D(this.f7353c, specialPermissionsBean);
                com.yunpan.appmanage.util.a0.t(specialPermissionsBean.name + "：设置失败");
                break;
            case 4:
                ActivityShell activityShell = (ActivityShell) this.f7355e;
                activityShell.D.setText(th2.getMessage());
                com.yunpan.appmanage.util.a0.u(String.valueOf(th2.getMessage()));
                activityShell.G.D(this.f7353c, new x9.j1("雫执行"));
                break;
            case 5:
                ua.i9 i9Var = (ua.i9) this.f7355e;
                StringBuilder sbR = l2.z.r(i9Var.f15744h, "");
                sbR.append(th2.getMessage());
                String string = sbR.toString();
                if (!string.equals("需要密码") && !string.equals("密码错误")) {
                    com.yunpan.appmanage.util.a0.t(string);
                    break;
                } else {
                    if (string.equals("密码错误")) {
                        com.yunpan.appmanage.util.a0.s("密码错误请重新输入", false);
                    }
                    new o1(i9Var.f4529e, new ua.i1(25, this)).show();
                    break;
                }
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f7352b) {
            case 0:
                ((NameContentSelectBean) this.f7354d).isSelect = !r3.isSelect;
                ((c6.g) this.f7355e).e(this.f7353c);
                break;
            case 5:
                boolean z = obj instanceof za.a;
                ua.i9 i9Var = (ua.i9) this.f7355e;
                if (!z) {
                    if (obj instanceof String) {
                        i9Var.f15744h.b(obj.toString());
                        break;
                    }
                } else {
                    i9Var.f15744h.b(((za.a) obj).f19515c);
                    break;
                }
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f7352b) {
            case 4:
                ActivityShell activityShell = (ActivityShell) this.f7355e;
                activityShell.D.setText("尝试连接shizuku中。。。");
                activityShell.G.D(this.f7353c, new x9.j1("连接中"));
                break;
            case 5:
                ((ua.i9) this.f7355e).f15744h.c("解压中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        int i10 = this.f7353c;
        Object obj = this.f7354d;
        Object obj2 = this.f7355e;
        switch (this.f7352b) {
            case 2:
                ((ActivityAppStorage) ((l5.y) obj2).f10629b).D.D(i10, (x9.y) obj);
                break;
            case 4:
                ActivityShell activityShell = (ActivityShell) obj2;
                activityShell.G.D(i10, new x9.j1("雫执行"));
                activityShell.C(i10, (String) obj);
                break;
            case 5:
                ua.i9 i9Var = (ua.i9) obj2;
                i9Var.f15744h.a();
                com.yunpan.appmanage.util.a0.v("解压完成", true);
                String str = (String) obj;
                i9Var.z.p(0, new x9.w3(str));
                i9Var.f15757y.setSelection(0);
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                kVar.getClass();
                if (com.yunpan.appmanage.util.k.i(str)) {
                    kVar.f4046f0.submit(new com.yunpan.appmanage.util.z(new File(str)));
                    break;
                }
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l4(Object obj, int i10, Object obj2, int i11) {
        super(28);
        this.f7352b = i11;
        this.f7355e = obj;
        this.f7353c = i10;
        this.f7354d = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l4(NameContentSelectBean nameContentSelectBean, c6.g gVar, int i10) {
        super(28);
        this.f7352b = 0;
        this.f7354d = nameContentSelectBean;
        this.f7355e = gVar;
        this.f7353c = i10;
    }
}
