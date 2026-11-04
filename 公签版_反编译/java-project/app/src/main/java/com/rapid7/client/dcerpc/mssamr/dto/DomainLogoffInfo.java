package com.rapid7.client.dcerpc.mssamr.dto;

/* loaded from: classes.dex */
public class DomainLogoffInfo {
    private long forceLogoff;

    public DomainLogoffInfo(long j10) {
        this.forceLogoff = j10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DomainLogoffInfo) && getForceLogoff() == ((DomainLogoffInfo) obj).getForceLogoff();
    }

    public long getForceLogoff() {
        return this.forceLogoff;
    }

    public int hashCode() {
        return (int) this.forceLogoff;
    }

    public String toString() {
        return String.format("DomainLogoffInfo{forceLogoff: %d}", Long.valueOf(getForceLogoff()));
    }
}
