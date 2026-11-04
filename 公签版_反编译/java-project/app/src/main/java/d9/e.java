package d9;

/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4517a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f4518b;

    public e(b bVar, v3.f fVar) {
        this.f4518b = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4517a) {
            case 0:
                b bVar = this.f4518b;
                bVar.f4511e.f0();
                bVar.f4511e.getClass();
                break;
            default:
                b bVar2 = this.f4518b;
                bVar2.f4511e.getClass();
                try {
                    bVar2.d();
                    bVar2.e();
                    break;
                } catch (Throwable unused) {
                    v3.f.v(bVar2.f4510d, null);
                    bVar2.f4511e.f0();
                }
        }
    }

    public e(b bVar) {
        this.f4518b = bVar;
    }
}
