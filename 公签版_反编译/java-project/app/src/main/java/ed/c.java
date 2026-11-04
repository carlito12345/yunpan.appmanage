package ed;

import ad.d;
import ad.f;
import ad.g;
import ad.h;
import fd.p;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vd.r;

/* loaded from: classes.dex */
public abstract class c implements ad.c, d, f {
    public static final Logger F = LoggerFactory.getLogger((Class<?>) c.class);
    public boolean A;
    public boolean B;
    public String C;
    public String D;
    public String E;

    /* renamed from: a, reason: collision with root package name */
    public byte f4927a;

    /* renamed from: b, reason: collision with root package name */
    public byte f4928b;

    /* renamed from: c, reason: collision with root package name */
    public int f4929c;

    /* renamed from: d, reason: collision with root package name */
    public int f4930d;

    /* renamed from: e, reason: collision with root package name */
    public int f4931e;

    /* renamed from: f, reason: collision with root package name */
    public int f4932f;

    /* renamed from: g, reason: collision with root package name */
    public int f4933g;

    /* renamed from: h, reason: collision with root package name */
    public int f4934h;

    /* renamed from: i, reason: collision with root package name */
    public int f4935i;

    /* renamed from: j, reason: collision with root package name */
    public int f4936j;

    /* renamed from: k, reason: collision with root package name */
    public int f4937k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f4938m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f4939n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f4940p;

    /* renamed from: q, reason: collision with root package name */
    public volatile boolean f4941q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f4942s;

    /* renamed from: t, reason: collision with root package name */
    public String f4943t;

    /* renamed from: v, reason: collision with root package name */
    public b f4944v;

    /* renamed from: w, reason: collision with root package name */
    public c f4945w;

    /* renamed from: x, reason: collision with root package name */
    public final vc.f f4946x;

    /* renamed from: y, reason: collision with root package name */
    public Long f4947y;
    public Exception z;

    public c(vc.f fVar) {
        this(fVar, (byte) 0, null);
    }

    @Override // ad.b
    public final void B(boolean z) {
        this.f4940p = z;
    }

    @Override // he.d
    public final void C() {
        this.f4941q = true;
        synchronized (this) {
            notifyAll();
        }
    }

    @Override // he.d
    public final void D() {
        this.A = true;
        synchronized (this) {
            notifyAll();
        }
    }

    @Override // he.d
    public final boolean F() {
        return this.f4942s;
    }

    @Override // ad.c
    public final boolean I() {
        return false;
    }

    @Override // ad.c
    public final void L(int i10) {
        this.f4938m = i10;
    }

    @Override // he.d
    public final void O() {
        this.f4941q = false;
    }

    @Override // he.d
    public final void P(Long l) {
        this.f4947y = l;
    }

    @Override // he.d
    public final Long R() {
        return this.f4947y;
    }

    @Override // ad.b
    public final void S(int i10) {
        this.f4927a = (byte) i10;
    }

    @Override // he.d
    public final boolean T() {
        return this.A;
    }

    @Override // ad.f
    public final String V() {
        return this.E;
    }

    @Override // ad.f
    public final String W() {
        return this.C;
    }

    @Override // ad.b
    public final void X(int i10) {
        this.f4935i = i10;
    }

    @Override // ad.d
    public final boolean Y() {
        return false;
    }

    public final int Z() {
        return this.f4938m;
    }

    @Override // ad.b, he.d
    public final void a(long j10) {
        this.f4936j = (int) j10;
    }

    @Override // he.b
    public final void a0() {
        this.B = true;
    }

    @Override // ad.b
    public int c(int i10, byte[] bArr) {
        this.f4929c = i10;
        p0(i10, bArr);
        int i11 = i10 + 33;
        int iQ0 = q0(i11, bArr);
        this.f4937k = iQ0;
        int i12 = iQ0 / 2;
        bArr[i10 + 32] = (byte) (i12 & 255);
        int i13 = i11 + iQ0;
        this.f4937k = i12;
        int i14 = i13 + 2;
        int iO0 = o0(i14, bArr);
        this.l = iO0;
        bArr[i13] = (byte) (iO0 & 255);
        bArr[i13 + 1] = (byte) ((iO0 >> 8) & 255);
        int i15 = (i14 + iO0) - i10;
        this.f4930d = i15;
        b bVar = this.f4944v;
        if (bVar != null) {
            bVar.b(bArr, this.f4929c, i15, this, this.f4945w);
        }
        return this.f4930d;
    }

