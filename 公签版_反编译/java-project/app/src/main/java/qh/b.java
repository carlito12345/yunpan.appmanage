package qh;

import java.io.IOException;
import java.io.StringReader;
import java.io.UncheckedIOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class b implements AutoCloseable {

    /* renamed from: n, reason: collision with root package name */
    public static final kf.d f13194n = new kf.d(new ah.a(5));

    /* renamed from: p, reason: collision with root package name */
    public static final kf.d f13195p = new kf.d(new ah.a(6));

    /* renamed from: a, reason: collision with root package name */
    public String[] f13196a;

    /* renamed from: b, reason: collision with root package name */
    public StringReader f13197b;

    /* renamed from: c, reason: collision with root package name */
    public char[] f13198c;

    /* renamed from: d, reason: collision with root package name */
    public int f13199d;

    /* renamed from: e, reason: collision with root package name */
    public int f13200e;

    /* renamed from: f, reason: collision with root package name */
    public int f13201f;

    /* renamed from: g, reason: collision with root package name */
    public int f13202g;

    /* renamed from: h, reason: collision with root package name */
    public int f13203h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f13204i;

    /* renamed from: j, reason: collision with root package name */
    public ArrayList f13205j;

    /* renamed from: k, reason: collision with root package name */
    public int f13206k;
    public String l;

    /* renamed from: m, reason: collision with root package name */
    public int f13207m;

    public b(StringReader stringReader) throws IOException {
        this.f13201f = 0;
        this.f13203h = -1;
        this.f13205j = null;
        this.f13206k = 1;
        this.f13197b = stringReader;
        this.f13198c = (char[]) f13195p.o();
        this.f13196a = (String[]) f13194n.o();
        A();
    }

    public static String J(char[] cArr, String[] strArr, int i10, int i11) {
        if (i11 > 12) {
            return new String(cArr, i10, i11);
        }
        if (i11 < 1) {
            return "";
        }
        int i12 = i11 + i10;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = i10; i15 < i12; i15++) {
            i14 = (i14 * 31) + cArr[i15];
        }
        int i16 = i14 & 511;
        String str = strArr[i16];
        if (str != null && i11 == str.length()) {
            int i17 = i10;
            int i18 = i11;
            while (true) {
                int i19 = i18 - 1;
                if (i18 == 0) {
                    return str;
                }
                int i20 = i17 + 1;
                int i21 = i13 + 1;
                if (cArr[i17] != str.charAt(i13)) {
                    break;
                }
                i17 = i20;
                i18 = i19;
                i13 = i21;
            }
        }
        String str2 = new String(cArr, i10, i11);
        strArr[i16] = str2;
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
    
        r5.f13204i = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void A() throws IOException {
        int i10;
        if (this.f13204i || (i10 = this.f13199d) < this.f13201f || this.f13203h != -1) {
            return;
        }
        this.f13202g += i10;
        int i11 = this.f13200e - i10;
        this.f13200e = i11;
        if (i11 > 0) {
            char[] cArr = this.f13198c;
            System.arraycopy(cArr, i10, cArr, 0, i11);
        }
        this.f13199d = 0;
        while (true) {
            int i12 = this.f13200e;
            if (i12 >= 2048) {
                break;
            }
            try {
                StringReader stringReader = this.f13197b;
                char[] cArr2 = this.f13198c;
                int i13 = stringReader.read(cArr2, i12, cArr2.length - i12);
                if (i13 == -1) {
                    break;
                } else {
                    this.f13200e += i13;
                }
            } catch (IOException e7) {
                throw new UncheckedIOException(e7);
            }
        }
        this.f13201f = Math.min(this.f13200e, 1024);
        ArrayList arrayList = this.f13205j;
        if (arrayList != null) {
            if (arrayList.size() > 0) {
                int iS = S(this.f13202g);
                if (iS == -1) {
                    iS = 0;
                }
                Integer num = (Integer) this.f13205j.get(iS);
                num.getClass();
                this.f13206k += iS;
                this.f13205j.clear();
                this.f13205j.add(num);
            }
            for (int i14 = this.f13199d; i14 < this.f13200e; i14++) {
                if (this.f13198c[i14] == '\n') {
                    this.f13205j.add(Integer.valueOf(this.f13202g + 1 + i14));
                }
            }
        }
        this.l = null;
    }

    public final char K() {
        A();
        int i10 = this.f13199d;
        char c7 = i10 >= this.f13200e ? (char) 65535 : this.f13198c[i10];
        this.f13199d = i10 + 1;
        return c7;
    }

    public final String L() throws IOException {
        A();
        int i10 = this.f13199d;
        int i11 = this.f13200e;
        char[] cArr = this.f13198c;
        int i12 = i10;
        while (i12 < i11 && Character.isLetter(cArr[i12])) {
            i12++;
        }
        this.f13199d = i12;
        return i12 > i10 ? J(this.f13198c, this.f13196a, i10, i12 - i10) : "";
    }

    public final String M(a aVar) throws IOException {
        A();
        int i10 = this.f13199d;
        int i11 = this.f13200e;
        char[] cArr = this.f13198c;
        int i12 = i10;
        while (i12 < i11 && aVar.b(cArr[i12])) {
            i12++;
        }
        this.f13199d = i12;
        return i12 > i10 ? J(this.f13198c, this.f13196a, i10, i12 - i10) : "";
    }

    public final String N(char c7) throws IOException {
        int i10;
        A();
        int i11 = this.f13199d;
        while (true) {
            if (i11 >= this.f13200e) {
                i10 = -1;
                break;
            }
            if (c7 == this.f13198c[i11]) {
                i10 = i11 - this.f13199d;
                break;
            }
            i11++;
        }
        if (i10 == -1) {
            return P();
        }
        String strJ = J(this.f13198c, this.f13196a, this.f13199d, i10);
        this.f13199d += i10;
        return strJ;
    }

    public final String O(char... cArr) throws IOException {
        A();
        int i10 = this.f13199d;
        int i11 = this.f13200e;
        char[] cArr2 = this.f13198c;
        int i12 = i10;
        while (i12 < i11 && Arrays.binarySearch(cArr, cArr2[i12]) < 0) {
            i12++;
        }
        this.f13199d = i12;
        return i12 > i10 ? J(this.f13198c, this.f13196a, i10, i12 - i10) : "";
    }

    public final String P() throws IOException {
        A();
        char[] cArr = this.f13198c;
        String[] strArr = this.f13196a;
        int i10 = this.f13199d;
        String strJ = J(cArr, strArr, i10, this.f13200e - i10);
        this.f13199d = this.f13200e;
        return strJ;
    }

    public final char Q() {
        A();
        int i10 = this.f13199d;
        if (i10 >= this.f13200e) {
            return (char) 65535;
        }
        return this.f13198c[i10];
    }

    public final boolean R() throws IOException {
        A();
        return this.f13199d >= this.f13200e;
    }

    public final int S(int i10) {
        ArrayList arrayList = this.f13205j;
        if (arrayList == null) {
            return 0;
        }
        int iBinarySearch = Collections.binarySearch(arrayList, Integer.valueOf(i10));
        return iBinarySearch < -1 ? Math.abs(iBinarySearch) - 2 : iBinarySearch;
    }

    public final boolean T(String str) throws IOException {
        A();
        A();
        int length = str.length();
        if (length <= this.f13200e - this.f13199d) {
            for (int i10 = 0; i10 < length; i10++) {
                if (str.charAt(i10) == this.f13198c[this.f13199d + i10]) {
                }
            }
            this.f13199d = str.length() + this.f13199d;
            return true;
        }
        return false;
    }

    public final boolean U(String str) {
        if (!Y(str)) {
            return false;
        }
        this.f13199d = str.length() + this.f13199d;
        return true;
    }

    public final boolean V(char c7) {
        return !R() && this.f13198c[this.f13199d] == c7;
    }

    public final boolean W(char... cArr) throws IOException {
        if (R()) {
            return false;
        }
        A();
        char c7 = this.f13198c[this.f13199d];
        for (char c10 : cArr) {
            if (c10 == c7) {
                return true;
            }
        }
        return false;
    }

    public final boolean X() {
        if (R()) {
            return false;
        }
        return oh.f.e(this.f13198c[this.f13199d]);
    }

    public final boolean Y(String str) throws IOException {
        A();
        int length = str.length();
        if (length > this.f13200e - this.f13199d) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            char c7 = this.f13198c[this.f13199d + i10];
            if (cCharAt != c7 && Character.toUpperCase(cCharAt) != Character.toUpperCase(c7)) {
                return false;
            }
        }
        return true;
    }

    public final int Z(String str) throws IOException {
        A();
        char cCharAt = str.charAt(0);
        int i10 = this.f13199d;
        while (i10 < this.f13200e) {
            if (cCharAt != this.f13198c[i10]) {
                do {
                    i10++;
                    if (i10 >= this.f13200e) {
                        break;
                    }
                } while (cCharAt != this.f13198c[i10]);
            }
            int i11 = i10 + 1;
            int length = (str.length() + i11) - 1;
            int i12 = this.f13200e;
            if (i10 < i12 && length <= i12) {
                int i13 = i11;
                for (int i14 = 1; i13 < length && str.charAt(i14) == this.f13198c[i13]; i14++) {
                    i13++;
                }
                if (i13 == length) {
                    return i10 - this.f13199d;
                }
            }
            i10 = i11;
        }
        return -1;
    }

    public final int a0() {
        return this.f13202g + this.f13199d;
    }

    public final String b0() {
        int iS;
        StringBuilder sb2 = new StringBuilder();
        int iA0 = a0();
        int i10 = 1;
        if (this.f13205j != null) {
            int iS2 = S(iA0);
            i10 = iS2 == -1 ? this.f13206k : 1 + iS2 + this.f13206k;
        }
        sb2.append(i10);
        sb2.append(":");
        int iA02 = a0();
        if ((this.f13205j != null) && (iS = S(iA02)) != -1) {
            iA02 -= ((Integer) this.f13205j.get(iS)).intValue();
        }
        sb2.append(iA02 + 1);
        return sb2.toString();
    }

    public final void c0() {
        int i10 = this.f13203h;
        if (i10 == -1) {
            throw new UncheckedIOException(new IOException("Mark invalid"));
        }
        this.f13199d = i10;
        this.f13203h = -1;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        StringReader stringReader = this.f13197b;
        if (stringReader == null) {
            return;
        }
        try {
            stringReader.close();
            this.f13197b = null;
            Arrays.fill(this.f13198c, (char) 0);
            f13195p.N(this.f13198c);
            this.f13198c = null;
            f13194n.N(this.f13196a);
        } catch (IOException unused) {
            this.f13197b = null;
            Arrays.fill(this.f13198c, (char) 0);
            f13195p.N(this.f13198c);
            this.f13198c = null;
            f13194n.N(this.f13196a);
        } catch (Throwable th2) {
            this.f13197b = null;
            Arrays.fill(this.f13198c, (char) 0);
            f13195p.N(this.f13198c);
            this.f13198c = null;
            f13194n.N(this.f13196a);
            this.f13196a = null;
            throw th2;
        }
        this.f13196a = null;
    }

    public final void d0() {
        int i10 = this.f13199d;
        if (i10 < 1) {
            throw new UncheckedIOException(new IOException("WTF: No buffer left to unconsume."));
        }
        this.f13199d = i10 - 1;
    }

    public final void r() {
        this.f13199d++;
    }

    public final String toString() {
        int i10 = this.f13200e;
        int i11 = this.f13199d;
        return i10 - i11 < 0 ? "" : new String(this.f13198c, i11, i10 - i11);
    }

    public b(String str) {
        this(new StringReader(str));
    }
}
