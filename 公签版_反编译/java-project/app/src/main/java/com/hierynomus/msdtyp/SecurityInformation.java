package com.hierynomus.msdtyp;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SecurityInformation implements EnumWithValue<SecurityInformation> {
    OWNER_SECURITY_INFORMATION(1),
    GROUP_SECURITY_INFORMATION(2),
    DACL_SECURITY_INFORMATION(4),
    SACL_SECURITY_INFORMATION(8),
    LABEL_SECURITY_INFORMATION(16),
    UNPROTECTED_SACL_SECURITY_INFORMATION(268435456),
    UNPROTECTED_DACL_SECURITY_INFORMATION(536870912),
    PROTECTED_SACL_SECURITY_INFORMATION(1073741824),
    PROTECTED_DACL_SECURITY_INFORMATION(2147483648L),
    ATTRIBUTE_SECURITY_INFORMATION(32),
    SCOPE_SECURITY_INFORMATION(64),
    BACKUP_SECURITY_INFORMATION(65536);

    private long value;

    SecurityInformation(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
