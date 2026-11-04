package tf;

import androidx.room.s;
import java.security.InvalidKeyException;
import java.security.SecureRandom;

/* loaded from: classes.dex */
public final class b implements d {

    /* renamed from: a, reason: collision with root package name */
    public final vf.a f15086a;

    /* renamed from: b, reason: collision with root package name */
    public final s f15087b;

    /* renamed from: d, reason: collision with root package name */
    public boolean f15089d;

    /* renamed from: g, reason: collision with root package name */
    public final byte[] f15092g;

    /* renamed from: h, reason: collision with root package name */
    public final byte[] f15093h;

    /* renamed from: i, reason: collision with root package name */
    public final byte[] f15094i;

    /* renamed from: j, reason: collision with root package name */
    public final byte[] f15095j;

    /* renamed from: c, reason: collision with root package name */
    public final SecureRandom f15088c = new SecureRandom();

    /* renamed from: e, reason: collision with root package name */
    public int f15090e = 1;

    /* renamed from: f, reason: collision with root package name */
    public int f15091f = 0;

    public b(char[] cArr, int i10, boolean z) throws IllegalStateException, wf.a, InvalidKeyException {
        if (cArr == null || cArr.length == 0) {
            throw new wf.a("input password is empty or null");
        }
        if (i10 != 1 && i10 != 3) {
            throw new wf.a("Invalid AES key strength");
        }
        this.f15089d = false;
        this.f15093h = new byte[16];
        this.f15092g = new byte[16];
        int iH = android.support.v4.media.session.a.h(i10);
        if (iH != 8 && iH != 16) {
            throw new wf.a("invalid salt size, cannot generate salt");
        }
        int i11 = iH == 8 ? 2 : 4;
        byte[] bArr = new byte[iH];
        for (int i12 = 0; i12 < i11; i12++) {
            int iNextInt = this.f15088c.nextInt();
            int i13 = i12 * 4;
            bArr[i13] = (byte) (iNextInt >> 24);
            bArr[i13 + 1] = (byte) (iNextInt >> 16);
            bArr[i13 + 2] = (byte) (iNextInt >> 8);
            bArr[i13 + 3] = (byte) iNextInt;
        }
        this.f15095j = bArr;
        byte[] bArrP = d.b.p(cArr, i10, bArr, z);
        byte[] bArr2 = new byte[2];
        System.arraycopy(bArrP, android.support.v4.media.session.a.f(i10) + android.support.v4.media.session.a.e(i10), bArr2, 0, 2);
        this.f15094i = bArr2;
        int iE = android.support.v4.media.session.a.e(i10);
        byte[] bArr3 = new byte[iE];
        System.arraycopy(bArrP, 0, bArr3, 0, iE);
        this.f15086a = new vf.a(bArr3);
        int iF = android.support.v4.media.session.a.f(i10);
        byte[] bArr4 = new byte[iF];
        System.arraycopy(bArrP, android.support.v4.media.session.a.e(i10), bArr4, 0, iF);
        s sVar = new s(20, (char) 0);
        sVar.o(bArr4);
        this.f15087b = sVar;
    }

    @Override // tf.d
    public final int d(int i10, int i11, byte[] bArr) throws wf.a {
        int i12;
        if (this.f15089d) {
            throw new wf.a("AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)");
        }
        if (i11 % 16 != 0) {
            this.f15089d = true;
        }
        int i13 = i10;
        while (true) {
            int i14 = i10 + i11;
            if (i13 >= i14) {
                return i11;
            }
            int i15 = i13 + 16;
            this.f15091f = i15 <= i14 ? 16 : i14 - i13;
            int i16 = this.f15090e;
            byte[] bArr2 = this.f15092g;
            d.b.d0(i16, bArr2);
            vf.a aVar = this.f15086a;
            byte[] bArr3 = this.f15093h;
            aVar.a(bArr2, bArr3);
            int i17 = 0;
            while (true) {
                i12 = this.f15091f;
                if (i17 < i12) {
                    int i18 = i13 + i17;
                    bArr[i18] = (byte) (bArr[i18] ^ bArr3[i17]);
                    i17++;
                }
            }
            this.f15087b.F(bArr, i13, i12);
            this.f15090e++;
            i13 = i15;
        }
    }
}
