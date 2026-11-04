package ua;

import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class z8 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16086b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f16087c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ i9 f16088d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ z8(i9 i9Var, int i10, int i11) {
        super(28);
        this.f16086b = i11;
        this.f16088d = i9Var;
        this.f16087c = i10;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f16086b) {
            case 0:
                StringBuilder sbR = l2.z.r(this.f16088d.f15744h, "");
                sbR.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.t(sbR.toString());
                break;
            default:
                StringBuilder sbR2 = l2.z.r(this.f16088d.f15744h, "失败：");
                sbR2.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.t(sbR2.toString());
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void b(gc.b bVar) {
        switch (this.f16086b) {
            case 0:
                this.f16088d.f15744h.c("删除中");
                break;
            default:
                this.f16088d.f15744h.c("移动中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f16086b) {
            case 0:
                i9 i9Var = this.f16088d;
                i9Var.f15744h.a();
                Toaster.show((CharSequence) "删除成功");
                if (i9Var.f15751q.b() == 1) {
                    i9Var.f15748m.requestFocus();
                    i9Var.u("空目录", R.drawable.tp_nofile, true);
                }
                i9Var.f15751q.C(this.f16087c);
                break;
            default:
                i9 i9Var2 = this.f16088d;
                i9Var2.f15744h.a();
                Toaster.show((CharSequence) "移动目录成功");
                if (i9Var2.f15751q.b() == 1) {
                    i9Var2.f15748m.requestFocus();
                    i9Var2.u("空目录", R.drawable.tp_nofile, true);
                }
                i9Var2.f15751q.C(this.f16087c);
                break;
        }
    }
}
