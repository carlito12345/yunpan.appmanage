package tf;

import androidx.room.s;
import java.security.InvalidKeyException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: a, reason: collision with root package name */
    public final vf.a f15081a;

    /* renamed from: b, reason: collision with root package name */
    public final s f15082b;

    /* renamed from: c, reason: collision with root package name */
    public int f15083c = 1;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f15084d = new byte[16];

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f15085e = new byte[16];

    public a(ag.a aVar, char[] cArr, byte[] bArr, byte[] bArr2, boolean z) throws IllegalStateException, wf.a, InvalidKeyException {
        if (cArr == null || cArr.length <= 0) {
            throw new wf.a("empty or null password provided for AES decryption", 0);
        }
        int i10 = aVar.f647f;
        byte[] bArrP = d.b.p(cArr, i10, bArr, z);
        byte[] bArr3 = new byte[2];
        System.arraycopy(bArrP, android.support.v4.media.session.a.f(i10) + android.support.v4.media.session.a.e(i10), bArr3, 0, 2);
        if (!Arrays.equals(bArr2, bArr3)) {
            throw new wf.a("Wrong Password", 0);
        }
        int iE = android.support.v4.media.session.a.e(i10);
        byte[] bArr4 = new byte[iE];
        System.arraycopy(bArrP, 0, bArr4, 0, iE);
        this.f15081a = new vf.a(bArr4);
        int iF = android.support.v4.media.session.a.f(i10);
        byte[] bArr5 = new byte[iF];
        System.arraycopy(bArrP, android.support.v4.media.session.a.e(i10), bArr5, 0, iF);
        s sVar = new s(20, (char) 0);
        sVar.o(bArr5);
        this.f15082b = sVar;
    }

    @Override // tf.c
    public final int m(int i10, int i11, byte[] bArr) throws wf.a {
        int i12 = i10;
        while (true) {
            int i13 = i10 + i11;
            if (i12 >= i13) {
                return i11;
            }
            int i14 = i12 + 16;
            int i15 = i14 <= i13 ? 16 : i13 - i12;
            this.f15082b.F(bArr, i12, i15);
            int i16 = this.f15083c;
            byte[] bArr2 = this.f15084d;
            d.b.d0(i16, bArr2);
            vf.a aVar = this.f15081a;
            byte[] bArr3 = this.f15085e;
            aVar.a(bArr2, bArr3);
            for (int i17 = 0; i17 < i15; i17++) {
                int i18 = i12 + i17;
                bArr[i18] = (byte) (bArr[i18] ^ bArr3[i17]);
            }
            this.f15083c++;
            i12 = i14;
        }
    }
}