    @Override // he.d
    public final boolean c0() {
        return this.f4941q;
    }

    @Override // ad.b
    public int decode(byte[] bArr) throws g {
        this.f4929c = 4;
        j0(bArr);
        byte b10 = bArr[36];
        this.f4937k = b10;
        int i10 = 37;
        Logger logger = F;
        if (b10 != 0) {
            int iK0 = k0(37, bArr);
            if (iK0 != this.f4937k * 2 && logger.isTraceEnabled()) {
                logger.trace("wordCount * 2=" + (this.f4937k * 2) + " but readParameterWordsWireFormat returned " + iK0);
            }
            i10 = 37 + (this.f4937k * 2);
        }
        int iA = rd.a.a(i10, bArr);
        this.l = iA;
        int i11 = i10 + 2;
        if (iA != 0) {
            int iI0 = i0(i11, bArr);
            if (iI0 != this.l && logger.isTraceEnabled()) {
                logger.trace("byteCount=" + this.l + " but readBytesWireFormat returned " + iI0);
            }
            i11 += this.l;
        }
        int i12 = i11 - 4;
        this.f4930d = i12;
        if (this.B) {
            System.arraycopy(bArr, 4, new byte[i12], 0, i12);
        }
        if (n0(4, i12, bArr)) {
            return i12;
        }
        throw new g("Signature verification failed for ".concat(getClass().getName()));
    }

    @Override // he.d
    public final int e() {
        return 1;
    }

