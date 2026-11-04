package ua;

import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.CmdBean;
import ha.sa;
import java.util.List;

/* loaded from: classes.dex */
public final class v7 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16001b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x7 f16002c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ v7(x7 x7Var, int i10) {
        super(28);
        this.f16001b = i10;
        this.f16002c = x7Var;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f16001b) {
            case 3:
                com.yunpan.appmanage.util.a0.s("" + th2.getMessage(), false);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f16001b) {
            case 0:
                boolean z = obj instanceof CmdBean;
                x7 x7Var = this.f16002c;
                if (!z) {
                    x7Var.f16040g.setAdapter(x7Var.f16041h);
                    break;
                } else {
                    CmdBean cmdBean = (CmdBean) obj;
                    if (cmdBean.ico != R.drawable.tp_cj) {
                        x7Var.f16042i.p(0, cmdBean);
                        break;
                    } else {
                        x7Var.f16042i.q(cmdBean);
                        break;
                    }
                }
            case 1:
                x7 x7Var2 = this.f16002c;
                new ha.b6(x7Var2.f4530f, x7Var2.f4529e, (List) obj, new g5(12, this)).show();
                break;
            case 2:
                x7 x7Var3 = this.f16002c;
                new ha.z6(x7Var3.f4530f, x7Var3.f4529e, (ba.o) obj).show();
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f16001b) {
            case 3:
                Toaster.showLong((CharSequence) "尝试连接中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        switch (this.f16001b) {
            case 0:
                x7 x7Var = this.f16002c;
                x7Var.f16042i.q(new CmdBean(R.drawable.tp_wifi1, "热点开关"));
                x7Var.f16042i.q(new CmdBean(R.drawable.tp_wifi2, "wifi开关"));
                x7Var.f16042i.q(new CmdBean(R.drawable.tp_ly1, "蓝牙开关"));
                break;
            case 3:
                com.yunpan.appmanage.util.a0.w("连接成功");
                x7 x7Var2 = this.f16002c;
                new sa(x7Var2.f4530f, x7Var2.f4529e).show();
                break;
        }
    }
}
