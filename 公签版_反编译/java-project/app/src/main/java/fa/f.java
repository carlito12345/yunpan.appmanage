package fa;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5680a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f5681b;

    public /* synthetic */ f(j jVar, int i10) {
        this.f5680a = i10;
        this.f5681b = jVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5680a) {
            case 0:
                this.f5681b.j();
                break;
            default:
                j jVar = this.f5681b;
                jVar.getClass();
                try {
                    jVar.f5696b.J("reboot:");
                    break;
                } catch (Exception unused) {
                    return;
                }
        }
    }
}
