package tb;

import com.hsae.autosdk.popup.constant.PopupConst;

/* loaded from: classes.dex */
public final class s implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15005a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f15006b;

    public /* synthetic */ s(u uVar, int i10) {
        this.f15005a = i10;
        this.f15006b = uVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f15005a) {
            case 0:
                long jCurrentTimeMillis = System.currentTimeMillis();
                u uVar = this.f15006b;
                if (jCurrentTimeMillis - uVar.f15030q >= 3500) {
                    uVar.f15016a.invalidate();
                    break;
                }
                break;
            default:
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                u uVar2 = this.f15006b;
                if (jCurrentTimeMillis2 - uVar2.f15029p >= PopupConst.DURATION_POPUP_SHORT) {
                    uVar2.f15016a.invalidate();
                    break;
                }
                break;
        }
    }
}
