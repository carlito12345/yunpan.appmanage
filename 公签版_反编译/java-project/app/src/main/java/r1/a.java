package r1;

import android.net.Uri;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f13363a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13364b;

    /* renamed from: c, reason: collision with root package name */
    public final Uri[] f13365c;

    /* renamed from: d, reason: collision with root package name */
    public final y[] f13366d;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f13367e;

    /* renamed from: f, reason: collision with root package name */
    public final long[] f13368f;

    /* renamed from: g, reason: collision with root package name */
    public final String[] f13369g;

    /* renamed from: h, reason: collision with root package name */
    public final b[] f13370h;

    static {
        org.bouncycastle.jcajce.provider.digest.a.m(0, 1, 2, 3, 4);
        org.bouncycastle.jcajce.provider.digest.a.m(5, 6, 7, 8, 9);
        u1.f0.B(10);
        u1.f0.B(11);
    }

    public a(int i10, int i11, int[] iArr, y[] yVarArr, long[] jArr, String[] strArr, b[] bVarArr) {
        Uri uri;
        int i12 = 0;
        a9.o.k(iArr.length == yVarArr.length);
        a9.o.k(iArr.length == bVarArr.length);
        this.f13363a = i10;
        this.f13364b = i11;
        this.f13367e = iArr;
        this.f13366d = yVarArr;
        this.f13368f = jArr;
        this.f13365c = new Uri[yVarArr.length];
        while (true) {
            Uri[] uriArr = this.f13365c;
            if (i12 >= uriArr.length) {
                this.f13369g = strArr;
                this.f13370h = bVarArr;
                return;
            }
            y yVar = yVarArr[i12];
            if (yVar == null) {
                uri = null;
            } else {
                v vVar = yVar.f13627b;
                vVar.getClass();
                uri = vVar.f13592a;
            }
            uriArr[i12] = uri;
            i12++;
        }
    }

    public final int a(int i10) {
        int i11;
        int i12 = i10 + 1;
        while (true) {
            int[] iArr = this.f13367e;
            if (i12 >= iArr.length || (i11 = iArr[i12]) == 0 || i11 == 1) {
                break;
            }
            i12++;
        }
        return i12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f13363a == aVar.f13363a && this.f13364b == aVar.f13364b && Arrays.equals(this.f13366d, aVar.f13366d) && Arrays.equals(this.f13367e, aVar.f13367e) && Arrays.equals(this.f13368f, aVar.f13368f) && Arrays.equals(this.f13369g, aVar.f13369g) && Arrays.equals(this.f13370h, aVar.f13370h);
    }

    public final int hashCode() {
        int i10 = (int) 0;
        return (Arrays.hashCode(this.f13370h) + ((((((Arrays.hashCode(this.f13368f) + ((Arrays.hashCode(this.f13367e) + ((Arrays.hashCode(this.f13366d) + (((((this.f13363a * 31) + this.f13364b) * 31) + i10) * 31)) * 31)) * 31)) * 31) + i10) * 961) + Arrays.hashCode(this.f13369g)) * 31)) * 31;
    }
}
