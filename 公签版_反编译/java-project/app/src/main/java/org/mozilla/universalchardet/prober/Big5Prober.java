package org.mozilla.universalchardet.prober;

import java.util.Arrays;
import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.distributionanalysis.Big5DistributionAnalysis;
import org.mozilla.universalchardet.prober.statemachine.Big5SMModel;
import org.mozilla.universalchardet.prober.statemachine.CodingStateMachine;
import org.mozilla.universalchardet.prober.statemachine.SMModel;

/* loaded from: classes3.dex */
public class Big5Prober extends CharsetProber {
    private static final SMModel smModel = new Big5SMModel();
    private CodingStateMachine codingSM = new CodingStateMachine(smModel);
    private Big5DistributionAnalysis distributionAnalyzer = new Big5DistributionAnalysis();
    private byte[] lastChar = new byte[2];
    private CharsetProber.ProbingState state;

    public Big5Prober() {
        reset();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        return Constants.CHARSET_BIG5;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        return this.distributionAnalyzer.getConfidence();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.state;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState handleData(byte[] bArr, int i10, int i11) {
        int i12 = i11 + i10;
        int i13 = i10;
        while (true) {
            if (i13 >= i12) {
                break;
            }
            int iNextState = this.codingSM.nextState(bArr[i13]);
            if (iNextState == 1) {
                this.state = CharsetProber.ProbingState.NOT_ME;
                break;
            }
            if (iNextState == 2) {
                this.state = CharsetProber.ProbingState.FOUND_IT;
                break;
            }
            if (iNextState == 0) {
                int currentCharLen = this.codingSM.getCurrentCharLen();
                if (i13 == i10) {
                    byte[] bArr2 = this.lastChar;
                    bArr2[1] = bArr[i10];
                    this.distributionAnalyzer.handleOneChar(bArr2, 0, currentCharLen);
                } else {
                    this.distributionAnalyzer.handleOneChar(bArr, i13 - 1, currentCharLen);
                }
            }
            i13++;
        }
        this.lastChar[0] = bArr[i12 - 1];
        if (this.state == CharsetProber.ProbingState.DETECTING && this.distributionAnalyzer.gotEnoughData() && getConfidence() > 0.95f) {
            this.state = CharsetProber.ProbingState.FOUND_IT;
        }
        return this.state;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.codingSM.reset();
        this.state = CharsetProber.ProbingState.DETECTING;
        this.distributionAnalyzer.reset();
        Arrays.fill(this.lastChar, (byte) 0);
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
