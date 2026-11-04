package a9;

import com.android.apksig.internal.apk.v4.V4Signature;
import java.math.BigInteger;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class w extends r {

    /* renamed from: h, reason: collision with root package name */
    public r f551h;

    /* renamed from: i, reason: collision with root package name */
    public static final byte[] f536i = {42, -122, 72, -122, -9, 13, 1, 1, 1};

    /* renamed from: j, reason: collision with root package name */
    public static final byte[] f537j = {42, -122, 72, -50, 56, 4, 1};

    /* renamed from: k, reason: collision with root package name */
    public static final byte[] f538k = {42, -122, 72, -50, 61, 2, 1};
    public static final byte[] l = {43, 101, 112};

    /* renamed from: m, reason: collision with root package name */
    public static final byte[] f539m = {43, 101, 113};

    /* renamed from: n, reason: collision with root package name */
    public static final byte[] f540n = {42, -122, 72, -50, 61, 3, 1, 7};

    /* renamed from: o, reason: collision with root package name */
    public static final byte[] f541o = {43, -127, 4, 0, 34};

    /* renamed from: p, reason: collision with root package name */
    public static final byte[] f542p = {43, -127, 4, 0, 35};

    /* renamed from: q, reason: collision with root package name */
    public static final byte[] f543q = {42, -122, 72, -122, -9, 13, 1, 5, 13};
    public static final byte[] r = {42, -122, 72, -122, -9, 13, 1, 5, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES};

    /* renamed from: s, reason: collision with root package name */
    public static final byte[] f544s = {43, 6, 1, 4, 1, -38, 71, 4, 11};

    /* renamed from: t, reason: collision with root package name */
    public static final byte[] f545t = {42, -122, 72, -122, -9, 13, 2, 7};

    /* renamed from: u, reason: collision with root package name */
    public static final byte[] f546u = {42, -122, 72, -122, -9, 13, 2, 8};

    /* renamed from: v, reason: collision with root package name */
    public static final byte[] f547v = {42, -122, 72, -122, -9, 13, 2, 9};

    /* renamed from: w, reason: collision with root package name */
    public static final byte[] f548w = {42, -122, 72, -122, -9, 13, 2, 10};

    /* renamed from: x, reason: collision with root package name */
    public static final byte[] f549x = {42, -122, 72, -122, -9, 13, 2, 11};

    /* renamed from: y, reason: collision with root package name */
    public static final byte[] f550y = {42, -122, 72, -122, -9, 13, 2, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES};
    public static final byte[] z = {42, -122, 72, -122, -9, 13, 2, 13};
    public static final byte[] A = {42, -122, 72, -122, -9, 13, 1, 5, 1};
    public static final byte[] B = {42, -122, 72, -122, -9, 13, 1, 5, 4};
    public static final byte[] C = {42, -122, 72, -122, -9, 13, 1, 5, 3};
    public static final byte[] D = {42, -122, 72, -122, -9, 13, 1, 5, 6};
    public static final byte[] E = {42, -122, 72, -122, -9, 13, 1, 5, 10};
    public static final byte[] F = {42, -122, 72, -122, -9, 13, 1, 5, 11};

    static {
        h0.j("-----BEGIN DSA PRIVATE KEY-----");
        h0.j("-----END DSA PRIVATE KEY-----");
    }

    public w(m7.e eVar) {
        super(eVar);
        this.f551h = null;
    }

    public static void s(String str) throws n {
        try {
            if (Class.forName(l.b(str)).asSubclass(b0.class).getDeclaredConstructor(null).newInstance(null) == null) {
            } else {
                throw new ClassCastException();
            }
        } catch (Exception e7) {
            throw new n(str.concat(" is not supported"), e7);
        }
    }

    public static String t(byte[] bArr) throws n {
        String str = (bArr == null || h0.a(bArr, f545t)) ? "pbkdf2-hmac-sha1" : h0.a(bArr, f546u) ? "pbkdf2-hmac-sha224" : h0.a(bArr, f547v) ? "pbkdf2-hmac-sha256" : h0.a(bArr, f548w) ? "pbkdf2-hmac-sha384" : h0.a(bArr, f549x) ? "pbkdf2-hmac-sha512" : h0.a(bArr, f550y) ? "pbkdf2-hmac-sha512-224" : h0.a(bArr, z) ? "pbkdf2-hmac-sha512-256" : null;
        if (str != null) {
            return str;
        }
        throw new n("unsupported pbkdf2 function oid: " + h0.l(bArr));
    }

    public static void u() throws n {
        try {
            if (Class.forName(l.b("scrypt")).asSubclass(e0.class).getDeclaredConstructor(null).newInstance(null) == null) {
            } else {
                throw new ClassCastException();
            }
        } catch (Exception e7) {
            throw new n("scrypt is not supported", e7);
        }
    }

    public static int v(byte[] bArr) {
        BigInteger bigInteger = new BigInteger(bArr);
        if (bigInteger.bitLength() <= 31) {
            return bigInteger.intValue();
        }
        throw new ArithmeticException("BigInteger out of int range");
    }

    @Override // a9.r
    public final boolean c(byte[] bArr) throws Throwable {
        String str;
        p pVar;
        byte[] bArrA;
        m7.e eVar = this.f519c;
        boolean z4 = true;
        if (!this.f520d) {
            return true;
        }
        byte[] bArr2 = null;
        try {
            try {
                p pVar2 = new p(this.f521e, 0);
                if (!pVar2.j()) {
                    throw new q();
                }
                p[] pVarArrB = pVar2.b();
                if (pVarArrB.length != 2) {
                    throw new q();
                }
                if (!pVarArrB[0].j()) {
                    throw new q();
                }
                if (!pVarArrB[1].i()) {
                    throw new q();
                }
                byte[] bArrA2 = pVarArrB[1].a();
                try {
                    try {
                        p[] pVarArrB2 = pVarArrB[0].b();
                        if (pVarArrB2.length != 2) {
                            throw new q();
                        }
                        if (!pVarArrB2[0].h()) {
                            throw new q();
                        }
                        if (!pVarArrB2[1].j()) {
                            throw new q();
                        }
                        byte[] bArrA3 = pVarArrB2[0].a();
                        p pVar3 = pVarArrB2[1];
                        if (!h0.a(bArrA3, f543q)) {
                            if (h0.a(bArrA3, A)) {
                                str = "pbeWithMD2AndDES-CBC unsupported";
                            } else if (h0.a(bArrA3, B)) {
                                str = "pbeWithMD2AndRC2-CBC unsupported";
                            } else if (h0.a(bArrA3, C)) {
                                str = "pbeWithMD5AndDES-CBC unsupported";
                            } else if (h0.a(bArrA3, D)) {
                                str = "pbeWithMD5AndRC2-CBC unsupported";
                            } else if (h0.a(bArrA3, E)) {
                                str = "pbeWithSHA1AndDES-CBC unsupported";
                            } else if (h0.a(bArrA3, F)) {
                                str = "pbeWithSHA1AndRC2-CBC unsupported";
                            } else {
                                str = "unsupported encryption oid: " + h0.l(bArrA3);
                            }
                            throw new n(str);
                        }
                        p[] pVarArrB3 = pVar3.b();
                        if (pVarArrB3.length != 2) {
                            throw new q();
                        }
                        p pVar4 = pVarArrB3[0];
                        p pVar5 = pVarArrB3[1];
                        if (!pVar4.j()) {
                            throw new q();
                        }
                        if (!pVar5.j()) {
                            throw new q();
                        }
                        p[] pVarArrB4 = pVar5.b();
                        if (pVarArrB4.length != 2) {
                            throw new q();
                        }
                        if (!pVarArrB4[0].h()) {
                            throw new q();
                        }
                        pVarArrB4[0].a();
                        p pVar6 = pVarArrB4[1];
                        p[] pVarArrB5 = pVar4.b();
                        if (pVarArrB5.length != 2) {
                            throw new q();
                        }
                        if (!pVarArrB5[0].h()) {
                            throw new q();
                        }
                        if (!pVarArrB5[1].j()) {
                            throw new q();
                        }
                        byte[] bArrA4 = pVarArrB5[0].a();
                        if (!h0.a(bArrA4, r)) {
                            if (!h0.a(bArrA4, f544s)) {
                                throw new n("unsupported kdf oid: " + h0.l(bArrA4));
                            }
                            p[] pVarArrB6 = pVarArrB5[1].b();
                            if (pVarArrB6.length < 4 || pVarArrB6.length > 5) {
                                throw new q();
                            }
                            if (!pVarArrB6[0].i()) {
                                throw new q();
                            }
                            if (!pVarArrB6[1].g()) {
                                throw new q();
                            }
                            if (!pVarArrB6[2].g()) {
                                throw new q();
                            }
                            if (!pVarArrB6[3].g()) {
                                throw new q();
                            }
                            if (pVarArrB6.length > 4 && !pVarArrB6[4].g()) {
                                throw new q();
                            }
                            pVarArrB6[0].a();
                            v(pVarArrB6[1].a());
                            v(pVarArrB6[2].a());
                            v(pVarArrB6[3].a());
                            u();
                            throw null;
                        }
                        p pVar7 = pVarArrB5[1];
                        if (!pVar7.j()) {
                            throw new q();
                        }
                        p[] pVarArrB7 = pVar7.b();
                        if (pVarArrB7.length < 2 || pVarArrB7.length > 4) {
                            throw new q();
                        }
                        if (!pVarArrB7[0].i()) {
                            throw new q();
                        }
                        if (!pVarArrB7[1].g()) {
                            throw new q();
                        }
                        if (pVarArrB7.length == 4) {
                            if (!pVarArrB7[2].g()) {
                                throw new q();
                            }
                            if (!pVarArrB7[3].j()) {
                                throw new q();
                            }
                            pVar = pVarArrB7[3];
                        } else if (pVarArrB7.length != 3) {
                            pVar = null;
                        } else if (pVarArrB7[2].j()) {
                            pVar = pVarArrB7[2];
                        } else {
                            if (!pVarArrB7[2].g()) {
                                throw new q();
                            }
                            pVar = null;
                        }
                        pVarArrB7[0].a();
                        v(pVarArrB7[1].a());
                        if (pVar != null) {
                            p[] pVarArrB8 = pVar.b();
                            if (pVarArrB8.length != 2) {
                                throw new q();
                            }
                            if (!pVarArrB8[0].h()) {
                                throw new q();
                            }
                            if (pVarArrB8[1].d() != 5) {
                                z4 = false;
                            }
                            if (!z4) {
                                throw new q();
                            }
                            bArrA = pVarArrB8[0].a();
                        } else {
                            bArrA = null;
                        }
                        s(t(bArrA));
                        throw null;
                    } catch (q unused) {
                        bArr2 = bArrA2;
                        eVar.getClass();
                        l.f508f.getClass();
                        h0.d(bArr2);
                        return false;
                    }
                } catch (Exception unused2) {
                    bArr2 = bArrA2;
                    eVar.getClass();
                    l.f508f.getClass();
                    h0.d(bArr2);
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    bArr2 = bArrA2;
                    h0.d(bArr2);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (q unused3) {
        } catch (Exception unused4) {
        }
    }

    @Override // a9.r
    public final byte[] e() {
        return this.f551h.e();
    }

    @Override // a9.r
    public final byte[] h() {
        r rVar = this.f551h;
        return rVar != null ? rVar.h() : this.f522f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:275:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x04b5  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x04c4  */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v4, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v4, types: [a9.r] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v51 */
    /* JADX WARN: Type inference failed for: r9v52 */
    /* JADX WARN: Type inference failed for: r9v53 */
    /* JADX WARN: Type inference failed for: r9v54 */
    /* JADX WARN: Type inference failed for: r9v55 */
    /* JADX WARN: Type inference failed for: r9v56 */
    /* JADX WARN: Type inference failed for: r9v58 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v60 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override // a9.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m(byte[] bArr) throws Throwable {
        byte[] bArr2;
        byte[] bArr3;
        r rVar;
        byte[] bArr4;
        byte[] bArr5;
        r rVar2;
        byte[] bArr6;
        ?? r32;
        ?? r33;
        byte[] bArrJ;
        p pVar;
        byte[] bArrA;
        m7.e eVar = this.f519c;
        ?? r22 = "unsupported privateKeyAlgorithm oid: ";
        ?? r34 = "unsupported named curve oid: ";
        byte[] bArr7 = null;
        try {
            try {
                p pVar2 = new p(bArr, 0);
                if (!pVar2.j()) {
                    throw new q();
                }
                p[] pVarArrB = pVar2.b();
                if (pVarArrB.length >= 3) {
                    ?? r92 = 4;
                    ?? r93 = 4;
                    ?? r94 = 4;
                    ?? r95 = 4;
                    ?? r96 = 4;
                    ?? r97 = 4;
                    if (pVarArrB.length <= 4) {
                        if (!pVarArrB[0].g()) {
                            throw new q();
                        }
                        if (!pVarArrB[1].j()) {
                            throw new q();
                        }
                        if (!pVarArrB[2].i()) {
                            throw new q();
                        }
                        if (pVarArrB.length > 3 && !pVarArrB[3].f(0)) {
                            throw new q();
                        }
                        if (v(pVarArrB[0].a()) != 0) {
                            throw new q();
                        }
                        p pVar3 = pVarArrB[1];
                        p pVar4 = pVarArrB[2];
                        p[] pVarArrB2 = pVar3.b();
                        if (pVarArrB2.length == 0) {
                            throw new q();
                        }
                        if (!pVarArrB2[0].h()) {
                            throw new q();
                        }
                        byte[] bArrA2 = pVarArrB2[0].a();
                        byte[] bArrA3 = pVar4.a();
                        try {
                            if (h0.a(bArrA2, f536i)) {
                                if (pVarArrB2.length != 2) {
                                    throw new q();
                                }
                                if (!(pVarArrB2[1].d() == 5)) {
                                    throw new q();
                                }
                                x xVar = new x(eVar);
                                xVar.a(this);
                                if (!xVar.m(bArrA3)) {
                                    throw new n("failed to parse RSA");
                                }
                                this.f551h = xVar;
                                h0.d(bArrA3);
                                return true;
                            }
                            try {
                                try {
                                    if (h0.a(bArrA2, f537j)) {
                                        ArrayList arrayList = new ArrayList(3);
                                        if (pVarArrB2.length > 1 && pVarArrB2[1].j()) {
                                            p[] pVarArrB3 = pVarArrB2[1].b();
                                            if (pVarArrB3.length != 3) {
                                                throw new q();
                                            }
                                            if (!pVarArrB3[0].g()) {
                                                throw new q();
                                            }
                                            if (!pVarArrB3[1].g()) {
                                                throw new q();
                                            }
                                            if (!pVarArrB3[2].g()) {
                                                throw new q();
                                            }
                                            arrayList.add(pVarArrB3[0].a());
                                            arrayList.add(pVarArrB3[1].a());
                                            arrayList.add(pVarArrB3[2].a());
                                        }
                                        p pVar5 = new p(bArrA3, 0);
                                        if (arrayList.size() == 0) {
                                            if (!pVar5.j()) {
                                                throw new q();
                                            }
                                            p[] pVarArrB4 = pVar5.b();
                                            if (pVarArrB4.length != 2) {
                                                throw new q();
                                            }
                                            if (!pVarArrB4[0].j()) {
                                                throw new q();
                                            }
                                            if (!pVarArrB4[1].g()) {
                                                throw new q();
                                            }
                                            bArrA = pVarArrB4[1].a();
                                            p[] pVarArrB5 = pVarArrB4[0].b();
                                            if (pVarArrB5.length != 3) {
                                                throw new q();
                                            }
                                            if (!pVarArrB5[0].g()) {
                                                throw new q();
                                            }
                                            if (!pVarArrB5[1].g()) {
                                                throw new q();
                                            }
                                            if (!pVarArrB5[2].g()) {
                                                throw new q();
                                            }
                                            arrayList.add(pVarArrB5[0].a());
                                            arrayList.add(pVarArrB5[1].a());
                                            arrayList.add(pVarArrB5[2].a());
                                        } else {
                                            if (!pVar5.g()) {
                                                throw new q();
                                            }
                                            bArrA = pVar5.a();
                                        }
                                        byte[] bArr8 = (byte[]) arrayList.get(0);
                                        byte[] bArr9 = (byte[]) arrayList.get(1);
                                        byte[] bArr10 = (byte[]) arrayList.get(2);
                                        s sVar = new s(this.f519c, bArr8, bArr9, bArr10, new BigInteger(bArr10).modPow(new BigInteger(bArrA), new BigInteger(bArr8)).toByteArray(), bArrA);
                                        byte[] bArrT = sVar.t();
                                        s sVar2 = new s(eVar);
                                        sVar2.a(this);
                                        if (!sVar2.m(bArrT)) {
                                            throw new n("failed to parse DSA");
                                        }
                                        this.f551h = sVar2;
                                        h0.d(bArrA3);
                                        h0.d(bArrA);
                                        h0.d(bArrT);
                                        sVar.d();
                                        return true;
                                    }
                                    if (!h0.a(bArrA2, f538k)) {
                                        byte[] bArr11 = l;
                                        if (!h0.a(bArrA2, bArr11) && !h0.a(bArrA2, f539m)) {
                                            throw new n("unsupported privateKeyAlgorithm oid: " + h0.l(bArrA2));
                                        }
                                        if (pVarArrB2.length != 1) {
                                            throw new q();
                                        }
                                        p pVar6 = new p(bArrA3, 0);
                                        if (!pVar6.i()) {
                                            throw new q();
                                        }
                                        byte[] bArrA4 = pVar6.a();
                                        try {
                                            u uVar = h0.a(bArrA2, bArr11) ? new u(eVar, 0) : new u(eVar, 1);
                                            uVar.a(this);
                                            if (!uVar.m(bArrA4)) {
                                                throw new n("failed to parse EdDSA");
                                            }
                                            this.f551h = uVar;
                                            h0.d(bArrA3);
                                            h0.d(bArrA4);
                                            return true;
                                        } catch (q unused) {
                                            r96 = bArrA4;
                                            bArr5 = null;
                                            r33 = 0;
                                            r93 = r96;
                                            bArr7 = bArrA3;
                                            rVar2 = r33;
                                            bArr6 = r93;
                                            eVar.getClass();
                                            l.f508f.getClass();
                                            h0.d(bArr7);
                                            h0.d(bArr6);
                                            h0.d(bArr5);
                                            if (rVar2 != null) {
                                            }
                                            return false;
                                        } catch (Exception unused2) {
                                            r97 = bArrA4;
                                            bArr3 = null;
                                            r32 = 0;
                                            r94 = r97;
                                            bArr7 = bArrA3;
                                            rVar = r32;
                                            bArr4 = r94;
                                            eVar.getClass();
                                            l.f508f.getClass();
                                            h0.d(bArr7);
                                            h0.d(bArr4);
                                            h0.d(bArr3);
                                            if (rVar != null) {
                                            }
                                            return false;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            r92 = bArrA4;
                                            r22 = 0;
                                            r34 = 0;
                                            r95 = r92;
                                            bArr7 = bArrA3;
                                            bArr2 = r95;
                                            h0.d(bArr7);
                                            h0.d(bArr2);
                                            h0.d(r22);
                                            if (r34 != 0) {
                                            }
                                            throw th;
                                        }
                                    }
                                    if (pVarArrB2.length != 2) {
                                        throw new q();
                                    }
                                    if (!pVarArrB2[1].h()) {
                                        throw new q();
                                    }
                                    byte[] bArrA5 = pVarArrB2[1].a();
                                    if (!h0.a(bArrA5, f540n)) {
                                        bArrJ = h0.j("nistp256");
                                    } else if (!h0.a(bArrA5, f541o)) {
                                        bArrJ = h0.j("nistp384");
                                    } else {
                                        if (h0.a(bArrA5, f542p)) {
                                            throw new n("unsupported named curve oid: " + h0.l(bArrA5));
                                        }
                                        bArrJ = h0.j("nistp521");
                                    }
                                    byte[] bArr12 = bArrJ;
                                    p pVar7 = new p(bArrA3, 0);
                                    if (!pVar7.j()) {
                                        throw new q();
                                    }
                                    p[] pVarArrB6 = pVar7.b();
                                    if (pVarArrB6.length < 3 || pVarArrB6.length > 4) {
                                        throw new q();
                                    }
                                    if (!pVarArrB6[0].g()) {
                                        throw new q();
                                    }
                                    if (!pVarArrB6[1].i()) {
                                        throw new q();
                                    }
                                    if (v(pVarArrB6[0].a()) != 1) {
                                        throw new q();
                                    }
                                    byte[] bArrA6 = pVarArrB6[1].a();
                                    if (pVarArrB6.length == 3) {
                                        pVar = pVarArrB6[2];
                                    } else {
                                        p pVar8 = pVarArrB6[3];
                                        if (!pVarArrB6[2].f(0)) {
                                            throw new q();
                                        }
                                        p[] pVarArrB7 = pVarArrB6[2].b();
                                        if (pVarArrB7.length != 1) {
                                            throw new q();
                                        }
                                        if (!pVarArrB7[0].h()) {
                                            throw new q();
                                        }
                                        if (!h0.a(pVarArrB7[0].a(), bArrA5)) {
                                            throw new q();
                                        }
                                        pVar = pVar8;
                                    }
                                    if (!pVar.f(1)) {
                                        throw new q();
                                    }
                                    p[] pVarArrB8 = pVar.b();
                                    if (pVarArrB8.length != 1) {
                                        throw new q();
                                    }
                                    if (!pVarArrB8[0].e()) {
                                        throw new q();
                                    }
                                    byte[][] bArrS = t.s(pVarArrB8[0].a());
                                    t tVar = new t(this.f519c, bArr12, bArrS[0], bArrS[1], bArrA6);
                                    byte[] bArrU = tVar.u();
                                    t tVar2 = new t(eVar);
                                    tVar2.a(this);
                                    if (!tVar2.m(bArrU)) {
                                        throw new n("failed to parse ECDSA");
                                    }
                                    this.f551h = tVar2;
                                    h0.d(bArrA3);
                                    h0.d(bArrA6);
                                    h0.d(bArrU);
                                    tVar.d();
                                    return true;
                                } catch (q unused3) {
                                    r33 = "unsupported privateKeyAlgorithm oid: ";
                                    bArr5 = null;
                                    bArr7 = bArrA3;
                                    rVar2 = r33;
                                    bArr6 = r93;
                                    eVar.getClass();
                                    l.f508f.getClass();
                                    h0.d(bArr7);
                                    h0.d(bArr6);
                                    h0.d(bArr5);
                                    if (rVar2 != null) {
                                        rVar2.d();
                                    }
                                    return false;
                                } catch (Exception unused4) {
                                    r32 = "unsupported privateKeyAlgorithm oid: ";
                                    bArr3 = null;
                                    bArr7 = bArrA3;
                                    rVar = r32;
                                    bArr4 = r94;
                                    eVar.getClass();
                                    l.f508f.getClass();
                                    h0.d(bArr7);
                                    h0.d(bArr4);
                                    h0.d(bArr3);
                                    if (rVar != null) {
                                        rVar.d();
                                    }
                                    return false;
                                } catch (Throwable th3) {
                                    th = th3;
                                    r34 = "unsupported privateKeyAlgorithm oid: ";
                                    r22 = 0;
                                    bArr7 = bArrA3;
                                    bArr2 = r95;
                                    h0.d(bArr7);
                                    h0.d(bArr2);
                                    h0.d(r22);
                                    if (r34 != 0) {
                                        r34.d();
                                    }
                                    throw th;
                                }
                            } catch (q unused5) {
                            } catch (Exception unused6) {
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        } catch (q unused7) {
                            bArr5 = null;
                            r33 = 0;
                            r93 = 0;
                        } catch (Exception unused8) {
                            bArr3 = null;
                            r32 = 0;
                            r94 = 0;
                        } catch (Throwable th5) {
                            th = th5;
                            r22 = 0;
                            r34 = 0;
                            r95 = 0;
                        }
                    }
                }
                throw new q();
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (q unused9) {
            bArr5 = null;
            rVar2 = null;
            bArr6 = null;
        } catch (Exception unused10) {
            bArr3 = null;
            rVar = null;
            bArr4 = null;
        } catch (Throwable th7) {
            th = th7;
            r22 = 0;
            r34 = 0;
            bArr2 = null;
        }
    }
}
