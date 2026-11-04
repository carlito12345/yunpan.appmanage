package sb;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class g extends je.d {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f14476a;

    public g(ArrayList arrayList) {
        this.f14476a = arrayList;
    }

    @Override // je.d
    public final int a() {
        return this.f14476a.size();
    }

    @Override // java.util.List
    public final Object get(int i10) {
        return this.f14476a.get((r0.size() - 1) - i10);
    }
}
