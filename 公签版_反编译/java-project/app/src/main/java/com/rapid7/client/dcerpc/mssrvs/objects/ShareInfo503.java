package com.rapid7.client.dcerpc.mssrvs.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.objects.WChar;
import j$.util.Objects;
import java.rmi.UnmarshalException;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ShareInfo503 extends ShareInfo2 {
    private byte[] securityDescriptor;
    private WChar.NullTerminated serverName;

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
        if (!(obj instanceof ShareInfo503)) {
            return false;
        }
        ShareInfo503 shareInfo503 = (ShareInfo503) obj;
        return super.equals(obj) && Objects.equals(getServerName(), shareInfo503.getServerName()) && Arrays.equals(getSecurityDescriptor(), shareInfo503.getSecurityDescriptor());
    }

    public byte[] getSecurityDescriptor() {
        return this.securityDescriptor;
    }

    public WChar.NullTerminated getServerName() {
        return this.serverName;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo2, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo
    public int hashCode() {
        return Arrays.hashCode(getSecurityDescriptor()) + ((Objects.hash(getServerName()) + (super.hashCode() * 31)) * 31);
    }

    public void setSecurityDescriptor(byte[] bArr) {
        this.securityDescriptor = bArr;
    }

    public void setServerName(WChar.NullTerminated nullTerminated) {
        this.serverName = nullTerminated;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo2, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo0
    public String toString() {
        return String.format("SHARE_INFO_503{shi503_netname: %s, shi503_type: %d, shi503_remark: %s, shi503_permissions: %d, shi503_max_uses: %d, shi503_current_uses: %d, shi503_path: %s, shi503_passwd: %s, shi503_server_name: %s, size(shi503_security_descriptor): %s}", getNetName(), Integer.valueOf(getType()), getRemark(), Integer.valueOf(getPermissions()), Integer.valueOf(getMaxUses()), Integer.valueOf(getCurrentUses()), getPath(), getPasswd(), getServerName(), getSecurityDescriptor() == null ? "null" : Integer.valueOf(getSecurityDescriptor().length));
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo2, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo, com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        super.unmarshalDeferrals(packetInput);
        WChar.NullTerminated nullTerminated = this.serverName;
        if (nullTerminated != null) {
            packetInput.readUnmarshallable(nullTerminated);
        }
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
        if (packetInput.readReferentID() != 0) {
            this.serverName = new WChar.NullTerminated();
        } else {
            this.serverName = null;
        }
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
