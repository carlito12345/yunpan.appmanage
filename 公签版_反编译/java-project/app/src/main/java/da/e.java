package da;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4522a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f4523b;

    public /* synthetic */ e(g gVar, int i10) {
        this.f4522a = i10;
        this.f4523b = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4522a) {
            case 0:
                this.f4523b.v();
                break;
            case 1:
                this.f4523b.v();
                break;
            case 2:
                this.f4523b.v();
                break;
            case 3:
                this.f4523b.v();
                break;
            default:
                this.f4523b.v();
                break;
        }
    }
}
