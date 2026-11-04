package org.mozilla.universalchardet.prober.statemachine;

/* loaded from: classes3.dex */
public abstract class SMModel {
    public static final int ERROR = 1;
    public static final int ITSME = 2;
    public static final int START = 0;
    protected int[] charLenTable;
    protected int classFactor;
    protected PkgInt classTable;
    protected String name;
    protected PkgInt stateTable;

    public SMModel(PkgInt pkgInt, int i10, PkgInt pkgInt2, int[] iArr, String str) {
        this.classTable = pkgInt;
        this.classFactor = i10;
        this.stateTable = pkgInt2;
        this.charLenTable = (int[]) iArr.clone();
        this.name = str;
    }

    public int getCharLen(int i10) {
        return this.charLenTable[i10];
    }

    public int getClass(byte b10) {
        return this.classTable.unpack(b10 & 255);
    }

    public String getName() {
        return this.name;
    }

    public int getNextState(int i10, int i11) {
        return this.stateTable.unpack((i11 * this.classFactor) + i10);
    }
}
