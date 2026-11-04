package okhttp3.internal.tls;

import javax.security.auth.x500.X500Principal;

/* loaded from: classes.dex */
final class DistinguishedNameParser {
    private int beg;
    private char[] chars;
    private int cur;
    private final String dn;
    private int end;
    private final int length;
    private int pos;

    public DistinguishedNameParser(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.dn = name;
        this.length = name.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0051, code lost:
    
        r2 = r8.beg;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
    
        return new java.lang.String(r1, r2, r8.end - r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String escapedAV() {
        int i10;
        int i11;
        char c7;
        int i12 = this.pos;
        this.beg = i12;
        this.end = i12;
        while (true) {
            int i13 = this.pos;
            if (i13 >= this.length) {
                char[] cArr = this.chars;
                int i14 = this.beg;
                return new String(cArr, i14, this.end - i14);
            }
            char[] cArr2 = this.chars;
            char c10 = cArr2[i13];
            if (c10 == ' ') {
                int i15 = this.end;
                this.cur = i15;
                this.pos = i13 + 1;
                this.end = i15 + 1;
                cArr2[i15] = ' ';
                while (true) {
                    i10 = this.pos;
                    i11 = this.length;
                    if (i10 >= i11) {
                        break;
                    }
                    char[] cArr3 = this.chars;
                    if (cArr3[i10] != ' ') {
                        break;
                    }
                    int i16 = this.end;
                    this.end = i16 + 1;
                    cArr3[i16] = ' ';
                    this.pos = i10 + 1;
                }
                if (i10 == i11 || (c7 = this.chars[i10]) == ',' || c7 == '+' || c7 == ';') {
                    break;
                }
            } else {
                if (c10 == ';') {
                    break;
                }
                if (c10 == '\\') {
                    int i17 = this.end;
                    this.end = i17 + 1;
                    cArr2[i17] = getEscaped();
                    this.pos++;
                } else {
                    if (c10 == '+' || c10 == ',') {
                        break;
                    }
                    int i18 = this.end;
                    this.end = i18 + 1;
                    cArr2[i18] = c10;
                    this.pos = i13 + 1;
                }
            }
        }
        char[] cArr4 = this.chars;
        int i19 = this.beg;
        return new String(cArr4, i19, this.cur - i19);
    }

    private int getByte(int i10) {
        int i11;
        int i12;
        int i13 = i10 + 1;
        if (i13 >= this.length) {
            throw new IllegalStateException("Malformed DN: " + this.dn);
        }
        char[] cArr = this.chars;
        char c7 = cArr[i10];
        if (c7 >= '0' && c7 <= '9') {
            i11 = c7 - '0';
        } else if (c7 >= 'a' && c7 <= 'f') {
            i11 = c7 - 'W';
        } else {
            if (c7 < 'A' || c7 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.dn);
            }
            i11 = c7 - '7';
        }
        char c10 = cArr[i13];
        if (c10 >= '0' && c10 <= '9') {
            i12 = c10 - '0';
        } else if (c10 >= 'a' && c10 <= 'f') {
            i12 = c10 - 'W';
        } else {
            if (c10 < 'A' || c10 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.dn);
            }
            i12 = c10 - '7';
        }
        return (i11 << 4) + i12;
    }

    private char getEscaped() {
        int i10 = this.pos + 1;
        this.pos = i10;
        if (i10 == this.length) {
            throw new IllegalStateException("Unexpected end of DN: " + this.dn);
        }
        char c7 = this.chars[i10];
        if (c7 == ' ' || c7 == '%' || c7 == '\\' || c7 == '_' || c7 == '\"' || c7 == '#') {
            return c7;
        }
        switch (c7) {
            case '*':
            case '+':
            case ',':
                return c7;
            default:
                switch (c7) {
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                        return c7;
                    default:
                        return getUTF8();
                }
        }
    }

    private char getUTF8() {
        int i10;
        int i11;
        int i12 = getByte(this.pos);
        this.pos++;
        if (i12 < 128) {
            return (char) i12;
        }
        if (i12 < 192 || i12 > 247) {
            return '?';
        }
        if (i12 <= 223) {
            i10 = i12 & 31;
            i11 = 1;
        } else if (i12 <= 239) {
            i10 = i12 & 15;
            i11 = 2;
        } else {
            i10 = i12 & 7;
            i11 = 3;
        }
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = this.pos;
            int i15 = i14 + 1;
            this.pos = i15;
            if (i15 == this.length || this.chars[i15] != '\\') {
                return '?';
            }
            int i16 = i14 + 2;
            this.pos = i16;
            int i17 = getByte(i16);
            this.pos++;
            if ((i17 & 192) != 128) {
                return '?';
            }
            i10 = (i10 << 6) + (i17 & 63);
        }
        return (char) i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
    
