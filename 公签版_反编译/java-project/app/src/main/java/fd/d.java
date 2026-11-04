package fd;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class d extends ed.c implements ad.e {
    public static final Logger H = LoggerFactory.getLogger((Class<?>) d.class);
    public final int G;

    public d(vc.f fVar, int i10) {
        super(fVar, (byte) 4, null);
        this.G = i10;
    }

    @Override // ad.e
    public final ad.d M(vc.b bVar) {
        c cVar = new c(bVar.e());
        s(cVar);
        return cVar;
    }

    @Override // ed.c, ad.c, ad.b
    public final ad.d b() {
        return (c) this.f4945w;
    }

    @Override // ed.c
    /* renamed from: g0 */
    public final ed.c b() {
        return (c) this.f4945w;
    }

    @Override // ed.c
    public final int i0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int k0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int o0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        rd.a.e(this.G, bArr, i10);
        int i11 = i10 + 2;
        if (this.f4944v == null) {
            H.trace("SmbComClose without a digest");
            return 6;
        }
        Logger logger = ed.b.f4922e;
        rd.a.f(-1L, bArr, i11);
        return 6;
    }

    @Override // ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComClose[");
        sb2.append(super.toString());
        sb2.append(",fid=");
        return new String(android.support.v4.media.session.a.s(sb2, this.G, ",lastWriteTime=0]"));
    }

    @Override // ed.c, ad.c, ad.b
    public final he.d b() {
        return (c) this.f4945w;
    }
}
