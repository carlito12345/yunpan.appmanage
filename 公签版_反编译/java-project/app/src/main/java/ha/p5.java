package ha;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.view.View;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;

/* loaded from: classes.dex */
public final class p5 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f7570g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p5(Activity activity, Context context, int i10) {
        super(activity, context, R.layout.dialog_fankui);
        this.f7570g = i10;
        switch (i10) {
            case 1:
                super(activity, context, R.layout.dialog_love);
                break;
            default:
                break;
        }
    }

    @Override // ha.a4, android.app.Dialog
    public void onCreate(Bundle bundle) {
        switch (this.f7570g) {
            case 2:
                super.onCreate(bundle);
                final int i10 = 0;
                findViewById(R.id.v_btn_yes).setOnClickListener(new View.OnClickListener(this) { // from class: ha.ib

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ p5 f7219b;

                    {
                        this.f7219b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i10) {
                            case 0:
                                p5 p5Var = this.f7219b;
                                Context context = p5Var.f6725b;
                                if (Settings.Global.getInt(context.getContentResolver(), "adb_wifi_enabled", 1) != 0) {
                                    boolean zPutInt = false;
                                    try {
                                        zPutInt = Settings.Global.putInt(context.getContentResolver(), "adb_wifi_enabled", 0);
                                    } catch (Exception unused) {
                                    }
                                    if (zPutInt) {
                                        com.yunpan.appmanage.util.a0.w("已修复");
                                    } else {
                                        com.yunpan.appmanage.util.a0.t("修复失败");
                                    }
                                    p5Var.dismiss();
                                    break;
                                } else {
                                    com.yunpan.appmanage.util.a0.w("您系统没问题呀");
                                    p5Var.dismiss();
                                    break;
                                }
                            default:
                                this.f7219b.dismiss();
                                break;
                        }
                    }
                });
                final int i11 = 1;
                findViewById(R.id.v_btn_no).setOnClickListener(new View.OnClickListener(this) { // from class: ha.ib

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ p5 f7219b;

                    {
                        this.f7219b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i11) {
                            case 0:
                                p5 p5Var = this.f7219b;
                                Context context = p5Var.f6725b;
                                if (Settings.Global.getInt(context.getContentResolver(), "adb_wifi_enabled", 1) != 0) {
                                    boolean zPutInt = false;
                                    try {
                                        zPutInt = Settings.Global.putInt(context.getContentResolver(), "adb_wifi_enabled", 0);
                                    } catch (Exception unused) {
                                    }
                                    if (zPutInt) {
                                        com.yunpan.appmanage.util.a0.w("已修复");
                                    } else {
                                        com.yunpan.appmanage.util.a0.t("修复失败");
                                    }
                                    p5Var.dismiss();
                                    break;
                                } else {
                                    com.yunpan.appmanage.util.a0.w("您系统没问题呀");
                                    p5Var.dismiss();
                                    break;
                                }
                            default:
                                this.f7219b.dismiss();
                                break;
                        }
                    }
                });
                break;
            case 3:
                super.onCreate(bundle);
                final int i12 = 0;
                findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ha.hf

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ p5 f7172b;

                    {
                        this.f7172b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i12) {
                            case 0:
                                this.f7172b.dismiss();
                                break;
                            case 1:
                                p5 p5Var = this.f7172b;
                                p5Var.getClass();
                                try {
                                    if (Settings.Global.getInt(p5Var.f6725b.getContentResolver(), "adb_enabled", -1) != 1) {
                                        com.yunpan.appmanage.util.a0.u("请先在原生设置中打开【USB调试】");
                                        break;
                                    }
                                } catch (Exception unused) {
                                }
                                com.yunpan.appmanage.util.a0.u("等待授权窗口弹出，勾选一律允许 并点 确认");
                                new fg.b(new com.gj.server.a(4), 1).start();
                                new fg.b(new com.gj.server.a(4), 1).start();
                                new fg.b(new com.gj.server.a(4), 1).start();
                                break;
                            default:
                                p5 p5Var2 = this.f7172b;
                                Context context = p5Var2.f6725b;
                                try {
                                    if (Settings.Global.getInt(context.getContentResolver(), "adb_enabled", -1) != 1) {
                                        com.yunpan.appmanage.util.a0.u("请先在原生设置中打开【USB调试】");
                                        break;
                                    }
                                } catch (Exception unused2) {
                                }
                                if (!XXPermissions.isGrantedPermission(context, PermissionLists.getSystemAlertWindowPermission())) {
                                    XXPermissions.with(context).permission(PermissionLists.getSystemAlertWindowPermission()).request(new jd(4));
                                    break;
                                } else {
                                    p5Var2.dismiss();
                                    com.yunpan.appmanage.util.a0.u("请到车机蓝牙界面中，等待授权窗口弹出");
                                    v8.a aVar = new v8.a(AppStart.f3772h);
                                    aVar.j(R.layout.window_xingtu_adb);
                                    aVar.f16661h = "XingTuAdbDialog";
                                    aVar.a(256);
                                    aVar.l(Build.VERSION.SDK_INT < 28 ? 0 : 1);
                                    aVar.q(new w8.b(0));
                                    aVar.p();
                                    aVar.m(R.id.v_btn_connect, new jd(5));
                                    aVar.m(R.id.v_btn_close, new jd(6));
                                    aVar.d();
                                    break;
                                }
                        }
                    }
                });
                final int i13 = 1;
                findViewById(R.id.v_btn_start).setOnClickListener(new View.OnClickListener(this) { // from class: ha.hf

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ p5 f7172b;

                    {
                        this.f7172b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i13) {
                            case 0:
                                this.f7172b.dismiss();
                                break;
                            case 1:
                                p5 p5Var = this.f7172b;
                                p5Var.getClass();
                                try {
                                    if (Settings.Global.getInt(p5Var.f6725b.getContentResolver(), "adb_enabled", -1) != 1) {
                                        com.yunpan.appmanage.util.a0.u("请先在原生设置中打开【USB调试】");
                                        break;
                                    }
                                } catch (Exception unused) {
                                }
                                com.yunpan.appmanage.util.a0.u("等待授权窗口弹出，勾选一律允许 并点 确认");
                                new fg.b(new com.gj.server.a(4), 1).start();
                                new fg.b(new com.gj.server.a(4), 1).start();
                                new fg.b(new com.gj.server.a(4), 1).start();
                                break;
                            default:
                                p5 p5Var2 = this.f7172b;
                                Context context = p5Var2.f6725b;
                                try {
                                    if (Settings.Global.getInt(context.getContentResolver(), "adb_enabled", -1) != 1) {
                                        com.yunpan.appmanage.util.a0.u("请先在原生设置中打开【USB调试】");
                                        break;
                                    }
                                } catch (Exception unused2) {
                                }
                                if (!XXPermissions.isGrantedPermission(context, PermissionLists.getSystemAlertWindowPermission())) {
                                    XXPermissions.with(context).permission(PermissionLists.getSystemAlertWindowPermission()).request(new jd(4));
                                    break;
                                } else {
                                    p5Var2.dismiss();
                                    com.yunpan.appmanage.util.a0.u("请到车机蓝牙界面中，等待授权窗口弹出");
                                    v8.a aVar = new v8.a(AppStart.f3772h);
                                    aVar.j(R.layout.window_xingtu_adb);
                                    aVar.f16661h = "XingTuAdbDialog";
                                    aVar.a(256);
                                    aVar.l(Build.VERSION.SDK_INT < 28 ? 0 : 1);
                                    aVar.q(new w8.b(0));
                                    aVar.p();
                                    aVar.m(R.id.v_btn_connect, new jd(5));
                                    aVar.m(R.id.v_btn_close, new jd(6));
                                    aVar.d();
                                    break;
                                }
                        }
                    }
                });
                final int i14 = 2;
                findViewById(R.id.v_btn_xf).setOnClickListener(new View.OnClickListener(this) { // from class: ha.hf

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ p5 f7172b;

                    {
                        this.f7172b = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i14) {
                            case 0:
                                this.f7172b.dismiss();
                                break;
                            case 1:
                                p5 p5Var = this.f7172b;
                                p5Var.getClass();
                                try {
                                    if (Settings.Global.getInt(p5Var.f6725b.getContentResolver(), "adb_enabled", -1) != 1) {
                                        com.yunpan.appmanage.util.a0.u("请先在原生设置中打开【USB调试】");
                                        break;
                                    }
                                } catch (Exception unused) {
                                }
                                com.yunpan.appmanage.util.a0.u("等待授权窗口弹出，勾选一律允许 并点 确认");
                                new fg.b(new com.gj.server.a(4), 1).start();
                                new fg.b(new com.gj.server.a(4), 1).start();
                                new fg.b(new com.gj.server.a(4), 1).start();
                                break;
                            default:
                                p5 p5Var2 = this.f7172b;
                                Context context = p5Var2.f6725b;
                                try {
                                    if (Settings.Global.getInt(context.getContentResolver(), "adb_enabled", -1) != 1) {
                                        com.yunpan.appmanage.util.a0.u("请先在原生设置中打开【USB调试】");
                                        break;
                                    }
                                } catch (Exception unused2) {
                                }
                                if (!XXPermissions.isGrantedPermission(context, PermissionLists.getSystemAlertWindowPermission())) {
                                    XXPermissions.with(context).permission(PermissionLists.getSystemAlertWindowPermission()).request(new jd(4));
                                    break;
                                } else {
                                    p5Var2.dismiss();
                                    com.yunpan.appmanage.util.a0.u("请到车机蓝牙界面中，等待授权窗口弹出");
                                    v8.a aVar = new v8.a(AppStart.f3772h);
                                    aVar.j(R.layout.window_xingtu_adb);
                                    aVar.f16661h = "XingTuAdbDialog";
                                    aVar.a(256);
                                    aVar.l(Build.VERSION.SDK_INT < 28 ? 0 : 1);
                                    aVar.q(new w8.b(0));
                                    aVar.p();
                                    aVar.m(R.id.v_btn_connect, new jd(5));
                                    aVar.m(R.id.v_btn_close, new jd(6));
                                    aVar.d();
                                    break;
                                }
                        }
                    }
                });
                break;
            default:
                super.onCreate(bundle);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p5(Activity activity, da.g gVar) {
        super(activity, gVar, R.layout.dialog_repair_popup_wifi_adb);
        this.f7570g = 2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p5(Activity activity, ContextWrapper contextWrapper) {
        super(activity, contextWrapper, R.layout.dialog_xingtu_adb);
        this.f7570g = 3;
    }
}
