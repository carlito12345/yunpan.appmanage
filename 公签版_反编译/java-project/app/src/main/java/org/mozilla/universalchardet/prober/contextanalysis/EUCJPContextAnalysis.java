package org.mozilla.universalchardet.prober.contextanalysis;

import org.mozilla.universalchardet.prober.contextanalysis.JapaneseContextAnalysis;

/* loaded from: classes3.dex */
public class EUCJPContextAnalysis extends JapaneseContextAnalysis {
    public static final int FIRSTPLANE_HIGHBYTE_BEGIN = 161;
    public static final int FIRSTPLANE_HIGHBYTE_END = 254;
    public static final int HIRAGANA_HIGHBYTE = 164;
    public static final int HIRAGANA_LOWBYTE_BEGIN = 161;
    public static final int HIRAGANA_LOWBYTE_END = 243;
    public static final int SINGLE_SHIFT_2 = 142;
    public static final int SINGLE_SHIFT_3 = 143;

    @Override // org.mozilla.universalchardet.prober.contextanalysis.JapaneseContextAnalysis
    public void getOrder(JapaneseContextAnalysis.Order order, byte[] bArr, int i10) {
        int i11;
        order.order = -1;
        order.charLength = 1;
        int i12 = bArr[i10] & 255;
        if (i12 == 142 || (i12 >= 161 && i12 <= 254)) {
            order.charLength = 2;
        } else if (i12 == 143) {
            order.charLength = 3;
        }
        if (i12 != 164 || (i11 = bArr[i10 + 1] & 255) < 161 || i11 > 243) {
            return;
        }
        order.order = i11 - 161;
    }

    @Override // org.mozilla.universalchardet.prober.contextanalysis.JapaneseContextAnalysis
    public int getOrder(byte[] bArr, int i10) {
        int i11;
        if ((bArr[i10] & 255) != 164 || (i11 = bArr[i10 + 1] & 255) < 161 || i11 > 243) {
            return -1;
        }
        return i11 - 161;
    }
}
