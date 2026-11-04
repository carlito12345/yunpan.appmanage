package y1;

import android.content.Context;
import android.content.ContextWrapper;
import java.util.HashMap;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements t7.n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18718a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ContextWrapper f18719b;

    public /* synthetic */ l(ContextWrapper contextWrapper, int i10) {
        this.f18718a = i10;
        this.f18719b = contextWrapper;
    }

    @Override // t7.n
    public final Object get() {
        i2.f fVar;
        switch (this.f18718a) {
            case 0:
                return new i(this.f18719b);
            case 1:
                return new f2.q(this.f18719b, new l2.m());
            case 2:
                return new h2.n(this.f18719b);
            default:
                ContextWrapper contextWrapper = this.f18719b;
                u7.y0 y0Var = i2.f.f8438p;
                synchronized (i2.f.class) {
                    try {
                        if (i2.f.f8443v == null) {
                            Context applicationContext = contextWrapper == null ? null : contextWrapper.getApplicationContext();
                            HashMap map = new HashMap(8);
                            map.put(0, 1000000L);
                            map.put(2, -9223372036854775807L);
                            map.put(3, -9223372036854775807L);
                            map.put(4, -9223372036854775807L);
                            map.put(5, -9223372036854775807L);
                            map.put(10, -9223372036854775807L);
                            map.put(9, -9223372036854775807L);
                            map.put(7, -9223372036854775807L);
                            i2.f.f8443v = new i2.f(applicationContext, map);
                        }
                        fVar = i2.f.f8443v;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return fVar;
        }
    }
}
