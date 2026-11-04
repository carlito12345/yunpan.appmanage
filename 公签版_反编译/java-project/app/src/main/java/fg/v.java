package fg;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class v {

    /* renamed from: a, reason: collision with root package name */
    public static final u f5882a = new u(new byte[0], 0, 0, false, false);

    /* renamed from: b, reason: collision with root package name */
    public static final int f5883b;

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicReference[] f5884c;

    static {
        int iHighestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f5883b = iHighestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[iHighestOneBit];
        for (int i10 = 0; i10 < iHighestOneBit; i10++) {
            atomicReferenceArr[i10] = new AtomicReference();
        }
        f5884c = atomicReferenceArr;
    }

    public static final void a(u uVar) {
        ue.d.e(uVar, "segment");
        if (uVar.f5880f != null || uVar.f5881g != null) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (uVar.f5878d) {
            return;
        }
        AtomicReference atomicReference = f5884c[(int) (Thread.currentThread().getId() & (f5883b - 1))];
        u uVar2 = f5882a;
        u uVar3 = (u) atomicReference.getAndSet(uVar2);
        if (uVar3 == uVar2) {
            return;
        }
        int i10 = uVar3 != null ? uVar3.f5877c : 0;
        if (i10 >= 65536) {
            atomicReference.set(uVar3);
            return;
        }
        uVar.f5880f = uVar3;
        uVar.f5876b = 0;
        uVar.f5877c = i10 + 8192;
        atomicReference.set(uVar);
    }

    public static final u b() {
        AtomicReference atomicReference = f5884c[(int) (Thread.currentThread().getId() & (f5883b - 1))];
        u uVar = f5882a;
        u uVar2 = (u) atomicReference.getAndSet(uVar);
        if (uVar2 == uVar) {
            return new u();
        }
        if (uVar2 == null) {
            atomicReference.set(null);
            return new u();
        }
        atomicReference.set(uVar2.f5880f);
        uVar2.f5880f = null;
        uVar2.f5877c = 0;
        return uVar2;
    }
}
