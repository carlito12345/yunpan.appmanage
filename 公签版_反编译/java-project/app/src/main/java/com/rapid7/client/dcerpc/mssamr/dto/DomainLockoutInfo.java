package com.rapid7.client.dcerpc.mssamr.dto;

import j$.util.Objects;

/* loaded from: classes.dex */
public class DomainLockoutInfo {
    private final long lockoutDuration;
    private final long lockoutObservationWindow;
    private final int lockoutThreshold;

    public DomainLockoutInfo(long j10, long j11, int i10) {
        this.lockoutDuration = j10;
        this.lockoutObservationWindow = j11;
        this.lockoutThreshold = i10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DomainLockoutInfo)) {
            return false;
        }
        DomainLockoutInfo domainLockoutInfo = (DomainLockoutInfo) obj;
        return getLockoutDuration() == domainLockoutInfo.getLockoutDuration() && getLockoutObservationWindow() == domainLockoutInfo.getLockoutObservationWindow() && getLockoutThreshold() == domainLockoutInfo.getLockoutThreshold();
    }

    public long getLockoutDuration() {
        return this.lockoutDuration;
    }

    public long getLockoutObservationWindow() {
        return this.lockoutObservationWindow;
    }

    public int getLockoutThreshold() {
        return this.lockoutThreshold;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(getLockoutDuration()), Long.valueOf(getLockoutObservationWindow()), Integer.valueOf(getLockoutThreshold()));
    }

    public String toString() {
        return String.format("DomainLockoutInfo{lockoutDuration: %d, lockoutObservationWindow: %d, lockoutThreshold: %d}", Long.valueOf(getLockoutDuration()), Long.valueOf(getLockoutObservationWindow()), Integer.valueOf(getLockoutThreshold()));
    }
}
