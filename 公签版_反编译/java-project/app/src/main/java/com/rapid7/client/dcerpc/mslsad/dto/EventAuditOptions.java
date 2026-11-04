package com.rapid7.client.dcerpc.mslsad.dto;

/* loaded from: classes.dex */
public enum EventAuditOptions {
    POLICY_AUDIT_EVENT_UNCHANGED((byte) 0),
    POLICY_AUDIT_EVENT_NONE((byte) 4),
    POLICY_AUDIT_EVENT_SUCCESS((byte) 1),
    POLICY_AUDIT_EVENT_FAILURE((byte) 2);

    private final byte value;

    EventAuditOptions(byte b10) {
        this.value = b10;
    }

    public byte getValue() {
        return this.value;
    }

    public boolean is(byte b10) {
        return getValue() == b10;
    }

    public boolean isSet(int i10) {
        return (i10 & getValue()) != 0;
    }
}
