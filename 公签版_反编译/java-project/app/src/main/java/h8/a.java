package h8;

import j$.util.Objects;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import m7.e;
import ta.q;

/* loaded from: classes.dex */
public class a implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final Reader f6682a;

    /* renamed from: h, reason: collision with root package name */
    public long f6689h;

    /* renamed from: i, reason: collision with root package name */
    public int f6690i;

    /* renamed from: j, reason: collision with root package name */
    public String f6691j;

    /* renamed from: k, reason: collision with root package name */
    public int[] f6692k;

    /* renamed from: m, reason: collision with root package name */
    public String[] f6693m;

    /* renamed from: n, reason: collision with root package name */
    public int[] f6694n;

    /* renamed from: p, reason: collision with root package name */
    public int f6695p = 2;

    /* renamed from: b, reason: collision with root package name */
    public final char[] f6683b = new char[1024];

    /* renamed from: c, reason: collision with root package name */
    public int f6684c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f6685d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f6686e = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f6687f = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f6688g = 0;
    public int l = 1;

    static {
        e.f10902c = new e(29);
    }

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.f6692k = iArr;
        iArr[0] = 6;
        this.f6693m = new String[32];
        this.f6694n = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.f6682a = reader;
    }

    public void A() throws IOException {
        int iK = this.f6688g;
        if (iK == 0) {
            iK = K();
        }
        if (iK != 1) {
            throw n0("BEGIN_OBJECT");
        }
        f0(3);
        this.f6688g = 0;
    }

    public final void J() throws c {
        if (this.f6695p == 1) {
            return;
        }
        m0("Use JsonReader.setStrictness(Strictness.LENIENT) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:172:0x021b, code lost:
    
        if (S(r1) != false) goto L125;
     */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0184 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0281 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int K() throws IOException {
        int iZ;
        int iZ2;
        int i10;
        String str;
        String str2;
        int i11;
        char c7;
        char c10;
        int i12;
        int i13;
        int[] iArr = this.f6692k;
        boolean z = true;
        int i14 = this.l - 1;
        int i15 = iArr[i14];
        char[] cArr = this.f6683b;
        if (i15 == 1) {
            iArr[i14] = 2;
        } else if (i15 == 2) {
            int iZ3 = Z(true);
            if (iZ3 != 44) {
                if (iZ3 != 59) {
                    if (iZ3 == 93) {
                        this.f6688g = 4;
                        return 4;
                    }
                    m0("Unterminated array");
                    throw null;
                }
                J();
            }
        } else {
            if (i15 == 3 || i15 == 5) {
                iArr[i14] = 4;
                if (i15 == 5 && (iZ = Z(true)) != 44) {
                    if (iZ != 59) {
                        if (iZ == 125) {
                            this.f6688g = 2;
                            return 2;
                        }
                        m0("Unterminated object");
                        throw null;
                    }
                    J();
                }
                int iZ4 = Z(true);
                if (iZ4 == 34) {
                    this.f6688g = 13;
                    return 13;
                }
                if (iZ4 == 39) {
                    J();
                    this.f6688g = 12;
                    return 12;
                }
                if (iZ4 == 125) {
                    if (i15 != 5) {
                        this.f6688g = 2;
                        return 2;
                    }
                    m0("Expected name");
                    throw null;
                }
                J();
                this.f6684c--;
                if (S((char) iZ4)) {
                    this.f6688g = 14;
                    return 14;
                }
                m0("Expected name");
                throw null;
            }
            if (i15 == 4) {
                iArr[i14] = 5;
                int iZ5 = Z(true);
                if (iZ5 != 58) {
                    if (iZ5 != 61) {
                        m0("Expected ':'");
                        throw null;
                    }
                    J();
                    if (this.f6684c < this.f6685d || N(1)) {
                        int i16 = this.f6684c;
                        if (cArr[i16] == '>') {
                            this.f6684c = i16 + 1;
                        }
                    }
                }
            } else {
                if (i15 != 6) {
                    if (i15 == 7) {
                        if (Z(false) == -1) {
                            this.f6688g = 17;
                            return 17;
                        }
                        J();
                        this.f6684c--;
                    } else if (i15 == 8) {
                        throw new IllegalStateException("JsonReader is closed");
                    }
                    iZ2 = Z(true);
                    if (iZ2 != 34) {
                        this.f6688g = 9;
                        return 9;
                    }
                    if (iZ2 == 39) {
                        J();
                        this.f6688g = 8;
                        return 8;
                    }
                    if (iZ2 == 44 || iZ2 == 59) {
                        i10 = 1;
                    } else {
                        if (iZ2 == 91) {
                            this.f6688g = 3;
                            return 3;
                        }
                        if (iZ2 == 93) {
                            i10 = 1;
                            if (i15 == 1) {
                                this.f6688g = 4;
                                return 4;
                            }
                        } else {
                            if (iZ2 == 123) {
                                this.f6688g = 1;
                                return 1;
                            }
                            int i17 = this.f6684c - 1;
                            this.f6684c = i17;
                            char c11 = cArr[i17];
                            if (c11 == 't' || c11 == 'T') {
                                str = "true";
                                str2 = "TRUE";
                                i11 = 5;
                            } else if (c11 == 'f' || c11 == 'F') {
                                str = "false";
                                str2 = "FALSE";
                                i11 = 6;
                            } else {
                                if (c11 == 'n' || c11 == 'N') {
                                    str = "null";
                                    str2 = "NULL";
                                    i11 = 7;
                                }
                                i11 = 0;
                                if (i11 == 0) {
                                    return i11;
                                }
                                int i18 = this.f6684c;
                                int i19 = this.f6685d;
                                long j10 = 0;
                                char c12 = 0;
                                int i20 = 0;
                                boolean z4 = true;
                                boolean z10 = false;
                                while (true) {
                                    if (i18 + i20 == i19) {
                                        if (i20 == cArr.length) {
                                            break;
                                        }
                                        if (!N(i20 + 1)) {
                                            break;
                                        }
                                        int i21 = this.f6684c;
                                        i19 = this.f6685d;
                                        i18 = i21;
                                        c10 = cArr[i18 + i20];
                                        if (c10 != '+') {
                                        }
                                    } else {
                                        c10 = cArr[i18 + i20];
                                        if (c10 != '+') {
                                            i12 = i19;
                                            if (c12 != 5) {
                                                break;
                                            }
                                            c12 = 6;
                                            i20++;
                                            i19 = i12;
                                            z = true;
                                        } else if (c10 == 'E' || c10 == 'e') {
                                            i12 = i19;
                                            if (c12 != 2 && c12 != 4) {
                                                break;
                                            }
                                            c12 = 5;
                                            i20++;
                                            i19 = i12;
                                            z = true;
                                        } else if (c10 == '-') {
                                            i12 = i19;
                                            if (c12 == 0) {
                                                c12 = 1;
                                                z10 = true;
                                                i20++;
                                                i19 = i12;
                                                z = true;
                                            } else {
                                                if (c12 != 5) {
                                                    break;
                                                }
                                                c12 = 6;
                                                i20++;
                                                i19 = i12;
                                                z = true;
                                            }
                                        } else if (c10 == '.') {
                                            i12 = i19;
                                            if (c12 != 2) {
                                                break;
                                            }
                                            c12 = 3;
                                            i20++;
                                            i19 = i12;
                                            z = true;
                                        } else {
                                            if (c10 < '0' || c10 > '9') {
                                                break;
                                            }
                                            if (c12 == z || c12 == 0) {
                                                i12 = i19;
                                                j10 = -(c10 - '0');
                                                c12 = 2;
                                            } else if (c12 != 2) {
                                                i12 = i19;
                                                if (c12 == 3) {
                                                    c12 = 4;
                                                } else if (c12 == 5 || c12 == 6) {
                                                    c12 = 7;
                                                }
                                            } else {
                                                if (j10 == 0) {
                                                    break;
                                                }
                                                i12 = i19;
                                                long j11 = (10 * j10) - (c10 - '0');
                                                z4 &= j10 > -922337203685477580L || (j10 == -922337203685477580L && j11 < j10);
                                                j10 = j11;
                                            }
                                            i20++;
                                            i19 = i12;
                                            z = true;
                                        }
                                    }
                                    if (i13 == 0) {
                                        return i13;
                                    }
                                    if (!S(cArr[this.f6684c])) {
                                        m0("Expected value");
                                        throw null;
                                    }
                                    J();
                                    this.f6688g = 10;
                                    return 10;
                                }
                                char c13 = 2;
                                if (c12 != 2) {
                                    if (c12 != c13 || c12 == 4 || c12 == 7) {
                                        this.f6690i = i20;
                                        i13 = 16;
                                        this.f6688g = 16;
                                    } else {
                                        i13 = 0;
                                    }
                                } else if (!z4 || ((j10 == Long.MIN_VALUE && !z10) || (j10 == 0 && z10))) {
                                    c13 = 2;
                                    if (c12 != c13) {
                                    }
                                    this.f6690i = i20;
                                    i13 = 16;
                                    this.f6688g = 16;
                                } else {
                                    if (!z10) {
                                        j10 = -j10;
                                    }
                                    this.f6689h = j10;
                                    this.f6684c += i20;
                                    i13 = 15;
                                    this.f6688g = 15;
                                }
                                if (i13 == 0) {
                                }
                            }
                            boolean z11 = this.f6695p != 3;
                            int length = str.length();
                            int i22 = 0;
                            while (true) {
                                if (i22 < length) {
                                    if ((this.f6684c + i22 >= this.f6685d && !N(i22 + 1)) || ((c7 = cArr[this.f6684c + i22]) != str.charAt(i22) && (!z11 || c7 != str2.charAt(i22)))) {
                                        break;
                                    }
                                    i22++;
                                } else {
                                    if ((this.f6684c + length < this.f6685d || N(length + 1)) && S(cArr[this.f6684c + length])) {
                                        break;
                                    }
                                    this.f6684c += length;
                                    this.f6688g = i11;
                                }
                            }
                            i11 = 0;
                            if (i11 == 0) {
                            }
                        }
                    }
                    if (i15 != i10 && i15 != 2) {
                        m0("Unexpected value");
                        throw null;
                    }
                    J();
                    this.f6684c -= i10;
                    this.f6688g = 7;
                    return 7;
                }
                if (this.f6695p == 1) {
                    Z(true);
                    int i23 = this.f6684c;
                    this.f6684c = i23 - 1;
                    if (i23 + 4 <= this.f6685d || N(5)) {
                        int i24 = this.f6684c;
                        if (cArr[i24] == ')' && cArr[i24 + 1] == ']' && cArr[i24 + 2] == '}' && cArr[i24 + 3] == '\'' && cArr[i24 + 4] == '\n') {
                            this.f6684c = i24 + 5;
                        }
                    }
                }
                this.f6692k[this.l - 1] = 7;
            }
        }
        iZ2 = Z(true);
        if (iZ2 != 34) {
        }
    }

    public void L() throws IOException {
        int iK = this.f6688g;
        if (iK == 0) {
            iK = K();
        }
        if (iK != 4) {
            throw n0("END_ARRAY");
        }
        int i10 = this.l;
        this.l = i10 - 1;
        int[] iArr = this.f6694n;
        int i11 = i10 - 2;
        iArr[i11] = iArr[i11] + 1;
        this.f6688g = 0;
    }

    public void M() throws IOException {
        int iK = this.f6688g;
        if (iK == 0) {
            iK = K();
        }
        if (iK != 2) {
            throw n0("END_OBJECT");
        }
        int i10 = this.l;
        int i11 = i10 - 1;
        this.l = i11;
        this.f6693m[i11] = null;
        int[] iArr = this.f6694n;
        int i12 = i10 - 2;
        iArr[i12] = iArr[i12] + 1;
        this.f6688g = 0;
    }

    public final boolean N(int i10) throws IOException {
        int i11;
        int i12;
        int i13 = this.f6687f;
        int i14 = this.f6684c;
        this.f6687f = i13 - i14;
        int i15 = this.f6685d;
        char[] cArr = this.f6683b;
        if (i15 != i14) {
            int i16 = i15 - i14;
            this.f6685d = i16;
            System.arraycopy(cArr, i14, cArr, 0, i16);
        } else {
            this.f6685d = 0;
        }
        this.f6684c = 0;
        do {
            int i17 = this.f6685d;
            int i18 = this.f6682a.read(cArr, i17, cArr.length - i17);
            if (i18 == -1) {
                return false;
            }
            i11 = this.f6685d + i18;
            this.f6685d = i11;
            if (this.f6686e == 0 && (i12 = this.f6687f) == 0 && i11 > 0 && cArr[0] == 65279) {
                this.f6684c++;
                this.f6687f = i12 + 1;
                i10++;
            }
        } while (i11 < i10);
        return true;
    }

    public String O() {
        return P(false);
    }

    public final String P(boolean z) {
        StringBuilder sb2 = new StringBuilder("$");
        int i10 = 0;
        while (true) {
            int i11 = this.l;
            if (i10 >= i11) {
                return sb2.toString();
            }
            int i12 = this.f6692k[i10];
            switch (i12) {
                case 1:
                case 2:
                    int i13 = this.f6694n[i10];
                    if (z && i13 > 0 && i10 == i11 - 1) {
                        i13--;
                    }
                    sb2.append('[');
                    sb2.append(i13);
                    sb2.append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    sb2.append('.');
                    String str = this.f6693m[i10];
                    if (str == null) {
                        break;
                    } else {
                        sb2.append(str);
                        break;
                    }
                case 6:
                case 7:
                case 8:
                    break;
                default:
                    throw new AssertionError(da.b.a(i12, "Unknown scope value: "));
            }
            i10++;
        }
    }

    public String Q() {
        return P(true);
    }

    public boolean R() throws IOException {
        int iK = this.f6688g;
        if (iK == 0) {
            iK = K();
        }
        return (iK == 2 || iK == 4 || iK == 17) ? false : true;
    }

    public final boolean S(char c7) throws c {
        if (c7 == '\t' || c7 == '\n' || c7 == '\f' || c7 == '\r' || c7 == ' ') {
            return false;
        }
        if (c7 != '#') {
            if (c7 == ',') {
                return false;
            }
            if (c7 != '/' && c7 != '=') {
                if (c7 == '{' || c7 == '}' || c7 == ':') {
                    return false;
                }
                if (c7 != ';') {
                    switch (c7) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        J();
        return false;
    }

    final String T() {
        StringBuilder sbO = q.o(this.f6686e + 1, (this.f6684c - this.f6687f) + 1, " at line ", " column ", " path ");
        sbO.append(O());
        return sbO.toString();
    }

    public boolean U() throws IOException {
        int iK = this.f6688g;
        if (iK == 0) {
            iK = K();
        }
        if (iK == 5) {
            this.f6688g = 0;
            int[] iArr = this.f6694n;
            int i10 = this.l - 1;
            iArr[i10] = iArr[i10] + 1;
            return true;
        }
        if (iK != 6) {
            throw n0("a boolean");
        }
        this.f6688g = 0;
        int[] iArr2 = this.f6694n;
        int i11 = this.l - 1;
        iArr2[i11] = iArr2[i11] + 1;
        return false;
    }

    public double V() throws IOException, NumberFormatException {
        int iK = this.f6688g;
        if (iK == 0) {
            iK = K();
        }
        if (iK == 15) {
            this.f6688g = 0;
            int[] iArr = this.f6694n;
            int i10 = this.l - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f6689h;
        }
        if (iK == 16) {
            this.f6691j = new String(this.f6683b, this.f6684c, this.f6690i);
            this.f6684c += this.f6690i;
        } else if (iK == 8 || iK == 9) {
            this.f6691j = b0(iK == 8 ? '\'' : '\"');
        } else if (iK == 10) {
            this.f6691j = d0();
        } else if (iK != 11) {
            throw n0("a double");
        }
        this.f6688g = 11;
        double d10 = Double.parseDouble(this.f6691j);
        if (this.f6695p != 1 && (Double.isNaN(d10) || Double.isInfinite(d10))) {
            m0("JSON forbids NaN and infinities: " + d10);
            throw null;
        }
        this.f6691j = null;
        this.f6688g = 0;
        int[] iArr2 = this.f6694n;
        int i11 = this.l - 1;
        iArr2[i11] = iArr2[i11] + 1;
        return d10;
    }

    public int W() throws IOException, NumberFormatException {
        int iK = this.f6688g;
        if (iK == 0) {
            iK = K();
        }
        if (iK == 15) {
            long j10 = this.f6689h;
            int i10 = (int) j10;
            if (j10 != i10) {
                throw new NumberFormatException("Expected an int but was " + this.f6689h + T());
            }
            this.f6688g = 0;
            int[] iArr = this.f6694n;
            int i11 = this.l - 1;
            iArr[i11] = iArr[i11] + 1;
            return i10;
        }
        if (iK == 16) {
            this.f6691j = new String(this.f6683b, this.f6684c, this.f6690i);
            this.f6684c += this.f6690i;
        } else {
            if (iK != 8 && iK != 9 && iK != 10) {
                throw n0("an int");
            }
            if (iK == 10) {
                this.f6691j = d0();
            } else {
                this.f6691j = b0(iK == 8 ? '\'' : '\"');
            }
            try {
                int i12 = Integer.parseInt(this.f6691j);
                this.f6688g = 0;
                int[] iArr2 = this.f6694n;
                int i13 = this.l - 1;
                iArr2[i13] = iArr2[i13] + 1;
                return i12;
            } catch (NumberFormatException unused) {
            }
        }
        this.f6688g = 11;
        double d10 = Double.parseDouble(this.f6691j);
        int i14 = (int) d10;
        if (i14 != d10) {
            throw new NumberFormatException("Expected an int but was " + this.f6691j + T());
        }
        this.f6691j = null;
        this.f6688g = 0;
        int[] iArr3 = this.f6694n;
        int i15 = this.l - 1;
        iArr3[i15] = iArr3[i15] + 1;
        return i14;
    }

    public long X() throws IOException, NumberFormatException {
        int iK = this.f6688g;
        if (iK == 0) {
            iK = K();
        }
        if (iK == 15) {
            this.f6688g = 0;
            int[] iArr = this.f6694n;
            int i10 = this.l - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f6689h;
        }
        if (iK == 16) {
            this.f6691j = new String(this.f6683b, this.f6684c, this.f6690i);
            this.f6684c += this.f6690i;
        } else {
            if (iK != 8 && iK != 9 && iK != 10) {
                throw n0("a long");
            }
            if (iK == 10) {
                this.f6691j = d0();
            } else {
                this.f6691j = b0(iK == 8 ? '\'' : '\"');
            }
            try {
                long j10 = Long.parseLong(this.f6691j);
                this.f6688g = 0;
                int[] iArr2 = this.f6694n;
                int i11 = this.l - 1;
                iArr2[i11] = iArr2[i11] + 1;
                return j10;
            } catch (NumberFormatException unused) {
            }
        }
        this.f6688g = 11;
        double d10 = Double.parseDouble(this.f6691j);
        long j11 = (long) d10;
        if (j11 != d10) {
            throw new NumberFormatException("Expected a long but was " + this.f6691j + T());
        }
        this.f6691j = null;
        this.f6688g = 0;
        int[] iArr3 = this.f6694n;
        int i12 = this.l - 1;
        iArr3[i12] = iArr3[i12] + 1;
        return j11;
    }

    public String Y() throws IOException {
        String strB0;
        int iK = this.f6688g;
        if (iK == 0) {
            iK = K();
        }
        if (iK == 14) {
            strB0 = d0();
        } else if (iK == 12) {
            strB0 = b0('\'');
        } else {
            if (iK != 13) {
                throw n0("a name");
            }
            strB0 = b0('\"');
        }
        this.f6688g = 0;
        this.f6693m[this.l - 1] = strB0;
        return strB0;
    }

    public final int Z(boolean z) throws IOException {
        int i10 = this.f6684c;
        int i11 = this.f6685d;
        while (true) {
            if (i10 == i11) {
                this.f6684c = i10;
                if (!N(1)) {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException("End of input" + T());
                }
                i10 = this.f6684c;
                i11 = this.f6685d;
            }
            int i12 = i10 + 1;
            char[] cArr = this.f6683b;
            char c7 = cArr[i10];
            if (c7 == '\n') {
                this.f6686e++;
                this.f6687f = i12;
            } else if (c7 != ' ' && c7 != '\r' && c7 != '\t') {
                if (c7 == '/') {
                    this.f6684c = i12;
                    if (i12 == i11) {
                        this.f6684c = i10;
                        boolean zN = N(2);
                        this.f6684c++;
                        if (!zN) {
                            return c7;
                        }
                    }
                    J();
                    int i13 = this.f6684c;
                    char c10 = cArr[i13];
                    if (c10 == '*') {
                        this.f6684c = i13 + 1;
                        while (true) {
                            if (this.f6684c + 2 > this.f6685d && !N(2)) {
                                m0("Unterminated comment");
                                throw null;
                            }
                            int i14 = this.f6684c;
                            if (cArr[i14] != '\n') {
                                for (int i15 = 0; i15 < 2; i15++) {
                                    if (cArr[this.f6684c + i15] != "*/".charAt(i15)) {
                                        break;
                                    }
                                }
                                i10 = this.f6684c + 2;
                                i11 = this.f6685d;
                                break;
                            }
                            this.f6686e++;
                            this.f6687f = i14 + 1;
                            this.f6684c++;
                        }
                    } else {
                        if (c10 != '/') {
                            return c7;
                        }
                        this.f6684c = i13 + 1;
                        j0();
                        i10 = this.f6684c;
                        i11 = this.f6685d;
                    }
                } else {
                    if (c7 != '#') {
                        this.f6684c = i12;
                        return c7;
                    }
                    this.f6684c = i12;
                    J();
                    j0();
                    i10 = this.f6684c;
                    i11 = this.f6685d;
                }
            }
            i10 = i12;
        }
    }

    public void a0() throws IOException {
        int iK = this.f6688g;
        if (iK == 0) {
            iK = K();
        }
        if (iK != 7) {
            throw n0("null");
        }
        this.f6688g = 0;
        int[] iArr = this.f6694n;
        int i10 = this.l - 1;
        iArr[i10] = iArr[i10] + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x003d, code lost:
    
        r11.f6684c = r8;
        r8 = r8 - r3;
        r2 = r8 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0042, code lost:
    
        if (r1 != null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0044, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max(r8 * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006b, code lost:
    
        if (r1 != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006d, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007b, code lost:
    
        r1.append(r5, r3, r2 - r3);
        r11.f6684c = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String b0(char c7) throws c {
        char[] cArr;
        int i10;
        StringBuilder sb2 = null;
        do {
            int i11 = this.f6684c;
            int i12 = this.f6685d;
            while (true) {
                int i13 = i12;
                int i14 = i11;
                while (true) {
                    cArr = this.f6683b;
                    if (i11 >= i13) {
                        break;
                    }
                    int i15 = i11 + 1;
                    char c10 = cArr[i11];
                    if (this.f6695p == 3 && c10 < ' ') {
                        m0("Unescaped control characters (\\u0000-\\u001F) are not allowed in strict mode");
                        throw null;
                    }
                    if (c10 == c7) {
                        this.f6684c = i15;
                        int i16 = (i15 - i14) - 1;
                        if (sb2 == null) {
                            return new String(cArr, i14, i16);
                        }
                        sb2.append(cArr, i14, i16);
                        return sb2.toString();
                    }
                    if (c10 == '\\') {
                        break;
                    }
                    if (c10 == '\n') {
                        this.f6686e++;
                        this.f6687f = i15;
                    }
                    i11 = i15;
                }
                sb2.append(cArr, i14, i10);
                sb2.append(g0());
                i11 = this.f6684c;
                i12 = this.f6685d;
            }
        } while (N(1));
        m0("Unterminated string");
        throw null;
    }

    public String c0() throws IOException {
        String str;
        int iK = this.f6688g;
        if (iK == 0) {
            iK = K();
        }
        if (iK == 10) {
            str = d0();
        } else if (iK == 8) {
            str = b0('\'');
        } else if (iK == 9) {
            str = b0('\"');
        } else if (iK == 11) {
            str = this.f6691j;
            this.f6691j = null;
        } else if (iK == 15) {
            str = Long.toString(this.f6689h);
        } else {
            if (iK != 16) {
                throw n0("a string");
            }
            str = new String(this.f6683b, this.f6684c, this.f6690i);
            this.f6684c += this.f6690i;
        }
        this.f6688g = 0;
        int[] iArr = this.f6694n;
        int i10 = this.l - 1;
        iArr[i10] = iArr[i10] + 1;
        return str;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6688g = 0;
        this.f6692k[0] = 8;
        this.l = 1;
        this.f6682a.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
    
        J();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:46:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String d0() throws c {
        char[] cArr;
        String string;
        StringBuilder sb2 = null;
        int i10 = 0;
        do {
            int i11 = 0;
            while (true) {
                int i12 = this.f6684c;
                int i13 = i12 + i11;
                int i14 = this.f6685d;
                cArr = this.f6683b;
                if (i13 < i14) {
                    char c7 = cArr[i12 + i11];
                    if (c7 != '\t' && c7 != '\n' && c7 != '\f' && c7 != '\r' && c7 != ' ') {
                        if (c7 != '#') {
                            if (c7 != ',') {
                                if (c7 != '/' && c7 != '=') {
                                    if (c7 != '{' && c7 != '}' && c7 != ':') {
                                        if (c7 != ';') {
                                            switch (c7) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i11++;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else if (i11 >= cArr.length) {
                    if (sb2 == null) {
                        sb2 = new StringBuilder(Math.max(i11, 16));
                    }
                    sb2.append(cArr, this.f6684c, i11);
                    this.f6684c += i11;
                } else if (N(i11 + 1)) {
                }
            }
            i10 = i11;
            if (sb2 != null) {
                string = new String(cArr, this.f6684c, i10);
            } else {
                sb2.append(cArr, this.f6684c, i10);
                string = sb2.toString();
            }
            this.f6684c += i10;
            return string;
        } while (N(1));
        if (sb2 != null) {
        }
        this.f6684c += i10;
        return string;
    }

    public int e0() throws IOException {
        int iK = this.f6688g;
        if (iK == 0) {
            iK = K();
        }
        switch (iK) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case 9:
            case 10:
            case 11:
                return 6;
            case 12:
            case 13:
            case 14:
                return 5;
            case 15:
            case 16:
                return 7;
            case 17:
                return 10;
            default:
                throw new AssertionError();
        }
    }

    public final void f0(int i10) throws c {
        int i11 = this.l;
        if (i11 - 1 >= 255) {
            throw new c("Nesting limit 255 reached" + T());
        }
        int[] iArr = this.f6692k;
        if (i11 == iArr.length) {
            int i12 = i11 * 2;
            this.f6692k = Arrays.copyOf(iArr, i12);
            this.f6694n = Arrays.copyOf(this.f6694n, i12);
            this.f6693m = (String[]) Arrays.copyOf(this.f6693m, i12);
        }
        int[] iArr2 = this.f6692k;
        int i13 = this.l;
        this.l = i13 + 1;
        iArr2[i13] = i10;
    }

    public final char g0() throws c {
        int i10;
        if (this.f6684c == this.f6685d && !N(1)) {
            m0("Unterminated escape sequence");
            throw null;
        }
        int i11 = this.f6684c;
        int i12 = i11 + 1;
        this.f6684c = i12;
        char[] cArr = this.f6683b;
        char c7 = cArr[i11];
        if (c7 != '\n') {
            if (c7 != '\"') {
                if (c7 != '\'') {
                    if (c7 != '/' && c7 != '\\') {
                        if (c7 == 'b') {
                            return '\b';
                        }
                        if (c7 == 'f') {
                            return '\f';
                        }
                        if (c7 == 'n') {
                            return '\n';
                        }
                        if (c7 == 'r') {
                            return '\r';
                        }
                        if (c7 == 't') {
                            return '\t';
                        }
                        if (c7 != 'u') {
                            m0("Invalid escape sequence");
                            throw null;
                        }
                        if (i11 + 5 > this.f6685d && !N(4)) {
                            m0("Unterminated escape sequence");
                            throw null;
                        }
                        int i13 = this.f6684c;
                        int i14 = i13 + 4;
                        int i15 = 0;
                        while (i13 < i14) {
                            char c10 = cArr[i13];
                            int i16 = i15 << 4;
                            if (c10 >= '0' && c10 <= '9') {
                                i10 = c10 - '0';
                            } else if (c10 >= 'a' && c10 <= 'f') {
                                i10 = c10 - 'W';
                            } else {
                                if (c10 < 'A' || c10 > 'F') {
                                    m0("Malformed Unicode escape \\u".concat(new String(cArr, this.f6684c, 4)));
                                    throw null;
                                }
                                i10 = c10 - '7';
                            }
                            i15 = i10 + i16;
                            i13++;
                        }
                        this.f6684c += 4;
                        return (char) i15;
                    }
                }
            }
            return c7;
        }
        if (this.f6695p == 3) {
            m0("Cannot escape a newline character in strict mode");
            throw null;
        }
        this.f6686e++;
        this.f6687f = i12;
        if (this.f6695p == 3) {
            m0("Invalid escaped character \"'\" in strict mode");
            throw null;
        }
        return c7;
    }

    public final void h0(int i10) {
        if (i10 == 0) {
            throw null;
        }
        this.f6695p = i10;
    }

    public final void i0(char c7) throws c {
        do {
            int i10 = this.f6684c;
            int i11 = this.f6685d;
            while (i10 < i11) {
                int i12 = i10 + 1;
                char c10 = this.f6683b[i10];
                if (c10 == c7) {
                    this.f6684c = i12;
                    return;
                }
                if (c10 == '\\') {
                    this.f6684c = i12;
                    g0();
                    i10 = this.f6684c;
                    i11 = this.f6685d;
                } else {
                    if (c10 == '\n') {
                        this.f6686e++;
                        this.f6687f = i12;
                    }
                    i10 = i12;
                }
            }
            this.f6684c = i10;
        } while (N(1));
        m0("Unterminated string");
        throw null;
    }

    public final void j0() {
        char c7;
        do {
            if (this.f6684c >= this.f6685d && !N(1)) {
                return;
            }
            int i10 = this.f6684c;
            int i11 = i10 + 1;
            this.f6684c = i11;
            c7 = this.f6683b[i10];
            if (c7 == '\n') {
                this.f6686e++;
                this.f6687f = i11;
                return;
            }
        } while (c7 != '\r');
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0048, code lost:
    
        J();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k0() throws c {
        do {
            int i10 = 0;
            while (true) {
                int i11 = this.f6684c;
                if (i11 + i10 < this.f6685d) {
                    char c7 = this.f6683b[i11 + i10];
                    if (c7 != '\t' && c7 != '\n' && c7 != '\f' && c7 != '\r' && c7 != ' ') {
                        if (c7 != '#') {
                            if (c7 != ',') {
                                if (c7 != '/' && c7 != '=') {
                                    if (c7 != '{' && c7 != '}' && c7 != ':') {
                                        if (c7 != ';') {
                                            switch (c7) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i10++;
                                            }
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    this.f6684c = i11 + i10;
                }
            }
            this.f6684c += i10;
            return;
        } while (N(1));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void l0() throws IOException {
        int i10 = 0;
        do {
            int iK = this.f6688g;
            if (iK == 0) {
                iK = K();
            }
            switch (iK) {
                case 1:
                    f0(3);
                    i10++;
                    this.f6688g = 0;
                    break;
                case 2:
                    if (i10 == 0) {
                        this.f6693m[this.l - 1] = null;
                    }
                    this.l--;
                    i10--;
                    this.f6688g = 0;
                    break;
                case 3:
                    f0(1);
                    i10++;
                    this.f6688g = 0;
                    break;
                case 4:
                    this.l--;
                    i10--;
                    this.f6688g = 0;
                    break;
                case 5:
                case 6:
                case 7:
                case 11:
                case 15:
                default:
                    this.f6688g = 0;
                    break;
                case 8:
                    i0('\'');
                    this.f6688g = 0;
                    break;
                case 9:
                    i0('\"');
                    this.f6688g = 0;
                    break;
                case 10:
                    k0();
                    this.f6688g = 0;
                    break;
                case 12:
                    i0('\'');
                    if (i10 == 0) {
                        this.f6693m[this.l - 1] = "<skipped>";
                    }
                    this.f6688g = 0;
                    break;
                case 13:
                    i0('\"');
                    if (i10 == 0) {
                        this.f6693m[this.l - 1] = "<skipped>";
                    }
                    this.f6688g = 0;
                    break;
                case 14:
                    k0();
                    if (i10 == 0) {
                        this.f6693m[this.l - 1] = "<skipped>";
                    }
                    this.f6688g = 0;
                    break;
                case 16:
                    this.f6684c += this.f6690i;
                    this.f6688g = 0;
                    break;
                case 17:
                    break;
            }
            return;
        } while (i10 > 0);
        int[] iArr = this.f6694n;
        int i11 = this.l - 1;
        iArr[i11] = iArr[i11] + 1;
    }

    public final void m0(String str) throws c {
        StringBuilder sbM = g.b.m(str);
        sbM.append(T());
        sbM.append("\nSee ");
        sbM.append("https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("malformed-json"));
        throw new c(sbM.toString());
    }

    public final IllegalStateException n0(String str) {
        String str2 = e0() == 9 ? "adapter-not-null-safe" : "unexpected-json-structure";
        StringBuilder sbD = da.b.d("Expected ", str, " but was ");
        sbD.append(g.b.B(e0()));
        sbD.append(T());
        sbD.append("\nSee ");
        sbD.append("https://github.com/google/gson/blob/main/Troubleshooting.md#".concat(str2));
        return new IllegalStateException(sbD.toString());
    }

    public void r() throws IOException {
        int iK = this.f6688g;
        if (iK == 0) {
            iK = K();
        }
        if (iK != 3) {
            throw n0("BEGIN_ARRAY");
        }
        f0(1);
        this.f6694n[this.l - 1] = 0;
        this.f6688g = 0;
    }

    public String toString() {
        return getClass().getSimpleName() + T();
    }
}
