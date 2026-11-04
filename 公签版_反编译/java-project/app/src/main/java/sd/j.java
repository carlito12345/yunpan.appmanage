package sd;

/* loaded from: classes.dex */
public final class j extends g {
    public final h A;
    public int B;
    public final byte[] C;
    public h[] D;

    public j(vc.f fVar, h hVar) {
        super(fVar);
        this.A = hVar;
        this.r = new b(fVar);
        this.C = new byte[6];
    }

    @Override // sd.g
    public final int a(int i10, byte[] bArr) {
        return e(i10, bArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007a  */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v3 */
    @Override // sd.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int d(int i10, byte[] bArr) {
        int i11 = bArr[i10] & 255;
        int i12 = i11 * 18;
        ?? r5 = 1;
        int i13 = (this.f14542x - i12) - 1;
        int i14 = i10 + 1;
        this.B = i11;
        System.arraycopy(bArr, i12 + i14, this.C, 0, 6);
        this.D = new h[this.B];
        h hVar = this.A;
        String str = hVar.f14544a.f14487b;
        int i15 = i14;
        int i16 = 0;
        boolean z = false;
        while (i16 < this.B) {
            int i17 = i15 + 14;
            while (bArr[i17] == 32) {
                i17--;
            }
            vc.f fVar = this.z;
            String strC = ge.b.c(bArr, i15, (i17 - i15) + r5, fVar);
            int i18 = bArr[i15 + 15] & 255;
            byte b10 = bArr[i15 + 16];
            if (!z) {
                b bVar = hVar.f14544a;
                if (bVar.f14488c == i18 && (bVar.a() || hVar.f14544a.f14486a.equals(strC))) {
                    if (hVar.f14544a.a()) {
                        hVar.f14544a = new b(fVar, strC, i18, str);
                    }
                    hVar.f14546c = r5;
                    this.D[i16] = hVar;
                    z = true;
                } else {
                    this.D[i16] = new h(new b(fVar, strC, i18, str), hVar.f14545b, 0);
                }
            }
            i15 += 18;
            i16++;
            r5 = 1;
        }
        int i19 = (i15 - i14) + i14;
        System.arraycopy(bArr, i19, new byte[i13], 0, i13);
        return (i19 + i13) - i10;
    }

    @Override // sd.g
    public final int g(int i10, byte[] bArr) {
        return 0;
    }

    @Override // sd.g
    public final String toString() {
        return new String(g.b.l(super.toString(), "]", new StringBuilder("NodeStatusResponse[")));
    }
}
