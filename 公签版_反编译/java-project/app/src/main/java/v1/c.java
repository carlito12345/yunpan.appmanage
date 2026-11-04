package v1;

import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class c extends ab.a {

    /* renamed from: c, reason: collision with root package name */
    public final long f16328c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f16329d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f16330e;

    public c(int i10, long j10) {
        super(i10, 4);
        this.f16328c = j10;
        this.f16329d = new ArrayList();
        this.f16330e = new ArrayList();
    }

    public final c g(int i10) {
        ArrayList arrayList = this.f16330e;
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            c cVar = (c) arrayList.get(i11);
            if (cVar.f567b == i10) {
                return cVar;
            }
        }
        return null;
    }

    public final d i(int i10) {
        ArrayList arrayList = this.f16329d;
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            d dVar = (d) arrayList.get(i11);
            if (dVar.f567b == i10) {
                return dVar;
            }
        }
        return null;
    }

    @Override // ab.a
    public final String toString() {
        return ab.a.b(this.f567b) + " leaves: " + Arrays.toString(this.f16329d.toArray()) + " containers: " + Arrays.toString(this.f16330e.toArray());
    }
}
