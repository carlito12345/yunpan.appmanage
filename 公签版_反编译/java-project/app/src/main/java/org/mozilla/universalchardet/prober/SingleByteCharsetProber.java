package org.mozilla.universalchardet.prober;

import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.sequence.SequenceModel;

/* loaded from: classes3.dex */
public class SingleByteCharsetProber extends CharsetProber {
    public static final int NEGATIVE_CAT = 0;
    public static final float NEGATIVE_SHORTCUT_THRESHOLD = 0.05f;
    public static final int NUMBER_OF_SEQ_CAT = 4;
    public static final int POSITIVE_CAT = 3;
    public static final float POSITIVE_SHORTCUT_THRESHOLD = 0.95f;
    public static final int SAMPLE_SIZE = 64;
    public static final int SB_ENOUGH_REL_THRESHOLD = 1024;
    public static final int SYMBOL_CAT_ORDER = 250;
    private int freqChar;
    private short lastOrder;
    private SequenceModel model;
    private CharsetProber nameProber;
    private boolean reversed;
    private int[] seqCounters;
    private CharsetProber.ProbingState state;
    private int totalChar;
    private int totalSeqs;

    public SingleByteCharsetProber(SequenceModel sequenceModel) {
        this.model = sequenceModel;
        this.reversed = false;
        this.nameProber = null;
        this.seqCounters = new int[4];
        reset();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        CharsetProber charsetProber = this.nameProber;
        return charsetProber == null ? this.model.getCharsetName() : charsetProber.getCharSetName();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        int i10 = this.totalSeqs;
        if (i10 <= 0) {
            return 0.01f;
        }
        float typicalPositiveRatio = ((((this.seqCounters[3] * 1.0f) / i10) / this.model.getTypicalPositiveRatio()) * this.freqChar) / this.totalChar;
        if (typicalPositiveRatio >= 1.0f) {
            return 0.99f;
        }
        return typicalPositiveRatio;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.state;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i10, int i11) {
        int i12 = i11 + i10;
        while (i10 < i12) {
            short order = this.model.getOrder(bArr[i10]);
            if (order < 250) {
                this.totalChar++;
            }
            if (order < 64) {
                this.freqChar++;
                short s8 = this.lastOrder;
                if (s8 < 64) {
                    this.totalSeqs++;
                    if (this.reversed) {
                        int[] iArr = this.seqCounters;
                        byte precedence = this.model.getPrecedence((order * 64) + s8);
                        iArr[precedence] = iArr[precedence] + 1;
                    } else {
                        int[] iArr2 = this.seqCounters;
                        byte precedence2 = this.model.getPrecedence((s8 * 64) + order);
                        iArr2[precedence2] = iArr2[precedence2] + 1;
                    }
                }
            }
            this.lastOrder = order;
            i10++;
        }
        if (this.state == CharsetProber.ProbingState.DETECTING && this.totalSeqs > 1024) {
            float confidence = getConfidence();
            if (confidence > 0.95f) {
                this.state = CharsetProber.ProbingState.FOUND_IT;
            } else if (confidence < 0.05f) {
                this.state = CharsetProber.ProbingState.NOT_ME;
            }
        }
        return this.state;
    }

    public boolean keepEnglishLetters() {
        return this.model.getKeepEnglishLetter();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.state = CharsetProber.ProbingState.DETECTING;
        this.lastOrder = (short) 255;
        for (int i10 = 0; i10 < 4; i10++) {
            this.seqCounters[i10] = 0;
        }
        this.totalSeqs = 0;
        this.totalChar = 0;
        this.freqChar = 0;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }

    public SingleByteCharsetProber(SequenceModel sequenceModel, boolean z, CharsetProber charsetProber) {
        this.model = sequenceModel;
        this.reversed = z;
        this.nameProber = charsetProber;
        this.seqCounters = new int[4];
        reset();
    }
}
