package fd;

import javax.crypto.ShortBufferException;

/* loaded from: classes.dex */
public final class s extends ed.a {
    public final byte[] L;
    public final byte[] M;
    public final byte[] N;
    public final String O;
    public final String P;
    public final j R;
    public final int S;

    public s(vc.b bVar, j jVar, ed.c cVar, Object obj) throws vd.r, ShortBufferException {
        super(bVar.e(), (byte) 115, cVar);
        this.N = null;
        this.R = jVar;
        int i10 = jVar.O;
        this.S = i10;
        b bVar2 = jVar.H;
        int i11 = bVar2.f5782g;
        if (i11 != 1) {
            if (i11 != 0) {
                throw new vd.r("Unsupported");
            }
            if (!(obj instanceof vd.j)) {
                throw new vd.r("Unsupported credential type");
            }
            vd.j jVar2 = (vd.j) obj;
            this.L = new byte[0];
            this.M = new byte[0];
            if (jVar2.d()) {
                this.O = "";
                this.P = "";
                return;
            }
            String str = jVar2.f16876c;
            this.O = str;
            if (this.f4939n) {
                this.O = str.toUpperCase();
            }
            String str2 = jVar2.f16875b;
            this.P = str2 != null ? str2.toUpperCase() : "?";
            return;
        }
        if (!(obj instanceof vd.j)) {
            if (obj instanceof byte[]) {
                this.N = (byte[]) obj;
                return;
            } else {
                StringBuilder sb2 = new StringBuilder("Unsupported credential type ");
                sb2.append(obj != null ? obj.getClass() : "NULL");
                throw new vd.r(sb2.toString());
            }
        }
        vd.j jVar3 = (vd.j) obj;
        if (jVar3.d()) {
            this.L = new byte[0];
            this.M = new byte[0];
            this.S = Integer.MAX_VALUE & i10;
            if (!jVar3.f()) {
                this.O = "";
                this.P = "";
                return;
            }
            String str3 = jVar3.f16876c;
            this.O = str3;
            if (this.f4939n) {
                this.O = str3.toUpperCase();
            }
            String str4 = jVar3.f16875b;
            this.P = str4 != null ? str4.toUpperCase() : "?";
            return;
        }
        String str5 = jVar3.f16876c;
        this.O = str5;
        if (this.f4939n) {
            this.O = str5.toUpperCase();
        }
        String str6 = jVar3.f16875b;
        this.P = str6 != null ? str6.toUpperCase() : "?";
        if (bVar2.f5783h) {
            byte[] bArrB = jVar3.b(bVar, bVar2.f5790p);
            this.L = bArrB;
            byte[] bArrC = jVar3.c(bVar, bVar2.f5790p);
            this.M = bArrC;
            if (bArrB.length == 0 && bArrC.length == 0) {
                throw new RuntimeException("Null setup prohibited.");
            }
            return;
        }
        if (((wc.a) bVar.e()).f17863v) {
            throw new RuntimeException("Plain text passwords are disabled");
        }
        String str7 = jVar3.f16877d;
        byte[] bArr = new byte[(str7.length() + 1) * 2];
        this.L = bArr;
        this.M = new byte[0];
        r0(str7, 0, bArr);
    }

    @Override // ed.c
    public final int i0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int k0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int o0(int i10, byte[] bArr) {
        int iR0;
        byte[] bArr2 = this.N;
        if (bArr2 != null) {
            System.arraycopy(bArr2, 0, bArr, i10, bArr2.length);
            iR0 = bArr2.length + i10;
        } else {
            byte[] bArr3 = this.L;
            System.arraycopy(bArr3, 0, bArr, i10, bArr3.length);
            int length = bArr3.length + i10;
            byte[] bArr4 = this.M;
            System.arraycopy(bArr4, 0, bArr, length, bArr4.length);
            int length2 = length + bArr4.length;
            int iR02 = r0(this.O, length2, bArr) + length2;
            iR0 = iR02 + r0(this.P, iR02, bArr);
        }
        vc.f fVar = this.f4946x;
        int iR03 = r0(((wc.a) fVar).J, iR0, bArr) + iR0;
        return (r0(((wc.a) fVar).K, iR03, bArr) + iR03) - i10;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        int i11;
        j jVar = this.R;
        rd.a.e(jVar.L, bArr, i10);
        rd.a.e(jVar.K, bArr, i10 + 2);
        rd.a.e(((wc.a) this.f4946x).L, bArr, i10 + 4);
        rd.a.f(0, bArr, i10 + 6);
        int i12 = i10 + 10;
        if (this.N != null) {
            rd.a.e(r2.length, bArr, i12);
            i11 = i10 + 12;
        } else {
            rd.a.e(this.L.length, bArr, i12);
            rd.a.e(this.M.length, bArr, i10 + 12);
            i11 = i10 + 14;
        }
        bArr[i11] = 0;
        bArr[i11 + 1] = 0;
        bArr[i11 + 2] = 0;
        bArr[i11 + 3] = 0;
        rd.a.f(this.S, bArr, i11 + 4);
        return (i11 + 8) - i10;
    }

    @Override // ed.a
    public final int s0(vc.f fVar, byte b10) {
        if (b10 == 117) {
            return ((wc.a) fVar).a("SessionSetupAndX.TreeConnectAndX");
        }
        return 0;
    }

    @Override // ed.a, ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComSessionSetupAndX[");
        sb2.append(super.toString());
        sb2.append(",snd_buf_size=");
        j jVar = this.R;
        sb2.append(jVar.L);
        sb2.append(",maxMpxCount=");
        sb2.append(jVar.K);
        sb2.append(",VC_NUMBER=");
        wc.a aVar = (wc.a) this.f4946x;
        sb2.append(aVar.L);
        sb2.append(",sessionKey=0,lmHash.length=");
        byte[] bArr = this.L;
        sb2.append(bArr == null ? 0 : bArr.length);
        sb2.append(",ntHash.length=");
        byte[] bArr2 = this.M;
        sb2.append(bArr2 != null ? bArr2.length : 0);
        sb2.append(",capabilities=");
        sb2.append(this.S);
        sb2.append(",accountName=");
        sb2.append(this.O);
        sb2.append(",primaryDomain=");
        sb2.append(this.P);
        sb2.append(",NATIVE_OS=");
        sb2.append(aVar.J);
        sb2.append(",NATIVE_LANMAN=");
        return new String(g.b.l(aVar.K, "]", sb2));
    }
}
