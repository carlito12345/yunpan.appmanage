package ua;

import com.hjq.toast.Toaster;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityAdb;
import com.yunpan.appmanage.ui.ActivityAutomation;
import com.yunpan.appmanage.ui.ActivityCodeEditor;

/* loaded from: classes.dex */
public final class g extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15681b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f15682c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f15683d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g(Object obj, boolean z, int i10) {
        super(28);
        this.f15681b = i10;
        this.f15683d = obj;
        this.f15682c = z;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f15681b) {
            case 0:
                StringBuilder sbR = l2.z.r(((ActivityAdb) this.f15683d).E, "");
                sbR.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.y(sbR.toString());
                break;
            case 2:
                com.yunpan.appmanage.util.a0.t("出错：" + th2.getMessage());
                break;
            case 3:
                i9 i9Var = (i9) this.f15683d;
                new ha.r5(i9Var.f4530f, i9Var.f4529e, ((qa.b) th2).f13176a).show();
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f15681b) {
            case 3:
                ((i9) this.f15683d).f15744h.b((String) obj);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f15681b) {
            case 0:
                ((ActivityAdb) this.f15683d).E.c("修改中");
                break;
            case 2:
                ((ActivityCodeEditor) this.f15683d).I.setVisibility(0);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() throws Exception {
        String path;
        switch (this.f15681b) {
            case 0:
                ((ActivityAdb) this.f15683d).E.a();
                if (this.f15682c) {
                    fa.b0.f5652a.getClass();
                    if (!a2.w0.P()) {
                        com.yunpan.appmanage.util.a0.v("正在尝试连接adb", false);
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        if (wVar.f4127k != 5555) {
                            wVar.n(5555);
                        }
                        fa.h.f5683a.h(null);
                        return;
                    }
                }
                com.yunpan.appmanage.util.a0.w("修改成功");
                return;
            case 1:
                ((ActivityAutomation) this.f15683d).I.sendEmptyMessageDelayed(!this.f15682c ? 1 : 0, PopupConst.DURATION_POPUP);
                return;
            case 2:
                ActivityCodeEditor activityCodeEditor = (ActivityCodeEditor) this.f15683d;
                activityCodeEditor.I.setVisibility(8);
                com.yunpan.appmanage.util.a0.w("保存成功");
                try {
                    path = activityCodeEditor.R.getPath();
                } catch (Exception unused) {
                }
                if (path == null) {
                    throw new Exception("");
                }
                if (path.startsWith("/external/")) {
                    path = fa.g0.f5682a.d() + path.substring(9);
                }
                MyDb.get().addIfFile(path);
                if (this.f15682c) {
                    activityCodeEditor.finish();
                    return;
                }
                return;
            default:
                i9 i9Var = (i9) this.f15683d;
                i9Var.f15744h.a();
                boolean z = this.f15682c;
                Toaster.show((CharSequence) (z ? "剪切" : "复制").concat("成功"));
                if (z) {
                    i9Var.f15755w.requestFocus();
                    i9Var.n((x9.w3) g.b.d(i9Var.f15756x, 1), true);
                    return;
                }
                return;
        }
    }
}
