package com.rapid7.client.dcerpc.msvcctl.dto.enums;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public enum ServicesAcceptedControls {
    SERVICE_ACCEPT_TRIGGEREVENT(1024),
    SERVICE_ACCEPT_TIMECHANGE(512),
    SERVICE_ACCEPT_PRESHUTDOWN(256),
    SERVICE_ACCEPT_SESSIONCHANGE(128),
    SERVICE_ACCEPT_POWEREVENT(64),
    SERVICE_ACCEPT_HARDWAREPROFILECHANGE(32),
    SERVICE_ACCEPT_NETBINDCHANGE(16),
    SERVICE_ACCEPT_PARAMCHANGE(8),
    SERVICE_ACCEPT_SHUTDOWN(4),
    SERVICE_ACCEPT_PAUSE_CONTINUE(2),
    SERVICE_ACCEPT_STOP(1),
    SERVICE_ACCEPT_NONE(0),
    UNKNOWN(-1);

    private static final Map<Integer, ServicesAcceptedControls> MS_TYPEDMAP = new HashMap();
    private final int m_value;

    static {
        for (ServicesAcceptedControls servicesAcceptedControls : values()) {
            MS_TYPEDMAP.put(Integer.valueOf(servicesAcceptedControls.getValue()), servicesAcceptedControls);
        }
    }

    ServicesAcceptedControls(int i10) {
        this.m_value = i10;
    }

    public static ServicesAcceptedControls fromInt(int i10) {
        ServicesAcceptedControls servicesAcceptedControls = MS_TYPEDMAP.get(Integer.valueOf(i10));
        return servicesAcceptedControls == null ? UNKNOWN : servicesAcceptedControls;
    }

    public int getValue() {
        return this.m_value;
    }
}
