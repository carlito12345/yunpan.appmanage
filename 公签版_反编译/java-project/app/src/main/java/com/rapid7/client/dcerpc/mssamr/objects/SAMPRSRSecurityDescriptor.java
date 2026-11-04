package com.rapid7.client.dcerpc.mssamr.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import java.rmi.UnmarshalException;
import java.util.Arrays;

/* loaded from: classes.dex */
public class SAMPRSRSecurityDescriptor implements Unmarshallable {
    private byte[] securityDescriptor;

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    private int readLength(PacketInput packetInput) throws UnmarshalException {
        long unsignedInt = packetInput.readUnsignedInt();
        if (unsignedInt <= 2147483647L) {
            return (int) unsignedInt;
        }
        throw new UnmarshalException(String.format("Length %d > %d", Long.valueOf(unsignedInt), Integer.MAX_VALUE));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SAMPRSRSecurityDescriptor) {
            return Arrays.equals(getSecurityDescriptor(), ((SAMPRSRSecurityDescriptor) obj).getSecurityDescriptor());
        }
        return false;
    }

    public byte[] getSecurityDescriptor() {
        return this.securityDescriptor;
    }

    public int hashCode() {
        return Arrays.hashCode(this.securityDescriptor);
    }

    public void setSecurityDescriptor(byte[] bArr) {
        this.securityDescriptor = bArr;
    }

    public String toString() {
        byte[] bArr = this.securityDescriptor;
        return String.format("SAMPR_SR_SECURITY_DESCRIPTOR{size_of(SecurityDescriptor):%s}", bArr == null ? "null" : Integer.valueOf(bArr.length));
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        if (this.securityDescriptor == null) {
            return;
        }
        packetInput.align(Alignment.FOUR);
        packetInput.fullySkipBytes(4);
        int i10 = 0;
        while (true) {
            byte[] bArr = this.securityDescriptor;
            if (i10 >= bArr.length) {
                return;
            }
            bArr[i10] = packetInput.readByte();
            i10++;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) throws UnmarshalException {
        packetInput.align(Alignment.FOUR);
        int length = readLength(packetInput);
        if (packetInput.readReferentID() == 0) {
            this.securityDescriptor = null;
        } else if (length > 0) {
            this.securityDescriptor = new byte[length];
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}
