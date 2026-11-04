package com.rapid7.client.dcerpc.mssrvs.dto;

import j$.util.Objects;

/* loaded from: classes.dex */
public class NetShareInfo2 extends NetShareInfo1 {
    private final int currentUses;
    private final int maxUses;
    private final String passwd;
    private final String path;
    private final int permissions;

    public NetShareInfo2(String str, int i10, String str2, int i11, int i12, int i13, String str3, String str4) {
        super(str, i10, str2);
        this.permissions = i11;
        this.maxUses = i12;
        this.currentUses = i13;
        this.path = str3;
        this.passwd = str4;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo1, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetShareInfo2)) {
            return false;
        }
        NetShareInfo2 netShareInfo2 = (NetShareInfo2) obj;
        return super.equals(obj) && getPermissions() == netShareInfo2.getPermissions() && getMaxUses() == netShareInfo2.getMaxUses() && getCurrentUses() == netShareInfo2.getCurrentUses() && Objects.equals(getPath(), netShareInfo2.getPath()) && Objects.equals(getPasswd(), netShareInfo2.getPasswd());
    }

    public int getCurrentUses() {
        return this.currentUses;
    }

    public int getMaxUses() {
        return this.maxUses;
    }

    public String getPasswd() {
        return this.passwd;
    }

    public String getPath() {
        return this.path;
    }

    public int getPermissions() {
        return this.permissions;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo1, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo
    public int hashCode() {
        return Objects.hash(Integer.valueOf(getPermissions()), Integer.valueOf(getMaxUses()), Integer.valueOf(getCurrentUses()), getPath(), getPasswd()) + (super.hashCode() * 31);
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo1, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0
    public String toString() {
        return String.format("NetShareInfo2{netName: %s, type: %d, remark: %s, permissions: %d, maxUses: %d, currentUses: %d, path: %s, passwd: %s}", formatString(getNetName()), Integer.valueOf(getType()), formatString(getRemark()), Integer.valueOf(getPermissions()), Integer.valueOf(getMaxUses()), Integer.valueOf(getCurrentUses()), formatString(getPasswd()), formatString(getPasswd()));
    }
}
