package com.rapid7.client.dcerpc.mssrvs.dto;

import g.b;

/* loaded from: classes.dex */
public class NetShareInfo0 extends NetShareInfo {
    public NetShareInfo0(String str) {
        super(str);
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NetShareInfo0) {
            return super.equals(obj);
        }
        return false;
    }

    @Override // com.rapid7.client.dcerpc.mssrvs.dto.NetShareInfo
    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        return b.A("NetShareInfo0{netName: ", formatString(getNetName()), "}");
    }
}
