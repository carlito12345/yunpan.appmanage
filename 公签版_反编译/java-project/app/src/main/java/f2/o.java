package f2;

import android.content.Context;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements t7.n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5335a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5336b;

    public /* synthetic */ o(int i10, Object obj) {
        this.f5335a = i10;
        this.f5336b = obj;
    }

    @Override // t7.n
    public final Object get() {
        switch (this.f5335a) {
            case 0:
                try {
                    return (b0) ((Class) this.f5336b).getConstructor(null).newInstance(null);
                } catch (Exception e7) {
                    throw new IllegalStateException(e7);
                }
            default:
                return s1.g.v((Context) this.f5336b);
        }
    }
}
