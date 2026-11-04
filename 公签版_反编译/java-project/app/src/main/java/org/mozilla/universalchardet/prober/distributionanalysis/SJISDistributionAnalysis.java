package org.mozilla.universalchardet.prober.distributionanalysis;

/* loaded from: classes3.dex */
public class SJISDistributionAnalysis extends JISDistributionAnalysis {
    public static final int HIGHBYTE_BEGIN_1 = 129;
    public static final int HIGHBYTE_BEGIN_2 = 224;
    public static final int HIGHBYTE_END_1 = 159;
    public static final int HIGHBYTE_END_2 = 239;
    public static final int LOWBYTE_BEGIN_1 = 64;
    public static final int LOWBYTE_BEGIN_2 = 128;

    @Override // org.mozilla.universalchardet.prober.distributionanalysis.CharDistributionAnalysis
    public int getOrder(byte[] bArr, int i10) {
        int i11;
        int i12 = bArr[i10] & 255;
        if (i12 >= 129 && i12 <= 159) {
            i11 = i12 - 129;
        } else {
            if (i12 < 224 || i12 > 239) {
                return -1;
            }
            i11 = i12 - 193;
        }
        int i13 = i11 * 188;
        int i14 = bArr[i10 + 1] & 255;
        int i15 = (i14 - 64) + i13;
        return i14 >= 128 ? i15 - 1 : i15;
    }
}
