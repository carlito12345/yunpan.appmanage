package r3;

import java.util.regex.Pattern;
import u1.q;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f13663c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f13664d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");

    /* renamed from: a, reason: collision with root package name */
    public final q f13665a = new q();

    /* renamed from: b, reason: collision with root package name */
    public final StringBuilder f13666b = new StringBuilder();

    public static String a(q qVar, StringBuilder sb2) {
        boolean z = false;
        sb2.setLength(0);
        int i10 = qVar.f15267b;
        int i11 = qVar.f15268c;
        while (i10 < i11 && !z) {
            char c7 = (char) qVar.f15266a[i10];
            if ((c7 < 'A' || c7 > 'Z') && ((c7 < 'a' || c7 > 'z') && !((c7 >= '0' && c7 <= '9') || c7 == '#' || c7 == '-' || c7 == '.' || c7 == '_'))) {
                z = true;
            } else {
                i10++;
                sb2.append(c7);
            }
        }
        qVar.P(i10 - qVar.f15267b);
        return sb2.toString();
    }

    public static String b(q qVar, StringBuilder sb2) {
        c(qVar);
        if (qVar.a() == 0) {
            return null;
        }
        String strA = a(qVar, sb2);
        if (!strA.isEmpty()) {
            return strA;
        }
        return "" + ((char) qVar.B());
    }

    public static void c(q qVar) {
        while (true) {
            for (boolean z = true; qVar.a() > 0 && z; z = false) {
                int i10 = qVar.f15267b;
                byte[] bArr = qVar.f15266a;
                byte b10 = bArr[i10];
                char c7 = (char) b10;
                if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r' || c7 == ' ') {
                    qVar.P(1);
                } else {
                    int i11 = qVar.f15268c;
                    int i12 = i10 + 2;
                    if (i12 <= i11) {
                        int i13 = i10 + 1;
                        if (b10 == 47 && bArr[i13] == 42) {
                            while (true) {
                                int i14 = i12 + 1;
                                if (i14 >= i11) {
                                    break;
                                }
                                if (((char) bArr[i12]) == '*' && ((char) bArr[i14]) == '/') {
                                    i12 += 2;
                                    i11 = i12;
                                } else {
                                    i12 = i14;
                                }
                            }
                            qVar.P(i11 - qVar.f15267b);
                        }
                    }
                }
            }
            return;
        }
    }
}
