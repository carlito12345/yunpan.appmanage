package com.hierynomus.smbj.share;

import com.hierynomus.mserref.NtStatus;

/* loaded from: classes.dex */
public interface StatusHandler {
    public static final StatusHandler SUCCESS = new StatusHandler() { // from class: com.hierynomus.smbj.share.StatusHandler.1
        @Override // com.hierynomus.smbj.share.StatusHandler
        public boolean isSuccess(long j10) {
            return j10 == NtStatus.STATUS_SUCCESS.getValue();
        }
    };

    boolean isSuccess(long j10);
}
