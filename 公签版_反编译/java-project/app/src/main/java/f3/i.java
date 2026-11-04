package f3;

import l2.j0;
import u1.f0;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final j0 f5481a;

    /* renamed from: d, reason: collision with root package name */
    public v f5484d;

    /* renamed from: e, reason: collision with root package name */
    public f f5485e;

    /* renamed from: f, reason: collision with root package name */
    public int f5486f;

    /* renamed from: g, reason: collision with root package name */
    public int f5487g;

    /* renamed from: h, reason: collision with root package name */
    public int f5488h;

    /* renamed from: i, reason: collision with root package name */
    public int f5489i;

    /* renamed from: j, reason: collision with root package name */
    public final r1.p f5490j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f5492m;

    /* renamed from: b, reason: collision with root package name */
    public final u f5482b = new u();

    /* renamed from: c, reason: collision with root package name */
    public final u1.q f5483c = new u1.q();

    /* renamed from: k, reason: collision with root package name */
    public final u1.q f5491k = new u1.q(1);
    public final u1.q l = new u1.q();

    public i(j0 j0Var, v vVar, f fVar, r1.p pVar) {
        this.f5481a = j0Var;
        this.f5484d = vVar;
        this.f5485e = fVar;
        this.f5490j = pVar;
        this.f5484d = vVar;
        this.f5485e = fVar;
        j0Var.g(pVar);
        e();
    }

    public final int a() {
        int i10 = !this.f5492m ? this.f5484d.f5598g[this.f5486f] : this.f5482b.f5585j[this.f5486f] ? 1 : 0;
        return b() != null ? i10 | 1073741824 : i10;
    }

    public final t b() {
        if (!this.f5492m) {
            return null;
        }
        u uVar = this.f5482b;
        f fVar = uVar.f5576a;
        String str = f0.f15206a;
        int i10 = fVar.f5473a;
        t tVar = uVar.f5587m;
        if (tVar == null) {
            tVar = this.f5484d.f5592a.l[i10];
        }
        if (tVar == null || !tVar.f5571a) {
            return null;
        }
        return tVar;
    }

    public final boolean c() {
        this.f5486f++;
        if (!this.f5492m) {
            return false;
        }
        int i10 = this.f5487g + 1;
        this.f5487g = i10;
        int[] iArr = this.f5482b.f5582g;
        int i11 = this.f5488h;
        if (i10 != iArr[i11]) {
            return true;
        }
        this.f5488h = i11 + 1;
        this.f5487g = 0;
        return false;
    }

    public final int d(int i10, int i11) {
        u1.q qVar;
        t tVarB = b();
        if (tVarB == null) {
            return 0;
        }
        u uVar = this.f5482b;
        int length = tVarB.f5574d;
        if (length != 0) {
            qVar = uVar.f5588n;
        } else {
            String str = f0.f15206a;
            byte[] bArr = tVarB.f5575e;
            int length2 = bArr.length;
            u1.q qVar2 = this.l;
            qVar2.M(length2, bArr);
            length = bArr.length;
            qVar = qVar2;
        }
        boolean z = uVar.f5586k && uVar.l[this.f5486f];
        boolean z4 = z || i11 != 0;
        u1.q qVar3 = this.f5491k;
        qVar3.f15266a[0] = (byte) ((z4 ? 128 : 0) | length);
        qVar3.O(0);
        j0 j0Var = this.f5481a;
        j0Var.c(qVar3, 1, 1);
        j0Var.c(qVar, length, 1);
        if (!z4) {
            return length + 1;
        }
        u1.q qVar4 = this.f5483c;
        if (!z) {
            qVar4.L(8);
            byte[] bArr2 = qVar4.f15266a;
            bArr2[0] = 0;
            bArr2[1] = 1;
            bArr2[2] = (byte) 0;
            bArr2[3] = (byte) (i11 & 255);
            bArr2[4] = (byte) ((i10 >> 24) & 255);
            bArr2[5] = (byte) ((i10 >> 16) & 255);
            bArr2[6] = (byte) ((i10 >> 8) & 255);
            bArr2[7] = (byte) (i10 & 255);
            j0Var.c(qVar4, 8, 1);
            return length + 9;
        }
        u1.q qVar5 = uVar.f5588n;
        int I = qVar5.I();
        qVar5.P(-2);
        int i12 = (I * 6) + 2;
        if (i11 != 0) {
            qVar4.L(i12);
            byte[] bArr3 = qVar4.f15266a;
            qVar5.l(0, i12, bArr3);
            int i13 = (((bArr3[2] & 255) << 8) | (bArr3[3] & 255)) + i11;
            bArr3[2] = (byte) ((i13 >> 8) & 255);
            bArr3[3] = (byte) (i13 & 255);
        } else {
            qVar4 = qVar5;
        }
        j0Var.c(qVar4, i12, 1);
        return length + 1 + i12;
    }

    public final void e() {
        u uVar = this.f5482b;
        uVar.f5579d = 0;
        uVar.f5590p = 0L;
        uVar.f5591q = false;
        uVar.f5586k = false;
        uVar.f5589o = false;
        uVar.f5587m = null;
        this.f5486f = 0;
        this.f5488h = 0;
        this.f5487g = 0;
        this.f5489i = 0;
        this.f5492m = false;
    }
}
