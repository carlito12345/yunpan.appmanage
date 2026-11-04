package vd;

import j$.nio.charset.StandardCharsets;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.concurrent.atomic.AtomicInteger;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.util.Arrays;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class i implements o {

    /* renamed from: t, reason: collision with root package name */
    public static final Logger f16854t = LoggerFactory.getLogger((Class<?>) i.class);

    /* renamed from: u, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f16855u;

    /* renamed from: a, reason: collision with root package name */
    public final j f16856a;

    /* renamed from: b, reason: collision with root package name */
    public int f16857b;

    /* renamed from: c, reason: collision with root package name */
    public final String f16858c;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f16862g;

    /* renamed from: k, reason: collision with root package name */
    public final vc.b f16866k;
    public String l;

    /* renamed from: m, reason: collision with root package name */
    public byte[] f16867m;

    /* renamed from: n, reason: collision with root package name */
    public byte[] f16868n;

    /* renamed from: o, reason: collision with root package name */
    public byte[] f16869o;

    /* renamed from: p, reason: collision with root package name */
    public byte[] f16870p;

    /* renamed from: q, reason: collision with root package name */
    public byte[] f16871q;
    public Cipher r;

    /* renamed from: s, reason: collision with root package name */
    public Cipher f16872s;

    /* renamed from: d, reason: collision with root package name */
    public boolean f16859d = false;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f16860e = null;

    /* renamed from: f, reason: collision with root package name */
    public byte[] f16861f = null;

    /* renamed from: h, reason: collision with root package name */
    public final AtomicInteger f16863h = new AtomicInteger(0);

    /* renamed from: i, reason: collision with root package name */
    public final AtomicInteger f16864i = new AtomicInteger(0);

    /* renamed from: j, reason: collision with root package name */
    public int f16865j = 1;

    static {
        try {
            f16855u = new ASN1ObjectIdentifier("1.3.6.1.4.1.311.2.2.10");
        } catch (IllegalArgumentException e7) {
            f16854t.error("Failed to parse OID", (Throwable) e7);
        }
    }

    public i(vc.b bVar, j jVar, boolean z) {
        this.f16866k = bVar;
        this.f16856a = jVar;
        this.f16857b |= 537395204;
        if (!jVar.d()) {
            this.f16857b |= 1073774608;
        } else if (jVar.f()) {
            this.f16857b |= 1073741824;
        } else {
            this.f16857b |= 2048;
        }
        this.f16862g = z;
        this.f16858c = ((wc.a) bVar.e()).T;
    }

    public static byte[] e(String str, byte[] bArr) {
        MessageDigest messageDigestK = ge.a.k();
        messageDigestK.update(bArr);
        messageDigestK.update(str.getBytes(StandardCharsets.US_ASCII));
        messageDigestK.update((byte) 0);
        return messageDigestK.digest();
    }

    @Override // vd.o
    public final byte[] a(int i10, byte[] bArr) throws r {
        int i11 = this.f16865j;
        vc.b bVar = this.f16866k;
        Logger logger = f16854t;
        if (i11 == 1) {
            int i12 = this.f16857b;
            String str = this.f16856a.f16875b;
            int i13 = i12 | 33554944 | (((wc.a) bVar.e()).f17832e ? 1 : 2);
            try {
                byte[] bArr2 = new byte[0];
                byte[] bArr3 = new byte[0];
                byte[] bArr4 = new byte[40];
                System.arraycopy(td.a.f15065b, 0, bArr4, 0, 8);
                td.a.f(8, 1, bArr4);
                td.a.f(12, i13 & (-12289), bArr4);
                int iD = td.a.d(16, bArr4, bArr2);
                int iD2 = td.a.d(24, bArr4, bArr3);
                System.arraycopy(td.a.f15066c, 0, bArr4, 32, 8);
                td.a.e(td.a.e(40, iD, bArr4, bArr2) + 40, iD2, bArr4, bArr3);
                this.f16867m = bArr4;
                if (logger.isTraceEnabled()) {
                    StringBuilder sb2 = new StringBuilder("Type1Message[suppliedDomain=");
                    if (str == null) {
                        str = "null";
                    }
                    sb2.append(str);
                    sb2.append(",suppliedWorkstation=");
                    String str2 = this.f16858c;
                    sb2.append(str2 != null ? str2 : "null");
                    sb2.append(",flags=0x");
                    sb2.append(ge.a.l(i13, 8));
                    sb2.append("]");
                    logger.trace(sb2.toString());
                    logger.trace(ge.a.m(bArr4, 0, 40));
                }
                this.f16865j++;
                return bArr4;
            } catch (IOException e7) {
                throw new IllegalStateException(e7.getMessage());
            }
        }
        if (i11 != 2) {
            throw new r("Invalid state");
        }
        try {
            td.b bVar2 = new td.b(bArr);
            if (logger.isTraceEnabled()) {
                logger.trace(bVar2.toString());
                logger.trace(ge.a.m(bArr, 0, bArr.length));
            }
            this.f16860e = bVar2.f15069d;
            if (this.f16862g) {
                if (((wc.a) bVar.e()).f17861u && (!bVar2.a(1073741824) || !bVar2.a(PKIFailureInfo.signerNotTrusted))) {
                    throw new i0("Server does not support extended NTLMv2 key exchange");
                }
                if (!bVar2.a(PKIFailureInfo.duplicateCertReq)) {
                    throw new i0("Server does not support 128-bit keys");
                }
            }
            this.f16857b &= bVar2.f15067a;
            td.c cVarD = d(bVar2);
            cVarD.g(this.f16867m, bArr);
            byte[] bArrH = cVarD.h();
            if (logger.isTraceEnabled()) {
                logger.trace(cVarD.toString());
                logger.trace(ge.a.m(bArr, 0, bArr.length));
            }
            byte[] bArr5 = cVarD.f15078i;
            this.f16861f = bArr5;
            if (bArr5 != null && (this.f16857b & PKIFailureInfo.signerNotTrusted) != 0) {
                f(bArr5);
            }
            this.f16859d = true;
            this.f16865j++;
            return bArrH;
        } catch (r e10) {
            throw e10;
        } catch (Exception e11) {
            throw new r(e11.getMessage(), e11);
        }
    }

    @Override // vd.o
    public final boolean b() {
        return this.f16859d;
    }

    @Override // vd.o
    public final byte[] c() {
        return this.f16861f;
    }

    public final td.c d(td.b bVar) {
        String str = this.l;
        j jVar = this.f16856a;
        boolean zF = jVar.f();
        vc.b bVar2 = this.f16866k;
        return new td.c(this.f16866k, bVar, str, zF ? ((wc.a) bVar2.e()).f17866w0 : jVar.f16877d, jVar.f() ? null : jVar.f16875b, jVar.f() ? ((wc.a) bVar2.e()).f17864v0 : jVar.f16876c, this.f16858c, this.f16857b, jVar.f() || !jVar.d());
    }

    public final void f(byte[] bArr) {
        this.f16868n = e("session key to client-to-server signing key magic constant", bArr);
        this.f16869o = e("session key to server-to-client signing key magic constant", bArr);
        Logger logger = f16854t;
        if (logger.isDebugEnabled()) {
            byte[] bArr2 = this.f16868n;
            logger.debug("Sign key is ".concat(ge.a.m(bArr2, 0, bArr2.length)));
            byte[] bArr3 = this.f16869o;
            logger.debug("Verify key is ".concat(ge.a.m(bArr3, 0, bArr3.length)));
        }
        byte[] bArrE = e("session key to client-to-server sealing key magic constant", bArr);
        this.f16870p = bArrE;
        this.r = ge.a.h(bArrE);
        if (logger.isDebugEnabled()) {
            byte[] bArr4 = this.f16870p;
            logger.debug("Seal key is ".concat(ge.a.m(bArr4, 0, bArr4.length)));
        }
        byte[] bArrE2 = e("session key to server-to-client sealing key magic constant", bArr);
        this.f16871q = bArrE2;
        this.f16872s = ge.a.h(bArrE2);
        if (logger.isDebugEnabled()) {
            byte[] bArr5 = this.f16871q;
            logger.debug("Server seal key is ".concat(ge.a.m(bArr5, 0, bArr5.length)));
        }
    }

    public final boolean g() {
        return (this.f16856a.f() || this.f16868n == null || this.f16869o == null) ? false : true;
    }

    public final void h(byte[] bArr, byte[] bArr2) throws BadPaddingException, vc.c, IllegalBlockSizeException {
        byte[] bArr3 = this.f16869o;
        if (bArr3 == null) {
            throw new vc.c("Signing is not initialized");
        }
        int iB = rd.a.b(0, bArr2);
        if (iB != 1) {
            throw new i0("Invalid signature version");
        }
        de.b bVar = new de.b(bArr3, 1);
        int iB2 = rd.a.b(12, bArr2);
        bVar.update(bArr2, 12, 4);
        byte[] bArrDigest = bVar.digest(bArr);
        byte[] bArrCopyOf = Arrays.copyOf(bArrDigest, 8);
        Logger logger = f16854t;
        if (logger.isDebugEnabled()) {
            logger.debug("Digest ".concat(ge.a.m(bArrDigest, 0, bArrDigest.length)));
            logger.debug("Truncated ".concat(ge.a.m(bArrCopyOf, 0, bArrCopyOf.length)));
        }
        boolean z = (this.f16857b & 1073741824) != 0;
        if (z) {
            try {
                bArrCopyOf = this.f16872s.doFinal(bArrCopyOf);
                if (logger.isDebugEnabled()) {
                    logger.debug("Decrypted ".concat(ge.a.m(bArrCopyOf, 0, bArrCopyOf.length)));
                }
            } catch (GeneralSecurityException e7) {
                throw new vc.c("Failed to decrypt MIC", e7);
            }
        }
        int andIncrement = this.f16864i.getAndIncrement();
        if (andIncrement != iB2) {
            throw new vc.c(String.format("Invalid MIC sequence, expect %d have %d", Integer.valueOf(andIncrement), Integer.valueOf(iB2)));
        }
        byte[] bArr4 = new byte[8];
        System.arraycopy(bArr2, 4, bArr4, 0, 8);
        if (MessageDigest.isEqual(bArrCopyOf, bArr4)) {
            return;
        }
        if (logger.isDebugEnabled()) {
            logger.debug(String.format("Seq = %d ver = %d encrypted = %s", Integer.valueOf(iB2), Integer.valueOf(iB), Boolean.valueOf(z)));
            logger.debug("Expected MIC " + ge.a.m(bArrCopyOf, 0, bArrCopyOf.length) + " != " + ge.a.m(bArr4, 0, 8));
        }
        throw new vc.c("Invalid MIC");
    }

    public final String toString() {
        String string;
        String string2;
        StringBuilder sb2 = new StringBuilder("NtlmContext[auth=");
        sb2.append(this.f16856a);
        sb2.append(",ntlmsspFlags=0x");
        android.support.v4.media.session.a.E(this.f16857b, 8, ",workstation=", sb2);
        sb2.append(this.f16858c);
        sb2.append(",isEstablished=");
        sb2.append(this.f16859d);
        sb2.append(",state=");
        String strS = android.support.v4.media.session.a.s(sb2, this.f16865j, ",serverChallenge=");
        if (this.f16860e == null) {
            string = g.b.j(strS, "null");
        } else {
            StringBuilder sbM = g.b.m(strS);
            byte[] bArr = this.f16860e;
            sbM.append(ge.a.m(bArr, 0, bArr.length));
            string = sbM.toString();
        }
        String strJ = g.b.j(string, ",signingKey=");
        if (this.f16861f == null) {
            string2 = g.b.j(strJ, "null");
        } else {
            StringBuilder sbM2 = g.b.m(strJ);
            byte[] bArr2 = this.f16861f;
            sbM2.append(ge.a.m(bArr2, 0, bArr2.length));
            string2 = sbM2.toString();
        }
        return g.b.j(string2, "]");
    }
}
