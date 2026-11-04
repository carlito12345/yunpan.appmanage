package u1;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15184a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b5.i f15185b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15186c;

    public /* synthetic */ b(b5.i iVar, Object obj, int i10) {
        this.f15184a = i10;
        this.f15185b = iVar;
        this.f15186c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f15184a) {
            case 0:
                b5.i iVar = this.f15185b;
                int i10 = iVar.f2571a - 1;
                iVar.f2571a = i10;
                if (i10 == 0) {
                    iVar.q(this.f15186c);
                    break;
                }
                break;
            default:
                b5.i iVar2 = this.f15185b;
                if (iVar2.f2571a == 0) {
                    iVar2.q(this.f15186c);
                    break;
                }
                break;
        }
    }
}
