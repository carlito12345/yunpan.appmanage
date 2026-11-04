package h8;

import j$.util.Objects;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;
import z7.i;

/* loaded from: classes.dex */
public class b implements Closeable, Flushable {
    public static final Pattern l = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");

    /* renamed from: m, reason: collision with root package name */
    public static final String[] f6696m = new String[128];

    /* renamed from: n, reason: collision with root package name */
    public static final String[] f6697n;

    /* renamed from: a, reason: collision with root package name */
    public final Writer f6698a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f6699b;

    /* renamed from: c, reason: collision with root package name */
    public int f6700c;

    /* renamed from: d, reason: collision with root package name */
    public i f6701d;

    /* renamed from: e, reason: collision with root package name */
    public String f6702e;

    /* renamed from: f, reason: collision with root package name */
    public String f6703f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f6704g;

    /* renamed from: h, reason: collision with root package name */
    public int f6705h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f6706i;

    /* renamed from: j, reason: collision with root package name */
    public String f6707j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f6708k;

    static {
        for (int i10 = 0; i10 <= 31; i10++) {
            f6696m[i10] = String.format("\\u%04x", Integer.valueOf(i10));
        }
        String[] strArr = f6696m;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f6697n = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public b(Writer writer) {
        int[] iArr = new int[32];
        this.f6699b = iArr;
        this.f6700c = 0;
        if (iArr.length == 0) {
            this.f6699b = Arrays.copyOf(iArr, 0);
        }
        int[] iArr2 = this.f6699b;
        int i10 = this.f6700c;
        this.f6700c = i10 + 1;
        iArr2[i10] = 6;
        this.f6705h = 2;
        this.f6708k = true;
        Objects.requireNonNull(writer, "out == null");
        this.f6698a = writer;
        R(i.f19446d);
    }

    public void A() throws IOException {
        Z();
        r();
        int i10 = this.f6700c;
        int[] iArr = this.f6699b;
        if (i10 == iArr.length) {
            this.f6699b = Arrays.copyOf(iArr, i10 * 2);
        }
        int[] iArr2 = this.f6699b;
        int i11 = this.f6700c;
        this.f6700c = i11 + 1;
        iArr2[i11] = 1;
        this.f6698a.write(91);
    }

    public void J() throws IOException {
        Z();
        r();
        int i10 = this.f6700c;
        int[] iArr = this.f6699b;
        if (i10 == iArr.length) {
            this.f6699b = Arrays.copyOf(iArr, i10 * 2);
        }
        int[] iArr2 = this.f6699b;
        int i11 = this.f6700c;
        this.f6700c = i11 + 1;
        iArr2[i11] = 3;
        this.f6698a.write(123);
    }

    public final void K(char c7, int i10, int i11) throws IOException {
        int iQ = Q();
        if (iQ != i11 && iQ != i10) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f6707j != null) {
            throw new IllegalStateException("Dangling name: " + this.f6707j);
        }
        this.f6700c--;
        if (iQ == i11) {
            O();
        }
        this.f6698a.write(c7);
    }

    public void L() throws IOException {
        K(']', 1, 2);
    }

    public void M() throws IOException {
        K('}', 3, 5);
    }

