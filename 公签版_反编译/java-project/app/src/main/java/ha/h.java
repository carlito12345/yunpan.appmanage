package ha;

import android.widget.TextView;
import com.hjq.toast.Toaster;

/* loaded from: classes.dex */
public final class h extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7129b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f7130c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h(i iVar, int i10) {
        super(28);
        this.f7129b = i10;
        this.f7130c = iVar;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f7129b) {
            case 0:
                com.yunpan.appmanage.util.a0.s("" + th2.getMessage(), false);
                ((TextView) this.f7130c.f7175i).setText("连接ADB");
                break;
            default:
                com.yunpan.appmanage.util.a0.t("修改失败");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void b(gc.b bVar) {
        switch (this.f7129b) {
            case 0:
                ((TextView) this.f7130c.f7175i).setText("连接中");
                Toaster.showLong((CharSequence) "连接中，请稍等。。。");
                break;
            default:
                Toaster.showLong((CharSequence) "修改中，请稍等。。。");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f7129b) {
            case 0:
                i iVar = this.f7130c;
                ((TextView) iVar.f7175i).setText("ADB已连接");
                com.yunpan.appmanage.util.a0.v("adb连接成功", false);
                iVar.dismiss();
                break;
            default:
                com.yunpan.appmanage.util.a0.v("修改成功：正在连接ADB", false);
                fa.h.f5683a.h(null);
                this.f7130c.dismiss();
                break;
        }
    }
}
