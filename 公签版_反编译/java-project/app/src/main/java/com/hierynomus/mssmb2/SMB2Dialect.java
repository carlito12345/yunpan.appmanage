package com.hierynomus.mssmb2;

import da.b;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public enum SMB2Dialect {
    UNKNOWN(0),
    SMB_2_0_2(514),
    SMB_2_1(528),
    SMB_2XX(767),
    SMB_3_0(768),
    SMB_3_0_2(770),
    SMB_3_1_1(785);

    private int value;

    SMB2Dialect(int i10) {
        this.value = i10;
    }

    public static SMB2Dialect lookup(int i10) {
        for (SMB2Dialect sMB2Dialect : values()) {
            if (sMB2Dialect.getValue() == i10) {
                return sMB2Dialect;
            }
        }
        throw new IllegalStateException(b.a(i10, "Unknown SMB2 Dialect: "));
    }

    public static boolean supportsSmb3x(Set<SMB2Dialect> set) {
        Iterator<SMB2Dialect> it = set.iterator();
        while (it.hasNext()) {
            if (it.next().isSmb3x()) {
                return true;
            }
        }
        return false;
    }

    public int getValue() {
        return this.value;
    }

    public boolean isSmb3x() {
        return this == SMB_3_0 || this == SMB_3_0_2 || this == SMB_3_1_1;
    }
}
