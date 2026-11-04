package com.rapid7.client.dcerpc.dto;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public enum SIDUse {
    SID_TYPE_USER(1),
    SID_TYPE_GROUP(2),
    SID_TYPE_DOMAIN(3),
    SID_TYPE_ALIAS(4),
    SID_TYPE_WELL_KNOWN_GROUP(5),
    SID_TYPE_DELETED_ACCOUNT(6),
    SID_TYPE_INVALID(7),
    SID_TYPE_UNKNOWN(8),
    SID_TYPE_COMPUTER(9),
    SID_TYPE_LABEL(10);

    private static final Map<Short, SIDUse> VALUE_MAP = new HashMap();
    private final short value;

    static {
        for (SIDUse sIDUse : values()) {
            VALUE_MAP.put(Short.valueOf(sIDUse.getValue()), sIDUse);
        }
    }

    SIDUse(short s8) {
        this.value = s8;
    }

    public static SIDUse fromValue(short s8) {
        return VALUE_MAP.get(Short.valueOf(s8));
    }

    public short getValue() {
        return this.value;
    }
}
