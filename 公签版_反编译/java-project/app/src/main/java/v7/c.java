package v7;

import a9.o;

/* loaded from: classes.dex */
public final class c extends e {
    public c(String str, String str2) {
        this(new a(str, str2.toCharArray()), (Character) '=');
    }

    @Override // v7.e
    public final int b(byte[] bArr, CharSequence charSequence) throws d {
        CharSequence charSequenceH = h(charSequence);
        int length = charSequenceH.length();
        a aVar = this.f16647a;
        if (!aVar.f16643h[length % aVar.f16640e]) {
            throw new d("Invalid input length " + charSequenceH.length());
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < charSequenceH.length()) {
            int i12 = i10 + 2;
            int iA = (aVar.a(charSequenceH.charAt(i10 + 1)) << 12) | (aVar.a(charSequenceH.charAt(i10)) << 18);
            int i13 = i11 + 1;
            bArr[i11] = (byte) (iA >>> 16);
            if (i12 < charSequenceH.length()) {
                int i14 = i10 + 3;
                int iA2 = iA | (aVar.a(charSequenceH.charAt(i12)) << 6);
                int i15 = i11 + 2;
                bArr[i13] = (byte) ((iA2 >>> 8) & 255);
                if (i14 < charSequenceH.length()) {
                    i10 += 4;
                    i11 += 3;
                    bArr[i15] = (byte) ((iA2 | aVar.a(charSequenceH.charAt(i14))) & 255);
                } else {
                    i11 = i15;
                    i10 = i14;
                }
            } else {
                i11 = i13;
                i10 = i12;
            }
        }
        return i11;
    }

    @Override // v7.e
    public final void e(StringBuilder sb2, byte[] bArr, int i10) {
        int i11 = 0;
        o.q(0, i10, bArr.length);
        for (int i12 = i10; i12 >= 3; i12 -= 3) {
            int i13 = i11 + 2;
            int i14 = ((bArr[i11 + 1] & 255) << 8) | ((bArr[i11] & 255) << 16);
            i11 += 3;
            int i15 = i14 | (bArr[i13] & 255);
            a aVar = this.f16647a;
            sb2.append(aVar.f16637b[i15 >>> 18]);
            char[] cArr = aVar.f16637b;
            sb2.append(cArr[(i15 >>> 12) & 63]);
            sb2.append(cArr[(i15 >>> 6) & 63]);
            sb2.append(cArr[i15 & 63]);
        }
        if (i11 < i10) {
            d(sb2, bArr, i11, i10 - i11);
        }
    }

    @Override // v7.e
    public final e g(a aVar, Character ch2) {
        return new c(aVar, ch2);
    }

    public c(a aVar, Character ch2) {
        super(aVar, ch2);
        o.k(aVar.f16637b.length == 64);
    }
}
