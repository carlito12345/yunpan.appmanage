package com.rapid7.client.dcerpc.mssamr.dto;

/* loaded from: classes.dex */
public class MembershipWithAttributes extends Membership {
    private final int attributes;

    public MembershipWithAttributes(long j10, int i10) {
        super(j10);
        this.attributes = i10;
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.Membership
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MembershipWithAttributes) && super.equals(obj) && this.attributes == ((MembershipWithAttributes) obj).attributes;
    }

    public int getAttributes() {
        return this.attributes;
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.Membership
    public int hashCode() {
        return (super.hashCode() * 31) + this.attributes;
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.Membership
    public String toString() {
        return String.format("MembershipWithAttributes{relativeID: %d, attributes: %d}", Long.valueOf(getRelativeID()), Integer.valueOf(getAttributes()));
    }
}
