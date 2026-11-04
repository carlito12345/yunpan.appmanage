package ce;

import com.hsae.autosdk.p001os.SocConst;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public final class f1 extends j0 {
    public boolean M0;
    public int N0;
    public int O0;
    public int P0;
    public String Q0;
    public int R0;

    /* renamed from: t0, reason: collision with root package name */
    public int f3063t0;

    public f1() {
        this.f3114c = SocConst.Upgrade.CUPID_DATA;
        this.S = (byte) 1;
    }

    @Override // ce.j0, ce.q
    public final String toString() {
        StringBuilder sbM = g.b.m(this.S == 1 ? "Trans2FindFirst2Response[" : "Trans2FindNext2Response[");
        sbM.append(super.toString());
        sbM.append(",sid=");
        sbM.append(this.f3063t0);
        sbM.append(",searchCount=");
        sbM.append(this.Z);
        sbM.append(",isEndOfSearch=");
        sbM.append(this.M0);
        sbM.append(",eaErrorOffset=");
        sbM.append(this.N0);
        sbM.append(",lastNameOffset=");
        sbM.append(this.O0);
        sbM.append(",lastName=");
        return new String(g.b.l(this.Q0, "]", sbM));
    }

    @Override // ce.j0
    public final int v(int i10, int i11, byte[] bArr) {
        String str;
        int i12;
        this.P0 = this.O0 + i10;
        this.f3078h0 = new e1[this.Z];
        for (int i13 = 0; i13 < this.Z; i13++) {
            g[] gVarArr = this.f3078h0;
            e1 e1Var = new e1();
            gVarArr[i13] = e1Var;
            e1Var.f3055a = q.g(i10, bArr);
            e1Var.f3056b = q.g(i10 + 4, bArr);
            e1Var.f3057c = q.l(i10 + 8, bArr);
            e1Var.f3058d = q.l(i10 + 24, bArr);
            e1Var.f3059e = q.h(i10 + 40, bArr);
            e1Var.f3060f = q.g(i10 + 56, bArr);
            int iG = q.g(i10 + 60, bArr);
            e1Var.f3061g = iG;
            int i14 = i10 + 94;
            try {
                if (this.f3126q) {
                    str = new String(bArr, i14, iG, "UTF-16LE");
                } else {
                    if (iG > 0 && bArr[(i14 + iG) - 1] == 0) {
                        iG--;
                    }
                    str = new String(bArr, i14, iG, q0.f3144m0);
                }
            } catch (UnsupportedEncodingException e7) {
                if (de.d.f4630b > 1) {
                    e7.printStackTrace(q.A);
                }
                str = null;
            }
            e1Var.f3062h = str;
            int i15 = this.P0;
            if (i15 >= i10 && ((i12 = e1Var.f3055a) == 0 || i15 < i12 + i10)) {
                this.Q0 = str;
                this.R0 = e1Var.f3056b;
            }
            i10 += e1Var.f3055a;
        }
        return this.R;
    }

    @Override // ce.j0
    public final int w(byte[] bArr) {
        int i10;
        if (this.S == 1) {
            this.f3063t0 = q.f(0, bArr);
            i10 = 2;
        } else {
            i10 = 0;
        }
        this.Z = q.f(i10, bArr);
        this.M0 = (bArr[i10 + 2] & 1) == 1;
        this.N0 = q.f(i10 + 4, bArr);
        this.O0 = q.f(i10 + 6, bArr);
        return i10 + 8;
    }
}
