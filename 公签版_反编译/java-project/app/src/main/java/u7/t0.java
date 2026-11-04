package u7;

import java.io.Serializable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class t0 implements t7.n, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final int f15529a;

    public t0() {
        q.c(2, "expectedValuesPerKey");
        this.f15529a = 2;
    }

    @Override // t7.n
    public final Object get() {
        return new ArrayList(this.f15529a);
    }
}
