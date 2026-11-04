package com.rapid7.client.dcerpc.mssamr.dto;

import g.b;

/* loaded from: classes.dex */
public class DomainDisplayGroup extends DomainDisplay {
    private final int attributes;

    public DomainDisplayGroup(long j10, String str, String str2, int i10) {
        super(j10, str, str2);
        this.attributes = i10;
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.DomainDisplay, com.rapid7.client.dcerpc.mssamr.dto.Membership
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DomainDisplayGroup) && super.equals(obj) && getAttributes() == ((DomainDisplayGroup) obj).getAttributes();
    }

    public int getAttributes() {
        return this.attributes;
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.DomainDisplay, com.rapid7.client.dcerpc.mssamr.dto.Membership
    public int hashCode() {
        return getAttributes() + (super.hashCode() * 31);
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.DomainDisplay, com.rapid7.client.dcerpc.mssamr.dto.Membership
    public String toString() {
        return String.format("DomainDisplayGroup{relativeID: %d, name: %s, comment: %s, attributes: %d}", Long.valueOf(getRelativeID()), getName() != null ? b.A("\"", getName(), "\"") : "null", getComment() != null ? b.A("\"", getComment(), "\"") : "null", Integer.valueOf(getAttributes()));
    }
}
