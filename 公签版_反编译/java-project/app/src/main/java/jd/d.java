package jd;

import ad.f;
import j$.nio.charset.StandardCharsets;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class d extends id.c implements f {
    public static final Logger H = LoggerFactory.getLogger((Class<?>) d.class);
    public int A;
    public int B;
    public String C;
    public String D;
    public String E;
    public String F;
    public boolean G;

    /* renamed from: y, reason: collision with root package name */
    public int f9855y;
    public int z;

    public d(String str, vc.f fVar) {
        super(fVar, 5);
        this.f9855y = 1179785;
        this.A = 3;
        this.B = 1;
        k(str);
    }

    @Override // ad.f
    public final String V() {
        return this.E;
    }

    @Override // ad.f
    public final String W() {
        return this.D;
    }

    @Override // ad.f
    public final String g() {
        return this.F;
    }

    @Override // ad.f
    public final String getPath() {
        return "\\" + this.C;
    }

    @Override // ad.f
    public final void j() {
        this.f8656b |= 268435456;
        this.G = true;
    }

    @Override // ad.f
    public final void k(String str) {
        if (str.length() > 0 && str.charAt(0) == '\\') {
            str = str.substring(1);
        }
        if (str.length() > 1 && str.charAt(str.length() - 1) == '\\') {
            str = android.support.v4.media.session.a.l(1, 0, str);
        }
        this.C = str;
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        Logger logger = H;
        if (logger.isDebugEnabled()) {
            logger.debug("Opening " + this.C);
            logger.debug("Flags are ".concat(ge.a.l(this.f8656b, 4)));
        }
        rd.a.e(57L, bArr, i10);
        bArr[i10 + 2] = 0;
        bArr[i10 + 3] = 0;
        rd.a.f(2, bArr, i10 + 4);
        rd.a.g(0L, bArr, i10 + 8);
        rd.a.f(this.f9855y, bArr, i10 + 24);
        rd.a.f(this.z, bArr, i10 + 28);
        rd.a.f(this.A, bArr, i10 + 32);
        rd.a.f(this.B, bArr, i10 + 36);
        long j10 = 0;
        rd.a.f(j10, bArr, i10 + 40);
        byte[] bytes = this.C.getBytes(StandardCharsets.UTF_16LE);
        rd.a.e(bytes.length, bArr, i10 + 46);
        int i11 = i10 + 48;
        int i12 = i10 + 52;
        int i13 = i10 + 56;
        rd.a.e(i13 - this.f8658d, bArr, i10 + 44);
        System.arraycopy(bytes, 0, bArr, i13, bytes.length);
        int length = bytes.length == 0 ? i10 + 57 : bytes.length + i13;
        int iK0 = k0(length) + length;
        rd.a.f(0L, bArr, i11);
        rd.a.f(j10, bArr, i12);
        return iK0 - i10;
    }

    @Override // ad.f
    public final void q(String str, String str2, String str3) {
        this.E = str;
        this.F = str2;
        this.D = str3;
    }

    @Override // id.c
    public final id.d q0(vc.b bVar) {
        return new e(this.C, bVar.e());
    }

    @Override // ad.c
    public final int size() {
        int length = this.C.length() * 2;
        if (length == 0) {
            length++;
        }
        return id.b.o0(id.b.o0(length, 0) + 120, 0);
    }

    @Override // id.b
    public final String toString() {
        return "[" + super.toString() + ",name=" + this.C + ",resolveDfs=" + this.G + "]";
    }
}
