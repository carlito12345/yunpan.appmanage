package org.mozilla.universalchardet.prober.statemachine;

/* loaded from: classes3.dex */
public class CodingStateMachine {
    protected int currentBytePos;
    protected int currentCharLen;
    protected int currentState = 0;
    protected SMModel model;

    public CodingStateMachine(SMModel sMModel) {
        this.model = sMModel;
    }

    public String getCodingStateMachine() {
        return this.model.getName();
    }

    public int getCurrentCharLen() {
        return this.currentCharLen;
    }

    public int nextState(byte b10) {
        int i10 = this.model.getClass(b10);
        if (this.currentState == 0) {
            this.currentBytePos = 0;
            this.currentCharLen = this.model.getCharLen(i10);
        }
        int nextState = this.model.getNextState(i10, this.currentState);
        this.currentState = nextState;
        this.currentBytePos++;
        return nextState;
    }

    public void reset() {
        this.currentState = 0;
    }
}
