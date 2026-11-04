package h;

import java.math.BigInteger;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public final BigInteger f6279a;

    public u(int i10) {
        this.f6279a = BigInteger.valueOf(i10);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SerialNumber: [");
        String str = g.c.f5911a;
        String string = this.f6279a.toString(16);
        StringBuffer stringBuffer = new StringBuffer(string.length() * 2);
        if (string.startsWith("-")) {
            stringBuffer.append("   -");
            string = string.substring(1);
        } else {
            stringBuffer.append("    ");
        }
        if (string.length() % 2 != 0) {
            string = "0".concat(string);
        }
        int i10 = 0;
        while (i10 < string.length()) {
            int i11 = i10 + 2;
            stringBuffer.append(string.substring(i10, i11));
            if (i11 != string.length()) {
                if (i11 % 64 == 0) {
                    stringBuffer.append("\n    ");
                } else if (i11 % 8 == 0) {
                    stringBuffer.append(" ");
                }
            }
            i10 = i11;
        }
        sb2.append(stringBuffer.toString());
        sb2.append("]");
        return sb2.toString();
    }
}
