package com.rapid7.client.dcerpc.msvcctl.dto.enums;

import com.rapid7.client.dcerpc.msvcctl.ServiceControlManagerService;

/* loaded from: classes.dex */
public enum ServiceManagerAccessLevel {
    CONNECT(1),
    CREATE_SERVICE(2),
    ENUMERATE_SERVICE(4),
    LOCK(8),
    QUERY_LOCK_STATUS(16),
    MODIFY_BOOT_CONFIG(32),
    ALL_ACCESS(ServiceControlManagerService.FULL_ACCESS);

    private final int m_value;

    ServiceManagerAccessLevel(int i10) {
        this.m_value = i10;
    }

    public int getValue() {
        return this.m_value;
    }
}
