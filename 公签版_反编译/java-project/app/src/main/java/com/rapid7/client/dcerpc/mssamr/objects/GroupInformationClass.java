package com.rapid7.client.dcerpc.mssamr.objects;

/* loaded from: classes.dex */
public enum GroupInformationClass {
    GROUP_GENERAL_INFORMATION(1);

    private final int infoLevel;

    GroupInformationClass(int i10) {
        this.infoLevel = i10;
    }

    public int getInfoLevel() {
        return this.infoLevel;
    }

    @Override // java.lang.Enum
    public String toString() {
        return String.format("GROUP_INFORMATION_CLASS{name:%s, infoLevel:%d}", name(), Integer.valueOf(getInfoLevel()));
    }
}
