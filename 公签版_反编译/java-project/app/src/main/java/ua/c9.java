package ua;

import com.hjq.toast.Toaster;
import com.yunpan.appmanage.bean.FtpCopyProgressBean;
import com.yunpan.appmanage.bean.WpPathBean;
import ha.v9;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class c9 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v9 f15621b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FtpCopyProgressBean f15622c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f15623d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ WpPathBean f15624e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ i9 f15625f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c9(i9 i9Var, v9 v9Var, FtpCopyProgressBean ftpCopyProgressBean, boolean z, WpPathBean wpPathBean) {
        super(28);
        this.f15625f = i9Var;
        this.f15621b = v9Var;
        this.f15622c = ftpCopyProgressBean;
        this.f15623d = z;
        this.f15624e = wpPathBean;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        this.f15621b.dismiss();
        String str = "" + th2.getMessage();
        if (this.f15622c.isStop) {
            str = "主动停止任务";
        }
        com.yunpan.appmanage.util.a0.t(str);
        i9 i9Var = this.f15625f;
        i9Var.n((x9.w3) g.b.d(i9Var.f15756x, 1), false);
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        this.f15621b.dismiss();
        FtpCopyProgressBean ftpCopyProgressBean = this.f15622c;
        boolean z = ftpCopyProgressBean.isStop;
        i9 i9Var = this.f15625f;
        if (z) {
            Toaster.show((CharSequence) "主动停止任务");
            i9Var.n((x9.w3) g.b.d(i9Var.f15756x, 1), false);
            return;
        }
        if (ftpCopyProgressBean.failurePaths.size() > 0) {
            ArrayList arrayList = new ArrayList();
            for (WpPathBean wpPathBean : ftpCopyProgressBean.failurePaths) {
                x9.w3 w3Var = new x9.w3(wpPathBean.name, wpPathBean.path);
                w3Var.f18373j = wpPathBean.errorStr;
                arrayList.add(w3Var);
            }
            new ha.r5(i9Var.f4530f, i9Var.f4529e, arrayList).show();
            return;
        }
        Toaster.show((CharSequence) "下载完成");
        if (!this.f15623d) {
            i9Var.n((x9.w3) g.b.d(i9Var.f15756x, 1), false);
            return;
        }
        i9Var.s((ftpCopyProgressBean.rootDirPath_to + "/" + this.f15624e.name).replace("//", "/"));
    }
}
