package com.rapid7.client.dcerpc.msvcctl.dto.enums;

/* loaded from: classes.dex */
public enum ServiceState {
    ACTIVE(1),
    INACTIVE(2),
    STATE_ALL(3);

    private final int m_value;

    ServiceState(int i10) {
        this.m_value = i10;
    }

    public int getValue() {
        return this.m_value;
    }
}
