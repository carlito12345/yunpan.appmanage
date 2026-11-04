package i5;

/* loaded from: classes.dex */
public final class b extends a.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f8608b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(int i10) {
        super(2);
        this.f8608b = i10;
    }

    public final i t() {
        switch (this.f8608b) {
            case 0:
                return new a(this);
            case 1:
                return new f(this);
            default:
                return new k(this);
        }
    }
}
