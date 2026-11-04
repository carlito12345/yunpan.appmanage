package com.rapid7.client.dcerpc.mssrvs.dto;

import g.b;
import j$.util.Objects;

/* loaded from: classes.dex */
public abstract class NetShareInfo {
    private final String netName;

    public NetShareInfo(String str) {
        this.netName = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NetShareInfo) {
            return Objects.equals(getNetName(), ((NetShareInfo) obj).getNetName());
        }
        return false;
    }

    public String formatString(String str) {
        return str == null ? "null" : b.A("\"", str, "\"");
    }

    public String getNetName() {
        return this.netName;
    }

    public int hashCode() {
        return Objects.hash(getNetName());
    }
}
