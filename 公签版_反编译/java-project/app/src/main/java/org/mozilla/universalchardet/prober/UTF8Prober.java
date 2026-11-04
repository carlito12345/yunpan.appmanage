package org.mozilla.universalchardet.prober;

import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.SMModel;
import org.mozilla.universalchardet.prober.statemachine.UTF8SMModel;

/* loaded from: classes3.dex */
public class UTF8Prober extends CharsetProber {
    public static final float ONE_CHAR_PROB = 0.5f;
    private static final SMModel smModel = new UTF8SMModel();
    private CharsetProber.ProbingState state;
    private int numOfMBChar = 0;
    private CodingStateMachine codingSM = new CodingStateMachine(smModel);

    public UTF8Prober() {
        reset();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        return Constants.CHARSET_UTF_8;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        float f10 = 0.99f;
        if (this.numOfMBChar >= 6) {
            return 0.99f;
        }
        for (int i10 = 0; i10 < this.numOfMBChar; i10++) {
            f10 *= 0.5f;
        }
        return 1.0f - f10;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.state;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i10, int i11) {
        int i12 = i11 + i10;
        while (true) {
            if (i10 >= i12) {
                break;
            }
            int iNextState = this.codingSM.nextState(bArr[i10]);
            if (iNextState == 1) {
                this.state = CharsetProber.ProbingState.NOT_ME;
                break;
            }
            if (iNextState == 2) {
                this.state = CharsetProber.ProbingState.FOUND_IT;
                break;
            }
            if (iNextState == 0 && this.codingSM.getCurrentCharLen() >= 2) {
                this.numOfMBChar++;
            }
            i10++;
        }
        if (this.state == CharsetProber.ProbingState.DETECTING && getConfidence() > 0.95f) {
            this.state = CharsetProber.ProbingState.FOUND_IT;
        }
        return this.state;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.codingSM.reset();
        this.numOfMBChar = 0;
        this.state = CharsetProber.ProbingState.DETECTING;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
