package org.mozilla.universalchardet.prober;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.mozilla.universalchardet.prober.CharsetProber;

/* loaded from: classes3.dex */
public class MBCSGroupProber extends CharsetProber {
    private int activeNum;
    private CharsetProber bestGuess;
    private List<CharsetProber> probers;
    private CharsetProber.ProbingState state;

    public MBCSGroupProber() {
        ArrayList arrayList = new ArrayList();
        this.probers = arrayList;
        arrayList.add(new GB18030Prober());
        this.probers.add(new UTF8Prober());
        this.probers.add(new Big5Prober());
        this.probers.add(new SJISProber());
        this.probers.add(new EUCJPProber());
        this.probers.add(new EUCKRProber());
        this.probers.add(new EUCTWProber());
        reset();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public String getCharSetName() {
        if (this.bestGuess == null) {
            getConfidence();
            if (this.bestGuess == null) {
                this.bestGuess = this.probers.get(0);
            }
        }
        return this.bestGuess.getCharSetName();
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public float getConfidence() {
        CharsetProber.ProbingState probingState = this.state;
        if (probingState == CharsetProber.ProbingState.FOUND_IT) {
            return 0.99f;
        }
        if (probingState == CharsetProber.ProbingState.NOT_ME) {
            return 0.01f;
        }
        float f10 = 0.0f;
        for (CharsetProber charsetProber : this.probers) {
            if (charsetProber.isActive()) {
                float confidence = charsetProber.getConfidence();
                if (f10 < confidence) {
                    this.bestGuess = charsetProber;
                    f10 = confidence;
                }
            }
        }
        return f10;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public CharsetProber.ProbingState getState() {
        return this.state;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005f, code lost:
    
        r7.bestGuess = r9;
        r7.state = r3;
     */
    @Override // org.mozilla.universalchardet.prober.CharsetProber
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CharsetProber.ProbingState handleData(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = new byte[i11];
        int i12 = i11 + i10;
        boolean z = true;
        int i13 = 0;
        while (i10 < i12) {
            byte b10 = bArr[i10];
            if ((b10 & 128) != 0) {
                bArr2[i13] = b10;
                i13++;
                z = true;
            } else if (z) {
                bArr2[i13] = b10;
                i13++;
                z = false;
            }
            i10++;
        }
        Iterator<CharsetProber> it = this.probers.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            CharsetProber next = it.next();
            if (next.isActive()) {
                CharsetProber.ProbingState probingStateHandleData = next.handleData(bArr2, 0, i13);
                CharsetProber.ProbingState probingState = CharsetProber.ProbingState.FOUND_IT;
                if (probingStateHandleData == probingState || 0.99f == next.getConfidence()) {
                    break;
                }
                CharsetProber.ProbingState probingState2 = CharsetProber.ProbingState.NOT_ME;
                if (probingStateHandleData == probingState2) {
                    next.setActive(false);
                    int i14 = this.activeNum - 1;
                    this.activeNum = i14;
                    if (i14 <= 0) {
                        this.state = probingState2;
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        return this.state;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void reset() {
        this.activeNum = 0;
        for (CharsetProber charsetProber : this.probers) {
            charsetProber.reset();
            charsetProber.setActive(true);
            this.activeNum++;
        }
        this.bestGuess = null;
        this.state = CharsetProber.ProbingState.DETECTING;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public void setOption() {
    }
}
