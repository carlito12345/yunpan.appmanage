package com.rapid7.client.dcerpc.mssrvs.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.objects.WChar;
import j$.util.Objects;

/* loaded from: classes.dex */
public class ShareInfo1 extends ShareInfo0 {
    private WChar.NullTerminated remark;
    private int type;

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShareInfo1)) {
            return false;
        }
        ShareInfo1 shareInfo1 = (ShareInfo1) obj;
        return super.equals(obj) && this.type == shareInfo1.type && Objects.equals(getRemark(), shareInfo1.getRemark());
    }

    public WChar.NullTerminated getRemark() {
        return this.remark;
    }

    public int getType() {
        return this.type;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo
    public int hashCode() {
        return Objects.hash(Integer.valueOf(getType()), getRemark()) + (super.hashCode() * 31);
    }

    public void setRemark(WChar.NullTerminated nullTerminated) {
        this.remark = nullTerminated;
    }

    public void setType(int i10) {
        this.type = i10;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo0
    public String toString() {
        return String.format("SHARE_INFO_1{shi1_netname: %s, shi1_type: %d, shi1_remark: %s}", getNetName(), Integer.valueOf(getType()), getRemark());
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo, com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        super.unmarshalDeferrals(packetInput);
        WChar.NullTerminated nullTerminated = this.remark;
        if (nullTerminated != null) {
            packetInput.readUnmarshallable(nullTerminated);
        }
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo, com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        super.unmarshalEntity(packetInput);
        this.type = (int) packetInput.readUnsignedInt();
        if (packetInput.readReferentID() != 0) {
            this.remark = new WChar.NullTerminated();
        } else {
            this.remark = null;
        }
    }
}
