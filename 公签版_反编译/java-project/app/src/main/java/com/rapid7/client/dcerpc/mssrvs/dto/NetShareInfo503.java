package com.rapid7.client.dcerpc.mssrvs.dto;

import j$.util.Objects;

/* loaded from: classes.dex */
public class NetShareInfo503 extends NetShareInfo502 {
    private final String serverName;

    public NetShareInfo503(String str, int i10, String str2, int i11, int i12, int i13, String str3, String str4, String str5, byte[] bArr) {
        super(str, i10, str2, i11, i12, i13, str3, str4, bArr);
        this.serverName = str5;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo502, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo2, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo1, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NetShareInfo503) {
            return super.equals(obj) && Objects.equals(getServerName(), ((NetShareInfo503) obj).getServerName());
        }
        return false;
    }

    public String getServerName() {
        return this.serverName;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo502, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo2, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo1, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo
    public int hashCode() {
        return Objects.hash(getServerName()) + (super.hashCode() * 31);
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo502, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo2, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo1, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0
    public String toString() {
        return String.format("NetShareInfo503{netName: %s, type: %d, remark: %s, permissions: %d, maxUses: %d, currentUses: %d, path: %s, passwd: %s, serverName: %s, size(securityDescriptor): %s}", formatString(getNetName()), Integer.valueOf(getType()), formatString(getRemark()), Integer.valueOf(getPermissions()), Integer.valueOf(getMaxUses()), Integer.valueOf(getCurrentUses()), formatString(getPasswd()), formatString(getPasswd()), formatString(getServerName()), getSecurityDescriptor() == null ? "null" : Integer.valueOf(getSecurityDescriptor().length));
    }
}
