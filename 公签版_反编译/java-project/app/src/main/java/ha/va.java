package ha;

import android.os.Build;
import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.PermissionBean;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final /* synthetic */ class va implements ec.d, c6.e, c6.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ za f7946a;

    public /* synthetic */ va(za zaVar) {
        this.f7946a = zaVar;
    }

    @Override // c6.f
    public boolean c(int i10, View view) {
        PermissionBean permissionBean = (PermissionBean) this.f7946a.l.t(i10);
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.j.f4033a.c(permissionBean.permissionName + "----" + permissionBean.permissionLabel + "----" + permissionBean.permissionDesc);
        return false;
    }

    @Override // ec.d
    public void g(mc.b bVar) throws Exception {
        this.f7946a.b(bVar);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, final int i10) {
        final int i11 = 0;
        final int i12 = 1;
        final za zaVar = this.f7946a;
        zaVar.getClass();
        a2.w0 w0Var = fa.b0.f5652a;
        w0Var.getClass();
        if (!a2.w0.O()) {
            Toaster.showLong((CharSequence) "需要 root 或 adb 才可更改权限");
            return;
        }
        s1.g.Y(view);
        final PermissionBean permissionBean = (PermissionBean) zaVar.l.t(i10);
        int i13 = Build.VERSION.SDK_INT;
        if (i13 < 23 && permissionBean.isOpen) {
            Toaster.showLong((CharSequence) "低于安卓6.0无需管理权限");
            return;
        }
        boolean zIsEmpty = permissionBean.permissionName_ops.isEmpty();
        String str = zaVar.f8166g;
        if (!zIsEmpty) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (str.equals(com.yunpan.appmanage.util.j.f4033a.f4041d) && i13 < 30 && permissionBean.permissionName.equals("android.permission.REQUEST_INSTALL_PACKAGES")) {
                new z6(zaVar.f6724a, zaVar.f6725b, "自身给这个权限授权时，可能会被系统强行关闭，这是正常的，望知晓", "", "好的", "", new ya(zaVar, permissionBean, i10, i11)).show();
                return;
            } else {
                String str2 = permissionBean.permissionName_ops;
                boolean z = true ^ permissionBean.isOpen;
                w0Var.f347c = new fa.w() { // from class: ha.xa
                    @Override // fa.w
                    public final void c(String str3, boolean z4) {
                        switch (i11) {
                            case 0:
                                za zaVar2 = zaVar;
                                zaVar2.getClass();
                                if (!z4) {
                                    com.yunpan.appmanage.util.a0.s(str3, false);
                                    break;
                                } else {
                                    PermissionBean permissionBean2 = permissionBean;
                                    if (permissionBean2.canPMS) {
                                        a2.w0 w0Var2 = fa.b0.f5652a;
                                        String str4 = permissionBean2.permissionName;
                                        boolean z10 = !permissionBean2.isOpen;
                                        String str5 = zaVar2.f8166g;
                                        w0Var2.f347c = null;
                                        u9.d.f15554a.execute(new fa.t(0, w0Var2, str5, str4, z10));
                                    }
                                    boolean z11 = permissionBean2.isOpen;
                                    permissionBean2.isOpen = !z11;
                                    permissionBean2.str_status = !z11 ? "已允许" : "已拒绝";
                                    zaVar2.l.e(i10);
                                    break;
                                }
                            default:
                                za zaVar3 = zaVar;
                                zaVar3.getClass();
                                if (!z4) {
                                    com.yunpan.appmanage.util.a0.s(str3, false);
                                    break;
                                } else {
                                    PermissionBean permissionBean3 = permissionBean;
                                    boolean z12 = permissionBean3.isOpen;
                                    permissionBean3.isOpen = !z12;
                                    permissionBean3.str_status = !z12 ? "已允许" : "已取消";
                                    zaVar3.l.e(i10);
                                    break;
                                }
                        }
                    }
                };
                u9.d.f15554a.execute(new fa.t(w0Var, str2, z, str));
                return;
            }
        }
        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
        if (!str.equals(com.yunpan.appmanage.util.j.f4033a.f4041d) || !permissionBean.permissionName.equals("android.permission.READ_LOGS")) {
            String str3 = permissionBean.permissionName;
            boolean z4 = !permissionBean.isOpen;
            w0Var.f347c = new fa.w() { // from class: ha.xa
                @Override // fa.w
                public final void c(String str32, boolean z42) {
                    switch (i12) {
                        case 0:
                            za zaVar2 = zaVar;
                            zaVar2.getClass();
                            if (!z42) {
                                com.yunpan.appmanage.util.a0.s(str32, false);
                                break;
                            } else {
                                PermissionBean permissionBean2 = permissionBean;
                                if (permissionBean2.canPMS) {
                                    a2.w0 w0Var2 = fa.b0.f5652a;
                                    String str4 = permissionBean2.permissionName;
                                    boolean z10 = !permissionBean2.isOpen;
                                    String str5 = zaVar2.f8166g;
                                    w0Var2.f347c = null;
                                    u9.d.f15554a.execute(new fa.t(0, w0Var2, str5, str4, z10));
                                }
                                boolean z11 = permissionBean2.isOpen;
                                permissionBean2.isOpen = !z11;
                                permissionBean2.str_status = !z11 ? "已允许" : "已拒绝";
                                zaVar2.l.e(i10);
                                break;
                            }
                        default:
                            za zaVar3 = zaVar;
                            zaVar3.getClass();
                            if (!z42) {
                                com.yunpan.appmanage.util.a0.s(str32, false);
                                break;
                            } else {
                                PermissionBean permissionBean3 = permissionBean;
                                boolean z12 = permissionBean3.isOpen;
                                permissionBean3.isOpen = !z12;
                                permissionBean3.str_status = !z12 ? "已允许" : "已取消";
                                zaVar3.l.e(i10);
                                break;
                            }
                    }
                }
            };
            u9.d.f15554a.execute(new fa.t(0, w0Var, str, str3, z4));
            return;
        }
        new z6(zaVar.f6724a, zaVar.f6725b, zaVar.f6725b.getString(R.string.str_gj) + "自身给这个权限授权时，可能会被系统强行关闭，这是正常的，望知晓！", "", "好的", "", new ya(zaVar, permissionBean, i10, i12)).show();
    }
}
