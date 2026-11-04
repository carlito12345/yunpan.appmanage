package oh;

import a2.n;
import androidx.fragment.app.b0;
import java.io.IOException;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    public static final n f11797c = new n(3);

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f11798d = {"input", "keygen", "object", "select", "textarea"};

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11799a;

    /* renamed from: b, reason: collision with root package name */
    public final StringBuilder f11800b;

    public a(int i10, StringBuilder sb2) {
        this.f11799a = i10;
        this.f11800b = sb2;
    }

    public static String c(String str) {
        return str != null ? str.toLowerCase(Locale.ROOT) : "";
    }

    public static String d(String str) {
        return c(str).trim();
    }

    public static a e(StringBuilder sb2) {
        return sb2 instanceof StringBuilder ? new a(1, sb2) : new a(0, sb2);
    }

    public final a a(char c7) {
        switch (this.f11799a) {
            case 0:
                try {
                    this.f11800b.append(c7);
                    return this;
                } catch (IOException e7) {
                    throw new b0(8, e7);
                }
            default:
                this.f11800b.append(c7);
                return this;
        }
    }

    public final a b(String str) {
        switch (this.f11799a) {
            case 0:
                try {
                    this.f11800b.append((CharSequence) str);
                    return this;
                } catch (IOException e7) {
                    throw new b0(8, e7);
                }
            default:
                this.f11800b.append((CharSequence) str);
                return this;
        }
    }

    public String toString() {
        switch (this.f11799a) {
            case 1:
                return this.f11800b.toString();
            default:
                return super.toString();
        }
    }
}
