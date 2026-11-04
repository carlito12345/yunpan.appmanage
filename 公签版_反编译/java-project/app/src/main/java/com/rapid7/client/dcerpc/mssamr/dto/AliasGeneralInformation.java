package com.rapid7.client.dcerpc.mssamr.dto;

import g.b;
import j$.util.Objects;

/* loaded from: classes.dex */
public class AliasGeneralInformation {
    private final String adminComment;
    private final long memberCount;
    private final String name;

    public AliasGeneralInformation(String str, long j10, String str2) {
        this.name = str;
        this.memberCount = j10;
        this.adminComment = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AliasGeneralInformation)) {
            return false;
        }
        AliasGeneralInformation aliasGeneralInformation = (AliasGeneralInformation) obj;
        return Objects.equals(getName(), aliasGeneralInformation.getName()) && Long.valueOf(getMemberCount()).equals(Long.valueOf(aliasGeneralInformation.getMemberCount())) && Objects.equals(getAdminComment(), aliasGeneralInformation.getAdminComment());
    }

    public String getAdminComment() {
        return this.adminComment;
    }

    public long getMemberCount() {
        return this.memberCount;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return Objects.hash(getName(), Long.valueOf(getMemberCount()), getAdminComment());
    }

    public String toString() {
        String str = this.name;
        String strA = str != null ? b.A("\"", str, "\"") : "null";
        String str2 = this.adminComment;
        return String.format("AliasGeneralInformation{name: %s, memberCount: %d, adminComment: %s}", strA, Long.valueOf(getMemberCount()), str2 != null ? b.A("\"", str2, "\"") : "null");
    }
}
