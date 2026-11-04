package s3;

import com.desay_svautomotive.libsvcarinfo.CarLanID;
import u1.f0;

/* loaded from: classes.dex */
public final class z implements e0 {

    /* renamed from: a, reason: collision with root package name */
    public final y f14286a;

    /* renamed from: b, reason: collision with root package name */
    public final u1.q f14287b = new u1.q(32);

    /* renamed from: c, reason: collision with root package name */
    public int f14288c;

    /* renamed from: d, reason: collision with root package name */
    public int f14289d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f14290e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f14291f;

    public z(y yVar) {
        this.f14286a = yVar;
    }

    @Override // s3.e0
    public final void a(int i10, u1.q qVar) {
        boolean z = (i10 & 1) != 0;
        int iB = z ? qVar.f15267b + qVar.B() : -1;
        if (this.f14291f) {
            if (!z) {
                return;
            }
            this.f14291f = false;
            qVar.O(iB);
            this.f14289d = 0;
        }
        while (qVar.a() > 0) {
            int i11 = this.f14289d;
            u1.q qVar2 = this.f14287b;
            if (i11 < 3) {
                if (i11 == 0) {
                    int iB2 = qVar.B();
                    qVar.O(qVar.f15267b - 1);
                    if (iB2 == 255) {
                        this.f14291f = true;
                        return;
                    }
                }
                int iMin = Math.min(qVar.a(), 3 - this.f14289d);
                qVar.l(this.f14289d, iMin, qVar2.f15266a);
                int i12 = this.f14289d + iMin;
                this.f14289d = i12;
                if (i12 == 3) {
                    qVar2.O(0);
                    qVar2.N(3);
                    qVar2.P(1);
                    int iB3 = qVar2.B();
                    int iB4 = qVar2.B();
                    this.f14290e = (iB3 & 128) != 0;
                    int i13 = (((iB3 & 15) << 8) | iB4) + 3;
                    this.f14288c = i13;
                    byte[] bArr = qVar2.f15266a;
                    if (bArr.length < i13) {
                        qVar2.c(Math.min(CarLanID.Send.RADIO, Math.max(i13, bArr.length * 2)));
                    }
                }
            } else {
                int iMin2 = Math.min(qVar.a(), this.f14288c - this.f14289d);
                qVar.l(this.f14289d, iMin2, qVar2.f15266a);
                int i14 = this.f14289d + iMin2;
                this.f14289d = i14;
                int i15 = this.f14288c;
                if (i14 != i15) {
                    continue;
                } else {
                    if (!this.f14290e) {
                        qVar2.N(i15);
                    } else {
                        if (f0.j(0, i15, -1, qVar2.f15266a) != 0) {
                            this.f14291f = true;
                            return;
                        }
                        qVar2.N(this.f14288c - 4);
                    }
                    qVar2.O(0);
                    this.f14286a.a(qVar2);
                    this.f14289d = 0;
                }
            }
        }
    }

    @Override // s3.e0
    public final void b() {
        this.f14291f = true;
    }

    @Override // s3.e0
    public final void c(u1.d0 d0Var, l2.q qVar, d0 d0Var2) {
        this.f14286a.c(d0Var, qVar, d0Var2);
        this.f14291f = true;
    }
}
