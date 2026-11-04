package com.rapid7.client.dcerpc.mssamr.dto;

import com.rapid7.client.dcerpc.dto.SIDUse;

/* loaded from: classes.dex */
public class MembershipWithUse extends Membership {
    private final SIDUse use;
    private final int useValue;

    public MembershipWithUse(long j10, int i10) {
        super(j10);
        this.use = SIDUse.fromValue((short) i10);
        this.useValue = i10;
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.Membership
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MembershipWithUse) && super.equals(obj) && getUseValue() == ((MembershipWithUse) obj).getUseValue();
    }

    public SIDUse getUse() {
        return this.use;
    }

    public int getUseValue() {
        return this.useValue;
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.Membership
    public int hashCode() {
        return (super.hashCode() * 31) + this.useValue;
    }

    @Override // com.rapid7.client.dcerpc.mssamr.dto.Membership
    public String toString() {
        String str;
        if (getUse() == null) {
            str = "";
        } else {
            str = " (" + getUse() + ")";
        }
        return String.format("MembershipWithUse{relativeID: %d, use: %d%s}", Long.valueOf(getRelativeID()), Integer.valueOf(this.useValue), str);
    }
}
