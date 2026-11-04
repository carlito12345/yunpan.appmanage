package og;

import eb.h;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes.dex */
public final class d extends d.b {

    /* renamed from: d, reason: collision with root package name */
    public final long f11784d;

    /* renamed from: e, reason: collision with root package name */
    public long f11785e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ e f11786f;

    public d(e eVar, long j10) {
        this.f11786f = eVar;
        this.f11784d = j10;
    }

    @Override // d.b
    public final boolean M() {
        return this.f11785e < this.f11784d;
    }

    @Override // d.b
    public final int b() {
        long j10 = this.f11784d - this.f11785e;
        rg.a aVar = this.f11786f.f11794c;
        return (int) Math.min(j10, ((aVar.f13770a.available() * 8) + aVar.f13773d) / 8);
    }

    @Override // d.b
    public final int f0(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        if (i11 == 0) {
            return 0;
        }
        int iMin = (int) Math.min(this.f11784d - this.f11785e, i11);
        while (i12 < iMin) {
            e eVar = this.f11786f;
            int i13 = eVar.f11794c.f13773d;
            int i14 = 1;
            h hVar = eVar.f11796e;
            if (i13 > 0) {
                byte bK = (byte) e.K(r2, 8);
                int i15 = i10 + i12;
                int i16 = hVar.f4845a;
                ((byte[]) hVar.f4847c)[i16] = bK;
                int i17 = 65535 & (i16 + 1);
                if (!hVar.f4846b && i17 < i16) {
                    hVar.f4846b = true;
                }
                hVar.f4845a = i17;
                bArr[i15] = bK;
            } else {
                int i18 = i10 + i12;
                int i19 = eVar.f11795d.read(bArr, i18, iMin - i12);
                if (i19 == -1) {
                    throw new EOFException("Truncated Deflate64 Stream");
                }
                for (int i20 = i18; i20 < i18 + i19; i20++) {
                    byte b10 = bArr[i20];
                    int i21 = hVar.f4845a;
                    ((byte[]) hVar.f4847c)[i21] = b10;
                    int i22 = (i21 + 1) & 65535;
                    if (!hVar.f4846b && i22 < i21) {
                        hVar.f4846b = true;
                    }
                    hVar.f4845a = i22;
                }
                i14 = i19;
            }
            this.f11785e += i14;
            i12 += i14;
        }
        return iMin;
    }

    @Override // d.b
    public final int q0() {
        return this.f11785e < this.f11784d ? 2 : 1;
    }
}
