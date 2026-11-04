package androidx.fragment.app;

/* loaded from: classes.dex */
public final class v implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1411a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Fragment f1412b;

    public /* synthetic */ v(Fragment fragment, int i10) {
        this.f1411a = i10;
        this.f1412b = fragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1411a) {
            case 0:
                this.f1412b.startPostponedEnterTransition();
                break;
            default:
                this.f1412b.callStartTransitionListener(false);
                break;
        }
    }
}
