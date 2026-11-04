package f2;

import java.util.Arrays;
import java.util.Random;

/* loaded from: classes.dex */
public final class e1 {

    /* renamed from: a, reason: collision with root package name */
    public final Random f5254a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f5255b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f5256c;

    public e1() {
        this(new Random());
    }

    public final e1 a(int i10) {
        Random random;
        int[] iArr;
        int[] iArr2 = new int[i10];
        int[] iArr3 = new int[i10];
        int i11 = 0;
        while (true) {
            random = this.f5254a;
            iArr = this.f5255b;
            if (i11 >= i10) {
                break;
            }
            iArr2[i11] = random.nextInt(iArr.length + 1);
            int i12 = i11 + 1;
            int iNextInt = random.nextInt(i12);
            iArr3[i11] = iArr3[iNextInt];
            iArr3[iNextInt] = i11;
            i11 = i12;
        }
        Arrays.sort(iArr2);
        int[] iArr4 = new int[iArr.length + i10];
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < iArr.length + i10; i15++) {
            if (i13 >= i10 || i14 != iArr2[i13]) {
                int i16 = i14 + 1;
                int i17 = iArr[i14];
                iArr4[i15] = i17;
                if (i17 >= 0) {
                    iArr4[i15] = i17 + i10;
                }
                i14 = i16;
            } else {
                iArr4[i15] = iArr3[i13];
                i13++;
            }
        }
        return new e1(iArr4, new Random(random.nextLong()));
    }

    public e1(int[] iArr, Random random) {
        this.f5255b = iArr;
        this.f5254a = random;
        this.f5256c = new int[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            this.f5256c[iArr[i10]] = i10;
        }
    }

    public e1(Random random) {
        this(new int[0], random);
    }
}
