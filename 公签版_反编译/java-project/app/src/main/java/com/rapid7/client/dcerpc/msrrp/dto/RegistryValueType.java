package com.rapid7.client.dcerpc.msrrp.dto;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public enum RegistryValueType {
    REG_NONE(0),
    REG_SZ(1),
    REG_EXPAND_SZ(2),
    REG_BINARY(3),
    REG_DWORD(4),
    REG_DWORD_BIG_ENDIAN(5),
    REG_LINK(6),
    REG_MULTI_SZ(7),
    REG_RESOURCE_LIST(8),
    REG_FULL_RESOURCE_DESCRIPTOR(9),
    REG_RESOURCE_REQUIREMENTS_LIST(10),
    REG_QWORD(11);

    private static final Map<Integer, RegistryValueType> registryValueTypes = new HashMap();
    private final int typeID;

    static {
        for (RegistryValueType registryValueType : values()) {
            registryValueTypes.put(Integer.valueOf(registryValueType.getTypeID()), registryValueType);
        }
    }

    RegistryValueType(int i10) {
        this.typeID = i10;
    }

    public static RegistryValueType getRegistryValueType(int i10) {
        return registryValueTypes.get(Integer.valueOf(i10));
    }

    public int getTypeID() {
        return this.typeID;
    }

    public boolean is(int i10) {
        return this.typeID == i10;
    }
}
