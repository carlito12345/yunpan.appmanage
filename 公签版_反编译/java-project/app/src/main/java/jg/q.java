package jg;

import java.util.function.ToLongFunction;

/* loaded from: classes.dex */
public final /* synthetic */ class q implements ToLongFunction {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9943a;

    @Override // java.util.function.ToLongFunction
    public final long applyAsLong(Object obj) {
        switch (this.f9943a) {
            case 0:
                return ((Integer) obj).longValue();
            default:
                return ((kg.f) obj).f10317a;
        }
    }
}
