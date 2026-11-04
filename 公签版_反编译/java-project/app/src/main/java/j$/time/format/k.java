package j$.time.format;

import j$.util.Objects;
import org.slf4j.Marker;

/* loaded from: classes2.dex */
final class k implements g {

    /* renamed from: d, reason: collision with root package name */
    static final String[] f8853d = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS", "+HHmmss", "+HH:mm:ss", "+H", "+Hmm", "+H:mm", "+HMM", "+H:MM", "+HMMss", "+H:MM:ss", "+HMMSS", "+H:MM:SS", "+Hmmss", "+H:mm:ss"};

    /* renamed from: e, reason: collision with root package name */
    static final k f8854e = new k("+HH:MM:ss", "Z");

    /* renamed from: a, reason: collision with root package name */
    private final String f8855a;

    /* renamed from: b, reason: collision with root package name */
    private final int f8856b;

    /* renamed from: c, reason: collision with root package name */
    private final int f8857c;

    static {
        new k("+HH:MM:ss", "0");
    }

    k(String str, String str2) {
        Objects.requireNonNull(str, "pattern");
        Objects.requireNonNull(str2, "noOffsetText");
        int i10 = 0;
        while (true) {
            String[] strArr = f8853d;
            if (i10 < 22) {
                if (strArr[i10].equals(str)) {
                    this.f8856b = i10;
                    this.f8857c = i10 % 11;
                    this.f8855a = str2;
                    return;
                }
                i10++;
            } else {
                throw new IllegalArgumentException("Invalid zone offset pattern: ".concat(str));
            }
        }
    }

    @Override // j$.time.format.g
    public final boolean j(q qVar, StringBuilder sb2) {
        Long lE = qVar.e(j$.time.temporal.a.OFFSET_SECONDS);
        boolean z = false;
        if (lE == null) {
            return false;
        }
        long jLongValue = lE.longValue();
        int i10 = (int) jLongValue;
        if (jLongValue != i10) {
            throw new ArithmeticException();
        }
        String str = this.f8855a;
        if (i10 == 0) {
            sb2.append(str);
        } else {
            int iAbs = Math.abs((i10 / 3600) % 100);
            int iAbs2 = Math.abs((i10 / 60) % 60);
            int iAbs3 = Math.abs(i10 % 60);
            int length = sb2.length();
            sb2.append(i10 < 0 ? "-" : Marker.ANY_NON_NULL_MARKER);
            if (this.f8856b >= 11 && iAbs < 10) {
                sb2.append((char) (iAbs + 48));
            } else {
                a(false, iAbs, sb2);
            }
            int i11 = this.f8857c;
            if ((i11 >= 3 && i11 <= 8) || ((i11 >= 9 && iAbs3 > 0) || (i11 >= 1 && iAbs2 > 0))) {
                a(i11 > 0 && i11 % 2 == 0, iAbs2, sb2);
                iAbs += iAbs2;
                if (i11 == 7 || i11 == 8 || (i11 >= 5 && iAbs3 > 0)) {
                    if (i11 > 0 && i11 % 2 == 0) {
                        z = true;
                    }
                    a(z, iAbs3, sb2);
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

    private static void a(boolean z, int i10, StringBuilder sb2) {
        sb2.append(z ? ":" : "");
        sb2.append((char) ((i10 / 10) + 48));
        sb2.append((char) ((i10 % 10) + 48));
    }

    public final String toString() {
        String strReplace = this.f8855a.replace("'", "''");
        return "Offset(" + f8853d[this.f8856b] + ",'" + strReplace + "')";
    }
}
