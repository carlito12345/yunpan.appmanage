package com.rapid7.client.dcerpc.mssamr.dto;

import com.rapid7.client.dcerpc.dto.SIDUse;
import g.b;

/* loaded from: classes.dex */
public class MembershipWithNameAndUse extends MembershipWithName {
    private final SIDUse use;
    private final int useValue;

    public MembershipWithNameAndUse(long j10, String str, int i10) {
        super(j10, str);
        this.use = SIDUse.fromValue((short) i10);
        this.useValue = i10;
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.MembershipWithName, com.rapid7.client.dcerpc.mssamr.dto.Membership
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MembershipWithNameAndUse) {
            return super.equals(obj) && getUseValue() == ((MembershipWithNameAndUse) obj).getUseValue();
        }
        return false;
    }

    public SIDUse getUse() {
        return this.use;
    }

    public int getUseValue() {
        return this.useValue;
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.MembershipWithName, com.rapid7.client.dcerpc.mssamr.dto.Membership
    public int hashCode() {
        return (super.hashCode() * 31) + this.useValue;
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.MembershipWithName, com.rapid7.client.dcerpc.mssamr.dto.Membership
    public String toString() {
        String str;
        String strA = getName() != null ? b.A("\"", getName(), "\"") : "null";
        if (getUse() == null) {
            str = "";
        } else {
            str = " (" + getUse() + ")";
        }
        return String.format("MembershipWithNameAndUse{relativeID: %d, name: %s, use: %d%s}", Long.valueOf(getRelativeID()), strA, Integer.valueOf(getUseValue()), str);
    }
}
