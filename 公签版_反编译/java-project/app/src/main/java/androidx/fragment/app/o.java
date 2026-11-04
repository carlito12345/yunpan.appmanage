package androidx.fragment.app;

/* loaded from: classes.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1357a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1358b;

    public /* synthetic */ o(int i10, Object obj) {
        this.f1357a = i10;
        this.f1358b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1357a) {
            case 0:
                s sVar = (s) this.f1358b;
                sVar.f1382b.onDismiss(sVar.f1390j);
                break;
            case 1:
                ((n) this.f1358b).d();
                break;
            default:
                ((d1) this.f1358b).y(true);
                break;
        }
    }
}
