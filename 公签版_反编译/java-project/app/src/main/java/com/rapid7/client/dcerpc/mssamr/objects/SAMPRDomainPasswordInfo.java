package com.rapid7.client.dcerpc.mssamr.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import j$.util.Objects;
import ta.q;

/* loaded from: classes.dex */
public class SAMPRDomainPasswordInfo implements Unmarshallable {
    private long maxPasswordAge;
    private long minPasswordAge;
    private int minPasswordLength;
    private int passwordHistoryLength;
    private int passwordProperties;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SAMPRDomainPasswordInfo)) {
            return false;
        }
        SAMPRDomainPasswordInfo sAMPRDomainPasswordInfo = (SAMPRDomainPasswordInfo) obj;
        return Integer.valueOf(getMinPasswordLength()).equals(Integer.valueOf(sAMPRDomainPasswordInfo.getMinPasswordLength())) && Integer.valueOf(getPasswordHistoryLength()).equals(Integer.valueOf(sAMPRDomainPasswordInfo.getPasswordHistoryLength())) && Integer.valueOf(getPasswordProperties()).equals(Integer.valueOf(sAMPRDomainPasswordInfo.getPasswordProperties())) && Long.valueOf(getMaxPasswordAge()).equals(Long.valueOf(sAMPRDomainPasswordInfo.getMaxPasswordAge())) && Long.valueOf(getMinPasswordAge()).equals(Long.valueOf(sAMPRDomainPasswordInfo.getMinPasswordAge()));
    }

    public long getMaxPasswordAge() {
        return this.maxPasswordAge;
    }

    public long getMinPasswordAge() {
        return this.minPasswordAge;
    }

    public int getMinPasswordLength() {
        return this.minPasswordLength;
    }

    public int getPasswordHistoryLength() {
        return this.passwordHistoryLength;
    }

    public int getPasswordProperties() {
        return this.passwordProperties;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(getMinPasswordLength()), Integer.valueOf(getPasswordHistoryLength()), Integer.valueOf(getPasswordProperties()), Long.valueOf(getMaxPasswordAge()), Long.valueOf(getMinPasswordAge()));
    }

    public String toString() {
        int minPasswordLength = getMinPasswordLength();
        int passwordHistoryLength = getPasswordHistoryLength();
        int passwordProperties = getPasswordProperties();
        long maxPasswordAge = getMaxPasswordAge();
        long minPasswordAge = getMinPasswordAge();
        StringBuilder sbO = q.o(minPasswordLength, passwordHistoryLength, "SAMPRDomainPasswordInfo{minimumPasswordLength:", ", passwordHistoryLength:", ",passwordProperties:");
        sbO.append(passwordProperties);
        sbO.append(", maximumPasswordAge:");
        sbO.append(maxPasswordAge);
        sbO.append(", minimumPasswordAge:");
        sbO.append(minPasswordAge);
        sbO.append("}");
        return sbO.toString();
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.EIGHT);
        this.minPasswordLength = packetInput.readShort();
        this.passwordHistoryLength = packetInput.readShort();
        this.passwordProperties = packetInput.readInt();
        this.maxPasswordAge = packetInput.readLong();
        this.minPasswordAge = packetInput.readLong();
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
