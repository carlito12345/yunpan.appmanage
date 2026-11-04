package sb;

import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f14474a;

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f14475b;

    static {
        if (f14474a != null) {
            return;
        }
        int[] iArr = new int[2048];
        f14475b = iArr;
        f14474a = new int[2048];
        Arrays.fill(iArr, 0);
        Arrays.fill(f14474a, 0);
        for (int i10 = 0; i10 <= 65535; i10++) {
            char c7 = (char) i10;
            if (Character.isJavaIdentifierPart(c7)) {
                int[] iArr2 = f14475b;
                int i11 = i10 / 32;
                iArr2[i11] = iArr2[i11] | (1 << (i10 % 32));
            }
            if (Character.isJavaIdentifierStart(c7)) {
                int[] iArr3 = f14474a;
                int i12 = i10 / 32;
                iArr3[i12] = (1 << (i10 % 32)) | iArr3[i12];
            }
        }
    }
}
