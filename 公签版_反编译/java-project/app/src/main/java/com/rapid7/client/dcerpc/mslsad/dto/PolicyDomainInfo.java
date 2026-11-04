package com.rapid7.client.dcerpc.mslsad.dto;

import com.rapid7.client.dcerpc.dto.SID;
import g.b;
import j$.util.Objects;

/* loaded from: classes.dex */
public class PolicyDomainInfo {
    private final String domainName;
    private final SID domainSID;

    public PolicyDomainInfo(String str, SID sid) {
        this.domainName = str;
        this.domainSID = sid;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PolicyDomainInfo)) {
            return false;
        }
        PolicyDomainInfo policyDomainInfo = (PolicyDomainInfo) obj;
        return Objects.equals(this.domainName, policyDomainInfo.domainName) && Objects.equals(this.domainSID, policyDomainInfo.domainSID);
    }

    public String getDomainName() {
        return this.domainName;
    }

    public SID getDomainSID() {
        return this.domainSID;
    }

    public int hashCode() {
        return Objects.hash(this.domainName, this.domainSID);
    }

    public String toString() {
        String str = this.domainName;
        return String.format("PolicyDomainInfo{domainName: %s, domainSID: %s}", str != null ? b.A("\"", str, "\"") : "null", this.domainSID);
    }
}
