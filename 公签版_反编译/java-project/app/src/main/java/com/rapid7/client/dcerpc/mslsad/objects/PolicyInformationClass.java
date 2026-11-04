package com.rapid7.client.dcerpc.mslsad.objects;

/* loaded from: classes.dex */
public enum PolicyInformationClass {
    POLICY_AUDIT_EVENTS_INFORMATION(2),
    POLICY_PRIMARY_DOMAIN_INFORMATION(3),
    POLICY_ACCOUNT_DOMAIN_INFORMATION(5);

    private final int infoLevel;

    PolicyInformationClass(int i10) {
        this.infoLevel = i10;
    }

    public int getInfoLevel() {
        return this.infoLevel;
    }
}
