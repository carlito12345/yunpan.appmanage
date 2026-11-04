package ei;

/* loaded from: classes3.dex */
public final class d extends a.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f5013b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d(e eVar) {
        super(1);
        this.f5013b = eVar;
    }

    public void t() {
        e eVar = this.f5013b;
        h hVar = (h) eVar.f5017d;
        int i10 = 256;
        int iB = hVar.f5027n.b(hVar.z) | 256;
        h hVar2 = (h) eVar.f5017d;
        boolean z = hVar2.f5003c.f1647b < 7;
        short[] sArr = (short[]) this.f1a;
        if (z) {
            do {
                hVar2.f5026m.o0(sArr, iB >>> 8, (iB >>> 7) & 1);
                iB <<= 1;
            } while (iB < 65536);
        } else {
            int iB2 = hVar2.f5027n.b(hVar2.f5002b[0] + 1 + hVar2.z);
            do {
                iB2 <<= 1;
                hVar2.f5026m.o0(sArr, (iB2 & i10) + i10 + (iB >>> 8), (iB >>> 7) & 1);
                iB <<= 1;
                i10 &= (iB2 ^ iB) ^ (-1);
            } while (iB < 65536);
        }
        hVar2.f5003c.k();
    }
}
