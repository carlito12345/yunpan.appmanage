package ce;

/* loaded from: classes.dex */
public final class j1 extends j0 {
    public int M0;
    public int N0;
    public i1[] O0;

    /* renamed from: t0, reason: collision with root package name */
    public int f3079t0;

    public j1() {
        this.S = (byte) 16;
    }

    @Override // ce.j0, ce.q
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Trans2GetDfsReferralResponse[");
        sb2.append(super.toString());
        sb2.append(",pathConsumed=");
        sb2.append(this.f3079t0);
        sb2.append(",numReferrals=");
        sb2.append(this.M0);
        sb2.append(",flags=");
        return new String(android.support.v4.media.session.a.s(sb2, this.N0, "]"));
    }

    @Override // ce.j0
    public final int v(int i10, int i11, byte[] bArr) {
        int iF = q.f(i10, bArr);
        this.f3079t0 = iF;
        int i12 = i10 + 2;
        if ((this.f3120i & 32768) != 0) {
            this.f3079t0 = iF / 2;
        }
        this.M0 = q.f(i12, bArr);
        this.N0 = q.f(i10 + 4, bArr);
        int i13 = i10 + 8;
        this.O0 = new i1[this.M0];
        for (int i14 = 0; i14 < this.M0; i14++) {
            i1[] i1VarArr = this.O0;
            i1 i1Var = new i1(this);
            i1VarArr[i14] = i1Var;
            int iF2 = q.f(i13, bArr);
            i1Var.f3067a = iF2;
            if (iF2 != 3 && iF2 != 1) {
                throw new RuntimeException(android.support.v4.media.session.a.s(new StringBuilder("Version "), i1Var.f3067a, " referral not supported. Please report this to jcifs at samba dot org."));
            }
            i1Var.f3068b = q.f(i13 + 2, bArr);
            i1Var.f3069c = q.f(i13 + 4, bArr);
            i1Var.f3070d = q.f(i13 + 6, bArr);
            int i15 = i13 + 8;
            int i16 = i1Var.f3067a;
            if (i16 == 3) {
                i1Var.f3071e = q.f(i15, bArr);
                i1Var.f3075i = q.f(i13 + 10, bArr);
                i1Var.f3072f = q.f(i13 + 12, bArr);
                i1Var.f3073g = q.f(i13 + 14, bArr);
                i1Var.f3074h = q.f(i13 + 16, bArr);
                i1Var.f3076j = j(bArr, i1Var.f3072f + i13, i11, (this.f3120i & 32768) != 0);
                int i17 = i1Var.f3074h;
                if (i17 > 0) {
                    i1Var.f3077k = j(bArr, i17 + i13, i11, (this.f3120i & 32768) != 0);
                }
            } else if (i16 == 1) {
                i1Var.f3077k = j(bArr, i15, i11, (this.f3120i & 32768) != 0);
            }
            i13 += i1Var.f3068b;
        }
        return i13 - i10;
    }

    @Override // ce.j0
    public final int w(byte[] bArr) {
        return 0;
    }
}
