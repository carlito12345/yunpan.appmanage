package f8;

import java.sql.Date;
import java.sql.Timestamp;

/* loaded from: classes.dex */
public final class g extends c8.g {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5639c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(int i10) {
        super(Date.class);
        this.f5639c = i10;
        switch (i10) {
            case 1:
                super(Timestamp.class);
                break;
            default:
                break;
        }
    }

    @Override // c8.g
    public final java.util.Date a(java.util.Date date) {
        switch (this.f5639c) {
            case 0:
                return new Date(date.getTime());
            default:
                return new Timestamp(date.getTime());
        }
    }
}
