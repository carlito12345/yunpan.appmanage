package androidx.leanback.widget.picker;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import androidx.activity.h;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import n1.a;
import o1.d;
import o1.e;
import o1.f;

/* loaded from: classes.dex */
public class DatePicker extends d {
    public static final int[] E = {5, 2, 1};
    public final Calendar A;
    public final Calendar B;
    public final Calendar C;
    public final Calendar D;

    /* renamed from: q, reason: collision with root package name */
    public String f1679q;
    public e r;

    /* renamed from: s, reason: collision with root package name */
    public e f1680s;

    /* renamed from: t, reason: collision with root package name */
    public e f1681t;

    /* renamed from: v, reason: collision with root package name */
    public int f1682v;

    /* renamed from: w, reason: collision with root package name */
    public int f1683w;

    /* renamed from: x, reason: collision with root package name */
    public int f1684x;

    /* renamed from: y, reason: collision with root package name */
    public final SimpleDateFormat f1685y;
    public final kf.d z;

    public DatePicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy");
        this.f1685y = simpleDateFormat;
        Locale locale = Locale.getDefault();
        getContext().getResources();
        boolean z = f.f11512a;
        this.z = new kf.d(locale);
        this.D = f.a(this.D, locale);
        this.A = f.a(this.A, (Locale) this.z.f10286b);
        this.B = f.a(this.B, (Locale) this.z.f10286b);
        this.C = f.a(this.C, (Locale) this.z.f10286b);
        e eVar = this.r;
        if (eVar != null) {
            eVar.f11510d = (String[]) this.z.f10287c;
            a(this.f1682v, eVar);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f11247d);
        String string = typedArrayObtainStyledAttributes.getString(0);
        String string2 = typedArrayObtainStyledAttributes.getString(1);
        this.D.clear();
        if (TextUtils.isEmpty(string)) {
            this.D.set(1900, 0, 1);
        } else {
            try {
                this.D.setTime(simpleDateFormat.parse(string));
            } catch (ParseException unused) {
                this.D.set(1900, 0, 1);
            }
        }
        this.A.setTimeInMillis(this.D.getTimeInMillis());
        this.D.clear();
        if (TextUtils.isEmpty(string2)) {
            this.D.set(2100, 0, 1);
        } else {
            try {
                this.D.setTime(this.f1685y.parse(string2));
            } catch (ParseException unused2) {
                this.D.set(2100, 0, 1);
            }
        }
        this.B.setTimeInMillis(this.D.getTimeInMillis());
        String string3 = typedArrayObtainStyledAttributes.getString(2);
        setDatePickerFormat(TextUtils.isEmpty(string3) ? new String(DateFormat.getDateFormatOrder(context)) : string3);
    }

    public long getDate() {
        return this.C.getTimeInMillis();
    }

    public String getDatePickerFormat() {
        return this.f1679q;
    }

    public long getMaxDate() {
        return this.B.getTimeInMillis();
    }

    public long getMinDate() {
        return this.A.getTimeInMillis();
    }

    public void setDatePickerFormat(String str) {
        String localizedPattern;
        int i10 = 6;
        kf.d dVar = this.z;
        String str2 = TextUtils.isEmpty(str) ? new String(DateFormat.getDateFormatOrder(getContext())) : str;
        if (TextUtils.equals(this.f1679q, str2)) {
            return;
        }
        this.f1679q = str2;
        if (f.f11512a) {
            localizedPattern = DateFormat.getBestDateTimePattern((Locale) dVar.f10286b, str2);
        } else {
            java.text.DateFormat dateFormat = DateFormat.getDateFormat(getContext());
            localizedPattern = dateFormat instanceof SimpleDateFormat ? ((SimpleDateFormat) dateFormat).toLocalizedPattern() : "MM/dd/yyyy";
        }
        String str3 = TextUtils.isEmpty(localizedPattern) ? "MM/dd/yyyy" : localizedPattern;
        ArrayList arrayList = new ArrayList();
        StringBuilder sb2 = new StringBuilder();
        char[] cArr = {'Y', 'y', 'M', 'm', 'D', 'd'};
        int i11 = 0;
        boolean z = false;
        char c7 = 0;
        while (i11 < str3.length()) {
            char cCharAt = str3.charAt(i11);
            if (cCharAt != ' ') {
                if (cCharAt != '\'') {
                    if (!z) {
                        int i12 = 0;
                        while (true) {
                            if (i12 >= i10) {
                                sb2.append(cCharAt);
                                break;
                            } else if (cCharAt != cArr[i12]) {
                                i12++;
                                i10 = 6;
                            } else if (cCharAt != c7) {
                                arrayList.add(sb2.toString());
                                sb2.setLength(0);
                            }
                        }
                    } else {
                        sb2.append(cCharAt);
                    }
                    c7 = cCharAt;
                } else if (z) {
                    z = false;
                } else {
                    sb2.setLength(0);
                    z = true;
                }
            }
            i11++;
            i10 = 6;
        }
        arrayList.add(sb2.toString());
        if (arrayList.size() != str2.length() + 1) {
            throw new IllegalStateException("Separators size: " + arrayList.size() + " must equal the size of datePickerFormat: " + str2.length() + " + 1");
        }
        setSeparators(arrayList);
        this.f1680s = null;
        this.r = null;
        this.f1681t = null;
        this.f1682v = -1;
        this.f1683w = -1;
        this.f1684x = -1;
        String upperCase = str2.toUpperCase();
        ArrayList arrayList2 = new ArrayList(3);
        for (int i13 = 0; i13 < upperCase.length(); i13++) {
            char cCharAt2 = upperCase.charAt(i13);
            if (cCharAt2 == 'D') {
                if (this.f1680s != null) {
                    throw new IllegalArgumentException("datePicker format error");
                }
                e eVar = new e();
                this.f1680s = eVar;
                arrayList2.add(eVar);
                this.f1680s.f11511e = "%02d";
                this.f1683w = i13;
            } else if (cCharAt2 != 'M') {
                if (cCharAt2 != 'Y') {
                    throw new IllegalArgumentException("datePicker format error");
                }
                if (this.f1681t != null) {
                    throw new IllegalArgumentException("datePicker format error");
                }
                e eVar2 = new e();
                this.f1681t = eVar2;
                arrayList2.add(eVar2);
                this.f1684x = i13;
                this.f1681t.f11511e = "%d";
            } else {
                if (this.r != null) {
                    throw new IllegalArgumentException("datePicker format error");
                }
                e eVar3 = new e();
                this.r = eVar3;
                arrayList2.add(eVar3);
                this.r.f11510d = (String[]) dVar.f10287c;
                this.f1682v = i13;
            }
        }
        setColumns(arrayList2);
        post(new h(13, this));
    }

    public void setMaxDate(long j10) {
        this.D.setTimeInMillis(j10);
        if (this.D.get(1) != this.B.get(1) || this.D.get(6) == this.B.get(6)) {
            this.B.setTimeInMillis(j10);
            if (this.C.after(this.B)) {
                this.C.setTimeInMillis(this.B.getTimeInMillis());
            }
            post(new h(13, this));
        }
    }

    public void setMinDate(long j10) {
        this.D.setTimeInMillis(j10);
        if (this.D.get(1) != this.A.get(1) || this.D.get(6) == this.A.get(6)) {
            this.A.setTimeInMillis(j10);
            if (this.C.before(this.A)) {
                this.C.setTimeInMillis(this.A.getTimeInMillis());
            }
            post(new h(13, this));
        }
    }
}
