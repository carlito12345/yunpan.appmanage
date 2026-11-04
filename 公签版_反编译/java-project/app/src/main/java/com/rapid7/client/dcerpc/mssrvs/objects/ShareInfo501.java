package com.rapid7.client.dcerpc.mssrvs.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import j$.util.Objects;

/* loaded from: classes.dex */
public class ShareInfo501 extends ShareInfo1 {
    private int flags;

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ShareInfo501) {
            return super.equals(obj) && getFlags() == ((ShareInfo501) obj).getFlags();
        }
        return false;
    }

    public int getFlags() {
        return this.flags;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo
    public int hashCode() {
        return Objects.hash(Integer.valueOf(getFlags())) + (super.hashCode() * 31);
    }

    public void setFlags(int i10) {
        this.flags = i10;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo0
    public String toString() {
        return String.format("SHARE_INFO_501{shi501_netname: %s, shi501_type: %d, shi501_remark: %s, shi501_flags: %d}", getNetName(), Integer.valueOf(getType()), getRemark(), Integer.valueOf(getFlags()));
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo, com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        super.unmarshalEntity(packetInput);
        this.flags = packetInput.readInt();
    }
}
