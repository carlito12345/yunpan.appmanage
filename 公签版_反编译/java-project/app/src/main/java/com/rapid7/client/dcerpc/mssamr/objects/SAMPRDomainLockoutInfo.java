package com.rapid7.client.dcerpc.mssamr.objects;

import android.support.v4.media.session.a;
import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import j$.util.Objects;

/* loaded from: classes.dex */
public class SAMPRDomainLockoutInfo implements Unmarshallable {
    private long lockoutDuration;
    private long lockoutObservationWindow;
    private int lockoutThreshold;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SAMPRDomainLockoutInfo)) {
            return false;
        }
        SAMPRDomainLockoutInfo sAMPRDomainLockoutInfo = (SAMPRDomainLockoutInfo) obj;
        return Long.valueOf(getLockoutDuration()).equals(Long.valueOf(sAMPRDomainLockoutInfo.getLockoutDuration())) && Long.valueOf(getLockoutObservationWindow()).equals(Long.valueOf(sAMPRDomainLockoutInfo.getLockoutObservationWindow())) && Integer.valueOf(getLockoutThreshold()).equals(Integer.valueOf(sAMPRDomainLockoutInfo.getLockoutThreshold()));
    }

    public long getLockoutDuration() {
        return this.lockoutDuration;
    }

    public long getLockoutObservationWindow() {
        return this.lockoutObservationWindow;
    }

    public int getLockoutThreshold() {
        return this.lockoutThreshold;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(getLockoutDuration()), Long.valueOf(getLockoutObservationWindow()), Integer.valueOf(getLockoutThreshold()));
    }

    public String toString() {
        long lockoutDuration = getLockoutDuration();
        long lockoutObservationWindow = getLockoutObservationWindow();
        int lockoutThreshold = getLockoutThreshold();
        StringBuilder sbW = a.w(lockoutDuration, "SAMPRDomainLockoutInfo{lockoutDuration:", ", lockoutObservationWindow:");
        sbW.append(lockoutObservationWindow);
        sbW.append(",lockoutThreshold:");
        sbW.append(lockoutThreshold);
        sbW.append("}");
        return sbW.toString();
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.EIGHT);
        this.lockoutDuration = packetInput.readLong();
        this.lockoutObservationWindow = packetInput.readLong();
        this.lockoutThreshold = packetInput.readShort();
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
