package com.rapid7.client.dcerpc.mssamr.objects;

/* loaded from: classes.dex */
public enum DisplayInformationClass {
    DomainDisplayUser(1),
    DomainDisplayMachine(2),
    DomainDisplayGroup(3),
    DomainDisplayOemUser(4),
    DomainDisplayOemGroup(5);

    private final int infoLevel;

    DisplayInformationClass(int i10) {
        this.infoLevel = i10;
    }

    public int getInfoLevel() {
        return this.infoLevel;
    }
}