        r6.end = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String hexAV() {
        char[] cArr;
        char c7;
        int i10 = this.pos;
        if (i10 + 4 >= this.length) {
            throw new IllegalStateException("Unexpected end of DN: " + this.dn);
        }
        this.beg = i10;
        this.pos = i10 + 1;
        while (true) {
            int i11 = this.pos;
            if (i11 == this.length || (c7 = (cArr = this.chars)[i11]) == '+' || c7 == ',' || c7 == ';') {
                break;
            }
            if (c7 == ' ') {
                this.end = i11;
                this.pos = i11 + 1;
                while (true) {
                    int i12 = this.pos;
                    if (i12 >= this.length || this.chars[i12] != ' ') {
                        break;
                    }
                    this.pos = i12 + 1;
                }
            } else {
                if (c7 >= 'A' && c7 <= 'F') {
                    cArr[i11] = (char) (c7 + ' ');
                }
                this.pos = i11 + 1;
            }
        }
        int i13 = this.end;
        int i14 = this.beg;
        int i15 = i13 - i14;
        if (i15 < 5 || (i15 & 1) == 0) {
            throw new IllegalStateException("Unexpected end of DN: " + this.dn);
        }
        int i16 = i15 / 2;
        byte[] bArr = new byte[i16];
        int i17 = i14 + 1;
        for (int i18 = 0; i18 < i16; i18++) {
            bArr[i18] = (byte) getByte(i17);
            i17 += 2;
        }
        return new String(this.chars, this.beg, i15);
    }

    private String nextAT() {
        int i10;
        int i11;
        int i12;
        int i13;
        char c7;
        int i14;
        int i15;
        char c10;
        char c11;
        while (true) {
            i10 = this.pos;
            i11 = this.length;
            if (i10 >= i11 || this.chars[i10] != ' ') {
                break;
            }
            this.pos = i10 + 1;
        }
        if (i10 == i11) {
            return null;
        }
        this.beg = i10;
        this.pos = i10 + 1;
        while (true) {
            i12 = this.pos;
            i13 = this.length;
            if (i12 >= i13 || (c11 = this.chars[i12]) == '=' || c11 == ' ') {
                break;
            }
            this.pos = i12 + 1;
        }
        if (i12 >= i13) {
            throw new IllegalStateException("Unexpected end of DN: " + this.dn);
        }
        this.end = i12;
        if (this.chars[i12] == ' ') {
            while (true) {
                i14 = this.pos;
                i15 = this.length;
                if (i14 >= i15 || (c10 = this.chars[i14]) == '=' || c10 != ' ') {
                    break;
                }
                this.pos = i14 + 1;
            }
            if (this.chars[i14] != '=' || i14 == i15) {
                throw new IllegalStateException("Unexpected end of DN: " + this.dn);
            }
        }
        this.pos++;
        while (true) {
            int i16 = this.pos;
            if (i16 >= this.length || this.chars[i16] != ' ') {
                break;
            }
            this.pos = i16 + 1;
        }
        int i17 = this.end;
        int i18 = this.beg;
        if (i17 - i18 > 4) {
            char[] cArr = this.chars;
            if (cArr[i18 + 3] == '.' && (((c7 = cArr[i18]) == 'O' || c7 == 'o') && ((cArr[i18 + 1] == 'I' || cArr[i18 + 1] == 'i') && (cArr[i18 + 2] == 'D' || cArr[i18 + 2] == 'd')))) {
                this.beg = i18 + 4;
            }
        }
        char[] cArr2 = this.chars;
        int i19 = this.beg;
        return new String(cArr2, i19, i17 - i19);
    }

    private String quotedAV() {
        int i10 = this.pos + 1;
        this.pos = i10;
        this.beg = i10;
        this.end = i10;
        while (true) {
            int i11 = this.pos;
            if (i11 == this.length) {
                throw new IllegalStateException("Unexpected end of DN: " + this.dn);
            }
            char[] cArr = this.chars;
            char c7 = cArr[i11];
            if (c7 == '\"') {
                this.pos = i11 + 1;
                while (true) {
                    int i12 = this.pos;
                    if (i12 >= this.length || this.chars[i12] != ' ') {
                        break;
                    }
                    this.pos = i12 + 1;
                }
                char[] cArr2 = this.chars;
                int i13 = this.beg;
                return new String(cArr2, i13, this.end - i13);
            }
            if (c7 == '\\') {
                cArr[this.end] = getEscaped();
            } else {
                cArr[this.end] = c7;
            }
            this.pos++;
            this.end++;
        }
    }

    public String findMostSpecific(String str) {
        this.pos = 0;
        this.beg = 0;
        this.end = 0;
        this.cur = 0;
        this.chars = this.dn.toCharArray();
        String strNextAT = nextAT();
        if (strNextAT == null) {
            return null;
        }
        do {
            int i10 = this.pos;
            if (i10 == this.length) {
                return null;
            }
            char c7 = this.chars[i10];
            String strEscapedAV = c7 != '\"' ? c7 != '#' ? (c7 == '+' || c7 == ',' || c7 == ';') ? "" : escapedAV() : hexAV() : quotedAV();
            if (str.equalsIgnoreCase(strNextAT)) {
                return strEscapedAV;
            }
            int i11 = this.pos;
            if (i11 >= this.length) {
                return null;
            }
            char c10 = this.chars[i11];
            if (c10 != ',' && c10 != ';' && c10 != '+') {
                throw new IllegalStateException("Malformed DN: " + this.dn);
            }
            this.pos = i11 + 1;
            strNextAT = nextAT();
        } while (strNextAT != null);
        throw new IllegalStateException("Malformed DN: " + this.dn);
    }
}
