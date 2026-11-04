package j$.util.stream;

import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
class A1 extends CountedCompleter {

    /* renamed from: a, reason: collision with root package name */
    protected final L0 f9179a;

    /* renamed from: b, reason: collision with root package name */
    protected final int f9180b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f9181c;

    /* renamed from: d, reason: collision with root package name */
    private final Object f9182d;

    public A1(L0 l02, Object obj, int i10) {
        this.f9181c = i10;
        this.f9179a = l02;
        this.f9180b = 0;
        this.f9182d = obj;
    }

    A1(A1 a12, L0 l02, int i10, byte b10) {
        super(a12);
        this.f9179a = l02;
        this.f9180b = i10;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        A1 a1A = this;
        while (a1A.f9179a.r() != 0) {
            a1A.setPendingCount(a1A.f9179a.r() - 1);
            int i10 = 0;
            int iCount = 0;
            while (i10 < a1A.f9179a.r() - 1) {
                A1 a1A2 = a1A.a(i10, a1A.f9180b + iCount);
                iCount = (int) (iCount + a1A2.f9179a.count());
                a1A2.fork();
                i10++;
            }
            a1A = a1A.a(i10, a1A.f9180b + iCount);
        }
        switch (a1A.f9181c) {
            case 0:
                ((K0) a1A.f9179a).d(a1A.f9182d, a1A.f9180b);
                break;
            default:
                a1A.f9179a.j((Object[]) a1A.f9182d, a1A.f9180b);
                break;
        }
        a1A.propagateCompletion();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public A1(A1 a12, L0 l02, int i10) {
        this(a12, l02, i10, (byte) 0);
        this.f9181c = 1;
        this.f9182d = (Object[]) a12.f9182d;
    }

    final A1 a(int i10, int i11) {
        switch (this.f9181c) {
            case 0:
                return new A1(this, ((K0) this.f9179a).b(i10), i11);
            default:
                return new A1(this, this.f9179a.b(i10), i11);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public A1(A1 a12, K0 k02, int i10) {
        this(a12, k02, i10, (byte) 0);
        this.f9181c = 0;
        this.f9182d = a12.f9182d;
    }
}
