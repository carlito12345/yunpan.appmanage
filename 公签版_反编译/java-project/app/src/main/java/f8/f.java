package f8;

import java.sql.Timestamp;
import java.util.Date;
import z7.a0;

/* loaded from: classes.dex */
public final class f extends a0 {

    /* renamed from: b, reason: collision with root package name */
    public static final e f5637b = new e();

    /* renamed from: a, reason: collision with root package name */
    public final a0 f5638a;

    public f(a0 a0Var) {
        this.f5638a = a0Var;
    }

    @Override // z7.a0
    public final Object b(h8.a aVar) {
        Date date = (Date) this.f5638a.b(aVar);
        if (date != null) {
            return new Timestamp(date.getTime());
        }
        return null;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) {
        this.f5638a.c(bVar, (Timestamp) obj);
    }
}
