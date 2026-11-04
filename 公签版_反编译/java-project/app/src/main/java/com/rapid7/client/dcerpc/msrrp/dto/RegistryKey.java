package com.rapid7.client.dcerpc.msrrp.dto;

import da.b;
import j$.util.Objects;

/* loaded from: classes.dex */
public class RegistryKey {
    private final FileTime lastWriteTime;
    private final String name;

    public RegistryKey(String str, FileTime fileTime) {
        if (str == null) {
            throw new IllegalArgumentException(b.c("Name is invalid: ", str));
        }
        if (fileTime != null) {
            this.name = str;
            this.lastWriteTime = fileTime;
        } else {
            throw new IllegalArgumentException("LastWriteTime is invalid: " + fileTime);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof RegistryKey) {
            RegistryKey registryKey = (RegistryKey) obj;
            if (Objects.equals(this.name, registryKey.name) && Objects.equals(this.lastWriteTime, registryKey.lastWriteTime)) {
                return true;
            }
        }
        return false;
    }

    public FileTime getLastWriteTime() {
        return this.lastWriteTime;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return Objects.hash(this.name, this.lastWriteTime);
    }

    public String toString() {
        return String.format("%s {lastWriteTime=%s}", this.name, this.lastWriteTime);
    }
}
