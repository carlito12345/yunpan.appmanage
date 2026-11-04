package org.mozilla.universalchardet.prober.statemachine;

/* loaded from: classes3.dex */
public class PkgInt {
    public static final int BIT_SHIFT_16BITS = 4;
    public static final int BIT_SHIFT_4BITS = 2;
    public static final int BIT_SHIFT_8BITS = 3;
    public static final int INDEX_SHIFT_16BITS = 1;
    public static final int INDEX_SHIFT_4BITS = 3;
    public static final int INDEX_SHIFT_8BITS = 2;
    public static final int SHIFT_MASK_16BITS = 1;
    public static final int SHIFT_MASK_4BITS = 7;
    public static final int SHIFT_MASK_8BITS = 3;
    public static final int UNIT_MASK_16BITS = 65535;
    public static final int UNIT_MASK_4BITS = 15;
    public static final int UNIT_MASK_8BITS = 255;
    private int bitShift;
    private int[] data;
    private int indexShift;
    private int shiftMask;
    private int unitMask;

    public PkgInt(int i10, int i11, int i12, int i13, int[] iArr) {
        this.indexShift = i10;
        this.shiftMask = i11;
        this.bitShift = i12;
        this.unitMask = i13;
        this.data = (int[]) iArr.clone();
    }

    public static int pack16bits(int i10, int i11) {
        return i10 | (i11 << 16);
    }

    public static int pack4bits(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        return pack8bits(i10 | (i11 << 4), (i13 << 4) | i12, (i15 << 4) | i14, (i17 << 4) | i16);
    }

    public static int pack8bits(int i10, int i11, int i12, int i13) {
        return pack16bits(i10 | (i11 << 8), (i13 << 8) | i12);
    }

    public int unpack(int i10) {
        return (this.data[i10 >> this.indexShift] >> ((i10 & this.shiftMask) << this.bitShift)) & this.unitMask;
    }
}
