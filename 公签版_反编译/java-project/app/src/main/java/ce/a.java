package ce;

/* loaded from: classes.dex */
public abstract class a extends q {
    public byte C;
    public int D;
    public q E;

    public a() {
        this.C = (byte) -1;
        this.D = 0;
        this.E = null;
    }

    @Override // ce.q
    public final void b(byte[] bArr) {
        this.f3116e = 4;
        e(bArr);
        this.f3117f = w(36, bArr) + 32;
    }

    @Override // ce.q
    public final int c(byte[] bArr) {
        this.f3116e = 4;
        p(bArr);
        int iX = x(36, bArr) + 32;
        this.f3117f = iX;
        r rVar = this.f3132y;
        if (rVar != null) {
            rVar.a(bArr, this.f3116e, iX, this, this.z);
        }
        return this.f3117f;
    }

    @Override // ce.q
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append(",andxCommand=0x");
        android.support.v4.media.session.a.y(this.C, 2, ",andxOffset=", sb2);
        sb2.append(this.D);
        return new String(sb2.toString());
    }

    public int v(byte b10) {
        return 0;
    }

    public final int w(int i10, byte[] bArr) {
        byte b10;
        int i11 = i10 + 1;
        byte b11 = bArr[i10];
        this.f3124n = b11;
        if (b11 != 0) {
            this.C = bArr[i11];
            int iF = q.f(i10 + 3, bArr);
            this.D = iF;
            if (iF == 0) {
                this.C = (byte) -1;
            }
            if (this.f3124n > 2) {
                i(i10 + 5, bArr);
                if (this.f3114c == -94 && ((y) this).V) {
                    this.f3124n += 8;
                }
            }
            i11 += this.f3124n * 2;
        }
        int iF2 = q.f(i11, bArr);
        this.f3125p = iF2;
        int iW = i11 + 2;
        if (iF2 != 0) {
            d(iW, bArr);
            iW += this.f3125p;
        }
        int i12 = this.f3119h;
        if (i12 != 0 || (b10 = this.C) == -1) {
            this.C = (byte) -1;
            this.E = null;
        } else {
            q qVar = this.E;
            if (qVar == null) {
                this.C = (byte) -1;
                throw new RuntimeException("no andx command supplied with response");
            }
            int i13 = this.f3116e;
            int i14 = this.D + i13;
            qVar.f3116e = i13;
            qVar.f3114c = b10;
            qVar.f3119h = i12;
            qVar.f3115d = this.f3115d;
            qVar.f3120i = this.f3120i;
            qVar.f3121j = this.f3121j;
            qVar.f3122k = this.f3122k;
            qVar.l = this.l;
            qVar.f3123m = this.f3123m;
            qVar.f3126q = this.f3126q;
            if (qVar instanceof a) {
                iW = ((a) qVar).w(i14, bArr) + i14;
            } else {
                int i15 = i14 + 1;
                int i16 = qVar.f3124n;
                bArr[i14] = (byte) (i16 & 255);
                if (i16 != 0 && i16 > 2) {
                    i15 += qVar.i(i15, bArr);
                }
                this.E.f3125p = q.f(i15, bArr);
                int i17 = i15 + 2;
                q qVar2 = this.E;
                if (qVar2.f3125p != 0) {
                    qVar2.d(i17, bArr);
                    i17 += this.E.f3125p;
                }
                iW = i17;
            }
            this.E.r = true;
        }
        return iW - i10;
    }

    public final int x(int i10, byte[] bArr) {
        int iX;
        int i11 = i10 + 3;
        int iT = t(i10 + 5, bArr);
        int i12 = iT + 4;
        int i13 = iT + 5 + i10;
        int i14 = i12 / 2;
        this.f3124n = i14;
        bArr[i10] = (byte) (i14 & 255);
        int i15 = i13 + 2;
        int iO = o(i15, bArr);
        this.f3125p = iO;
        bArr[i13] = (byte) (iO & 255);
        bArr[i13 + 1] = (byte) ((iO >> 8) & 255);
        int i16 = i15 + iO;
        q qVar = this.E;
        if (qVar == null || !q0.f3143l0 || this.f3118g >= v(qVar.f3114c)) {
            this.C = (byte) -1;
            this.E = null;
            bArr[i10 + 1] = -1;
            bArr[i10 + 2] = 0;
            bArr[i11] = -34;
            bArr[i10 + 4] = -34;
            return i16 - i10;
        }
        this.E.f3118g = this.f3118g + 1;
        bArr[i10 + 1] = this.C;
        bArr[i10 + 2] = 0;
        int i17 = i16 - this.f3116e;
        this.D = i17;
        q.q(i17, bArr, i11);
        q qVar2 = this.E;
        qVar2.f3126q = this.f3126q;
        if (qVar2 instanceof a) {
            qVar2.l = this.l;
            iX = ((a) qVar2).x(i16, bArr) + i16;
        } else {
            qVar2.f3124n = qVar2.t(i16, bArr);
            q qVar3 = this.E;
            int i18 = qVar3.f3124n;
            int i19 = i18 + 1 + i16;
            int i20 = i18 / 2;
            qVar3.f3124n = i20;
            bArr[i16] = (byte) (i20 & 255);
            int i21 = i19 + 2;
            qVar3.f3125p = qVar3.o(i21, bArr);
            int i22 = this.E.f3125p;
            bArr[i19] = (byte) (i22 & 255);
            bArr[i19 + 1] = (byte) ((i22 >> 8) & 255);
            iX = i21 + i22;
        }
        return iX - i10;
    }

    public a(q qVar) {
        this.C = (byte) -1;
        this.D = 0;
        this.E = null;
        if (qVar != null) {
            this.E = qVar;
            this.C = qVar.f3114c;
        }
    }
}
