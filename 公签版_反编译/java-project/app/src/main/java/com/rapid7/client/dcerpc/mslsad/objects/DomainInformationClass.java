package com.rapid7.client.dcerpc.mslsad.objects;

/* loaded from: classes.dex */
public enum DomainInformationClass {
    DOMAIN_PASSWORD_INFORMATION(1),
    DOMAIN_LOGOFF_INFORMATION(3),
    DOMAIN_LOCKOUT_INFORMATION(12);

    private final int infoLevel;

    DomainInformationClass(int i10) {
        this.infoLevel = i10;
    }

    public int getInfoLevel() {
        return this.infoLevel;
    }
}
