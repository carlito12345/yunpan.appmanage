package r1;

import android.text.TextUtils;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class r0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f13553a;

    /* renamed from: b, reason: collision with root package name */
    public final String f13554b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13555c;

    /* renamed from: d, reason: collision with root package name */
    public final p[] f13556d;

    /* renamed from: e, reason: collision with root package name */
    public int f13557e;

    static {
        u1.f0.B(0);
        u1.f0.B(1);
    }

    public r0(String str, p... pVarArr) {
        a9.o.k(pVarArr.length > 0);
        this.f13554b = str;
        this.f13556d = pVarArr;
        this.f13553a = pVarArr.length;
        String str2 = pVarArr[0].f13523o;
        this.f13555c = TextUtils.isEmpty(str2) ? e0.g(pVarArr[0].f13522n) : e0.g(str2);
        String str3 = pVarArr[0].f13513d;
        str3 = (str3 == null || str3.equals("und")) ? "" : str3;
        int i10 = pVarArr[0].f13515f | 16384;
        for (int i11 = 1; i11 < pVarArr.length; i11++) {
            String str4 = pVarArr[i11].f13513d;
            if (!str3.equals((str4 == null || str4.equals("und")) ? "" : str4)) {
                a("languages", pVarArr[0].f13513d, pVarArr[i11].f13513d, i11);
                return;
            } else {
                if (i10 != (pVarArr[i11].f13515f | 16384)) {
                    a("role flags", Integer.toBinaryString(pVarArr[0].f13515f), Integer.toBinaryString(pVarArr[i11].f13515f), i11);
                    return;
                }
            }
        }
    }

    public static void a(String str, String str2, String str3, int i10) {
        u1.a.g("", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i10 + ")"));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || r0.class != obj.getClass()) {
            return false;
        }
        r0 r0Var = (r0) obj;
        return this.f13554b.equals(r0Var.f13554b) && Arrays.equals(this.f13556d, r0Var.f13556d);
    }

    public final int hashCode() {
        if (this.f13557e == 0) {
            this.f13557e = Arrays.hashCode(this.f13556d) + org.bouncycastle.jcajce.provider.digest.a.c(527, 31, this.f13554b);
        }
        return this.f13557e;
    }

    public final String toString() {
        return this.f13554b + ": " + Arrays.toString(this.f13556d);
    }
}
