package dd;

/* loaded from: classes.dex */
public final class e implements ad.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4596a;

    /* renamed from: b, reason: collision with root package name */
    public long f4597b;

    /* renamed from: c, reason: collision with root package name */
    public long f4598c;

    /* renamed from: d, reason: collision with root package name */
    public int f4599d;

    /* renamed from: e, reason: collision with root package name */
    public int f4600e;

    @Override // vc.g
    public final int i(int i10, int i11, byte[] bArr) {
        switch (this.f4596a) {
            case 0:
                this.f4597b = rd.a.c(i10, bArr);
                this.f4598c = rd.a.c(i10 + 8, bArr);
                this.f4599d = rd.a.b(i10 + 16, bArr);
                this.f4600e = rd.a.b(i10 + 20, bArr);
                return (i10 + 24) - i10;
            default:
                this.f4599d = rd.a.b(i10 + 4, bArr);
                this.f4597b = rd.a.b(i10 + 8, bArr);
                this.f4598c = rd.a.b(i10 + 12, bArr);
                this.f4600e = rd.a.a(i10 + 16, bArr);
                return (i10 + 20) - i10;
        }
    }

    public final String toString() {
        switch (this.f4596a) {
            case 0:
                StringBuilder sb2 = new StringBuilder("SmbInfoAllocation[alloc=");
                sb2.append(this.f4597b);
                sb2.append(",free=");
                sb2.append(this.f4598c);
                sb2.append(",sectPerAlloc=");
                sb2.append(this.f4599d);
                sb2.append(",bytesPerSect=");
                return new String(android.support.v4.media.session.a.s(sb2, this.f4600e, "]"));
            default:
                StringBuilder sb3 = new StringBuilder("SmbInfoAllocation[alloc=");
                sb3.append(this.f4597b);
                sb3.append(",free=");
                sb3.append(this.f4598c);
                sb3.append(",sectPerAlloc=");
                sb3.append(this.f4599d);
                sb3.append(",bytesPerSect=");
                return new String(android.support.v4.media.session.a.s(sb3, this.f4600e, "]"));
        }
    }

    @Override // ad.a
    public final long w() {
        switch (this.f4596a) {
        }
        return this.f4597b * this.f4599d * this.f4600e;
    }
}
