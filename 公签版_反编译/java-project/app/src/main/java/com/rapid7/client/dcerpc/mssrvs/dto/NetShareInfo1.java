package com.rapid7.client.dcerpc.mssrvs.dto;

import j$.util.Objects;

/* loaded from: classes.dex */
public class NetShareInfo1 extends NetShareInfo0 {
    private final String remark;
    private final int type;

    public NetShareInfo1(String str, int i10, String str2) {
        super(str);
        this.type = i10;
        this.remark = str2;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetShareInfo1)) {
            return false;
        }
        NetShareInfo1 netShareInfo1 = (NetShareInfo1) obj;
        return super.equals(obj) && getType() == netShareInfo1.getType() && Objects.equals(getRemark(), netShareInfo1.getRemark());
    }

    public String getRemark() {
        return this.remark;
    }

    public int getType() {
        return this.type;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0, com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo
    public int hashCode() {
        return Objects.hash(Integer.valueOf(getType()), getRemark()) + (super.hashCode() * 31);
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo0
    public String toString() {
        return String.format("NetShareInfo1{netName: %s, type: %d, remark: %s}", formatString(getNetName()), Integer.valueOf(getType()), formatString(getRemark()));
    }
}
