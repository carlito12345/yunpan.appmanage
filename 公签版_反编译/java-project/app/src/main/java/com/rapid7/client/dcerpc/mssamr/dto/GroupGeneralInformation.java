package com.rapid7.client.dcerpc.mssamr.dto;

import g.b;
import j$.util.Objects;

/* loaded from: classes.dex */
public class GroupGeneralInformation {
    private final String adminComment;
    private final int attributes;
    private final long memberCount;
    private final String name;

    public GroupGeneralInformation(String str, int i10, long j10, String str2) {
        this.name = str;
        this.attributes = i10;
        this.memberCount = j10;
        this.adminComment = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GroupGeneralInformation)) {
            return false;
        }
        GroupGeneralInformation groupGeneralInformation = (GroupGeneralInformation) obj;
        return Objects.equals(getName(), groupGeneralInformation.getName()) && Integer.valueOf(getAttributes()).equals(Integer.valueOf(groupGeneralInformation.getAttributes())) && Long.valueOf(getMemberCount()).equals(Long.valueOf(groupGeneralInformation.getMemberCount())) && Objects.equals(getAdminComment(), groupGeneralInformation.getAdminComment());
    }

    public String getAdminComment() {
        return this.adminComment;
    }

    public int getAttributes() {
        return this.attributes;
    }

    public long getMemberCount() {
        return this.memberCount;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return Objects.hash(getName(), Integer.valueOf(getAttributes()), Long.valueOf(getMemberCount()), getAdminComment());
    }

    public String toString() {
        String str = this.name;
        String strA = str != null ? b.A("\"", str, "\"") : "null";
        String str2 = this.adminComment;
        return String.format("GroupGeneralInformation{name: %s, attributes: %d, memberCount: %d, adminComment: %s}", strA, Integer.valueOf(getAttributes()), Long.valueOf(getMemberCount()), str2 != null ? b.A("\"", str2, "\"") : "null");
    }
}
