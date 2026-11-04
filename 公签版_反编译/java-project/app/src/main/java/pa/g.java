package pa;

import android.view.KeyEvent;
import com.hsae.autosdk.hmi.IHmiCallback;

/* loaded from: classes.dex */
public final class g extends IHmiCallback.Stub {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ h f12642e;

    public g(h hVar) {
        this.f12642e = hVar;
    }

    @Override // com.hsae.autosdk.hmi.IHmiCallback
    public final void onAirConditionerInputKeyEvent(int i10, boolean z) {
        this.f12642e.b(new KeyEvent(!z ? 1 : 0, i10));
    }

    @Override // com.hsae.autosdk.hmi.IHmiCallback
    public final void onVirtualInputKeyEvent(int i10, boolean z) {
        this.f12642e.b(new KeyEvent(!z ? 1 : 0, i10));
    }
}
