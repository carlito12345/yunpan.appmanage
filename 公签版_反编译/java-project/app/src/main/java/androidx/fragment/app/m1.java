package androidx.fragment.app;

/* loaded from: classes.dex */
public final class m1 {

    /* renamed from: a, reason: collision with root package name */
    public int f1341a;

    /* renamed from: b, reason: collision with root package name */
    public Fragment f1342b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1343c;

    /* renamed from: d, reason: collision with root package name */
    public int f1344d;

    /* renamed from: e, reason: collision with root package name */
    public int f1345e;

    /* renamed from: f, reason: collision with root package name */
    public int f1346f;

    /* renamed from: g, reason: collision with root package name */
    public int f1347g;

    /* renamed from: h, reason: collision with root package name */
    public androidx.lifecycle.n f1348h;

    /* renamed from: i, reason: collision with root package name */
    public androidx.lifecycle.n f1349i;

    public m1() {
    }

    public m1(Fragment fragment, int i10) {
        this.f1341a = i10;
        this.f1342b = fragment;
        this.f1343c = false;
        androidx.lifecycle.n nVar = androidx.lifecycle.n.RESUMED;
        this.f1348h = nVar;
        this.f1349i = nVar;
    }

    public m1(int i10, Fragment fragment, int i11) {
        this.f1341a = i10;
        this.f1342b = fragment;
        this.f1343c = true;
        androidx.lifecycle.n nVar = androidx.lifecycle.n.RESUMED;
        this.f1348h = nVar;
        this.f1349i = nVar;
    }

    public m1(Fragment fragment, androidx.lifecycle.n nVar) {
        this.f1341a = 10;
        this.f1342b = fragment;
        this.f1343c = false;
        this.f1348h = fragment.mMaxState;
        this.f1349i = nVar;
    }
}
