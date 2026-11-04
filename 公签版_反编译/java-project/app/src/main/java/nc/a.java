package nc;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kc.c;

/* loaded from: classes.dex */
public final class a extends AtomicReferenceArray implements c {

    /* renamed from: f, reason: collision with root package name */
    public static final Integer f11335f = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);

    /* renamed from: a, reason: collision with root package name */
    public final int f11336a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicLong f11337b;

    /* renamed from: c, reason: collision with root package name */
    public long f11338c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicLong f11339d;

    /* renamed from: e, reason: collision with root package name */
    public final int f11340e;

    public a(int i10) {
        super(1 << (32 - Integer.numberOfLeadingZeros(i10 - 1)));
        this.f11336a = length() - 1;
        this.f11337b = new AtomicLong();
        this.f11339d = new AtomicLong();
        this.f11340e = Math.min(i10 / 4, f11335f.intValue());
    }

    @Override // kc.d
    public final void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // kc.d
    public final boolean isEmpty() {
        return this.f11337b.get() == this.f11339d.get();
    }

    @Override // kc.d
    public final boolean offer(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        AtomicLong atomicLong = this.f11337b;
        long j10 = atomicLong.get();
        int i10 = this.f11336a;
        int i11 = ((int) j10) & i10;
        if (j10 >= this.f11338c) {
            long j11 = this.f11340e + j10;
            if (get(i10 & ((int) j11)) == null) {
                this.f11338c = j11;
            } else if (get(i11) != null) {
                return false;
            }
        }
        lazySet(i11, obj);
        atomicLong.lazySet(j10 + 1);
        return true;
    }

    @Override // kc.d
    public final Object poll() {
        AtomicLong atomicLong = this.f11339d;
        long j10 = atomicLong.get();
        int i10 = ((int) j10) & this.f11336a;
        Object obj = get(i10);
        if (obj == null) {
            return null;
        }
        atomicLong.lazySet(j10 + 1);
        lazySet(i10, null);
        return obj;
    }
}
