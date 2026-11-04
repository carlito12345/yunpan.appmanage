package f8;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.TimeZone;
import z7.a0;
import z7.q;

/* loaded from: classes.dex */
public final class b extends a0 {

    /* renamed from: b, reason: collision with root package name */
    public static final a f5633b = new a();

    /* renamed from: a, reason: collision with root package name */
    public final SimpleDateFormat f5634a;

    public /* synthetic */ b(int i10) {
        this();
    }

    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        Date date;
        if (aVar.e0() == 9) {
            aVar.a0();
            return null;
        }
        String strC0 = aVar.c0();
        synchronized (this) {
            TimeZone timeZone = this.f5634a.getTimeZone();
            try {
                try {
                    date = new Date(this.f5634a.parse(strC0).getTime());
                } catch (ParseException e7) {
                    throw new q("Failed parsing '" + strC0 + "' as SQL Date; at path " + aVar.Q(), e7);
                }
            } finally {
                this.f5634a.setTimeZone(timeZone);
            }
        }
        return date;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        String str;
        Date date = (Date) obj;
        if (date == null) {
            bVar.P();
            return;
        }
        synchronized (this) {
            str = this.f5634a.format((java.util.Date) date);
        }
        bVar.X(str);
    }

    private b() {
        this.f5634a = new SimpleDateFormat("MMM d, yyyy");
    }
}