    @Override // ad.c
    public final ad.c e0() {
        return null;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof c) && ((c) obj).f4936j == this.f4936j;
    }

    @Override // ad.f
    public final String g() {
        return this.D;
    }

    @Override // ad.c, ad.b
    /* renamed from: g0, reason: merged with bridge method [inline-methods] */
    public c b() {
        return this.f4945w;
    }

    @Override // ad.b
    public final h getDigest() {
        return this.f4944v;
    }

    @Override // he.d
    public final Exception getException() {
        return this.z;
    }

    @Override // ad.f
    public final String getPath() {
        return this.f4943t;
    }

    public boolean h0() {
        return this instanceof hd.a;
    }

    public final int hashCode() {
        return this.f4936j;
    }

    @Override // ad.b
    public final void i(h hVar) {
        this.f4944v = (b) hVar;
    }

    public abstract int i0(int i10, byte[] bArr);

    @Override // ad.f
    public final void j() {
        this.f4933g |= 4096;
    }

    public final void j0(byte[] bArr) {
        this.f4927a = bArr[8];
        this.f4932f = rd.a.b(9, bArr);
        this.f4928b = bArr[13];
        this.f4933g = rd.a.a(14, bArr);
        this.f4938m = rd.a.a(28, bArr);
        this.f4934h = rd.a.a(30, bArr);
        this.f4935i = rd.a.a(32, bArr);
        this.f4936j = rd.a.a(34, bArr);
    }

    @Override // ad.f
    public final void k(String str) {
        this.f4943t = str;
    }

    public abstract int k0(int i10, byte[] bArr);

    @Override // he.d
    public final void l(Exception exc) {
        this.z = exc;
        synchronized (this) {
            notifyAll();
        }
    }

    public final String l0(int i10, byte[] bArr, boolean z) {
        if (!z) {
            return ge.b.c(bArr, i10, ge.b.a(i10, 255, bArr), this.f4946x);
        }
        if ((i10 - this.f4929c) % 2 != 0) {
            i10++;
        }
        return new String(bArr, i10, ge.b.b(i10, 255, bArr), ge.b.f6136b);
    }

    public final int m0(int i10, String str) {
        int length = str.length() + 1;
        if (!this.f4939n) {
            return length;
        }
        int length2 = str.length() * 2;
        return i10 % 2 != 0 ? length2 + 3 : length2 + 2;
    }

    public final boolean n0(int i10, int i11, byte[] bArr) {
        b bVar = this.f4944v;
        if (bVar == null || this.f4932f != 0) {
            return true;
        }
        int i12 = this.f4933g & 4;
        Logger logger = b.f4922e;
        boolean z = false;
        if (i12 == 0) {
            logger.warn("Expected signed response, but is not signed");
        } else {
            byte[] bArr2 = bVar.f4924b;
            bVar.c(bArr2, 0, bArr2.length);
            bVar.c(bArr, 4, 14);
            byte[] bArr3 = new byte[8];
            rd.a.f(this.r, bArr3, 0);
            bVar.c(bArr3, 0, 8);
            if (this.f4927a == 46) {
                p pVar = (p) this;
                bVar.c(bArr, 26, (this.f4930d - pVar.O) - 22);
                bVar.c(pVar.L, pVar.M, pVar.O);
            } else {
                bVar.c(bArr, 26, this.f4930d - 22);
            }
            byte[] bArrA = bVar.a();
            int i13 = 0;
            while (true) {
                if (i13 >= 8) {
                    break;
                }
                if (bArrA[i13] != bArr[18 + i13]) {
                    if (logger.isDebugEnabled()) {
                        logger.debug("signature verification failure");
                        logger.debug("Expect: ".concat(ge.a.m(bArrA, 0, 8)));
                        logger.debug("Have: ".concat(ge.a.m(bArr, 18, 8)));
                    }
                    z = true;
                } else {
                    i13++;
                }
            }
        }
        this.f4942s = z;
        return !z;
    }

    public abstract int o0(int i10, byte[] bArr);

    @Override // he.d
    public final long p() {
        return this.f4936j;
    }

    public final void p0(int i10, byte[] bArr) {
        System.arraycopy(rd.a.f13758a, 0, bArr, i10, 24);
        bArr[i10 + 4] = this.f4927a;
        bArr[i10 + 9] = this.f4928b;
        rd.a.e(this.f4933g, bArr, i10 + 10);
        rd.a.e(this.f4938m, bArr, i10 + 24);
        rd.a.e(this.f4934h, bArr, i10 + 26);
        rd.a.e(this.f4935i, bArr, i10 + 28);
        rd.a.e(this.f4936j, bArr, i10 + 30);
    }

    @Override // ad.f
    public final void q(String str, String str2, String str3) {
        this.E = str;
        this.D = str2;
        this.C = str3;
    }

    public abstract int q0(int i10, byte[] bArr);

    @Override // he.d
    public final int r() {
        return this.f4932f;
    }

    public final int r0(String str, int i10, byte[] bArr) {
        int i11;
        int i12;
        if (this.f4939n) {
            if ((i10 - this.f4929c) % 2 != 0) {
                i12 = i10 + 1;
                bArr[i10] = 0;
            } else {
                i12 = i10;
            }
            System.arraycopy(ge.b.d(str, ge.b.f6136b), 0, bArr, i12, str.length() * 2);
            int length = (str.length() * 2) + i12;
            int i13 = length + 1;
            bArr[length] = 0;
            i11 = length + 2;
            bArr[i13] = 0;
        } else {
            byte[] bArrE = ge.b.e(str, this.f4946x);
            System.arraycopy(bArrE, 0, bArr, i10, bArrE.length);
            int length2 = bArrE.length + i10;
            bArr[length2] = 0;
            i11 = length2 + 1;
        }
        return i11 - i10;
    }

    @Override // ad.b, he.d
    public void reset() {
        this.f4928b = (byte) 24;
        this.f4933g = 0;
        this.f4932f = 0;
        this.f4941q = false;
        this.f4944v = null;
        this.f4935i = 0;
        this.f4938m = 65535;
    }

    @Override // ad.b
    public final void s(d dVar) {
        if (!(dVar instanceof c)) {
            throw new IllegalArgumentException();
        }
        this.f4945w = (c) dVar;
    }

    @Override // ad.c
    public final int size() {
        return 0;
    }

    public String toString() {
        String str;
        byte b10 = this.f4927a;
        if (b10 == 0) {
            str = "SMB_COM_CREATE_DIRECTORY";
        } else if (b10 == 1) {
            str = "SMB_COM_DELETE_DIRECTORY";
        } else if (b10 == 4) {
            str = "SMB_COM_CLOSE";
        } else if (b10 == 16) {
            str = "SMB_COM_CHECK_DIRECTORY";
        } else if (b10 == 50) {
            str = "SMB_COM_TRANSACTION2";
        } else if (b10 == 52) {
            str = "SMB_COM_FIND_CLOSE2";
        } else if (b10 == 6) {
            str = "SMB_COM_DELETE";
        } else if (b10 == 7) {
            str = "SMB_COM_RENAME";
        } else if (b10 == 8) {
            str = "SMB_COM_QUERY_INFORMATION";
        } else if (b10 == 42) {
            str = "SMB_COM_MOVE";
        } else if (b10 != 43) {
            switch (b10) {
                case -96:
                    str = "SMB_COM_NT_TRANSACT";
                    break;
                case -95:
                    str = "SMB_COM_NT_TRANSACT_SECONDARY";
                    break;
                case -94:
                    str = "SMB_COM_NT_CREATE_ANDX";
                    break;
                default:
                    switch (b10) {
                        case 36:
                            str = "SMB_COM_LOCKING_ANDX";
                            break;
                        case 37:
                            str = "SMB_COM_TRANSACTION";
                            break;
                        case 38:
                            str = "SMB_COM_TRANSACTION_SECONDARY";
                            break;
                        default:
                            switch (b10) {
                                case 45:
                                    str = "SMB_COM_OPEN_ANDX";
                                    break;
                                case 46:
                                    str = "SMB_COM_READ_ANDX";
                                    break;
                                case 47:
                                    str = "SMB_COM_WRITE_ANDX";
                                    break;
                                default:
                                    switch (b10) {
                                        case 113:
                                            str = "SMB_COM_TREE_DISCONNECT";
                                            break;
                                        case 114:
                                            str = "SMB_COM_NEGOTIATE";
                                            break;
                                        case 115:
                                            str = "SMB_COM_SESSION_SETUP_ANDX";
                                            break;
                                        case 116:
                                            str = "SMB_COM_LOGOFF_ANDX";
                                            break;
                                        case 117:
                                            str = "SMB_COM_TREE_CONNECT_ANDX";
                                            break;
                                        default:
                                            str = "UNKNOWN";
                                            break;
                                    }
                            }
                    }
            }
        } else {
            str = "SMB_COM_ECHO";
        }
        int i10 = this.f4932f;
        String strA = i10 == 0 ? "0" : r.a(i10);
        StringBuilder sbD = da.b.d("command=", str, ",received=");
        sbD.append(this.f4941q);
        sbD.append(",errorCode=");
        sbD.append(strA);
        sbD.append(",flags=0x");
        android.support.v4.media.session.a.E(this.f4928b & 255, 4, ",flags2=0x", sbD);
        android.support.v4.media.session.a.E(this.f4933g, 4, ",signSeq=", sbD);
        sbD.append(this.r);
        sbD.append(",tid=");
        sbD.append(this.f4938m);
        sbD.append(",pid=");
        sbD.append(this.f4934h);
        sbD.append(",uid=");
        sbD.append(this.f4935i);
        sbD.append(",mid=");
        sbD.append(this.f4936j);
        sbD.append(",wordCount=");
        sbD.append(this.f4937k);
        sbD.append(",byteCount=");
        sbD.append(this.l);
        return new String(sbD.toString());
    }

    @Override // ad.c
    public final boolean u(ad.c cVar) {
        return false;
    }

    @Override // ad.c
    /* renamed from: w, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public c h() {
        return null;
    }

    @Override // ad.b
    public final int y() {
        return this.f4927a;
    }

    public c(vc.f fVar, byte b10, String str) {
        this.f4938m = 65535;
        this.f4944v = null;
        this.f4946x = fVar;
        this.f4927a = b10;
        this.f4943t = str;
        this.f4928b = (byte) 24;
        this.f4934h = ((wc.a) fVar).f17826b;
        this.f4931e = 0;
    }

    @Override // ad.d
    public final void E(ad.c cVar) {
    }

    @Override // ad.b
    public final void f(long j10) {
    }

    @Override // ad.c
    public final void v(int i10) {
    }
}
