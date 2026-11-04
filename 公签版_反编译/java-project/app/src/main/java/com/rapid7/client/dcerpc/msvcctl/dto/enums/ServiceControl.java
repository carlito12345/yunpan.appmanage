package com.rapid7.client.dcerpc.msvcctl.dto.enums;

/* loaded from: classes.dex */
public enum ServiceControl {
    STOP(1),
    PAUSE(2),
    CONTINUE(3),
    INTERROGATE(4),
    PARAM_CHANGE(6);

    private final int m_value;

    ServiceControl(int i10) {
        this.m_value = i10;
    }

    public int getValue() {
        return this.m_value;
    }
}
