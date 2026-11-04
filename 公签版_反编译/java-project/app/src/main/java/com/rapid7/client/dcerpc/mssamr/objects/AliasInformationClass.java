package com.rapid7.client.dcerpc.mssamr.objects;

/* loaded from: classes.dex */
public enum AliasInformationClass {
    ALIAS_GENERALINFORMATION(1);

    private final int infoLevel;

    AliasInformationClass(int i10) {
        this.infoLevel = i10;
    }

    public int getInfoLevel() {
        return this.infoLevel;
    }

    @Override // java.lang.Enum
    public String toString() {
        return String.format("ALIAS_INFORMATION_CLASS{name:%s, infoLevel:%d}", name(), Integer.valueOf(getInfoLevel()));
    }
}
