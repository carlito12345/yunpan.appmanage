package sd;

import java.net.InetAddress;

/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public int f14521a;

    /* renamed from: b, reason: collision with root package name */
    public h[] f14522b;

    /* renamed from: c, reason: collision with root package name */
    public int f14523c;

    /* renamed from: d, reason: collision with root package name */
    public int f14524d;

    /* renamed from: e, reason: collision with root package name */
    public int f14525e;

    /* renamed from: g, reason: collision with root package name */
    public int f14527g;

    /* renamed from: h, reason: collision with root package name */
    public int f14528h;

    /* renamed from: i, reason: collision with root package name */
    public int f14529i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f14530j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f14531k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f14532m;

    /* renamed from: o, reason: collision with root package name */
    public boolean f14534o;

    /* renamed from: q, reason: collision with root package name */
    public b f14536q;
    public b r;

    /* renamed from: s, reason: collision with root package name */
    public int f14537s;

    /* renamed from: u, reason: collision with root package name */
    public int f14539u;

    /* renamed from: v, reason: collision with root package name */
    public int f14540v;

    /* renamed from: w, reason: collision with root package name */
    public int f14541w;

    /* renamed from: x, reason: collision with root package name */
    public int f14542x;

    /* renamed from: y, reason: collision with root package name */
    public InetAddress f14543y;
    public final vc.f z;

    /* renamed from: n, reason: collision with root package name */
    public boolean f14533n = true;

    /* renamed from: p, reason: collision with root package name */
    public boolean f14535p = true;

    /* renamed from: f, reason: collision with root package name */
    public int f14526f = 1;

    /* renamed from: t, reason: collision with root package name */
    public int f14538t = 1;

    public g(vc.f fVar) {
        this.z = fVar;
    }

    public static int b(int i10, byte[] bArr) {
        return ((bArr[i10] & 255) << 8) + (bArr[i10 + 1] & 255);
    }

    public static int c(int i10, byte[] bArr) {
        return ((bArr[i10] & 255) << 24) + ((bArr[i10 + 1] & 255) << 16) + ((bArr[i10 + 2] & 255) << 8) + (bArr[i10 + 3] & 255);
    }

    public static void h(int i10, int i11, byte[] bArr) {
        bArr[i11] = (byte) ((i10 >> 8) & 255);
        bArr[i11 + 1] = (byte) (i10 & 255);
    }

    public abstract int a(int i10, byte[] bArr);

    public abstract int d(int i10, byte[] bArr);

    public final int e(int i10, byte[] bArr) {
        int iB;
        if ((bArr[i10] & 192) == 192) {
            this.r = this.f14536q;
            iB = i10 + 2;
        } else {
            iB = this.r.b(i10, bArr) + i10;
        }
        this.f14539u = b(iB, bArr);
        this.f14540v = b(iB + 2, bArr);
        this.f14541w = c(iB + 4, bArr);
        int iB2 = b(iB + 8, bArr);
        this.f14542x = iB2;
        int iD = iB + 10;
        this.f14522b = new h[iB2 / 6];
        int i11 = iB2 + iD;
        int i12 = 0;
        while (true) {
            this.f14521a = i12;
            if (iD >= i11) {
                return iD - i10;
            }
            iD += d(iD, bArr);
            i12 = this.f14521a + 1;
        }
    }

    public final void f(byte[] bArr) {
        this.f14523c = b(0, bArr);
        byte b10 = bArr[2];
        this.f14531k = (b10 & 128) != 0;
        this.f14524d = (b10 & 120) >> 3;
        this.l = (b10 & 4) != 0;
        this.f14532m = (b10 & 2) != 0;
        this.f14533n = (b10 & 1) != 0;
        byte b11 = bArr[3];
        this.f14534o = (b11 & 128) != 0;
        this.f14535p = (b11 & 16) != 0;
        this.f14525e = b11 & 15;
        this.f14526f = b(4, bArr);
        this.f14527g = b(6, bArr);
        this.f14528h = b(8, bArr);
        this.f14529i = b(10, bArr);
        a(12, bArr);
    }

    public abstract int g(int i10, byte[] bArr);

    public final int i(byte[] bArr) {
        h(this.f14523c, 0, bArr);
        bArr[2] = (byte) ((this.f14531k ? 128 : 0) + ((this.f14524d << 3) & 120) + (this.l ? 4 : 0) + (this.f14532m ? 2 : 0) + (this.f14533n ? 1 : 0));
        bArr[3] = (byte) ((this.f14534o ? 128 : 0) + (this.f14535p ? 16 : 0) + (this.f14525e & 15));
        h(this.f14526f, 4, bArr);
        h(this.f14527g, 6, bArr);
        h(this.f14528h, 8, bArr);
        h(this.f14529i, 10, bArr);
        return g(12, bArr) + 12;
    }

    public String toString() {
        int i10 = this.f14524d;
        String string = i10 != 0 ? i10 != 7 ? Integer.toString(i10) : "WACK" : "QUERY";
        int i11 = this.f14525e;
        String strConcat = i11 != 1 ? i11 != 2 ? i11 != 4 ? i11 != 5 ? i11 != 6 ? i11 != 7 ? "0x".concat(ge.a.l(i11, 1)) : "CFT_ERR" : "ACT_ERR" : "RFS_ERR" : "IMP_ERR" : "SRV_ERR" : "FMT_ERR";
        int i12 = this.f14537s;
        String strConcat2 = "NB";
        String strConcat3 = i12 != 32 ? i12 != 33 ? "0x".concat(ge.a.l(i12, 4)) : "NBSTAT" : "NB";
        int i13 = this.f14539u;
        if (i13 == 1) {
            strConcat2 = "A";
        } else if (i13 == 2) {
            strConcat2 = "NS";
        } else if (i13 == 10) {
            strConcat2 = "NULL";
        } else if (i13 != 32) {
            strConcat2 = i13 != 33 ? "0x".concat(ge.a.l(i13, 4)) : "NBSTAT";
        }
        StringBuilder sb2 = new StringBuilder("nameTrnId=");
        sb2.append(this.f14523c);
        sb2.append(",isResponse=");
        sb2.append(this.f14531k);
        sb2.append(",opCode=");
        sb2.append(string);
        sb2.append(",isAuthAnswer=");
        sb2.append(this.l);
        sb2.append(",isTruncated=");
        sb2.append(this.f14532m);
        sb2.append(",isRecurAvailable=");
        sb2.append(this.f14534o);
        sb2.append(",isRecurDesired=");
        sb2.append(this.f14533n);
        sb2.append(",isBroadcast=");
        sb2.append(this.f14535p);
        sb2.append(",resultCode=");
        sb2.append(strConcat);
        sb2.append(",questionCount=");
        sb2.append(this.f14526f);
        sb2.append(",answerCount=");
        sb2.append(this.f14527g);
        sb2.append(",authorityCount=");
        sb2.append(this.f14528h);
        sb2.append(",additionalCount=");
        sb2.append(this.f14529i);
        sb2.append(",questionName=");
        sb2.append(this.f14536q);
        sb2.append(",questionType=");
        sb2.append(strConcat3);
        sb2.append(",questionClass=");
        int i14 = this.f14538t;
        sb2.append(i14 == 1 ? "IN" : "0x".concat(ge.a.l(i14, 4)));
        sb2.append(",recordName=");
        sb2.append(this.r);
        sb2.append(",recordType=");
        sb2.append(strConcat2);
        sb2.append(",recordClass=");
        int i15 = this.f14540v;
        sb2.append(i15 != 1 ? "0x".concat(ge.a.l(i15, 4)) : "IN");
        sb2.append(",ttl=");
        sb2.append(this.f14541w);
        sb2.append(",rDataLength=");
        sb2.append(this.f14542x);
        return new String(sb2.toString());
    }
}
