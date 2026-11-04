package j$.util.stream;

import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
final class S extends CountedCompleter {

    /* renamed from: a, reason: collision with root package name */
    private final AbstractC0167z0 f9330a;

    /* renamed from: b, reason: collision with root package name */
    private Spliterator f9331b;

    /* renamed from: c, reason: collision with root package name */
    private final long f9332c;

    /* renamed from: d, reason: collision with root package name */
    private final ConcurrentHashMap f9333d;

    /* renamed from: e, reason: collision with root package name */
    private final Q f9334e;

    /* renamed from: f, reason: collision with root package name */
    private final S f9335f;

    /* renamed from: g, reason: collision with root package name */
    private L0 f9336g;

    protected S(AbstractC0167z0 abstractC0167z0, Spliterator spliterator, Q q8) {
        super(null);
        this.f9330a = abstractC0167z0;
        this.f9331b = spliterator;
        this.f9332c = AbstractC0062e.g(spliterator.estimateSize());
        this.f9333d = new ConcurrentHashMap(Math.max(16, AbstractC0062e.b() << 1));
        this.f9334e = q8;
        this.f9335f = null;
    }

    S(S s8, Spliterator spliterator, S s10) {
        super(s8);
        this.f9330a = s8.f9330a;
        this.f9331b = spliterator;
        this.f9332c = s8.f9332c;
        this.f9333d = s8.f9333d;
        this.f9334e = s8.f9334e;
        this.f9335f = s10;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.f9331b;
        long j10 = this.f9332c;
        boolean z = false;
        S s8 = this;
        while (spliterator.estimateSize() > j10 && (spliteratorTrySplit = spliterator.trySplit()) != null) {
            S s10 = new S(s8, spliteratorTrySplit, s8.f9335f);
            S s11 = new S(s8, spliterator, s10);
            s8.addToPendingCount(1);
            s11.addToPendingCount(1);
            s8.f9333d.put(s10, s11);
            if (s8.f9335f != null) {
                s10.addToPendingCount(1);
                if (s8.f9333d.replace(s8.f9335f, s8, s10)) {
                    s8.addToPendingCount(-1);
                } else {
                    s10.addToPendingCount(-1);
                }
            }
            if (z) {
                spliterator = spliteratorTrySplit;
                s8 = s10;
                s10 = s11;
            } else {
                s8 = s11;
            }
            z = !z;
            s10.fork();
        }
        if (s8.getPendingCount() > 0) {
            C0117p c0117p = new C0117p(11);
            AbstractC0167z0 abstractC0167z0 = s8.f9330a;
            D0 D0 = abstractC0167z0.D0(abstractC0167z0.m0(spliterator), c0117p);
            s8.f9330a.H0(spliterator, D0);
            s8.f9336g = D0.a();
            s8.f9331b = null;
        }
        s8.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        L0 l02 = this.f9336g;
        if (l02 != null) {
            l02.forEach(this.f9334e);
            this.f9336g = null;
        } else {
            Spliterator spliterator = this.f9331b;
            if (spliterator != null) {
                this.f9330a.H0(spliterator, this.f9334e);
                this.f9331b = null;
            }
        }
        S s8 = (S) this.f9333d.remove(this);
        if (s8 != null) {
            s8.tryComplete();
        }
    }
}
