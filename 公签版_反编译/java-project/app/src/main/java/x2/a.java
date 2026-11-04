package x2;

import j$.nio.charset.StandardCharsets;
import java.util.Arrays;
import r1.a0;
import r1.c0;
import r1.e0;
import r1.p;
import u1.q;

/* loaded from: classes.dex */
public final class a implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f18107a;

    /* renamed from: b, reason: collision with root package name */
    public final String f18108b;

    /* renamed from: c, reason: collision with root package name */
    public final String f18109c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18110d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18111e;

    /* renamed from: f, reason: collision with root package name */
    public final int f18112f;

    /* renamed from: g, reason: collision with root package name */
    public final int f18113g;

    /* renamed from: h, reason: collision with root package name */
    public final byte[] f18114h;

    public a(int i10, String str, String str2, int i11, int i12, int i13, int i14, byte[] bArr) {
        this.f18107a = i10;
        this.f18108b = str;
        this.f18109c = str2;
        this.f18110d = i11;
        this.f18111e = i12;
        this.f18112f = i13;
        this.f18113g = i14;
        this.f18114h = bArr;
    }

    public static a d(q qVar) {
        int iO = qVar.o();
        String strL = e0.l(qVar.z(StandardCharsets.US_ASCII, qVar.o()));
        String strZ = qVar.z(StandardCharsets.UTF_8, qVar.o());
        int iO2 = qVar.o();
        int iO3 = qVar.o();
        int iO4 = qVar.o();
        int iO5 = qVar.o();
        int iO6 = qVar.o();
        byte[] bArr = new byte[iO6];
        qVar.l(0, iO6, bArr);
        return new a(iO, strL, strZ, iO2, iO3, iO4, iO5, bArr);
    }

    @Override // r1.c0
    public final /* synthetic */ p a() {
        return null;
    }

    @Override // r1.c0
    public final void b(a0 a0Var) {
        a0Var.a(this.f18107a, this.f18114h);
    }

    @Override // r1.c0
    public final /* synthetic */ byte[] c() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f18107a == aVar.f18107a && this.f18108b.equals(aVar.f18108b) && this.f18109c.equals(aVar.f18109c) && this.f18110d == aVar.f18110d && this.f18111e == aVar.f18111e && this.f18112f == aVar.f18112f && this.f18113g == aVar.f18113g && Arrays.equals(this.f18114h, aVar.f18114h);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f18114h) + ((((((((org.bouncycastle.jcajce.provider.digest.a.c(org.bouncycastle.jcajce.provider.digest.a.c((527 + this.f18107a) * 31, 31, this.f18108b), 31, this.f18109c) + this.f18110d) * 31) + this.f18111e) * 31) + this.f18112f) * 31) + this.f18113g) * 31);
    }

    public final String toString() {
        return "Picture: mimeType=" + this.f18108b + ", description=" + this.f18109c;
    }
}
