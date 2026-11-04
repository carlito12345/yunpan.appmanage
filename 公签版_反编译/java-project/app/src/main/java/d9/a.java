package d9;

/* loaded from: classes.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4505a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f4506b;

    public /* synthetic */ a(b bVar, v3.f fVar, int i10) {
        this.f4505a = i10;
        this.f4506b = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4505a) {
            case 0:
                b bVar = this.f4506b;
                bVar.f4511e.f0();
                bVar.f4511e.getClass();
                break;
            case 1:
                b bVar2 = this.f4506b;
                bVar2.f4511e.f0();
                bVar2.f4511e.getClass();
                break;
            default:
                b bVar3 = this.f4506b;
                bVar3.f4511e.getClass();
                try {
                    bVar3.d();
                    bVar3.e();
                    break;
                } catch (Throwable unused) {
                    v3.f.v(bVar3.f4510d, null);
                    bVar3.f4511e.f0();
                }
        }
    }

    public a(b bVar) {
        this.f4505a = 2;
        this.f4506b = bVar;
    }
}
