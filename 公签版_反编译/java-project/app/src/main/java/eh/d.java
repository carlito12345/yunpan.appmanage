package eh;

import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class d implements dh.a {

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f4983f = {14, 13, 12, 11, 5, 2, 1};

    /* renamed from: a, reason: collision with root package name */
    public SimpleDateFormat f4984a;

    /* renamed from: b, reason: collision with root package name */
    public int f4985b;

    /* renamed from: c, reason: collision with root package name */
    public SimpleDateFormat f4986c;

    /* renamed from: d, reason: collision with root package name */
    public int f4987d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4988e;

    public d() {
        e("MMM d yyyy", null);
        f("MMM d HH:mm", null);
    }

    public static int b(SimpleDateFormat simpleDateFormat) {
        if (simpleDateFormat == null) {
            return 0;
        }
        String pattern = simpleDateFormat.toPattern();
        for (char c7 : "SsmHdM".toCharArray()) {
            if (pattern.indexOf(c7) != -1) {
                if (c7 == 'H') {
                    return c(11);
                }
                if (c7 == 'M') {
                    return c(2);
                }
                if (c7 == 'S') {
                    return c(14);
                }
                if (c7 == 'd') {
                    return c(5);
                }
                if (c7 == 'm') {
                    return c(12);
                }
                if (c7 == 's') {
                    return c(13);
                }
            }
        }
        return 0;
    }

    public static int c(int i10) {
        for (int i11 = 0; i11 < 7; i11++) {
            if (i10 == f4983f[i11]) {
                return i11;
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
    @Override // dh.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(dh.f fVar) {
        DateFormatSymbols dateFormatSymbols;
        fVar.getClass();
        Object obj = dh.f.f4659e.get("en");
        if (obj == null) {
            dateFormatSymbols = new DateFormatSymbols(Locale.US);
        } else if (obj instanceof Locale) {
            dateFormatSymbols = new DateFormatSymbols((Locale) obj);
        } else if (obj instanceof String) {
            StringTokenizer stringTokenizer = new StringTokenizer((String) obj, "|");
            if (12 != stringTokenizer.countTokens()) {
                throw new IllegalArgumentException("expecting a pipe-delimited string containing 12 tokens");
            }
            String[] strArr = new String[13];
            int i10 = 0;
            while (stringTokenizer.hasMoreTokens()) {
                strArr[i10] = stringTokenizer.nextToken();
                i10++;
            }
            strArr[i10] = "";
            dateFormatSymbols = new DateFormatSymbols(Locale.US);
            dateFormatSymbols.setShortMonths(strArr);
        }
        f(fVar.f4662c, dateFormatSymbols);
        String str = fVar.f4661b;
        if (str == null) {
            throw new IllegalArgumentException("defaultFormatString cannot be null");
        }
        e(str, dateFormatSymbols);
        TimeZone timeZone = TimeZone.getDefault();
        this.f4984a.setTimeZone(timeZone);
        SimpleDateFormat simpleDateFormat = this.f4986c;
        if (simpleDateFormat != null) {
            simpleDateFormat.setTimeZone(timeZone);
        }
        this.f4988e = fVar.f4663d;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Calendar d(String str) throws ParseException {
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = (Calendar) calendar.clone();
        calendar2.setTimeZone(this.f4984a.getTimeZone());
        SimpleDateFormat simpleDateFormat = this.f4986c;
        int[] iArr = f4983f;
        if (simpleDateFormat != null) {
            Calendar calendar3 = (Calendar) calendar.clone();
            calendar3.setTimeZone(this.f4984a.getTimeZone());
            if (this.f4988e) {
                calendar3.add(5, 1);
            }
            String strK = g.b.k(str, " ", Integer.toString(calendar3.get(1)));
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(this.f4986c.toPattern() + " yyyy", this.f4986c.getDateFormatSymbols());
            simpleDateFormat2.setLenient(false);
            simpleDateFormat2.setTimeZone(this.f4986c.getTimeZone());
            ParsePosition parsePosition = new ParsePosition(0);
            Date date = simpleDateFormat2.parse(strK, parsePosition);
            if (date == null || parsePosition.getIndex() != strK.length()) {
                ParsePosition parsePosition2 = new ParsePosition(0);
                Date date2 = this.f4984a.parse(str, parsePosition2);
                if (date2 == null || parsePosition2.getIndex() != str.length()) {
                    StringBuilder sbD = da.b.d("Timestamp '", str, "' could not be parsed using a server time of ");
                    sbD.append(calendar.getTime().toString());
                    throw new ParseException(sbD.toString(), parsePosition2.getErrorIndex());
                }
                calendar2.setTime(date2);
                int i10 = this.f4985b;
                if (i10 > 0) {
                    int i11 = iArr[i10 - 1];
                    if (calendar2.get(i11) == 0) {
                        calendar2.clear(i11);
                    }
                }
            } else {
                calendar2.setTime(date);
                if (calendar2.after(calendar3)) {
                    calendar2.add(1, -1);
                }
                int i12 = this.f4987d;
                if (i12 > 0) {
                    int i13 = iArr[i12 - 1];
                    if (calendar2.get(i13) == 0) {
                        calendar2.clear(i13);
                    }
                }
            }
        }
        return calendar2;
    }

    public final void e(String str, DateFormatSymbols dateFormatSymbols) {
        if (str != null) {
            if (dateFormatSymbols != null) {
                this.f4984a = new SimpleDateFormat(str, dateFormatSymbols);
            } else {
                this.f4984a = new SimpleDateFormat(str);
            }
            this.f4984a.setLenient(false);
        } else {
            this.f4984a = null;
        }
        this.f4985b = b(this.f4984a);
    }

    public final void f(String str, DateFormatSymbols dateFormatSymbols) {
        if (str != null) {
            if (dateFormatSymbols != null) {
                this.f4986c = new SimpleDateFormat(str, dateFormatSymbols);
            } else {
                this.f4986c = new SimpleDateFormat(str);
            }
            this.f4986c.setLenient(false);
        } else {
            this.f4986c = null;
        }
        this.f4987d = b(this.f4986c);
    }
}
