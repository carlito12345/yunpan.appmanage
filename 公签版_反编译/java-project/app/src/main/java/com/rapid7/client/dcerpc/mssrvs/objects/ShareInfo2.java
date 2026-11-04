package com.rapid7.client.dcerpc.mssrvs.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.objects.WChar;
import j$.util.Objects;

/* loaded from: classes.dex */
public class ShareInfo2 extends ShareInfo1 {
    private int currentUses;
    private int maxUses;
    private WChar.NullTerminated passwd;
    private WChar.NullTerminated path;
    private int permissions;

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShareInfo2)) {
            return false;
        }
        ShareInfo2 shareInfo2 = (ShareInfo2) obj;
        return super.equals(obj) && getPermissions() == shareInfo2.getPermissions() && getMaxUses() == shareInfo2.getMaxUses() && getCurrentUses() == shareInfo2.getCurrentUses() && Objects.equals(getPath(), shareInfo2.getPath()) && Objects.equals(getPasswd(), shareInfo2.getPasswd());
    }

    public int getCurrentUses() {
        return this.currentUses;
    }

    public int getMaxUses() {
        return this.maxUses;
    }

    public WChar.NullTerminated getPasswd() {
        return this.passwd;
    }

    public WChar.NullTerminated getPath() {
        return this.path;
    }

    public int getPermissions() {
        return this.permissions;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo
    public int hashCode() {
        return Objects.hash(Integer.valueOf(getPermissions()), Integer.valueOf(getMaxUses()), Integer.valueOf(getCurrentUses()), getPath(), getPasswd()) + (super.hashCode() * 31);
    }

    public void setCurrentUses(int i10) {
        this.currentUses = i10;
    }

    public void setMaxUses(int i10) {
        this.maxUses = i10;
    }

    public void setPasswd(WChar.NullTerminated nullTerminated) {
        this.passwd = nullTerminated;
    }

    public void setPath(WChar.NullTerminated nullTerminated) {
        this.path = nullTerminated;
    }

    public void setPermissions(int i10) {
        this.permissions = i10;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo0
    public String toString() {
        return String.format("SHARE_INFO_2{shi2_netname: %s, shi2_type: %d, shi2_remark: %s, shi2_permissions: %d, shi2_max_uses: %d, shi2_current_uses: %d, shi2_path: %s, shi2_passwd: %s}", getNetName(), Integer.valueOf(getType()), getRemark(), Integer.valueOf(getPermissions()), Integer.valueOf(getMaxUses()), Integer.valueOf(getCurrentUses()), getPath(), getPasswd());
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo, com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        super.unmarshalDeferrals(packetInput);
        WChar.NullTerminated nullTerminated = this.path;
        if (nullTerminated != null) {
            packetInput.readUnmarshallable(nullTerminated);
        }
        WChar.NullTerminated nullTerminated2 = this.passwd;
        if (nullTerminated2 != null) {
            packetInput.readUnmarshallable(nullTerminated2);
        }
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo1, com.rapid7.client.dcerpc.mssrvs.objects.ShareInfo, com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        super.unmarshalEntity(packetInput);
        this.permissions = packetInput.readInt();
        this.maxUses = packetInput.readInt();
        this.currentUses = packetInput.readInt();
        if (packetInput.readReferentID() != 0) {
            this.path = new WChar.NullTerminated();
        } else {
            this.path = null;
        }
        if (packetInput.readReferentID() != 0) {
            this.passwd = new WChar.NullTerminated();
        } else {
            this.passwd = null;
        }
    }
}
