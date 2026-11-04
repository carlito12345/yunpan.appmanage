package org.mozilla.universalchardet.prober;

import java.nio.ByteBuffer;
import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;

/* loaded from: classes3.dex */
public class Latin1Prober extends CharsetProber {
    public static final byte ACO = 5;
    public static final byte ACV = 4;
    public static final byte ASC = 2;
    public static final byte ASO = 7;
    public static final byte ASS = 3;
    public static final byte ASV = 6;
    public static final int CLASS_NUM = 8;
    public static final int FREQ_CAT_NUM = 4;
    public static final byte OTH = 1;
    public static final byte UDF = 0;
    private static final byte[] latin1CharToClass = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 0, 1, 7, 1, 1, 1, 1, 1, 1, 5, 1, 5, 0, 5, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 7, 1, 7, 0, 7, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 1, 4, 4, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 6, 6, 6, 6, 6, 1, 6, 6, 6, 6, 6, 7, 7, 7};
    private static final byte[] latin1ClassModel = {0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 1, 1, 3, 3, 0, 3, 3, 3, 1, 2, 1, 2, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 1, 3, 1, 1, 1, 3, 0, 3, 1, 3, 1, 1, 3, 3};
    private int[] freqCounter = new int[4];
    private byte lastCharClass;
    private CharsetProber.ProbingState state;

    public Latin1Prober() {
        reset();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        return Constants.CHARSET_WINDOWS_1252;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        int[] iArr;
        float f10;
        if (this.state == CharsetProber.ProbingState.NOT_ME) {
            return 0.01f;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            iArr = this.freqCounter;
            if (i10 >= iArr.length) {
                break;
            }
            i11 += iArr[i10];
            i10++;
        }
        if (i11 <= 0) {
            f10 = 0.0f;
        } else {
            float f11 = i11;
            f10 = ((iArr[3] * 1.0f) / f11) - ((iArr[1] * 20.0f) / f11);
        }
        return (f10 >= 0.0f ? f10 : 0.0f) * 0.5f;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.state;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i10, int i11) {
        ByteBuffer byteBufferFilterWithEnglishLetters = filterWithEnglishLetters(bArr, i10, i11);
        byte[] bArrArray = byteBufferFilterWithEnglishLetters.array();
        int iPosition = byteBufferFilterWithEnglishLetters.position();
        int i12 = 0;
        while (true) {
            if (i12 >= iPosition) {
                break;
            }
            byte b10 = latin1CharToClass[bArrArray[i12] & 255];
            byte b11 = latin1ClassModel[(this.lastCharClass * 8) + b10];
            if (b11 == 0) {
                this.state = CharsetProber.ProbingState.NOT_ME;
                break;
            }
            int[] iArr = this.freqCounter;
            iArr[b11] = iArr[b11] + 1;
            this.lastCharClass = b10;
            i12++;
        }
        return this.state;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.state = CharsetProber.ProbingState.DETECTING;
        this.lastCharClass = (byte) 1;
        int i10 = 0;
        while (true) {
            int[] iArr = this.freqCounter;
            if (i10 >= iArr.length) {
                return;
            }
            iArr[i10] = 0;
            i10++;
        }
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
