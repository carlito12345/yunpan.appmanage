package ha;

import com.hsae.autosdk.hmi.IHmiCallback;
import com.yunpan.appmanage.bean.IntIntBean;

/* loaded from: classes.dex */
public final class o6 extends IHmiCallback.Stub {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ p6 f7524e;

    public o6(p6 p6Var) {
        this.f7524e = p6Var;
    }

    @Override // com.hsae.autosdk.hmi.IHmiCallback
    public final void onAirConditionerInputKeyEvent(int i10, boolean z) {
        p6 p6Var = this.f7524e;
        p6Var.f7574j.q(new IntIntBean(i10, !z ? 1 : 0));
        p6Var.f7573i.scrollToPosition(p6Var.f7574j.b() - 1);
    }

    @Override // com.hsae.autosdk.hmi.IHmiCallback
    public final void onVirtualInputKeyEvent(int i10, boolean z) {
        p6 p6Var = this.f7524e;
        p6Var.f7574j.q(new IntIntBean(i10, !z ? 1 : 0));
        p6Var.f7573i.scrollToPosition(p6Var.f7574j.b() - 1);
    }
}
