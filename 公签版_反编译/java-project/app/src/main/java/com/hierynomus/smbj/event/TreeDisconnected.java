package com.hierynomus.smbj.event;

/* loaded from: classes.dex */
public class TreeDisconnected extends SessionEvent {
    private long treeId;

    public TreeDisconnected(long j10, long j11) {
        super(j10);
        this.treeId = j11;
    }

    @Override // com.hierynomus.smbj.event.SessionEvent
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.hierynomus.smbj.event.SessionEvent
    public /* bridge */ /* synthetic */ long getSessionId() {
        return super.getSessionId();
    }

    public long getTreeId() {
        return this.treeId;
    }

    @Override // com.hierynomus.smbj.event.SessionEvent
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }
}
