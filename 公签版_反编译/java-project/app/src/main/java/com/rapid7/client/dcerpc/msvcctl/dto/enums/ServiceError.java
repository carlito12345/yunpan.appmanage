package com.rapid7.client.dcerpc.msvcctl.dto.enums;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public enum ServiceError {
    IGNORE(0),
    NORMAL(1),
    SEVERE(2),
    CRITICAL(3),
    NO_CHANGE(-1),
    UNKNOWN(-1);

    private static final Map<Integer, ServiceError> MS_TYPEDMAP = new HashMap();
    private final int m_value;

    static {
        for (ServiceError serviceError : values()) {
            MS_TYPEDMAP.put(Integer.valueOf(serviceError.getValue()), serviceError);
        }
    }

    ServiceError(int i10) {
        this.m_value = i10;
    }

    public static ServiceError fromInt(int i10) {
        ServiceError serviceError = MS_TYPEDMAP.get(Integer.valueOf(i10));
        return serviceError == null ? UNKNOWN : serviceError;
    }

    public int getValue() {
        return this.m_value;
    }
}
