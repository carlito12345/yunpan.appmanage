package dd;

import java.util.Date;

/* loaded from: classes.dex */
public final class b implements a {

    /* renamed from: a, reason: collision with root package name */
    public long f4585a;

    /* renamed from: b, reason: collision with root package name */
    public long f4586b;

    /* renamed from: c, reason: collision with root package name */
    public long f4587c;

    /* renamed from: d, reason: collision with root package name */
    public long f4588d;

    /* renamed from: e, reason: collision with root package name */
    public int f4589e;

    @Override // vc.j
    public final int c(int i10, byte[] bArr) {
        rd.a.h(this.f4585a, bArr, i10);
        rd.a.h(this.f4586b, bArr, i10 + 8);
        rd.a.h(this.f4587c, bArr, i10 + 16);
        rd.a.h(this.f4588d, bArr, i10 + 24);
        rd.a.f(this.f4589e, bArr, i10 + 32);
        return (i10 + 40) - i10;
    }

    @Override // ad.i
    public final long getLastWriteTime() {
        return this.f4587c;
    }

    @Override // ad.i
    public final long getSize() {
        throw null;
    }

    @Override // vc.g
    public final int i(int i10, int i11, byte[] bArr) {
        this.f4585a = rd.a.d(i10, bArr);
        this.f4586b = rd.a.d(i10 + 8, bArr);
        this.f4587c = rd.a.d(i10 + 16, bArr);
        this.f4588d = rd.a.d(i10 + 24, bArr);
        this.f4589e = rd.a.b(i10 + 32, bArr);
        return (i10 + 36) - i10;
    }

    @Override // vc.j
    public final int size() {
        return 40;
    }

    public final String toString() {
        return new String("SmbQueryFileBasicInfo[createTime=" + new Date(this.f4585a) + ",lastAccessTime=" + new Date(this.f4586b) + ",lastWriteTime=" + new Date(this.f4587c) + ",changeTime=" + new Date(this.f4588d) + ",attributes=0x" + ge.a.l(this.f4589e, 4) + "]");
    }
}
