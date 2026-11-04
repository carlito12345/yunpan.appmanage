package ce;

import java.util.Date;

/* loaded from: classes.dex */
public final class e1 implements g {

    /* renamed from: a, reason: collision with root package name */
    public int f3055a;

    /* renamed from: b, reason: collision with root package name */
    public int f3056b;

    /* renamed from: c, reason: collision with root package name */
    public long f3057c;

    /* renamed from: d, reason: collision with root package name */
    public long f3058d;

    /* renamed from: e, reason: collision with root package name */
    public long f3059e;

    /* renamed from: f, reason: collision with root package name */
    public int f3060f;

    /* renamed from: g, reason: collision with root package name */
    public int f3061g;

    /* renamed from: h, reason: collision with root package name */
    public String f3062h;

    @Override // ce.g
    public final long a() {
        return this.f3057c;
    }

    @Override // ce.g
    public final long b() {
        return this.f3058d;
    }

    @Override // ce.g
    public final int getAttributes() {
        return this.f3060f;
    }

    @Override // ce.g
    public final String getName() {
        return this.f3062h;
    }

    @Override // ce.g
    public final int getType() {
        return 1;
    }

    @Override // ce.g
    public final long length() {
        return this.f3059e;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbFindFileBothDirectoryInfo[nextEntryOffset=");
        sb2.append(this.f3055a);
        sb2.append(",fileIndex=");
        sb2.append(this.f3056b);
        sb2.append(",creationTime=");
        sb2.append(new Date(this.f3057c));
        sb2.append(",lastAccessTime=");
        sb2.append(new Date(0L));
        sb2.append(",lastWriteTime=");
        sb2.append(new Date(this.f3058d));
        sb2.append(",changeTime=");
        sb2.append(new Date(0L));
        sb2.append(",endOfFile=");
        sb2.append(this.f3059e);
        sb2.append(",allocationSize=0,extFileAttributes=");
        sb2.append(this.f3060f);
        sb2.append(",fileNameLength=");
        sb2.append(this.f3061g);
        sb2.append(",eaSize=0,shortNameLength=0,shortName=null,filename=");
        return new String(g.b.l(this.f3062h, "]", sb2));
    }
}
