package ae;

import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public final class i extends e {
    public int A;
    public final byte[] B;
    public g[] C;
    public final g z;

    public i(g gVar) {
        this.z = gVar;
        this.r = new b();
        this.B = new byte[6];
    }

    @Override // ae.e
    public final int a(int i10, byte[] bArr) {
        return e(i10, bArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0073 A[Catch: UnsupportedEncodingException -> 0x0088, TRY_LEAVE, TryCatch #0 {UnsupportedEncodingException -> 0x0088, blocks: (B:3:0x002a, B:5:0x002e, B:6:0x0030, B:8:0x0036, B:9:0x0039, B:11:0x004e, B:13:0x0054, B:15:0x0058, B:17:0x0060, B:19:0x0064, B:20:0x006b, B:21:0x0073), top: B:26:0x002a }] */
    @Override // ae.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int d(int i10, byte[] bArr) {
        b bVar;
        int i11 = bArr[i10] & 255;
        int i12 = i11 * 18;
        int i13 = (this.f622x - i12) - 1;
        int i14 = i10 + 1;
        this.A = i11;
        System.arraycopy(bArr, i12 + i14, this.B, 0, 6);
        this.C = new g[this.A];
        g gVar = this.z;
        String str = gVar.f634a.f578b;
        int i15 = i14;
        boolean z = false;
        for (int i16 = 0; i16 < this.A; i16++) {
            try {
                int i17 = i15 + 14;
                while (bArr[i17] == 32) {
                    i17--;
                }
                String str2 = new String(bArr, i15, (i17 - i15) + 1, b.f576f);
                int i18 = bArr[i15 + 15] & 255;
                byte b10 = bArr[i15 + 16];
                if (!z) {
                    b bVar2 = gVar.f634a;
                    if (bVar2.f579c == i18 && (bVar2 == (bVar = g.f632k) || bVar2.f577a.equals(str2))) {
                        if (gVar.f634a == bVar) {
                            gVar.f634a = new b(str2, i18, str);
                        }
                        gVar.f636c = true;
                        this.C[i16] = gVar;
                        z = true;
                    } else {
                        this.C[i16] = new g(new b(str2, i18, str), gVar.f635b, 0);
                    }
                }
                i15 += 18;
            } catch (UnsupportedEncodingException unused) {
            }
        }
        int i19 = (i15 - i14) + i14;
        System.arraycopy(bArr, i19, new byte[i13], 0, i13);
        return (i19 + i13) - i10;
    }

    @Override // ae.e
    public final int g(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ae.e
    public final String toString() {
        return new String(g.b.l(super.toString(), "]", new StringBuilder("NodeStatusResponse[")));
    }
}
