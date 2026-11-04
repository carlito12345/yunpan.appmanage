package h;

import java.io.IOException;

/* loaded from: classes.dex */
public final class l implements e {

    /* renamed from: a, reason: collision with root package name */
    public int f6244a = 0;

    public l() {
    }

    @Override // h.e
    public final void a(g.f fVar) throws IOException {
        int i10;
        if (this.f6244a == 0) {
            return;
        }
        g.f fVar2 = new g.f();
        int i11 = this.f6244a;
        fVar2.write(2);
        byte[] bArr = {b, (byte) ((16711680 & i11) >>> 16), (byte) ((65280 & i11) >>> 8), (byte) (i11 & 255)};
        byte b10 = (byte) ((i11 & (-16777216)) >>> 24);
        if (b10 == -1) {
            int i12 = 0;
            i10 = 0;
            while (i12 < 3 && bArr[i12] == -1) {
                i12++;
                if ((bArr[i12] & 128) != 128) {
                    break;
                } else {
                    i10++;
                }
            }
        } else if (b10 == 0) {
            int i13 = 0;
            i10 = 0;
            while (i13 < 3 && bArr[i13] == 0) {
                i13++;
                if ((bArr[i13] & 128) != 0) {
                    break;
                } else {
                    i10++;
                }
            }
        } else {
            i10 = 0;
        }
        fVar2.r(4 - i10);
        while (i10 < 4) {
            fVar2.write(bArr[i10]);
            i10++;
        }
        g.f fVar3 = new g.f();
        fVar3.J(g.g.a(true, (byte) 0), fVar2);
        fVar.write(fVar3.toByteArray());
    }

    @Override // h.e
    public final String getName() {
        return "version";
    }

    public final String toString() {
        return "Version: V" + (this.f6244a + 1);
    }

    public l(int i10) {
    }
}
