package com.rapid7.client.dcerpc.mssamr.dto;

/* loaded from: classes.dex */
public class Membership {
    private final long relativeID;

    public Membership(long j10) {
        this.relativeID = j10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Membership) && this.relativeID == ((Membership) obj).relativeID;
    }

    public long getRelativeID() {
        return this.relativeID;
    }

    public int hashCode() {
        return (int) this.relativeID;
    }

    public String toString() {
        return String.format("Membership{relativeID: %d}", Long.valueOf(this.relativeID));
    }
}
