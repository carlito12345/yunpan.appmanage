package com.rapid7.client.dcerpc.mssamr.objects;

/* loaded from: classes.dex */
public enum UserInformationClass {
    USER_ALL_INFORMATION(21);

    private final int infoLevel;

    UserInformationClass(int i10) {
        this.infoLevel = i10;
    }

    public int getInfoLevel() {
        return this.infoLevel;
    }

    @Override // java.lang.Enum
    public String toString() {
        return String.format("USER_INFORMATION_CLASS{name:%s, infoLevel:%d}", name(), Integer.valueOf(getInfoLevel()));
    }
}
