package r1;

import java.util.Arrays;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: c, reason: collision with root package name */
    public static final c f13422c = new c(new a[0]);

    /* renamed from: d, reason: collision with root package name */
    public static final a f13423d;

    /* renamed from: a, reason: collision with root package name */
    public final int f13424a;

    /* renamed from: b, reason: collision with root package name */
    public final a[] f13425b;

    static {
        a aVar = new a(-1, -1, new int[0], new y[0], new long[0], new String[0], new b[0]);
        int[] iArr = aVar.f13367e;
        int length = iArr.length;
        int iMax = Math.max(0, length);
        int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
        Arrays.fill(iArrCopyOf, length, iMax, 0);
        long[] jArr = aVar.f13368f;
        int length2 = jArr.length;
        int iMax2 = Math.max(0, length2);
        long[] jArrCopyOf = Arrays.copyOf(jArr, iMax2);
        Arrays.fill(jArrCopyOf, length2, iMax2, -9223372036854775807L);
        y[] yVarArr = (y[]) Arrays.copyOf(aVar.f13366d, 0);
        String[] strArr = (String[]) Arrays.copyOf(aVar.f13369g, 0);
        b[] bVarArr = aVar.f13370h;
        f13423d = new a(0, aVar.f13364b, iArrCopyOf, yVarArr, jArrCopyOf, strArr, (b[]) Arrays.copyOf(bVarArr, Math.max(0, bVarArr.length)));
        u1.f0.B(1);
        u1.f0.B(2);
        u1.f0.B(3);
        u1.f0.B(4);
    }

    public c(a[] aVarArr) {
        this.f13424a = aVarArr.length;
        this.f13425b = aVarArr;
    }

    public final a a(int i10) {
        return i10 < 0 ? f13423d : this.f13425b[i10];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f13424a == cVar.f13424a && Arrays.equals(this.f13425b, cVar.f13425b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f13425b) + (((((this.f13424a * 961) + ((int) 0)) * 31) + ((int) (-9223372036854775807L))) * 961);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("AdPlaybackState(adsId=null, adResumePositionUs=0, adGroups=[");
        int i10 = 0;
        while (true) {
            a[] aVarArr = this.f13425b;
            if (i10 >= aVarArr.length) {
                sb2.append("])");
                return sb2.toString();
            }
            sb2.append("adGroup(timeUs=0, ads=[");
            aVarArr[i10].getClass();
            for (int i11 = 0; i11 < aVarArr[i10].f13367e.length; i11++) {
                sb2.append("ad(state=");
                int i12 = aVarArr[i10].f13367e[i11];
                if (i12 == 0) {
                    sb2.append('_');
                } else if (i12 == 1) {
                    sb2.append(Matrix.MATRIX_TYPE_RANDOM_REGULAR);
                } else if (i12 == 2) {
                    sb2.append('S');
                } else if (i12 == 3) {
                    sb2.append('P');
                } else if (i12 != 4) {
                    sb2.append('?');
                } else {
                    sb2.append('!');
                }
                sb2.append(", durationUs=");
                sb2.append(aVarArr[i10].f13368f[i11]);
                sb2.append(')');
                if (i11 < aVarArr[i10].f13367e.length - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append("])");
            if (i10 < aVarArr.length - 1) {
                sb2.append(", ");
            }
            i10++;
        }
    }
}
