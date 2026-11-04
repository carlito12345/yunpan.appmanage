package ce;

import java.util.Date;

/* loaded from: classes.dex */
public final class o1 implements i {

    /* renamed from: a, reason: collision with root package name */
    public long f3092a;

    /* renamed from: b, reason: collision with root package name */
    public long f3093b;

    /* renamed from: c, reason: collision with root package name */
    public long f3094c;

    /* renamed from: d, reason: collision with root package name */
    public long f3095d;

    /* renamed from: e, reason: collision with root package name */
    public int f3096e;

    @Override // ce.i
    public final long a() {
        return this.f3092a;
    }

    @Override // ce.i
    public final int getAttributes() {
        return this.f3096e;
    }

    @Override // ce.i
    public final long getLastWriteTime() {
        return this.f3094c;
    }

    @Override // ce.i
    public final long getSize() {
        return 0L;
    }

    public final String toString() {
        return new String("SmbQueryFileBasicInfo[createTime=" + new Date(this.f3092a) + ",lastAccessTime=" + new Date(this.f3093b) + ",lastWriteTime=" + new Date(this.f3094c) + ",changeTime=" + new Date(this.f3095d) + ",attributes=0x" + de.c.c(this.f3096e, 4) + "]");
    }
}
