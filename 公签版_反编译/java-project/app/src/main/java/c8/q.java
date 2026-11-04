package c8;

import java.util.Calendar;
import java.util.GregorianCalendar;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public final class q implements z7.b0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2940a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2941b;

    public /* synthetic */ q(int i10, Object obj) {
        this.f2940a = i10;
        this.f2941b = obj;
    }

    @Override // z7.b0
    public final z7.a0 a(z7.m mVar, g8.a aVar) {
        switch (this.f2940a) {
            case 0:
                if (aVar.f6121a == Number.class) {
                    return (r) this.f2941b;
                }
                return null;
            case 1:
                if (aVar.f6121a == Object.class) {
                    return new s(mVar, (z7.y) this.f2941b);
                }
                return null;
            default:
                Class cls = aVar.f6121a;
                if (cls == Calendar.class || cls == GregorianCalendar.class) {
                    return (t0) this.f2941b;
                }
                return null;
        }
    }

    public String toString() {
        switch (this.f2940a) {
            case 2:
                return "Factory[type=" + Calendar.class.getName() + Marker.ANY_NON_NULL_MARKER + GregorianCalendar.class.getName() + ",adapter=" + ((t0) this.f2941b) + "]";
            default:
                return super.toString();
        }
    }
}
