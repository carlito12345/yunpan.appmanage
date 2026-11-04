package com.hierynomus.smbj.paths;

import com.hierynomus.mserref.NtStatus;

/* loaded from: classes.dex */
public class PathResolveException extends Exception {
    private final long status;

    public PathResolveException(long j10) {
        this.status = j10;
    }

    public NtStatus getStatus() {
        return NtStatus.valueOf(this.status);
    }

    public long getStatusCode() {
        return this.status;
    }

    public PathResolveException(long j10, String str) {
        super(str);
        this.status = j10;
    }

    public PathResolveException(Throwable th2) {
        super(th2);
        this.status = NtStatus.STATUS_OTHER.getValue();
    }
}
