package vd;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OutputStream;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DERSequence;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class j0 implements o {

    /* renamed from: h, reason: collision with root package name */
    public static final Logger f16879h = LoggerFactory.getLogger((Class<?>) j0.class);

    /* renamed from: a, reason: collision with root package name */
    public final i f16880a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f16881b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f16882c;

    /* renamed from: d, reason: collision with root package name */
    public final ASN1ObjectIdentifier[] f16883d;

    /* renamed from: e, reason: collision with root package name */
    public ASN1ObjectIdentifier f16884e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f16885f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f16886g;

    static {
        try {
            new ASN1ObjectIdentifier("1.3.6.1.5.5.2");
        } catch (IllegalArgumentException e7) {
            f16879h.error("Failed to initialize OID", (Throwable) e7);
        }
    }

    public j0(vc.f fVar, i iVar) {
        boolean z = false;
        ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr = {i.f16855u};
        this.f16881b = true;
        this.f16880a = iVar;
        this.f16883d = aSN1ObjectIdentifierArr;
        wc.a aVar = (wc.a) fVar;
        boolean z4 = aVar.f17861u;
        if (!z4 && aVar.f17859t) {
            z = true;
        }
        this.f16885f = z;
        this.f16886g = z4;
    }

    public static byte[] e(ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr) throws vc.c {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ASN1OutputStream aSN1OutputStreamCreate = ASN1OutputStream.create(byteArrayOutputStream, ASN1Encoding.DER);
            aSN1OutputStreamCreate.writeObject((ASN1Primitive) new DERSequence(aSN1ObjectIdentifierArr));
            aSN1OutputStreamCreate.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e7) {
            throw new vc.c("Failed to encode mechList", e7);
        }
    }

    @Override // vd.o
    public final byte[] a(int i10, byte[] bArr) throws BadPaddingException, vc.c, IllegalBlockSizeException {
        Object bVar;
        byte[] bArr2;
        byte[] bArrD;
        fe.c bVar2;
        byte[] bArr3;
        ASN1ObjectIdentifier aSN1ObjectIdentifier;
        if (this.f16882c) {
            throw new vc.c("Already complete");
        }
        if (i10 == 0) {
            bVar2 = new fe.a(this.f16883d, 0, this.f16880a.a(0, new byte[0]));
        } else {
            byte[] bArr4 = new byte[i10];
            if (bArr.length != i10) {
                System.arraycopy(bArr, 0, bArr4, 0, i10);
                bArr = bArr4;
            }
            try {
                byte b10 = bArr[0];
                if (b10 == -95) {
                    bVar = new fe.b(bArr);
                } else {
                    if (b10 != 96) {
                        throw new ad.g("Invalid token type");
                    }
                    bVar = new fe.a(bArr);
                }
                boolean z = bVar instanceof fe.a;
                i iVar = this.f16880a;
                if (z) {
                    fe.a aVar = (fe.a) bVar;
                    ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr = aVar.f5794c;
                    ASN1ObjectIdentifier aSN1ObjectIdentifier2 = aSN1ObjectIdentifierArr[0];
                    iVar.getClass();
                    if (i.f16855u.equals((ASN1Primitive) aSN1ObjectIdentifier2)) {
                        bArr2 = (byte[]) aVar.f5798a;
                    } else {
                        int length = aSN1ObjectIdentifierArr.length;
                        int i11 = 0;
                        while (true) {
                            if (i11 >= length) {
                                aSN1ObjectIdentifier = null;
                                break;
                            }
                            aSN1ObjectIdentifier = aSN1ObjectIdentifierArr[i11];
                            if (i.f16855u.equals((ASN1Primitive) aSN1ObjectIdentifier)) {
                                break;
                            }
                            i11++;
                        }
                        if (aSN1ObjectIdentifier == null) {
                            throw new r("Server does advertise any supported mechanism");
                        }
                        bArr2 = null;
                    }
                } else {
                    if (!(bVar instanceof fe.b)) {
                        throw new r("Invalid token");
                    }
                    fe.b bVar3 = (fe.b) bVar;
                    if (this.f16881b) {
                        ASN1ObjectIdentifier aSN1ObjectIdentifier3 = bVar3.f5796c;
                        iVar.getClass();
                        if (!i.f16855u.equals((ASN1Primitive) aSN1ObjectIdentifier3)) {
                            throw new r("Server chose an unsupported mechanism " + bVar3.f5796c);
                        }
                        this.f16884e = bVar3.f5796c;
                        if (bVar3.f5797d == 3) {
                            this.f16886g = true;
                        }
                        this.f16881b = false;
                    } else {
                        ASN1ObjectIdentifier aSN1ObjectIdentifier4 = bVar3.f5796c;
                        if (aSN1ObjectIdentifier4 != null && !aSN1ObjectIdentifier4.equals((ASN1Primitive) this.f16884e)) {
                            throw new r("Server switched mechanism");
                        }
                    }
                    bArr2 = (byte[]) bVar3.f5798a;
                }
                boolean z4 = bVar instanceof fe.b;
                if (z4 && iVar.f16859d) {
                    fe.b bVar4 = (fe.b) bVar;
                    int i12 = bVar4.f5797d;
                    if (i12 == 1 && ((byte[]) bVar4.f5798a) == null && (bArr3 = (byte[]) bVar4.f5799b) != null) {
                        f(bArr3);
                        bVar2 = new fe.b(null, d());
                    } else {
                        if (i12 != 0) {
                            throw new r("SPNEGO negotiation did not complete");
                        }
                        f((byte[]) bVar4.f5799b);
                        this.f16882c = true;
                        bVar2 = null;
                    }
                } else if (bArr2 == null) {
                    bVar2 = new fe.a(this.f16883d, 0, this.f16880a.a(0, new byte[0]));
                } else {
                    byte[] bArrA = iVar.a(bArr2.length, bArr2);
                    if (z4) {
                        fe.b bVar5 = (fe.b) bVar;
                        int i13 = bVar5.f5797d;
                        boolean z10 = this.f16885f;
                        if (i13 == 0 && iVar.f16859d) {
                            f((byte[]) bVar5.f5799b);
                            bArrD = (!z10 || this.f16886g) ? d() : null;
                            this.f16882c = true;
                        } else if (!iVar.g() || (z10 && !this.f16886g)) {
                            if (bVar5.f5797d == 2) {
                                throw new r("SPNEGO mechanism was rejected");
                            }
                            bArrD = null;
                        } else {
                            bArrD = d();
                        }
                        bVar2 = new fe.b(bArrA, bArrD);
                    } else {
                        bArrD = null;
                        bVar2 = new fe.b(bArrA, bArrD);
                    }
                }
            } catch (IOException unused) {
                throw new ad.g("Invalid token");
            }
        }
        if (bVar2 == null) {
            return null;
        }
        return bVar2.i();
    }

    @Override // vd.o
    public final boolean b() {
        return this.f16882c && this.f16880a.f16859d;
    }

    @Override // vd.o
    public final byte[] c() {
        return this.f16880a.f16861f;
    }

    public final byte[] d() throws BadPaddingException, vc.c, IllegalBlockSizeException {
        i iVar = this.f16880a;
        if (!iVar.g()) {
            return null;
        }
        ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr = this.f16883d;
        byte[] bArrE = e(aSN1ObjectIdentifierArr);
        byte[] bArr = iVar.f16868n;
        if (bArr == null) {
            throw new vc.c("Signing is not initialized");
        }
        byte[] bArr2 = new byte[4];
        long andIncrement = iVar.f16863h.getAndIncrement();
        rd.a.f(andIncrement, bArr2, 0);
        de.b bVar = new de.b(bArr, 1);
        bVar.update(bArr2);
        bVar.update(bArrE);
        byte[] bArrDigest = bVar.digest();
        byte[] bArrDoFinal = new byte[8];
        System.arraycopy(bArrDigest, 0, bArrDoFinal, 0, 8);
        Logger logger = i.f16854t;
        if (logger.isDebugEnabled()) {
            logger.debug("Digest ".concat(ge.a.m(bArrDigest, 0, bArrDigest.length)));
            logger.debug("Truncated ".concat(ge.a.m(bArrDoFinal, 0, 8)));
        }
        if ((iVar.f16857b & 1073741824) != 0) {
            try {
                bArrDoFinal = iVar.r.doFinal(bArrDoFinal);
                if (logger.isDebugEnabled()) {
                    logger.debug("Encrypted ".concat(ge.a.m(bArrDoFinal, 0, bArrDoFinal.length)));
                }
            } catch (GeneralSecurityException e7) {
                throw new vc.c("Failed to encrypt MIC", e7);
            }
        }
        byte[] bArr3 = new byte[16];
        rd.a.f(1L, bArr3, 0);
        System.arraycopy(bArrDoFinal, 0, bArr3, 4, 8);
        rd.a.f(andIncrement, bArr3, 12);
        Logger logger2 = f16879h;
        if (logger2.isDebugEnabled()) {
            logger2.debug("Out Mech list " + Arrays.toString(aSN1ObjectIdentifierArr));
            logger2.debug("Out Mech list encoded ".concat(ge.a.m(bArrE, 0, bArrE.length)));
            logger2.debug("Out Mech list MIC ".concat(ge.a.m(bArr3, 0, 16)));
        }
        return bArr3;
    }

    public final void f(byte[] bArr) throws BadPaddingException, vc.c, IllegalBlockSizeException {
        if (this.f16885f) {
            return;
        }
        i iVar = this.f16880a;
        if (bArr != null) {
            iVar.getClass();
        } else if (this.f16886g) {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = this.f16884e;
            iVar.f16856a.getClass();
            if (!i.f16855u.equals((ASN1Primitive) aSN1ObjectIdentifier)) {
                throw new vc.c("SPNEGO integrity is required but not available");
            }
        }
        if (!iVar.g() || bArr == null) {
            return;
        }
        try {
            ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr = this.f16883d;
            byte[] bArrE = e(aSN1ObjectIdentifierArr);
            Logger logger = f16879h;
            if (logger.isInfoEnabled()) {
                logger.debug("In Mech list " + Arrays.toString(aSN1ObjectIdentifierArr));
                logger.debug("In Mech list encoded ".concat(ge.a.m(bArrE, 0, bArrE.length)));
                logger.debug("In Mech list MIC ".concat(ge.a.m(bArr, 0, bArr.length)));
            }
            iVar.h(bArrE, bArr);
        } catch (vc.c e7) {
            throw new vc.c("Failed to verify mechanismListMIC", e7);
        }
    }

    public final String toString() {
        return "SPNEGO[" + this.f16880a + "]";
    }
}
