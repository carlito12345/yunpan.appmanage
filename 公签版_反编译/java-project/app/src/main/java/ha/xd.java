package ha;

/* loaded from: classes.dex */
public final /* synthetic */ class xd implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8064a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ge f8065b;

    public /* synthetic */ xd(ge geVar, int i10) {
        this.f8064a = i10;
        this.f8065b = geVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8064a) {
            case 0:
                this.f8065b.dismiss();
                break;
            default:
                this.f8065b.f7112i.setText("试听播放");
                break;
        }
    }
}
