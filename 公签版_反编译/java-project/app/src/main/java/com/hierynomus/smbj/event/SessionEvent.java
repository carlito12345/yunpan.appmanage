package com.hierynomus.smbj.event;

/* loaded from: classes.dex */
abstract class SessionEvent implements SMBEvent {
    private long sessionId;

    public SessionEvent(long j10) {
        this.sessionId = j10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.sessionId == ((SessionEvent) obj).sessionId;
    }

    public long getSessionId() {
        return this.sessionId;
    }

    public int hashCode() {
        long j10 = this.sessionId;
        return (int) (j10 ^ (j10 >>> 32));
    }
}
