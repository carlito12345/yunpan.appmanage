package c8;

import j$.util.Objects;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class h extends z7.a0 {

    /* renamed from: c, reason: collision with root package name */
    public static final e f2920c = new e();

    /* renamed from: a, reason: collision with root package name */
    public final g f2921a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f2922b;

    public h(g gVar, int i10, int i11) {
        String str;
        String str2;
        ArrayList arrayList = new ArrayList();
        this.f2922b = arrayList;
        Objects.requireNonNull(gVar);
        this.f2921a = gVar;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(i10, i11, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(i10, i11));
        }
        if (b8.i.f2630a >= 9) {
            StringBuilder sb2 = new StringBuilder();
            if (i10 == 0) {
                str = "EEEE, MMMM d, yyyy";
            } else if (i10 == 1) {
                str = "MMMM d, yyyy";
            } else if (i10 == 2) {
                str = "MMM d, yyyy";
            } else {
                if (i10 != 3) {
                    throw new IllegalArgumentException(da.b.a(i10, "Unknown DateFormat style: "));
                }
                str = "M/d/yy";
            }
            sb2.append(str);
            sb2.append(" ");
            if (i11 == 0 || i11 == 1) {
                str2 = "h:mm:ss a z";
            } else if (i11 == 2) {
                str2 = "h:mm:ss a";
            } else {
                if (i11 != 3) {
                    throw new IllegalArgumentException(da.b.a(i11, "Unknown DateFormat style: "));
                }
                str2 = "h:mm a";
            }
            sb2.append(str2);
            arrayList.add(new SimpleDateFormat(sb2.toString(), locale));
        }
    }

    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        Date dateB;
        if (aVar.e0() == 9) {
            aVar.a0();
            return null;
        }
        String strC0 = aVar.c0();
        synchronized (this.f2922b) {
            try {
                Iterator it = this.f2922b.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        try {
                            dateB = d8.a.b(strC0, new ParsePosition(0));
                            break;
                        } catch (ParseException e7) {
                            StringBuilder sbD = da.b.d("Failed parsing '", strC0, "' as Date; at path ");
                            sbD.append(aVar.Q());
                            throw new z7.q(sbD.toString(), e7);
                        }
                    }
                    DateFormat dateFormat = (DateFormat) it.next();
                    TimeZone timeZone = dateFormat.getTimeZone();
                    try {
                        try {
                            dateB = dateFormat.parse(strC0);
                            break;
                        } finally {
                            dateFormat.setTimeZone(timeZone);
                        }
                    } catch (ParseException unused) {
                        dateFormat.setTimeZone(timeZone);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f2921a.a(dateB);
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        String str;
        Date date = (Date) obj;
        if (date == null) {
            bVar.P();
            return;
        }
        DateFormat dateFormat = (DateFormat) this.f2922b.get(0);
        synchronized (this.f2922b) {
            str = dateFormat.format(date);
        }
        bVar.X(str);
    }

    public final String toString() {
        DateFormat dateFormat = (DateFormat) this.f2922b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }
}
