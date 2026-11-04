package com.rapid7.client.dcerpc.msvcctl.dto.enums;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public enum ServiceType {
    KERNEL_DRIVER(1),
    FILE_SYSTEM_DRIVER(2),
    ADAPTER(4),
    RECOGNIZER_DRIVER(8),
    WIN32_OWN_PROCESS(16),
    WIN32_SHARE_PROCESS(32),
    INTERACTIVE_PROCESS(256),
    NO_CHANGE(-1),
    UNKNOWN(-1);

    private static final Map<Integer, ServiceType> MS_TYPEDMAP = new HashMap();
    private final int m_value;

    static {
        for (ServiceType serviceType : values()) {
            MS_TYPEDMAP.put(Integer.valueOf(serviceType.getValue()), serviceType);
        }
    }

    ServiceType(int i10) {
        this.m_value = i10;
    }

    public static ServiceType fromInt(int i10) {
        ServiceType serviceType = MS_TYPEDMAP.get(Integer.valueOf(i10));
        return serviceType == null ? UNKNOWN : serviceType;
    }

    public int getValue() {
        return this.m_value;
    }
}
