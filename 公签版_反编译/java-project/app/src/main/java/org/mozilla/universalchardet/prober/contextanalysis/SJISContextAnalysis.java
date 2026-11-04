package org.mozilla.universalchardet.prober.contextanalysis;

import org.mozilla.universalchardet.prober.contextanalysis.JapaneseContextAnalysis;

/* loaded from: classes3.dex */
public class SJISContextAnalysis extends JapaneseContextAnalysis {
    public static final int HIGHBYTE_BEGIN_1 = 129;
    public static final int HIGHBYTE_BEGIN_2 = 224;
    public static final int HIGHBYTE_END_1 = 159;
    public static final int HIGHBYTE_END_2 = 239;
    public static final int HIRAGANA_HIGHBYTE = 130;
    public static final int HIRAGANA_LOWBYTE_BEGIN = 159;
    public static final int HIRAGANA_LOWBYTE_END = 241;

    @Override // org.mozilla.universalchardet.prober.contextanalysis.JapaneseContextAnalysis
    public void getOrder(JapaneseContextAnalysis.Order order, byte[] bArr, int i10) {
        int i11;
        order.order = -1;
        order.charLength = 1;
        int i12 = bArr[i10] & 255;
        if ((i12 >= 129 && i12 <= 159) || (i12 >= 224 && i12 <= 239)) {
            order.charLength = 2;
        }
        if (i12 != 130 || (i11 = bArr[i10 + 1] & 255) < 159 || i11 > 241) {
            return;
        }
        order.order = i11 - 159;
    }

    @Override // org.mozilla.universalchardet.prober.contextanalysis.JapaneseContextAnalysis
    public int getOrder(byte[] bArr, int i10) {
        int i11;
        if ((bArr[i10] & 255) != 130 || (i11 = bArr[i10 + 1] & 255) < 159 || i11 > 241) {
            return -1;
        }
        return i11 - 159;
    }
}
