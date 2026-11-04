package qh;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class s0 implements AutoCloseable {

    /* renamed from: b, reason: collision with root package name */
    public static final char[] f13341b = {'*', '|', '_', '-'};

    /* renamed from: a, reason: collision with root package name */
    public final b f13342a;

    public s0(String str) {
        this.f13342a = new b(str);
    }

    public static boolean L(char c7) {
        return c7 == '-' || oh.f.g(c7) || c7 == '_' || oh.f.e(c7) || c7 >= 128;
    }

    public static String N(String str) {
        if (str.indexOf(92) == -1) {
            return str;
        }
        StringBuilder sbB = oh.f.b();
        char c7 = 0;
        for (char c10 : str.toCharArray()) {
            if (c10 == '\\') {
                if (c7 == '\\') {
                    sbB.append(c10);
                    c7 = 0;
                }
            } else {
                sbB.append(c10);
            }
            c7 = c10;
        }
        return oh.f.l(sbB);
    }

    public final String A(char c7, char c10) throws IOException {
        StringBuilder sbB = oh.f.b();
        b bVar = this.f13342a;
        if (bVar.f13200e - bVar.f13199d < 1024) {
            bVar.f13201f = 0;
        }
        bVar.A();
        bVar.f13203h = bVar.f13199d;
        char c11 = 0;
        boolean z = false;
        boolean z4 = false;
        int i10 = 0;
        boolean z10 = false;
        while (!this.f13342a.R()) {
            char cK = this.f13342a.K();
            if (c11 == '\\') {
                if (cK == 'Q') {
                    z10 = true;
                } else if (cK == 'E') {
                    z10 = false;
                }
                sbB.append(cK);
            } else {
                if (cK == '\'' && cK != c7 && !z) {
                    z4 = !z4;
                } else if (cK == '\"' && cK != c7 && !z4) {
                    z = !z;
                }
                if (z4 || z || z10) {
                    sbB.append(cK);
                } else if (cK == c7) {
                    i10++;
                    if (i10 > 1) {
                        sbB.append(cK);
                    }
                } else if (cK != c10 || i10 - 1 > 0) {
                    sbB.append(cK);
                }
            }
            if (i10 <= 0) {
                break;
            }
            c11 = cK;
        }
        String strL = oh.f.l(sbB);
        if (i10 <= 0) {
            return strL;
        }
        this.f13342a.c0();
        throw new nh.c("Did not find balanced marker at '" + strL + "'");
    }

    public final String J() {
        char cQ;
        if (this.f13342a.R()) {
            throw new IllegalArgumentException("CSS identifier expected, but end of input found");
        }
        b bVar = this.f13342a;
        bVar.A();
        int i10 = bVar.f13199d;
        int i11 = bVar.f13200e;
        char[] cArr = bVar.f13198c;
        int i12 = i10;
        while (i12 < i11 && L(cArr[i12])) {
            i12++;
        }
        bVar.f13199d = i12;
        String strJ = i12 > i10 ? b.J(bVar.f13198c, bVar.f13196a, i10, i12 - i10) : "";
        char cQ2 = this.f13342a.Q();
        if (cQ2 != '\\' && cQ2 != 0) {
            return strJ;
        }
        StringBuilder sbB = oh.f.b();
        if (!strJ.isEmpty()) {
            sbB.append(strJ);
        }
        while (!this.f13342a.R()) {
            char cQ3 = this.f13342a.Q();
            if (!L(cQ3)) {
                if (cQ3 != 0) {
                    if (cQ3 != '\\') {
                        break;
                    }
                    r();
                    if (!this.f13342a.R() && ((cQ = this.f13342a.Q()) == '\n' || cQ == '\r' || cQ == '\f')) {
                        this.f13342a.d0();
                        break;
                    }
                    if (this.f13342a.R()) {
                        sbB.append((char) 65533);
                    } else {
                        char cK = this.f13342a.K();
                        if (oh.f.h(cK)) {
                            this.f13342a.d0();
                            b bVar2 = this.f13342a;
                            bVar2.A();
                            int i13 = bVar2.f13199d;
                            int i14 = bVar2.f13200e;
                            char[] cArr2 = bVar2.f13198c;
                            int i15 = i13;
                            while (i15 < i14 && i15 - i13 < 6 && oh.f.h(cArr2[i15])) {
                                i15++;
                            }
                            bVar2.f13199d = i15;
                            String strJ2 = i15 > i13 ? b.J(bVar2.f13198c, bVar2.f13196a, i13, i15 - i13) : "";
                            try {
                                int i16 = Integer.parseInt(strJ2, 16);
                                if (i16 == 0 || !Character.isValidCodePoint(i16) || Character.isSurrogate((char) i16)) {
                                    sbB.append((char) 65533);
                                } else {
                                    sbB.appendCodePoint(i16);
                                }
                                if (!this.f13342a.R()) {
                                    char cQ4 = this.f13342a.Q();
                                    if (cQ4 == '\r') {
                                        r();
                                        if (!this.f13342a.R() && this.f13342a.Q() == '\n') {
                                            r();
                                        }
                                    } else if (cQ4 == ' ' || cQ4 == '\t' || cQ4 == '\n' || cQ4 == '\r' || cQ4 == '\f') {
                                        r();
                                    }
                                }
                            } catch (NumberFormatException e7) {
                                throw new IllegalArgumentException("Invalid escape sequence: ".concat(strJ2), e7);
                            }
                        } else {
                            sbB.append(cK);
                        }
                    }
                } else {
                    r();
                    sbB.append((char) 65533);
                }
            } else {
                sbB.append(this.f13342a.K());
            }
        }
        return oh.f.l(sbB);
    }

    public final boolean K() {
        boolean z = false;
        while (oh.f.i(this.f13342a.Q())) {
            r();
            z = true;
        }
        return z;
    }

    public final boolean M(char c7) {
        if (!this.f13342a.V(c7)) {
            return false;
        }
        this.f13342a.K();
        return true;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f13342a.close();
    }

    public final void r() {
        if (this.f13342a.R()) {
            return;
        }
        this.f13342a.r();
    }

    public final String toString() {
        return this.f13342a.toString();
    }
}
