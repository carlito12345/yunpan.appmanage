package ha;

import com.hjq.toast.Toaster;

/* loaded from: classes.dex */
public final class ra extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7698b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ sa f7699c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ra(sa saVar, int i10) {
        super(28);
        this.f7698b = i10;
        this.f7699c = saVar;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f7698b) {
            case 0:
                this.f7699c.f7760i.a();
                String str = th2.getMessage() + "";
                if (str.trim().isEmpty()) {
                    str = "安装失败";
                }
                com.yunpan.appmanage.util.a0.s(str, false);
                break;
            case 2:
                com.yunpan.appmanage.util.a0.s("失败：无权限", false);
                break;
            case 4:
                com.yunpan.appmanage.util.a0.s("" + th2.getMessage(), false);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f7698b) {
            case 0:
                this.f7699c.f7760i.b((String) obj);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void b(gc.b bVar) {
        switch (this.f7698b) {
            case 0:
                this.f7699c.f7760i.c("安装中");
                break;
            case 1:
                Toaster.showLong((CharSequence) "重启中");
                break;
            case 2:
                Toaster.showLong((CharSequence) "修改中");
                break;
            case 3:
                Toaster.showLong((CharSequence) "尝试重启中");
                break;
            default:
                Toaster.showLong((CharSequence) "修改中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f7698b) {
            case 0:
                this.f7699c.f7760i.a();
                com.yunpan.appmanage.util.a0.w("安装成功");
                break;
            case 1:
                Toaster.show((CharSequence) "已执行重启命令");
                if (fa.a.f5647b.c()) {
                    this.f7699c.dismiss();
                    break;
                }
                break;
            case 2:
                com.yunpan.appmanage.util.a0.w("修改完成");
                sa saVar = this.f7699c;
                new z6(saVar.f6724a, saVar.f6725b, "是否重启对方设备的adb服务，让设置生效", "注：重启adb服务会断开连接", "重启对方adb服务", "咱不", new h5.m(12, this)).show();
                break;
            case 3:
                com.yunpan.appmanage.util.a0.w("已尝试重启");
                if (fa.a.f5647b.c()) {
                    this.f7699c.dismiss();
                    break;
                }
                break;
            default:
                if (!fa.a.f5647b.c()) {
                    this.f7699c.dismiss();
                    break;
                }
                break;
        }
    }
}
