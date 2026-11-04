package org.mozilla.universalchardet.prober.sequence;

/* loaded from: classes3.dex */
public abstract class SequenceModel {
    protected short[] charToOrderMap;
    protected String charsetName;
    protected boolean keepEnglishLetter;
    protected byte[] precedenceMatrix;
    protected float typicalPositiveRatio;

    public SequenceModel(short[] sArr, byte[] bArr, float f10, boolean z, String str) {
        this.charToOrderMap = (short[]) sArr.clone();
        this.precedenceMatrix = (byte[]) bArr.clone();
        this.typicalPositiveRatio = f10;
        this.keepEnglishLetter = z;
        this.charsetName = str;
    }

    public String getCharsetName() {
        return this.charsetName;
    }

    public boolean getKeepEnglishLetter() {
        return this.keepEnglishLetter;
    }

    public short getOrder(byte b10) {
        return this.charToOrderMap[b10 & 255];
    }

    public byte getPrecedence(int i10) {
        return this.precedenceMatrix[i10];
    }

    public float getTypicalPositiveRatio() {
        return this.typicalPositiveRatio;
    }
}
