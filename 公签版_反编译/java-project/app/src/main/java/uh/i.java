package uh;

import org.slf4j.Marker;

/* loaded from: classes3.dex */
public final class i implements e {

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f16132c = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS"};

    /* renamed from: d, reason: collision with root package name */
    public static final i f16133d = new i("Z", "+HH:MM:ss");

    /* renamed from: a, reason: collision with root package name */
    public final String f16134a;

    /* renamed from: b, reason: collision with root package name */
    public final int f16135b;

    static {
        new i("0", "+HH:MM:ss");
    }

    public i(String str, String str2) {
        this.f16134a = str;
        int i10 = 0;
        while (true) {
            String[] strArr = f16132c;
            if (i10 >= 9) {
                throw new IllegalArgumentException("Invalid zone offset pattern: ".concat(str2));
            }
            if (strArr[i10].equals(str2)) {
                this.f16135b = i10;
                return;
            }
            i10++;
        }
    }

    @Override // uh.e
    public final boolean a(androidx.room.s sVar, StringBuilder sb2) {
        Long lM = sVar.m(wh.a.OFFSET_SECONDS);
        if (lM == null) {
            return false;
        }
        long jLongValue = lM.longValue();
        if (jLongValue > 2147483647L || jLongValue < -2147483648L) {
            throw new ArithmeticException(ta.q.j(jLongValue, "Calculation overflows an int: "));
        }
        int i10 = (int) jLongValue;
        String str = this.f16134a;
        if (i10 == 0) {
            sb2.append(str);
        } else {
            int iAbs = Math.abs((i10 / 3600) % 100);
            int iAbs2 = Math.abs((i10 / 60) % 60);
            int iAbs3 = Math.abs(i10 % 60);
            int length = sb2.length();
            sb2.append(i10 < 0 ? "-" : Marker.ANY_NON_NULL_MARKER);
            sb2.append((char) ((iAbs / 10) + 48));
            sb2.append((char) ((iAbs % 10) + 48));
            int i11 = this.f16135b;
            if (i11 >= 3 || (i11 >= 1 && iAbs2 > 0)) {
                int i12 = i11 % 2;
                sb2.append(i12 == 0 ? ":" : "");
                sb2.append((char) ((iAbs2 / 10) + 48));
                sb2.append((char) ((iAbs2 % 10) + 48));
                iAbs += iAbs2;
                if (i11 >= 7 || (i11 >= 5 && iAbs3 > 0)) {
                    sb2.append(i12 == 0 ? ":" : "");
                    sb2.append((char) ((iAbs3 / 10) + 48));
                    sb2.append((char) ((iAbs3 % 10) + 48));
                    iAbs += iAbs3;
                }
            }
            if (iAbs == 0) {
                sb2.setLength(length);
                sb2.append(str);
            }
        }
        return true;
    }

    public final String toString() {
        return "Offset(" + f16132c[this.f16135b] + ",'" + this.f16134a.replace("'", "''") + "')";
    }
}
