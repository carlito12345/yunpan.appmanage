package ae;

import java.net.InetAddress;

/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public int f601a;

    /* renamed from: b, reason: collision with root package name */
    public g[] f602b;

    /* renamed from: c, reason: collision with root package name */
    public int f603c;

    /* renamed from: d, reason: collision with root package name */
    public int f604d;

    /* renamed from: e, reason: collision with root package name */
    public int f605e;

    /* renamed from: g, reason: collision with root package name */
    public int f607g;

    /* renamed from: h, reason: collision with root package name */
    public int f608h;

    /* renamed from: i, reason: collision with root package name */
    public int f609i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f610j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f611k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f612m;

    /* renamed from: o, reason: collision with root package name */
    public boolean f614o;

    /* renamed from: q, reason: collision with root package name */
    public b f616q;
    public b r;

    /* renamed from: s, reason: collision with root package name */
    public int f617s;

    /* renamed from: u, reason: collision with root package name */
    public int f619u;

    /* renamed from: v, reason: collision with root package name */
    public int f620v;

    /* renamed from: w, reason: collision with root package name */
    public int f621w;

    /* renamed from: x, reason: collision with root package name */
    public int f622x;

    /* renamed from: y, reason: collision with root package name */
    public InetAddress f623y;

    /* renamed from: n, reason: collision with root package name */
    public boolean f613n = true;

    /* renamed from: p, reason: collision with root package name */
    public boolean f615p = true;

    /* renamed from: f, reason: collision with root package name */
    public int f606f = 1;

    /* renamed from: t, reason: collision with root package name */
    public int f618t = 1;

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
        int iA;
        if ((bArr[i10] & 192) == 192) {
            this.r = this.f616q;
            iA = i10 + 2;
        } else {
            iA = this.r.a(i10, bArr) + i10;
        }
        this.f619u = b(iA, bArr);
        this.f620v = b(iA + 2, bArr);
        this.f621w = c(iA + 4, bArr);
        int iB = b(iA + 8, bArr);
        this.f622x = iB;
        int iD = iA + 10;
        this.f602b = new g[iB / 6];
        int i11 = iB + iD;
        int i12 = 0;
        while (true) {
            this.f601a = i12;
            if (iD >= i11) {
                return iD - i10;
            }
            iD += d(iD, bArr);
            i12 = this.f601a + 1;
        }
    }

    public final void f(byte[] bArr) {
        this.f603c = b(0, bArr);
        byte b10 = bArr[2];
        this.f611k = (b10 & 128) != 0;
        this.f604d = (b10 & 120) >> 3;
        this.l = (b10 & 4) != 0;
        this.f612m = (b10 & 2) != 0;
        this.f613n = (b10 & 1) != 0;
        byte b11 = bArr[3];
        this.f614o = (b11 & 128) != 0;
        this.f615p = (b11 & 16) != 0;
        this.f605e = b11 & 15;
        this.f606f = b(4, bArr);
        this.f607g = b(6, bArr);
        this.f608h = b(8, bArr);
        this.f609i = b(10, bArr);
        a(12, bArr);
    }

    public abstract int g(int i10, byte[] bArr);

    public final int i(byte[] bArr) {
        h(this.f603c, 0, bArr);
        bArr[2] = (byte) ((this.f611k ? 128 : 0) + ((this.f604d << 3) & 120) + (this.l ? 4 : 0) + (this.f612m ? 2 : 0) + (this.f613n ? 1 : 0));
        bArr[3] = (byte) ((this.f614o ? 128 : 0) + (this.f615p ? 16 : 0) + (this.f605e & 15));
        h(this.f606f, 4, bArr);
        h(this.f607g, 6, bArr);
        h(this.f608h, 8, bArr);
        h(this.f609i, 10, bArr);
        return g(12, bArr) + 12;
    }

    public String toString() {
        int i10 = this.f604d;
        String string = i10 != 0 ? i10 != 7 ? Integer.toString(i10) : "WACK" : "QUERY";
        int i11 = this.f605e;
        if (i11 != 1 && i11 != 2 && i11 != 4 && i11 != 5 && i11 != 6 && i11 != 7) {
            de.c.c(i11, 1);
        }
        int i12 = this.f617s;
        String strConcat = "NB";
        String strConcat2 = i12 != 32 ? i12 != 33 ? "0x".concat(de.c.c(i12, 4)) : "NBSTAT" : "NB";
        int i13 = this.f619u;
        if (i13 == 1) {
            strConcat = "A";
        } else if (i13 == 2) {
            strConcat = "NS";
        } else if (i13 == 10) {
            strConcat = "NULL";
        } else if (i13 != 32) {
            strConcat = i13 != 33 ? "0x".concat(de.c.c(i13, 4)) : "NBSTAT";
        }
        StringBuilder sb2 = new StringBuilder("nameTrnId=");
        sb2.append(this.f603c);
        sb2.append(",isResponse=");
        sb2.append(this.f611k);
        sb2.append(",opCode=");
        sb2.append(string);
        sb2.append(",isAuthAnswer=");
        sb2.append(this.l);
        sb2.append(",isTruncated=");
        sb2.append(this.f612m);
        sb2.append(",isRecurAvailable=");
        sb2.append(this.f614o);
        sb2.append(",isRecurDesired=");
        sb2.append(this.f613n);
        sb2.append(",isBroadcast=");
        sb2.append(this.f615p);
        sb2.append(",resultCode=");
        sb2.append(this.f605e);
        sb2.append(",questionCount=");
        sb2.append(this.f606f);
        sb2.append(",answerCount=");
        sb2.append(this.f607g);
        sb2.append(",authorityCount=");
        sb2.append(this.f608h);
        sb2.append(",additionalCount=");
        sb2.append(this.f609i);
        sb2.append(",questionName=");
        sb2.append(this.f616q);
        sb2.append(",questionType=");
        sb2.append(strConcat2);
        sb2.append(",questionClass=");
        int i14 = this.f618t;
        sb2.append(i14 == 1 ? "IN" : "0x".concat(de.c.c(i14, 4)));
        sb2.append(",recordName=");
        sb2.append(this.r);
        sb2.append(",recordType=");
        sb2.append(strConcat);
        sb2.append(",recordClass=");
        int i15 = this.f620v;
        sb2.append(i15 != 1 ? "0x".concat(de.c.c(i15, 4)) : "IN");
        sb2.append(",ttl=");
        sb2.append(this.f621w);
        sb2.append(",rDataLength=");
        sb2.append(this.f622x);
        return new String(sb2.toString());
    }
}
