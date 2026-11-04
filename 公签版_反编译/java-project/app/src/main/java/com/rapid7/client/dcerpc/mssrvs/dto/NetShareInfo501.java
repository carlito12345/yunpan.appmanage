package com.rapid7.client.dcerpc.mssrvs.dto;

import j$.util.Objects;

/* loaded from: classes.dex */
public class NetShareInfo501 extends NetShareInfo1 {
    private final int flags;

    public NetShareInfo501(String str, int i10, String str2, int i11) {
        super(str, i10, str2);
        this.flags = i11;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo1, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NetShareInfo501) {
            return super.equals(obj) && getFlags() == ((NetShareInfo501) obj).getFlags();
        }
        return false;
    }

    public int getFlags() {
        return this.flags;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo1, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo
    public int hashCode() {
        return Objects.hash(Integer.valueOf(getFlags())) + (super.hashCode() * 31);
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo1, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0
    public String toString() {
        return String.format("NetShareInfo501{netName: %s, type: %d, remark: %s, flags: %d}", formatString(getNetName()), Integer.valueOf(getType()), formatString(getRemark()), Integer.valueOf(getFlags()));
    }
}
