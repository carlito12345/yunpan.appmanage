package yh;

import java.io.InputStream;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: classes3.dex */
public final class t extends o {

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f19265i = {262144, 1048576, PKIFailureInfo.badSenderNonce, 4194304, 4194304, 8388608, 8388608, 16777216, 33554432, 67108864};

    /* renamed from: a, reason: collision with root package name */
    public int f19266a;

    /* renamed from: b, reason: collision with root package name */
    public int f19267b;

    /* renamed from: c, reason: collision with root package name */
    public int f19268c;

    /* renamed from: d, reason: collision with root package name */
    public int f19269d;

    /* renamed from: e, reason: collision with root package name */
    public final int f19270e;

    /* renamed from: f, reason: collision with root package name */
    public final int f19271f;

    /* renamed from: g, reason: collision with root package name */
    public final int f19272g;

    /* renamed from: h, reason: collision with root package name */
    public final int f19273h;

    public t() {
        try {
            this.f19267b = 3;
            this.f19268c = 0;
            this.f19269d = 2;
            this.f19266a = f19265i[6];
            this.f19270e = 2;
            this.f19272g = 20;
            this.f19271f = 64;
            this.f19273h = 0;
        } catch (c0 unused) {
            throw new RuntimeException();
        }
    }

    @Override // yh.o
    public final InputStream a(InputStream inputStream, b bVar) {
        return new s(inputStream, this.f19266a, bVar);
    }

    @Override // yh.o
    public final p b(q qVar, b bVar) {
        return this.f19270e == 0 ? new b0(qVar, bVar) : new u(qVar, this, bVar);
    }

    public final void c(int i10) {
        if (i10 < 4096) {
            throw new c0(g.b.i("LZMA2 dictionary size must be at least 4 KiB: ", i10, " B"));
        }
        if (i10 > 805306368) {
            throw new c0(g.b.i("LZMA2 dictionary size must not exceed 768 MiB: ", i10, " B"));
        }
        this.f19266a = i10;
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new RuntimeException();
        }
    }
}
