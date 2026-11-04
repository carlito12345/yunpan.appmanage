package com.rapid7.client.dcerpc.msrrp.dto;

import j$.util.Objects;

/* loaded from: classes.dex */
public class RegistryKeyInfo {
    private final long lastWriteTime;
    private final int maxClassLen;
    private final int maxSubKeyLen;
    private final int maxValueLen;
    private final int maxValueNameLen;
    private final int securityDescriptor;
    private final int subKeys;
    private final int values;

    public RegistryKeyInfo(int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10) {
        this.subKeys = i10;
        this.maxSubKeyLen = i11;
        this.maxClassLen = i12;
        this.values = i13;
        this.maxValueNameLen = i14;
        this.maxValueLen = i15;
        this.securityDescriptor = i16;
        this.lastWriteTime = j10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegistryKeyInfo)) {
            return false;
        }
        RegistryKeyInfo registryKeyInfo = (RegistryKeyInfo) obj;
        return getSubKeys() == registryKeyInfo.getSubKeys() && getMaxSubKeyLen() == registryKeyInfo.getMaxSubKeyLen() && getMaxClassLen() == registryKeyInfo.getMaxClassLen() && getValues() == registryKeyInfo.getValues() && getMaxValueNameLen() == registryKeyInfo.getMaxValueNameLen() && getMaxValueLen() == registryKeyInfo.getMaxValueLen() && getSecurityDescriptor() == registryKeyInfo.getSecurityDescriptor() && getLastWriteTime() == registryKeyInfo.getLastWriteTime();
    }

    public long getLastWriteTime() {
        return this.lastWriteTime;
    }

    public int getMaxClassLen() {
        return this.maxClassLen;
    }

    public int getMaxSubKeyLen() {
        return this.maxSubKeyLen;
    }

    public int getMaxValueLen() {
        return this.maxValueLen;
    }

    public int getMaxValueNameLen() {
        return this.maxValueNameLen;
    }

    public int getSecurityDescriptor() {
        return this.securityDescriptor;
    }

    public int getSubKeys() {
        return this.subKeys;
    }

    public int getValues() {
        return this.values;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(getSubKeys()), Integer.valueOf(getMaxSubKeyLen()), Integer.valueOf(getMaxClassLen()), Integer.valueOf(getValues()), Integer.valueOf(getMaxValueNameLen()), Integer.valueOf(getMaxValueLen()), Integer.valueOf(getSecurityDescriptor()), Long.valueOf(getLastWriteTime()));
    }

    public String toString() {
        return String.format("RegistryKeyInfo{subKeys: %d, maxSubKeyLen: %d, maxClassLen: %d, values: %d, maxValueNameLen: %d, maxValueLen: %d, securityDescriptor: %d,lastWriteTime: %d}", Integer.valueOf(getSubKeys()), Integer.valueOf(getMaxSubKeyLen()), Integer.valueOf(getMaxClassLen()), Integer.valueOf(getValues()), Integer.valueOf(getMaxValueNameLen()), Integer.valueOf(getMaxValueLen()), Integer.valueOf(getSecurityDescriptor()), Long.valueOf(getLastWriteTime()));
    }
}
