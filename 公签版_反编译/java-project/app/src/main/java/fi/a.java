package fi;

/* loaded from: classes3.dex */
public abstract class a extends com.bumptech.glide.c {
    public int l = 0;

    /* renamed from: m, reason: collision with root package name */
    public int f5895m = 0;

    public final int o0(short[] sArr, int i10) {
        q0();
        short s8 = sArr[i10];
        int i11 = this.l;
        int i12 = (i11 >>> 11) * s8;
        int i13 = this.f5895m;
        int i14 = i13 ^ Integer.MIN_VALUE;
        int i15 = Integer.MIN_VALUE ^ i12;
        if (i14 != i15 && i14 < i15) {
            this.l = i12;
            sArr[i10] = (short) (s8 + ((2048 - s8) >>> 5));
            return 0;
        }
        this.l = i11 - i12;
        this.f5895m = i13 - i12;
        sArr[i10] = (short) (s8 - (s8 >>> 5));
        return 1;
    }

    public final int p0(short[] sArr) {
        int iO0 = 1;
        do {
            iO0 = o0(sArr, iO0) | (iO0 << 1);
        } while (iO0 < sArr.length);
        return iO0 - sArr.length;
    }

    public abstract void q0();
}
