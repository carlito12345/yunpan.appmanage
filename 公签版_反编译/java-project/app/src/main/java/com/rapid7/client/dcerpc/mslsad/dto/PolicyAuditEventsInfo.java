package com.rapid7.client.dcerpc.mslsad.dto;

import java.util.Arrays;

/* loaded from: classes.dex */
public class PolicyAuditEventsInfo {
    private final boolean auditEnabled;
    private final int[] eventAuditingOptions;

    public PolicyAuditEventsInfo(boolean z, int[] iArr) {
        if (iArr == null) {
            throw new IllegalArgumentException("Expecting non-null eventAuditingOptions");
        }
        if (iArr.length != 9) {
            throw new IllegalArgumentException(String.format("Expecting 9 elements in eventAuditingOptions, got: %d", Integer.valueOf(iArr.length)));
        }
        this.auditEnabled = z;
        this.eventAuditingOptions = iArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PolicyAuditEventsInfo)) {
            return false;
        }
        PolicyAuditEventsInfo policyAuditEventsInfo = (PolicyAuditEventsInfo) obj;
        return Boolean.valueOf(this.auditEnabled).equals(Boolean.valueOf(policyAuditEventsInfo.auditEnabled)) && Arrays.equals(this.eventAuditingOptions, policyAuditEventsInfo.eventAuditingOptions);
    }

    public int getEventAuditingOptionForType(PolicyAuditEventType policyAuditEventType) {
        return this.eventAuditingOptions[policyAuditEventType.getValue() - 1];
    }

    public int[] getEventAuditingOptions() {
        return this.eventAuditingOptions;
    }

    public int hashCode() {
        return Arrays.hashCode(this.eventAuditingOptions) + ((this.auditEnabled ? 1 : 0) * 31);
    }

    public boolean isAuditEnabled() {
        return this.auditEnabled;
    }

    public String toString() {
        return "PolicyAuditEventsInfo{auditMode:" + this.auditEnabled + ", eventAuditingOptions:" + Arrays.toString(this.eventAuditingOptions) + "}";
    }
}
