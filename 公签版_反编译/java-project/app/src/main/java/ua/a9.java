package ua;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.CycleInterpolator;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.bean.WpTaskBean;
import java.text.DecimalFormat;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class a9 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15571b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i9 f15572c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a9(i9 i9Var, int i10) {
        super(28);
        this.f15571b = i10;
        this.f15572c = i9Var;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f15571b) {
            case 0:
                StringBuilder sbR = l2.z.r(this.f15572c.f15744h, "失败：");
                sbR.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.t(sbR.toString());
                break;
            case 2:
                StringBuilder sbR2 = l2.z.r(this.f15572c.f15744h, "");
                sbR2.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.t(sbR2.toString());
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        i9 i9Var = this.f15572c;
        switch (this.f15571b) {
            case 1:
                android.support.v4.media.session.b.s(i9Var.f4530f, i9Var.f4529e, i9Var.f15744h, new x9.w3(String.valueOf(obj)));
                break;
            case 2:
                if (!(obj instanceof WpPathBean)) {
                    if (obj instanceof WpTaskBean) {
                        WpTaskBean wpTaskBean = (WpTaskBean) obj;
                        wpTaskBean.position = i9Var.F.b();
                        i9Var.F.q(wpTaskBean);
                        i9Var.E.setSelectedPosition(wpTaskBean.position);
                        i9Var.C.incrementAndGet();
                        i9Var.B.setText("" + i9Var.C.get());
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.j.f4033a.f4048g0.submit(new y7.b(wpTaskBean, 20, i9Var.Z));
                        break;
                    }
                } else {
                    WpPathBean wpPathBean = (WpPathBean) obj;
                    i9Var.u("", -1, false);
                    Iterator it = i9Var.f15751q.v().iterator();
                    while (it.hasNext()) {
                        if (((WpPathBean) it.next()).path.equals(wpPathBean.path)) {
                            break;
                        }
                    }
                    i9Var.f15751q.p(0, wpPathBean);
                    i9Var.f15750p.setSelectedPosition(0);
                    break;
                }
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        i9 i9Var = this.f15572c;
        switch (this.f15571b) {
            case 0:
                i9Var.f15744h.a();
                Toaster.show((CharSequence) "拷贝成功");
                break;
            case 2:
                i9Var.f15744h.a();
                com.yunpan.appmanage.util.a0.w("已提交到任务中心");
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(i9Var.A, View.TRANSLATION_X.getName(), 0.0f, 20.0f);
                objectAnimatorOfFloat.setDuration(555);
                objectAnimatorOfFloat.setInterpolator(new CycleInterpolator(4));
                objectAnimatorOfFloat.start();
                break;
        }
    }
}
