package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Set;

/* loaded from: classes.dex */
public enum SMB2ShareAccess implements EnumWithValue<SMB2ShareAccess> {
    FILE_SHARE_READ(1),
    FILE_SHARE_WRITE(2),
    FILE_SHARE_DELETE(4);

    public static final Set<SMB2ShareAccess> ALL = Collections.unmodifiableSet(EnumSet.allOf(SMB2ShareAccess.class));
    private long value;

    SMB2ShareAccess(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
