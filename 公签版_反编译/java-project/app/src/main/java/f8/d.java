package f8;

import java.io.IOException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import z7.a0;
import z7.q;

/* loaded from: classes.dex */
public final class d extends a0 {

    /* renamed from: b, reason: collision with root package name */
    public static final c f5635b = new c();

    /* renamed from: a, reason: collision with root package name */
    public final SimpleDateFormat f5636a;

    public /* synthetic */ d(int i10) {
        this();
    }

    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        Time time;
        if (aVar.e0() == 9) {
            aVar.a0();
            return null;
        }
        String strC0 = aVar.c0();
        synchronized (this) {
            TimeZone timeZone = this.f5636a.getTimeZone();
            try {
                try {
                    time = new Time(this.f5636a.parse(strC0).getTime());
                } catch (ParseException e7) {
                    throw new q("Failed parsing '" + strC0 + "' as SQL Time; at path " + aVar.Q(), e7);
                }
            } finally {
                this.f5636a.setTimeZone(timeZone);
            }
        }
        return time;
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        String str;
        Time time = (Time) obj;
        if (time == null) {
            bVar.P();
            return;
        }
        synchronized (this) {
            str = this.f5636a.format((Date) time);
        }
        bVar.X(str);
    }

    private d() {
        this.f5636a = new SimpleDateFormat("hh:mm:ss a");
    }
}
