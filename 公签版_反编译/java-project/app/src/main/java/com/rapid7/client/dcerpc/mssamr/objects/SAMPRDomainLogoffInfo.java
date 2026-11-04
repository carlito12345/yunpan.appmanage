package com.rapid7.client.dcerpc.mssamr.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import j$.util.Objects;

/* loaded from: classes.dex */
public class SAMPRDomainLogoffInfo implements Unmarshallable {
    private long forceLogoff;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SAMPRDomainLogoffInfo) {
            return Long.valueOf(getForceLogoff()).equals(Long.valueOf(((SAMPRDomainLogoffInfo) obj).getForceLogoff()));
        }
        return false;
    }

    public long getForceLogoff() {
        return this.forceLogoff;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(getForceLogoff()));
    }

    public void setForceLogoff(int i10) {
        this.forceLogoff = i10;
    }

    public String toString() {
        return "SAMPRDomainLogOffInfo{forceLogoff:" + getForceLogoff() + "}";
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.EIGHT);
        this.forceLogoff = packetInput.readLong();
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
