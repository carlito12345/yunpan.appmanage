package com.hierynomus.msfscc.fsctl;

import com.hierynomus.protocol.commons.Charsets;
import com.hierynomus.protocol.commons.buffer.Buffer;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class FsCtlPipeWaitRequest {
    private String name;
    private long timeout;
    private boolean timeoutSpecified;
    private final TimeUnit timeoutUnit;

    public FsCtlPipeWaitRequest(String str, long j10, TimeUnit timeUnit, boolean z) {
        this.name = str;
        this.timeout = j10;
        this.timeoutUnit = timeUnit;
        this.timeoutSpecified = z;
    }

    public String getName() {
        return this.name;
    }

    public long getTimeout() {
        return this.timeout;
    }

    public TimeUnit getTimeoutUnit() {
        return this.timeoutUnit;
    }

    public void write(Buffer<?> buffer) {
        buffer.putUInt64(this.timeoutSpecified ? this.timeoutUnit.toMillis(this.timeout) / 100 : 0L);
        int iWpos = buffer.wpos();
        buffer.putUInt32(0L);
        buffer.putBoolean(this.timeoutSpecified);
        buffer.putByte((byte) 0);
        long jWpos = buffer.wpos();
        buffer.putString(this.name, Charsets.UTF_16);
        int iWpos2 = buffer.wpos();
        buffer.wpos(iWpos);
        buffer.putUInt32(iWpos2 - jWpos);
        buffer.wpos(iWpos2);
    }
}
