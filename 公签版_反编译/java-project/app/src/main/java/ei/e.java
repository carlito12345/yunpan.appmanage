package ei;

/* loaded from: classes3.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final int f5014a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5015b;

    /* renamed from: c, reason: collision with root package name */
    public final a.b[] f5016c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ b f5017d;

    public e(int i10, int i11) {
        this.f5014a = i10;
        this.f5015b = (1 << i11) - 1;
    }

    public int a(int i10, int i11, int i12, int i13, androidx.leanback.widget.i iVar) {
        h hVar = (h) this.f5017d;
        int iQ0 = 0;
        int iQ02 = fi.d.q0(hVar.f5004d[iVar.f1647b][hVar.f5001a & i13], 0);
        int iB = b(i12, i13);
        boolean z = iVar.f1647b < 7;
        d[] dVarArr = (d[]) this.f5016c;
        int i14 = 256;
        if (z) {
            d dVar = dVarArr[iB];
            int i15 = i10 | 256;
            do {
                iQ0 += fi.d.q0(((short[]) dVar.f1a)[i15 >>> 8], (i15 >>> 7) & 1);
                i15 <<= 1;
            } while (i15 < 65536);
        } else {
            d dVar2 = dVarArr[iB];
            int i16 = i10 | 256;
            do {
                i11 <<= 1;
                iQ0 += fi.d.q0(((short[]) dVar2.f1a)[(i11 & i14) + i14 + (i16 >>> 8)], (i16 >>> 7) & 1);
                i16 <<= 1;
                i14 &= (i11 ^ i16) ^ (-1);
            } while (i16 < 65536);
        }
        return iQ02 + iQ0;
    }

    public final int b(int i10, int i11) {
        int i12 = this.f5014a;
        return (i10 >> (8 - i12)) + ((i11 & this.f5015b) << i12);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e(f fVar, int i10, int i11) {
        this(i10, i11);
        this.f5017d = fVar;
        this.f5016c = new d[1 << (i10 + i11)];
        int i12 = 0;
        while (true) {
            d[] dVarArr = (d[]) this.f5016c;
            if (i12 >= dVarArr.length) {
                return;
            }
            dVarArr[i12] = new d(this);
            i12++;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e(h hVar, int i10, int i11) {
        this(i10, i11);
        this.f5017d = hVar;
        this.f5016c = new d[1 << (i10 + i11)];
        int i12 = 0;
        while (true) {
            d[] dVarArr = (d[]) this.f5016c;
            if (i12 >= dVarArr.length) {
                return;
            }
            dVarArr[i12] = new d(this);
            i12++;
        }
    }
}
