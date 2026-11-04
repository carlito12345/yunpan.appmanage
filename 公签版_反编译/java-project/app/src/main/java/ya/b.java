package ya;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19018a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f19019b;

    public /* synthetic */ b(e eVar, int i10) {
        this.f19018a = i10;
        this.f19019b = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19018a) {
            case 0:
                this.f19019b.a();
                break;
            default:
                int[] iArr = new int[2];
                e eVar = this.f19019b;
                eVar.f19032i.getLocationOnScreen(iArr);
                eVar.f19026c.putInt("floatButton_x", iArr[0]);
                eVar.f19026c.putInt("floatButton_y", iArr[1]);
                eVar.f19026c.apply();
                break;
        }
    }
}
