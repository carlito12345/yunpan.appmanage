package fg;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f5875a;

    /* renamed from: b, reason: collision with root package name */
    public int f5876b;

    /* renamed from: c, reason: collision with root package name */
    public int f5877c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f5878d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f5879e;

    /* renamed from: f, reason: collision with root package name */
    public u f5880f;

    /* renamed from: g, reason: collision with root package name */
    public u f5881g;

    public u() {
        this.f5875a = new byte[8192];
        this.f5879e = true;
        this.f5878d = false;
    }

    public final u a() {
        u uVar = this.f5880f;
        if (uVar == this) {
            uVar = null;
        }
        u uVar2 = this.f5881g;
        ue.d.b(uVar2);
        uVar2.f5880f = this.f5880f;
        u uVar3 = this.f5880f;
        ue.d.b(uVar3);
        uVar3.f5881g = this.f5881g;
        this.f5880f = null;
        this.f5881g = null;
        return uVar;
    }

    public final void b(u uVar) {
        ue.d.e(uVar, "segment");
        uVar.f5881g = this;
        uVar.f5880f = this.f5880f;
        u uVar2 = this.f5880f;
        ue.d.b(uVar2);
        uVar2.f5881g = uVar;
        this.f5880f = uVar;
    }

    public final u c() {
        this.f5878d = true;
        return new u(this.f5875a, this.f5876b, this.f5877c, true, false);
    }

    public final void d(u uVar, int i10) {
        ue.d.e(uVar, "sink");
        if (!uVar.f5879e) {
            throw new IllegalStateException("only owner can write");
        }
        int i11 = uVar.f5877c;
        int i12 = i11 + i10;
        byte[] bArr = uVar.f5875a;
        if (i12 > 8192) {
            if (uVar.f5878d) {
                throw new IllegalArgumentException();
            }
            int i13 = uVar.f5876b;
            if (i12 - i13 > 8192) {
                throw new IllegalArgumentException();
            }
            je.i.f0(0, bArr, i13, bArr, i11);
            uVar.f5877c -= uVar.f5876b;
            uVar.f5876b = 0;
        }
        int i14 = uVar.f5877c;
        int i15 = this.f5876b;
        je.i.f0(i14, this.f5875a, i15, bArr, i15 + i10);
        uVar.f5877c += i10;
        this.f5876b += i10;
    }

    public u(byte[] bArr, int i10, int i11, boolean z, boolean z4) {
        ue.d.e(bArr, "data");
        this.f5875a = bArr;
        this.f5876b = i10;
        this.f5877c = i11;
        this.f5878d = z;
        this.f5879e = z4;
    }
}
