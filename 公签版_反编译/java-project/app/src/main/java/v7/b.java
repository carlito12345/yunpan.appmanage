package v7;

import a9.o;

/* loaded from: classes.dex */
public final class b extends e {

    /* renamed from: e, reason: collision with root package name */
    public final char[] f16645e;

    public b(a aVar) {
        super(aVar, (Character) null);
        this.f16645e = new char[512];
        char[] cArr = aVar.f16637b;
        o.k(cArr.length == 16);
        for (int i10 = 0; i10 < 256; i10++) {
            char[] cArr2 = this.f16645e;
            cArr2[i10] = cArr[i10 >>> 4];
            cArr2[i10 | 256] = cArr[i10 & 15];
        }
    }

    @Override // v7.e
    public final int b(byte[] bArr, CharSequence charSequence) throws d {
        if (charSequence.length() % 2 == 1) {
            throw new d("Invalid input length " + charSequence.length());
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequence.length()) {
            char cCharAt = charSequence.charAt(i10);
            a aVar = this.f16647a;
            bArr[i11] = (byte) ((aVar.a(cCharAt) << 4) | aVar.a(charSequence.charAt(i10 + 1)));
            i10 += 2;
            i11++;
        }
        return i11;
    }

    @Override // v7.e
    public final void e(StringBuilder sb2, byte[] bArr, int i10) {
        o.q(0, i10, bArr.length);
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = bArr[i11] & 255;
            char[] cArr = this.f16645e;
            sb2.append(cArr[i12]);
            sb2.append(cArr[i12 | 256]);
        }
    }

    @Override // v7.e
    public final e g(a aVar, Character ch2) {
        return new b(aVar);
    }
}
