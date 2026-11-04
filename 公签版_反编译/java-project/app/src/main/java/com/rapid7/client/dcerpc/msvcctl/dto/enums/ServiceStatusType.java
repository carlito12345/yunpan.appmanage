package com.rapid7.client.dcerpc.msvcctl.dto.enums;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public enum ServiceStatusType {
    SERVICE_PAUSED(7),
    SERVICE_RUNNING(4),
    SERVICE_STOPPED(1),
    SERVICE_CONTINUE_PENDING(5),
    SERVICE_PAUSE_PENDING(6),
    SERVICE_START_PENDING(2),
    SERVICE_STOP_PENDING(3),
    ACCESS_MASK(983551),
    UNKNOWN(-1);

    private static final Map<Integer, ServiceStatusType> MS_TYPEDMAP = new HashMap();
    private final int m_value;

    static {
        for (ServiceStatusType serviceStatusType : values()) {
            MS_TYPEDMAP.put(Integer.valueOf(serviceStatusType.getValue()), serviceStatusType);
        }
    }

    ServiceStatusType(int i10) {
        this.m_value = i10;
    }

    public static ServiceStatusType fromInt(int i10) {
        ServiceStatusType serviceStatusType = MS_TYPEDMAP.get(Integer.valueOf(i10));
        return serviceStatusType == null ? UNKNOWN : serviceStatusType;
    }

    public int getValue() {
        return this.m_value;
    }
}
