package com.rapid7.client.dcerpc.mssrvs.dto;

import java.util.Arrays;

/* loaded from: classes.dex */
public class NetShareInfo502 extends NetShareInfo2 {
    private final byte[] securityDescriptor;

    public NetShareInfo502(String str, int i10, String str2, int i11, int i12, int i13, String str3, String str4, byte[] bArr) {
        super(str, i10, str2, i11, i12, i13, str3, str4);
        this.securityDescriptor = bArr;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo2, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo1, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NetShareInfo502) {
            return super.equals(obj) && Arrays.equals(getSecurityDescriptor(), ((NetShareInfo502) obj).getSecurityDescriptor());
        }
        return false;
    }

    public byte[] getSecurityDescriptor() {
        return this.securityDescriptor;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo2, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo1, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo
    public int hashCode() {
        return Arrays.hashCode(getSecurityDescriptor()) + (super.hashCode() * 31);
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo2, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo1, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0
    public String toString() {
        return String.format("NetShareInfo502{netName: %s, type: %d, remark: %s, permissions: %d, maxUses: %d, currentUses: %d, path: %s, passwd: %s, size(securityDescriptor): %s}", formatString(getNetName()), Integer.valueOf(getType()), formatString(getRemark()), Integer.valueOf(getPermissions()), Integer.valueOf(getMaxUses()), Integer.valueOf(getCurrentUses()), formatString(getPasswd()), formatString(getPasswd()), getSecurityDescriptor() == null ? "null" : Integer.valueOf(getSecurityDescriptor().length));
    }
}
