package ha;

import com.autolink.adapterinterface.IHardKeyCallback;
import com.yunpan.appmanage.bean.IntIntBean;

/* loaded from: classes.dex */
public final class y7 extends IHardKeyCallback.Stub {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ z7 f8094e;

    public y7(z7 z7Var) {
        this.f8094e = z7Var;
    }

    @Override // com.autolink.adapterinterface.IHardKeyCallback
    public final void onKeyPressed(int i10) {
        z7 z7Var = this.f8094e;
        z7Var.f8160i.q(new IntIntBean(i10, 0));
        z7Var.f8159h.scrollToPosition(z7Var.f8160i.b() - 1);
    }

    @Override // com.autolink.adapterinterface.IHardKeyCallback
    public final void onKeyReleased(int i10) {
        z7 z7Var = this.f8094e;
        z7Var.f8160i.q(new IntIntBean(i10, 1));
        z7Var.f8159h.scrollToPosition(z7Var.f8160i.b() - 1);
    }

    @Override // com.autolink.adapterinterface.IHardKeyCallback
    public final void onKeyEvent(int i10, int i11, int i12) {
    }
}
