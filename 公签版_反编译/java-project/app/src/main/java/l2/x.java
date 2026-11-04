package l2;

import j$.nio.charset.StandardCharsets;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class x implements i3.j {

    /* renamed from: a, reason: collision with root package name */
    public final u1.q f10546a;

    public x(int i10) {
        switch (i10) {
            case 1:
                this.f10546a = new u1.q();
                break;
            default:
                this.f10546a = new u1.q(10);
                break;
        }
    }

    public r1.d0 a(l lVar, z2.g gVar, int i10) {
        r1.d0 d0VarS0 = null;
        int i11 = 0;
        loop0: while (true) {
            int i12 = 0;
            do {
                int i13 = i12 % 10;
                int i14 = i13 + 10;
                u1.q qVar = this.f10546a;
                if (i13 == 0 && i12 != 0) {
                    byte[] bArr = qVar.f15266a;
                    System.arraycopy(bArr, 10, bArr, 0, 9);
                }
                int i15 = i12 == 0 ? 10 : 1;
                try {
                    lVar.c(qVar.f15266a, i14 - i15, i15, false);
                    qVar.O(i13);
                    qVar.N(i14);
                    if (qVar.a() < 3) {
                        throw new IndexOutOfBoundsException("position=" + qVar.f15267b + ", limit=" + qVar.f15268c);
                    }
                    int iE = qVar.E();
                    int i16 = qVar.f15267b - 3;
                    qVar.f15267b = i16;
                    if (iE != 4801587) {
                        if (b.h(qVar.j()) != -1) {
                            break loop0;
                        }
                        if (i12 == 0) {
                            qVar.c(20);
                        }
                        i12++;
                    } else {
                        qVar.P(6);
                        int iA = qVar.A();
                        int i17 = iA + 10;
                        if (d0VarS0 == null) {
                            byte[] bArr2 = new byte[i17];
                            System.arraycopy(qVar.f15266a, i16, bArr2, 0, 10);
                            lVar.c(bArr2, 10, iA, false);
                            d0VarS0 = new z2.h(gVar).s0(i17, bArr2);
                        } else {
                            lVar.k(iA, false);
                        }
                        i11 += i17;
                    }
                } catch (EOFException unused) {
                }
            } while (i12 <= i10);
        }
        lVar.f10501f = 0;
        lVar.k(i11, false);
        return d0VarS0;
    }

    @Override // i3.j
    public void b(byte[] bArr, int i10, int i11, i3.i iVar, u1.f fVar) {
        t1.b bVarA;
        u1.q qVar = this.f10546a;
        qVar.M(i10 + i11, bArr);
        qVar.O(i10);
        ArrayList arrayList = new ArrayList();
        while (qVar.a() > 0) {
            a9.o.i("Incomplete Mp4Webvtt Top Level box header found.", qVar.a() >= 8);
            int iO = qVar.o();
            if (qVar.o() == 1987343459) {
                int i12 = iO - 8;
                CharSequence charSequenceF = null;
                t1.a aVarA = null;
                while (i12 > 0) {
                    a9.o.i("Incomplete vtt cue box header found.", i12 >= 8);
                    int iO2 = qVar.o();
                    int iO3 = qVar.o();
                    int i13 = iO2 - 8;
                    byte[] bArr2 = qVar.f15266a;
                    int i14 = qVar.f15267b;
                    String str = u1.f0.f15206a;
                    String str2 = new String(bArr2, i14, i13, StandardCharsets.UTF_8);
                    qVar.P(i13);
                    i12 = (i12 - 8) - i13;
                    if (iO3 == 1937011815) {
                        r3.g gVar = new r3.g();
                        r3.h.e(str2, gVar);
                        aVarA = gVar.a();
                    } else if (iO3 == 1885436268) {
                        charSequenceF = r3.h.f(null, str2.trim(), Collections.emptyList());
                    }
                }
                if (charSequenceF == null) {
                    charSequenceF = "";
                }
                if (aVarA != null) {
                    aVarA.f14641a = charSequenceF;
                    aVarA.f14642b = null;
                    bVarA = aVarA.a();
                } else {
                    Pattern pattern = r3.h.f13706a;
                    r3.g gVar2 = new r3.g();
                    gVar2.f13697c = charSequenceF;
                    bVarA = gVar2.a().a();
                }
                arrayList.add(bVarA);
            } else {
                qVar.P(iO - 8);
            }
        }
        fVar.accept(new i3.a(-9223372036854775807L, -9223372036854775807L, arrayList));
    }

    @Override // i3.j
    public /* synthetic */ i3.d e(int i10, int i11, byte[] bArr) {
        return g.b.a(this, bArr, i11);
    }

    @Override // i3.j
    public /* synthetic */ void reset() {
    }
}
