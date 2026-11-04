package com.rapid7.client.dcerpc.mslsad.dto;

/* loaded from: classes.dex */
public enum PolicyAuditEventType {
    AUDIT_CATEGORY_SYSTEM((byte) 1),
    AUDIT_CATEGORY_LOGON((byte) 2),
    AUDIT_CATEGORY_OBJECT_ACCESS((byte) 3),
    AUDIT_CATEGORY_PRIVILEGE_USE((byte) 4),
    AUDIT_CATEGORY_DETAILED_TRACKING((byte) 5),
    AUDIT_CATEGORY_POLICY_CHANGE((byte) 6),
    AUDIT_CATEGORY_ACCOUNT_MANAGEMENT((byte) 7),
    AUDIT_CATEGORY_DIRECTORY_SERVICE_ACCESS((byte) 8),
    AUDIT_CATEGORY_ACCOUNT_LOGON((byte) 9);

    private final byte value;

    PolicyAuditEventType(byte b10) {
        this.value = b10;
    }

    public byte getValue() {
        return this.value;
    }
}
