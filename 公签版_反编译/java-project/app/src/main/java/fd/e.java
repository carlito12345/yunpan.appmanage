package fd;

/* loaded from: classes.dex */
public final class e extends ed.a {
    public int L;
    public byte M;
    public byte N;
    public long O;
    public a[] P;
    public a[] R;
    public boolean S;

    public e(vc.f fVar) {
        super(fVar, null);
    }

    @Override // ed.c
    public final int i0(int i10, byte[] bArr) {
        int i11 = 0;
        int i12 = i10;
        int i13 = 0;
        while (true) {
            a[] aVarArr = this.R;
            if (i13 >= aVarArr.length) {
                break;
            }
            a aVar = new a(this.S);
            aVarArr[i13] = aVar;
            i12 += aVar.i(i12, bArr.length, bArr);
            i13++;
        }
        while (true) {
            a[] aVarArr2 = this.P;
            if (i11 >= aVarArr2.length) {
                return i10 - i12;
            }
            a aVar2 = new a(this.S);
            aVarArr2[i11] = aVar2;
            i12 += aVar2.i(i12, bArr.length, bArr);
            i11++;
        }
    }

    @Override // ed.c
    public final int k0(int i10, byte[] bArr) {
        this.L = rd.a.a(i10, bArr);
        byte b10 = bArr[i10 + 2];
        this.M = b10;
        if ((b10 & 16) == 16) {
            this.S = true;
        }
        this.N = bArr[i10 + 3];
        this.O = rd.a.b(i10 + 4, bArr);
        this.R = new a[rd.a.a(i10 + 8, bArr)];
        this.P = new a[rd.a.a(i10 + 10, bArr)];
        return i10 - (i10 + 12);
    }

    @Override // ed.c
    public final int o0(int i10, byte[] bArr) {
        int iC;
        a[] aVarArr = this.R;
        if (aVarArr != null) {
            iC = i10;
            for (a aVar : aVarArr) {
                iC += aVar.c(iC, bArr);
            }
        } else {
            iC = i10;
        }
        a[] aVarArr2 = this.P;
        if (aVarArr2 != null) {
            for (a aVar2 : aVarArr2) {
                iC += aVar2.c(iC, bArr);
            }
        }
        return i10 - iC;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        rd.a.e(this.L, bArr, i10);
        bArr[i10 + 2] = this.M;
        bArr[i10 + 3] = this.N;
        rd.a.f(this.O, bArr, i10 + 4);
        rd.a.e(this.R != null ? r1.length : 0L, bArr, i10 + 8);
        rd.a.e(this.P != null ? r1.length : 0L, bArr, i10 + 10);
        return i10 - (i10 + 12);
    }

    @Override // ed.a, ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComLockingAndX[");
        sb2.append(super.toString());
        sb2.append(",fid=");
        sb2.append(this.L);
        sb2.append(",typeOfLock=");
        sb2.append((int) this.M);
        sb2.append(",newOplockLevel=");
        return new String(android.support.v4.media.session.a.s(sb2, this.N, "]"));
    }
}
