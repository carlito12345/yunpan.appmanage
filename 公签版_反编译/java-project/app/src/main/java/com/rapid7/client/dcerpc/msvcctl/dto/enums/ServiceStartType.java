package com.rapid7.client.dcerpc.msvcctl.dto.enums;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public enum ServiceStartType {
    SYSTEM_START(1),
    AUTO_START(2),
    DEMAND_START(3),
    DISABLED(4),
    BOOT_START(0),
    NO_CHANGE(-1),
    UNKNOWN(-1);

    private static final Map<Integer, ServiceStartType> MS_TYPEDMAP = new HashMap();
    private final int m_value;

    static {
        for (ServiceStartType serviceStartType : values()) {
            MS_TYPEDMAP.put(Integer.valueOf(serviceStartType.getValue()), serviceStartType);
        }
    }

    ServiceStartType(int i10) {
        this.m_value = i10;
    }

    public static ServiceStartType fromInt(int i10) {
        ServiceStartType serviceStartType = MS_TYPEDMAP.get(Integer.valueOf(i10));
        return serviceStartType == null ? UNKNOWN : serviceStartType;
    }

    public int getValue() {
        return this.m_value;
    }
}
