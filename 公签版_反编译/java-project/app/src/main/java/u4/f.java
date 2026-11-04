package u4;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import ha.j2;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.zip.Adler32;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final w f15354a;

    /* renamed from: b, reason: collision with root package name */
    public final w f15355b;

    /* renamed from: c, reason: collision with root package name */
    public final w f15356c;

    /* renamed from: d, reason: collision with root package name */
    public final w f15357d;

    /* renamed from: e, reason: collision with root package name */
    public final z f15358e;

    /* renamed from: f, reason: collision with root package name */
    public final z f15359f;

    /* renamed from: g, reason: collision with root package name */
    public final z f15360g;

    /* renamed from: h, reason: collision with root package name */
    public final l f15361h;

    /* renamed from: i, reason: collision with root package name */
    public final v f15362i;

    /* renamed from: j, reason: collision with root package name */
    public final d f15363j;

    /* renamed from: k, reason: collision with root package name */
    public final w f15364k;
    public final w l;

    /* renamed from: m, reason: collision with root package name */
    public final z f15365m;

    /* renamed from: n, reason: collision with root package name */
    public final a0[] f15366n;

    /* renamed from: o, reason: collision with root package name */
    public int f15367o;

    public f(j2 j2Var) {
        z zVar = new z(this, 3);
        this.f15365m = zVar;
        w wVar = new w(null, this, 4, 1);
        this.f15355b = wVar;
        w wVar2 = new w("word_data", this, 4, 2);
        this.f15354a = wVar2;
        w wVar3 = new w("string_data", this, 1, 3);
        this.f15357d = wVar3;
        w wVar4 = new w(null, this, 1, 1);
        this.f15364k = wVar4;
        w wVar5 = new w("byte_data", this, 1, 2);
        this.l = wVar5;
        z zVar2 = new z(this, 1);
        this.f15358e = zVar2;
        z zVar3 = new z(this, 2);
        this.f15359f = zVar3;
        z zVar4 = new z(this, 0);
        this.f15360g = zVar4;
        l lVar = new l(this);
        this.f15361h = lVar;
        v vVar = new v(this);
        this.f15362i = vVar;
        d dVar = new d(this);
        this.f15363j = dVar;
        w wVar6 = new w("map", this, 4, 1);
        this.f15356c = wVar6;
        this.f15366n = new a0[]{zVar, zVar2, zVar3, zVar4, lVar, vVar, dVar, wVar2, wVar, wVar3, wVar5, wVar4, wVar6};
        this.f15367o = -1;
    }

    public final void a(x4.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("cst == null");
        }
        if (aVar instanceof x4.t) {
            this.f15358e.o((x4.t) aVar);
            return;
        }
        if (aVar instanceof x4.u) {
            this.f15359f.p((x4.u) aVar);
        } else if (aVar instanceof x4.q) {
            this.f15362i.m((x4.q) aVar);
        } else if (aVar instanceof x4.h) {
            this.f15361h.m((x4.h) aVar);
        }
    }

    public final byte[] b() throws NoSuchAlgorithmException, DigestException {
        this.f15363j.d();
        this.f15364k.d();
        this.f15354a.d();
        this.l.d();
        this.f15362i.d();
        this.f15361h.d();
        this.f15360g.d();
        this.f15355b.d();
        this.f15359f.d();
        this.f15358e.d();
        this.f15357d.d();
        this.f15365m.d();
        a0[] a0VarArr = this.f15366n;
        int length = a0VarArr.length;
        int iH = 0;
        for (int i10 = 0; i10 < length; i10++) {
            a0 a0Var = a0VarArr[i10];
            if ((a0Var != null && a0Var != null) || !a0Var.c().isEmpty()) {
                if (iH < 0) {
                    a0Var.getClass();
                    throw new IllegalArgumentException("fileOffset < 0");
                }
                if (a0Var.f15326d >= 0) {
                    throw new RuntimeException("fileOffset already set");
                }
                int i11 = a0Var.f15325c - 1;
                int i12 = (i11 ^ (-1)) & (iH + i11);
                a0Var.f15326d = i12;
                if (i12 < iH) {
                    throw new RuntimeException(da.b.a(i10, "bogus placement for section "));
                }
                w wVar = this.f15356c;
                if (a0Var == wVar) {
                    try {
                        r.l(a0VarArr, wVar);
                        wVar.d();
                    } catch (RuntimeException e7) {
                        throw p4.a.a(e7, "...while writing section " + i10);
                    }
                }
                if (a0Var instanceof w) {
                    ((w) a0Var).m();
                }
                iH = a0Var.h() + i12;
            }
        }
        this.f15367o = iH;
        byte[] bArr = new byte[iH];
        b5.b bVar = new b5.b(bArr, false);
        for (int i13 = 0; i13 < length; i13++) {
            try {
                a0 a0Var2 = a0VarArr[i13];
                if ((a0Var2 != null && a0Var2 != null) || !a0Var2.c().isEmpty()) {
                    int iB = a0Var2.b() - bVar.f2555c;
                    if (iB < 0) {
                        throw new p4.a("excess write of " + (-iB), null);
                    }
                    bVar.n(iB);
                    a0Var2.i(bVar);
                }
            } catch (RuntimeException e10) {
                p4.a aVar = e10 instanceof p4.a ? (p4.a) e10 : new p4.a(null, e10);
                String strA = da.b.a(i13, "...while writing section ");
                if (strA == null) {
                    throw new NullPointerException("str == null");
                }
                StringBuffer stringBuffer = aVar.f12574a;
                stringBuffer.append(strA);
                if (!strA.endsWith(SignParameters.NEW_LINE)) {
                    stringBuffer.append('\n');
                }
                throw aVar;
            }
        }
        int i14 = bVar.f2555c;
        if (i14 != this.f15367o) {
            throw new RuntimeException("foreshortened write");
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1);
            messageDigest.update(bArr, 32, i14 - 32);
            try {
                int iDigest = messageDigest.digest(bArr, 12, 20);
                if (iDigest != 20) {
                    throw new RuntimeException("unexpected digest write: " + iDigest + " bytes");
                }
                int i15 = bVar.f2555c;
                Adler32 adler32 = new Adler32();
                adler32.update(bArr, 12, i15 - 12);
                int value = (int) adler32.getValue();
                bArr[8] = (byte) value;
                bArr[9] = (byte) (value >> 8);
                bArr[10] = (byte) (value >> 16);
                bArr[11] = (byte) (value >> 24);
                return bVar.f2554b;
            } catch (DigestException e11) {
                throw new RuntimeException(e11);
            }
        } catch (NoSuchAlgorithmException e12) {
            throw new RuntimeException(e12);
        }
    }
}