    public void N(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.f6707j != null) {
            throw new IllegalStateException("Already wrote a name, expecting a value.");
        }
        int iQ = Q();
        if (iQ != 3 && iQ != 5) {
            throw new IllegalStateException("Please begin an object before writing a name.");
        }
        this.f6707j = str;
    }

    public final void O() throws IOException {
        if (this.f6704g) {
            return;
        }
        String str = this.f6701d.f19448a;
        Writer writer = this.f6698a;
        writer.write(str);
        int i10 = this.f6700c;
        for (int i11 = 1; i11 < i10; i11++) {
            writer.write(this.f6701d.f19449b);
        }
    }

    public b P() throws IOException {
        if (this.f6707j != null) {
            if (!this.f6708k) {
                this.f6707j = null;
                return this;
            }
            Z();
        }
        r();
        this.f6698a.write("null");
        return this;
    }

    public final int Q() {
        int i10 = this.f6700c;
        if (i10 != 0) {
            return this.f6699b[i10 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final void R(i iVar) {
        Objects.requireNonNull(iVar);
        this.f6701d = iVar;
        this.f6703f = ",";
        if (iVar.f19450c) {
            this.f6702e = ": ";
            if (iVar.f19448a.isEmpty()) {
                this.f6703f = ", ";
            }
        } else {
            this.f6702e = ":";
        }
        this.f6704g = this.f6701d.f19448a.isEmpty() && this.f6701d.f19449b.isEmpty();
    }

    public final void S(int i10) {
        if (i10 == 0) {
            throw null;
        }
        this.f6705h = i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void T(String str) throws IOException {
        String str2;
        String[] strArr = this.f6706i ? f6697n : f6696m;
        Writer writer = this.f6698a;
        writer.write(34);
        int length = str.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt < 128) {
                str2 = strArr[cCharAt];
                if (str2 != null) {
                    if (i10 < i11) {
                        writer.write(str, i10, i11 - i10);
                    }
                    writer.write(str2);
                    i10 = i11 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i10 < i11) {
                }
                writer.write(str2);
                i10 = i11 + 1;
            }
        }
        if (i10 < length) {
            writer.write(str, i10, length - i10);
        }
        writer.write(34);
    }

    public void U(double d10) throws IOException {
        Z();
        if (this.f6705h == 1 || !(Double.isNaN(d10) || Double.isInfinite(d10))) {
            r();
            this.f6698a.append((CharSequence) Double.toString(d10));
        } else {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d10);
        }
    }

    public void V(long j10) throws IOException {
        Z();
        r();
        this.f6698a.write(Long.toString(j10));
    }

    public void W(Number number) throws IOException {
        if (number == null) {
            P();
            return;
        }
        Z();
        String string = number.toString();
        Class<?> cls = number.getClass();
        if (cls != Integer.class && cls != Long.class && cls != Byte.class && cls != Short.class && cls != BigDecimal.class && cls != BigInteger.class && cls != AtomicInteger.class && cls != AtomicLong.class) {
            if (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN")) {
                if (this.f6705h != 1) {
                    throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(string));
                }
            } else if (cls != Float.class && cls != Double.class && !l.matcher(string).matches()) {
                throw new IllegalArgumentException("String created by " + cls + " is not a valid JSON number: " + string);
            }
        }
        r();
        this.f6698a.append((CharSequence) string);
    }

    public void X(String str) throws IOException {
        if (str == null) {
            P();
            return;
        }
        Z();
        r();
        T(str);
    }

    public void Y(boolean z) throws IOException {
        Z();
        r();
        this.f6698a.write(z ? "true" : "false");
    }

    public final void Z() throws IOException {
        if (this.f6707j != null) {
            int iQ = Q();
            if (iQ == 5) {
                this.f6698a.write(this.f6703f);
            } else if (iQ != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            O();
            this.f6699b[this.f6700c - 1] = 4;
            T(this.f6707j);
            this.f6707j = null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6698a.close();
        int i10 = this.f6700c;
        if (i10 > 1 || (i10 == 1 && this.f6699b[i10 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f6700c = 0;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f6700c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f6698a.flush();
    }

    public final void r() throws IOException {
        int iQ = Q();
        if (iQ == 1) {
            this.f6699b[this.f6700c - 1] = 2;
            O();
            return;
        }
        Writer writer = this.f6698a;
        if (iQ == 2) {
            writer.append((CharSequence) this.f6703f);
            O();
        } else {
            if (iQ == 4) {
                writer.append((CharSequence) this.f6702e);
                this.f6699b[this.f6700c - 1] = 5;
                return;
            }
            if (iQ != 6) {
                if (iQ != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (this.f6705h != 1) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            this.f6699b[this.f6700c - 1] = 7;
        }
    }
}
