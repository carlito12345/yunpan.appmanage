package com.rapid7.client.dcerpc.mssamr.dto;

import j$.util.Objects;

/* loaded from: classes.dex */
public class DomainPasswordInfo {
    private static final int DOMAIN_PASSWORD_COMPLEX = 1;
    private static final int DOMAIN_PASSWORD_NO_ANON_CHANGE = 2;
    private static final int DOMAIN_PASSWORD_STORE_CLEARTEXT = 16;
    private final long maximumPasswordAge;
    private final long minimumPasswordAge;
    private final int minimumPasswordLength;
    private final int passwordHistoryLength;
    private final int passwordProperties;

    public DomainPasswordInfo(int i10, int i11, int i12, long j10, long j11) {
        this.minimumPasswordLength = i10;
        this.passwordHistoryLength = i11;
        this.passwordProperties = i12;
        this.maximumPasswordAge = j10;
        this.minimumPasswordAge = j11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DomainPasswordInfo)) {
            return false;
        }
        DomainPasswordInfo domainPasswordInfo = (DomainPasswordInfo) obj;
        return Integer.valueOf(getMinimumPasswordLength()).equals(Integer.valueOf(domainPasswordInfo.getMinimumPasswordLength())) && Integer.valueOf(getPasswordHistoryLength()).equals(Integer.valueOf(domainPasswordInfo.getPasswordHistoryLength())) && Integer.valueOf(getPasswordProperties()).equals(Integer.valueOf(domainPasswordInfo.getPasswordProperties())) && Long.valueOf(getMaximumPasswordAge()).equals(Long.valueOf(domainPasswordInfo.getMaximumPasswordAge())) && Long.valueOf(getMinimumPasswordAge()).equals(Long.valueOf(domainPasswordInfo.getMinimumPasswordAge()));
    }

    public long getMaximumPasswordAge() {
        return this.maximumPasswordAge;
    }

    public long getMinimumPasswordAge() {
        return this.minimumPasswordAge;
    }

    public int getMinimumPasswordLength() {
        return this.minimumPasswordLength;
    }

    public int getPasswordHistoryLength() {
        return this.passwordHistoryLength;
    }

    public int getPasswordProperties() {
        return this.passwordProperties;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(getMinimumPasswordLength()), Integer.valueOf(getPasswordHistoryLength()), Integer.valueOf(getPasswordProperties()), Long.valueOf(getMaximumPasswordAge()), Long.valueOf(getMinimumPasswordAge()));
    }

    public boolean isDomainPasswordComplex() {
        return (this.passwordProperties & 1) != 0;
    }

    public boolean isDomainPasswordNoAnonChange() {
        return (this.passwordProperties & 2) != 0;
    }

    public boolean isDomainPasswordStoredClearText() {
        return (this.passwordProperties & 16) != 0;
    }

    public String toString() {
        return String.format("DomainPasswordInformation{minimumPasswordLength: %d, passwordHistoryLength: %d, passwordProperties: %d, maximumPasswordAge: %d, minimumPasswordAge: %d, isDomainPasswordComplex: %b, isDomainPasswordNoAnonChange: %b, isDomainPasswordStoredClearText: %b}", Integer.valueOf(getMinimumPasswordLength()), Integer.valueOf(getPasswordHistoryLength()), Integer.valueOf(getPasswordProperties()), Long.valueOf(getMaximumPasswordAge()), Long.valueOf(getMinimumPasswordAge()), Boolean.valueOf(isDomainPasswordComplex()), Boolean.valueOf(isDomainPasswordNoAnonChange()), Boolean.valueOf(isDomainPasswordStoredClearText()));
    }
}
