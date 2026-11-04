package com.rapid7.client.dcerpc.mssamr.dto;

import g.b;
import j$.util.Objects;

/* loaded from: classes.dex */
public class MembershipWithName extends Membership {
    private final String name;

    public MembershipWithName(long j10, String str) {
        super(j10);
        this.name = str;
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.Membership
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MembershipWithName) && super.equals(obj) && Objects.equals(this.name, ((MembershipWithName) obj).name);
    }

    public String getName() {
        return this.name;
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.Membership
    public int hashCode() {
        return Objects.hashCode(this.name) + (super.hashCode() * 31);
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.Membership
    public String toString() {
        String str = this.name;
        return String.format("MembershipWithName{relativeID: %d, name: %s}", Long.valueOf(getRelativeID()), str != null ? b.A("\"", str, "\"") : "null");
    }
}
