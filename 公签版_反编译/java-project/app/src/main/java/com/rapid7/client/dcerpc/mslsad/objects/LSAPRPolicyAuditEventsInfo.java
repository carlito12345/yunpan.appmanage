package com.rapid7.client.dcerpc.mslsad.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import java.util.Arrays;

/* loaded from: classes.dex */
public class LSAPRPolicyAuditEventsInfo implements Unmarshallable {
    private char auditingMode;
    private int[] eventAuditingOptions;
    private int maximumAuditEventCount;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LSAPRPolicyAuditEventsInfo)) {
            return false;
        }
        LSAPRPolicyAuditEventsInfo lSAPRPolicyAuditEventsInfo = (LSAPRPolicyAuditEventsInfo) obj;
        return Character.valueOf(getAuditingMode()).equals(Character.valueOf(lSAPRPolicyAuditEventsInfo.getAuditingMode())) && Arrays.equals(getEventAuditingOptions(), lSAPRPolicyAuditEventsInfo.getEventAuditingOptions()) && Integer.valueOf(getMaximumAuditEventCount()).equals(Integer.valueOf(lSAPRPolicyAuditEventsInfo.getMaximumAuditEventCount()));
    }

    public char getAuditingMode() {
        return this.auditingMode;
    }

    public int[] getEventAuditingOptions() {
        return this.eventAuditingOptions;
    }

    public int getMaximumAuditEventCount() {
        return this.maximumAuditEventCount;
    }

    public int hashCode() {
        return Integer.valueOf(getMaximumAuditEventCount()).hashCode() + ((Arrays.hashCode(getEventAuditingOptions()) + (Character.valueOf(getAuditingMode()).hashCode() * 31)) * 31);
    }

    public void setAuditingMode(char c7) {
        this.auditingMode = c7;
    }

    public void setEventAuditingOptions(int[] iArr) {
        this.eventAuditingOptions = iArr;
    }

    public void setMaximumAuditEventCount(int i10) {
        this.maximumAuditEventCount = i10;
    }

    public String toString() {
        return String.format("LSAPR_POLICY_AUDIT_EVENTS_INFO{AuditingMode:%d, EventAuditingOptions:%s, MaximumAuditEventCount:%d}", Integer.valueOf(getAuditingMode()), Arrays.toString(getEventAuditingOptions()), Integer.valueOf(getMaximumAuditEventCount()));
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        int i10 = 0;
        if (this.eventAuditingOptions == null) {
            return;
        }
        packetInput.align(Alignment.FOUR);
        int i11 = packetInput.readInt();
        if (i11 < this.maximumAuditEventCount) {
            throw new IllegalArgumentException(String.format("Expected MaximumAuditingEventCount (%d) >= EventAuditingOptions.MaximumCount (%d)", Integer.valueOf(i11), Integer.valueOf(this.maximumAuditEventCount)));
        }
        while (true) {
            int[] iArr = this.eventAuditingOptions;
            if (i10 >= iArr.length) {
                return;
            }
            iArr[i10] = packetInput.readInt();
            i10++;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        this.auditingMode = packetInput.readUnsignedByte();
        packetInput.fullySkipBytes(3);
        boolean z = packetInput.readReferentID() == 0;
        int i10 = packetInput.readInt();
        this.maximumAuditEventCount = i10;
        if (!z) {
            this.eventAuditingOptions = new int[i10];
        } else {
            if (i10 != 0) {
                throw new IllegalArgumentException("If the MaximumAuditingEventCount field has a value other than 0, EventAuditingOptions MUST NOT be NULL.");
            }
            this.eventAuditingOptions = null;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
