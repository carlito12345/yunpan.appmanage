package org.mozilla.universalchardet.prober;

import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;

/* loaded from: classes3.dex */
public class HebrewProber extends CharsetProber {
    public static final int FINAL_KAF = 234;
    public static final int FINAL_MEM = 237;
    public static final int FINAL_NUN = 239;
    public static final int FINAL_PE = 243;
    public static final int FINAL_TSADI = 245;
    public static final int MIN_FINAL_CHAR_DISTANCE = 5;
    public static final float MIN_MODEL_DISTANCE = 0.01f;
    public static final int NORMAL_KAF = 235;
    public static final int NORMAL_MEM = 238;
    public static final int NORMAL_NUN = 240;
    public static final int NORMAL_PE = 244;
    public static final int NORMAL_TSADI = 246;
    public static final byte SPACE = 32;
    private byte beforePrev;
    private int finalCharLogicalScore;
    private int finalCharVisualScore;
    private byte prev;
    private CharsetProber logicalProber = null;
    private CharsetProber visualProber = null;

    public HebrewProber() {
        reset();
    }

    public static boolean isFinal(byte b10) {
        int i10 = b10 & 255;
        return i10 == 234 || i10 == 237 || i10 == 239 || i10 == 243 || i10 == 245;
    }

    public static boolean isNonFinal(byte b10) {
        int i10 = b10 & 255;
        return i10 == 235 || i10 == 238 || i10 == 240 || i10 == 244;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        int i10 = this.finalCharLogicalScore - this.finalCharVisualScore;
        if (i10 >= 5) {
            return Constants.CHARSET_WINDOWS_1255;
        }
        if (i10 <= -5) {
            return Constants.CHARSET_ISO_8859_8;
        }
        float confidence = this.logicalProber.getConfidence() - this.visualProber.getConfidence();
        return confidence > 0.01f ? Constants.CHARSET_WINDOWS_1255 : confidence < -0.01f ? Constants.CHARSET_ISO_8859_8 : i10 < 0 ? Constants.CHARSET_ISO_8859_8 : Constants.CHARSET_WINDOWS_1255;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        return 0.0f;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        CharsetProber.ProbingState state = this.logicalProber.getState();
        CharsetProber.ProbingState probingState = CharsetProber.ProbingState.NOT_ME;
        return (state == probingState && this.visualProber.getState() == probingState) ? probingState : CharsetProber.ProbingState.DETECTING;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i10, int i11) {
        CharsetProber.ProbingState state = getState();
        CharsetProber.ProbingState probingState = CharsetProber.ProbingState.NOT_ME;
        if (state == probingState) {
            return probingState;
        }
        int i12 = i11 + i10;
        while (i10 < i12) {
            byte b10 = bArr[i10];
            if (b10 == 32) {
                if (this.beforePrev != 32) {
                    if (isFinal(this.prev)) {
                        this.finalCharLogicalScore++;
                    } else if (isNonFinal(this.prev)) {
                        this.finalCharVisualScore++;
                    }
                }
            } else if (this.beforePrev == 32 && isFinal(this.prev) && b10 != 32) {
                this.finalCharVisualScore++;
            }
            this.beforePrev = this.prev;
            this.prev = b10;
            i10++;
        }
        return CharsetProber.ProbingState.DETECTING;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.finalCharLogicalScore = 0;
        this.finalCharVisualScore = 0;
        this.prev = SPACE;
        this.beforePrev = SPACE;
    }

    public void setModalProbers(CharsetProber charsetProber, CharsetProber charsetProber2) {
        this.logicalProber = charsetProber;
        this.visualProber = charsetProber2;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
