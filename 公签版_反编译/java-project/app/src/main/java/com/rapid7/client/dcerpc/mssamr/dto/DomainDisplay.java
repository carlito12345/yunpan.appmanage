package com.rapid7.client.dcerpc.mssamr.dto;

import g.b;
import j$.util.Objects;

/* loaded from: classes.dex */
public class DomainDisplay extends Membership {
    private final String comment;
    private final String name;

    public DomainDisplay(long j10, String str, String str2) {
        super(j10);
        this.name = str;
        this.comment = str2;
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.Membership
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DomainDisplay)) {
            return false;
        }
        DomainDisplay domainDisplay = (DomainDisplay) obj;
        return super.equals(obj) && Objects.equals(getName(), domainDisplay.getName()) && Objects.equals(getComment(), domainDisplay.getComment());
    }

    public String getComment() {
        return this.comment;
    }

    public String getName() {
        return this.name;
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.Membership
    public int hashCode() {
        return Objects.hash(getComment()) + ((Objects.hashCode(getName()) + (super.hashCode() * 31)) * 31);
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.Membership
    public String toString() {
        return String.format("DomainDisplay{relativeID: %d, name: %s, comment: %s}", Long.valueOf(getRelativeID()), getName() != null ? b.A("\"", getName(), "\"") : "null", getComment() != null ? b.A("\"", getComment(), "\"") : "null");
    }
}
