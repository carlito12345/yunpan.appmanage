package je;

import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class i extends q4.a {
    public static void d0(int i10, int i11, int i12, Object[] objArr, Object[] objArr2) {
        ue.d.e(objArr, "<this>");
        ue.d.e(objArr2, "destination");
        System.arraycopy(objArr, i11, objArr2, i10, i12 - i11);
    }

    public static void e0(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        ue.d.e(iArr, "<this>");
        ue.d.e(iArr2, "destination");
        System.arraycopy(iArr, i11, iArr2, i10, i12 - i11);
    }

    public static void f0(int i10, byte[] bArr, int i11, byte[] bArr2, int i12) {
        ue.d.e(bArr, "<this>");
        ue.d.e(bArr2, "destination");
        System.arraycopy(bArr, i11, bArr2, i10, i12 - i11);
    }

    public static /* synthetic */ void g0(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 8) != 0) {
            i11 = iArr.length;
        }
        e0(i10, 0, iArr, iArr2, i11);
    }

    public static /* synthetic */ void h0(Object[] objArr, Object[] objArr2, int i10, int i11, int i12, int i13) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = objArr.length;
        }
        d0(i10, i11, i12, objArr, objArr2);
    }

    public static Object[] i0(int i10, int i11, Object[] objArr) {
        ue.d.e(objArr, "<this>");
        q4.a.f(i11, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i10, i11);
        ue.d.d(objArrCopyOfRange, "copyOfRange(...)");
        return objArrCopyOfRange;
    }

    public static void j0(long[] jArr) {
        int length = jArr.length;
        ue.d.e(jArr, "<this>");
        Arrays.fill(jArr, 0, length, -9187201950435737472L);
    }

    public static String k0(Object[] objArr) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "");
        int length = objArr.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            Object obj = objArr[i11];
            i10++;
            if (i10 > 1) {
                sb2.append((CharSequence) ", ");
            }
            if (obj != null ? obj instanceof CharSequence : true) {
                sb2.append((CharSequence) obj);
            } else if (obj instanceof Character) {
                sb2.append(((Character) obj).charValue());
            } else {
                sb2.append((CharSequence) obj.toString());
            }
        }
        sb2.append((CharSequence) "");
        return sb2.toString();
    }
}
