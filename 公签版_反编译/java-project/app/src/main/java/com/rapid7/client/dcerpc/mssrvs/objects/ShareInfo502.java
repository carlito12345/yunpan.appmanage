package com.rapid7.client.dcerpc.mssrvs.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import java.rmi.UnmarshalException;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ShareInfo502 extends ShareInfo2 {
    private byte[] securityDescriptor;

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    private int readIndex(String str, PacketInput packetInput) throws UnmarshalException {
        long unsignedInt = packetInput.readUnsignedInt();
        if (unsignedInt <= 2147483647L) {
            return (int) unsignedInt;
        }
        throw new UnmarshalException(String.format("%s %d > %d", str, Long.valueOf(unsignedInt), Integer.MAX_VALUE));
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo2, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ShareInfo502) {
            return super.equals(obj) && Arrays.equals(this.securityDescriptor, ((ShareInfo502) obj).securityDescriptor);
        }
        return false;
    }

    public byte[] getSecurityDescriptor() {
        return this.securityDescriptor;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo2, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo
    public int hashCode() {
        return Arrays.hashCode(this.securityDescriptor) + (super.hashCode() * 31);
    }

    public void setSecurityDescriptor(byte[] bArr) {
        this.securityDescriptor = bArr;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo2, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo0
    public String toString() {
        return String.format("SHARE_INFO_502{shi502_netname: %s, shi502_type: %d, shi502_remark: %s, shi502_permissions: %d, shi502_max_uses: %d, shi502_current_uses: %d, shi502_path: %s, shi502_passwd: %s, size(shi502_security_descriptor): %s}", getNetName(), Integer.valueOf(getType()), getRemark(), Integer.valueOf(getPermissions()), Integer.valueOf(getMaxUses()), Integer.valueOf(getCurrentUses()), getPath(), getPasswd(), getSecurityDescriptor() == null ? "null" : Integer.valueOf(getSecurityDescriptor().length));
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo2, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo, com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        super.unmarshalDeferrals(packetInput);
        if (this.securityDescriptor != null) {
            packetInput.align(Alignment.FOUR);
            packetInput.fullySkipBytes(4);
            packetInput.readRawBytes(this.securityDescriptor);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo2, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo, com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) throws UnmarshalException {
        super.unmarshalEntity(packetInput);
        int index = readIndex("reserved", packetInput);
        if (packetInput.readReferentID() == 0) {
            this.securityDescriptor = null;
        } else {
            if (index < 0) {
                throw new UnmarshalException(String.format("Expected reserved >= 0, got: %d", Integer.valueOf(index)));
            }
            this.securityDescriptor = new byte[index];
        }
    }
}
