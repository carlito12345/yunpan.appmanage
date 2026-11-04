package kd;

import ad.g;
import vc.f;

/* loaded from: classes.dex */
public final class d extends id.d {
    public final /* synthetic */ int D;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d(f fVar, int i10) {
        super(fVar);
        this.D = i10;
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) throws g {
        switch (this.D) {
            case 0:
                if (rd.a.a(i10, bArr) == 2) {
                    return 2;
                }
                throw new g("Expected structureSize = 2");
            case 1:
                if (rd.a.a(i10, bArr) == 4) {
                    return 4;
                }
                throw new g("Structure size is not 4");
            default:
                if (rd.a.a(i10, bArr) == 4) {
                    return 4;
                }
                throw new g("Structure size != 4");
        }
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        switch (this.D) {
        }
        return 0;
    }
}
