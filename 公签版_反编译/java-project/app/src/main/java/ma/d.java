package ma;

import android.app.Activity;
import android.content.Context;
import com.yunpan.appmanage.util.a0;
import ha.j2;
import ha.l2;
import ha.u9;
import ha.z6;
import ha.ze;
import l2.z;

/* loaded from: classes.dex */
public final class d extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11027b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ze f11028c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d(ze zeVar, int i10) {
        super(28);
        this.f11027b = i10;
        this.f11028c = zeVar;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f11027b) {
            case 0:
                StringBuilder sbR = z.r((u9) this.f11028c.f8182e, "");
                sbR.append(th2.getMessage());
                a0.t(sbR.toString());
                break;
            default:
                ((u9) this.f11028c.f8182e).a();
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f11027b) {
            case 1:
                ((u9) this.f11028c.f8182e).b(String.valueOf(obj));
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void b(gc.b bVar) {
        switch (this.f11027b) {
            case 0:
                ((u9) this.f11028c.f8182e).c("安装中");
                break;
            default:
                ((u9) this.f11028c.f8182e).c("安装中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f11027b) {
            case 0:
                ze zeVar = this.f11028c;
                ((u9) zeVar.f8182e).a();
                new z6((Activity) zeVar.f8180c, (Context) zeVar.f8181d, "安装成功", "此应用需要重启系统才可生效", "明白了", "", new j2(20)).show();
                break;
            default:
                ((u9) this.f11028c.f8182e).a();
                break;
        }
    }
}
