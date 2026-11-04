package nc;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kc.c;

/* loaded from: classes.dex */
public final class b implements c {

    /* renamed from: i, reason: collision with root package name */
    public static final int f11341i = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* renamed from: j, reason: collision with root package name */
    public static final Object f11342j = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final AtomicLong f11343a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11344b;

    /* renamed from: c, reason: collision with root package name */
    public long f11345c;

    /* renamed from: d, reason: collision with root package name */
    public final int f11346d;

    /* renamed from: e, reason: collision with root package name */
    public AtomicReferenceArray f11347e;

    /* renamed from: f, reason: collision with root package name */
    public final int f11348f;

    /* renamed from: g, reason: collision with root package name */
    public AtomicReferenceArray f11349g;

    /* renamed from: h, reason: collision with root package name */
    public final AtomicLong f11350h;

    public b(int i10) {
        AtomicLong atomicLong = new AtomicLong();
        this.f11343a = atomicLong;
        this.f11350h = new AtomicLong();
        int iNumberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(Math.max(8, i10) - 1));
        int i11 = iNumberOfLeadingZeros - 1;
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(iNumberOfLeadingZeros + 1);
        this.f11347e = atomicReferenceArray;
        this.f11346d = i11;
        this.f11344b = Math.min(iNumberOfLeadingZeros / 4, f11341i);
        this.f11349g = atomicReferenceArray;
        this.f11348f = i11;
        this.f11345c = iNumberOfLeadingZeros - 2;
        atomicLong.lazySet(0L);
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
        return this.f11343a.get() == this.f11350h.get();
    }

    @Override // kc.d
    public final boolean offer(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        AtomicReferenceArray atomicReferenceArray = this.f11347e;
        AtomicLong atomicLong = this.f11343a;
        long j10 = atomicLong.get();
        int i10 = this.f11346d;
        int i11 = ((int) j10) & i10;
        if (j10 < this.f11345c) {
            atomicReferenceArray.lazySet(i11, obj);
            atomicLong.lazySet(j10 + 1);
            return true;
        }
        long j11 = this.f11344b + j10;
        if (atomicReferenceArray.get(((int) j11) & i10) == null) {
            this.f11345c = j11 - 1;
            atomicReferenceArray.lazySet(i11, obj);
            atomicLong.lazySet(j10 + 1);
            return true;
        }
        long j12 = j10 + 1;
        if (atomicReferenceArray.get(((int) j12) & i10) == null) {
            atomicReferenceArray.lazySet(i11, obj);
            atomicLong.lazySet(j12);
            return true;
        }
        AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(atomicReferenceArray.length());
        this.f11347e = atomicReferenceArray2;
        this.f11345c = (j10 + i10) - 1;
        atomicReferenceArray2.lazySet(i11, obj);
        atomicReferenceArray.lazySet(atomicReferenceArray.length() - 1, atomicReferenceArray2);
        atomicReferenceArray.lazySet(i11, f11342j);
        atomicLong.lazySet(j12);
        return true;
    }

    @Override // kc.d
    public final Object poll() {
        AtomicReferenceArray atomicReferenceArray = this.f11349g;
        AtomicLong atomicLong = this.f11350h;
        long j10 = atomicLong.get();
        int i10 = this.f11348f;
        int i11 = ((int) j10) & i10;
        Object obj = atomicReferenceArray.get(i11);
        boolean z = obj == f11342j;
        if (obj != null && !z) {
            atomicReferenceArray.lazySet(i11, null);
            atomicLong.lazySet(j10 + 1);
            return obj;
        }
        if (!z) {
            return null;
        }
        int i12 = i10 + 1;
        AtomicReferenceArray atomicReferenceArray2 = (AtomicReferenceArray) atomicReferenceArray.get(i12);
        atomicReferenceArray.lazySet(i12, null);
        this.f11349g = atomicReferenceArray2;
        Object obj2 = atomicReferenceArray2.get(i11);
        if (obj2 != null) {
            atomicReferenceArray2.lazySet(i11, null);
            atomicLong.lazySet(j10 + 1);
        }
        return obj2;
    }
}
