package pa;

import com.hsae.autosdk.reverse.Reverse;
import wa.s;

/* loaded from: classes.dex */
public final class c implements Reverse.ReverseStateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f12628a;

    public c(e eVar) {
        this.f12628a = eVar;
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseStateListener
    public final void onReverseStateChanged(boolean z) {
        e eVar = this.f12628a;
        if (eVar.f12635f) {
            eVar.f12635f = false;
        } else if (z) {
            s.c().i(10008);
        } else {
            s.c().i(10009);
        }
    }
}
