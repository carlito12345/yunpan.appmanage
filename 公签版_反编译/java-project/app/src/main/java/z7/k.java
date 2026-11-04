package z7;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* loaded from: classes.dex */
public final class k extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19451a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a0 f19452b;

    public /* synthetic */ k(a0 a0Var, int i10) {
        this.f19451a = i10;
        this.f19452b = a0Var;
    }

    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        switch (this.f19451a) {
            case 0:
                return new AtomicLong(((Number) this.f19452b.b(aVar)).longValue());
            default:
                ArrayList arrayList = new ArrayList();
                aVar.r();
                while (aVar.R()) {
                    arrayList.add(Long.valueOf(((Number) this.f19452b.b(aVar)).longValue()));
                }
                aVar.L();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i10 = 0; i10 < size; i10++) {
                    atomicLongArray.set(i10, ((Long) arrayList.get(i10)).longValue());
                }
                return atomicLongArray;
        }
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        switch (this.f19451a) {
            case 0:
                this.f19452b.c(bVar, Long.valueOf(((AtomicLong) obj).get()));
                break;
            default:
                AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
                bVar.A();
                int length = atomicLongArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    this.f19452b.c(bVar, Long.valueOf(atomicLongArray.get(i10)));
                }
                bVar.L();
                break;
        }
    }
}
