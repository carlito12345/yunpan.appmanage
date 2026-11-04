package mb;

import android.text.GetChars;
import j$.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public final class h implements CharSequence, GetChars, Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f11074a;

    /* renamed from: b, reason: collision with root package name */
    public byte f11075b;

    /* renamed from: c, reason: collision with root package name */
    public int f11076c;

    /* renamed from: d, reason: collision with root package name */
    public int f11077d;

    /* renamed from: e, reason: collision with root package name */
    public m f11078e;

    public h(h hVar) {
        int i10 = hVar.f11076c;
        this.f11076c = i10;
        byte b10 = hVar.f11075b;
        this.f11075b = b10;
        int i11 = hVar.f11076c + 16;
        byte[] bArr = new byte[b10 != 0 ? i11 << 1 : i11];
        this.f11074a = bArr;
        this.f11077d = hVar.f11077d;
        this.f11078e = hVar.f11078e;
        if (b10 == 0) {
            System.arraycopy(hVar.f11074a, 0, bArr, 0, i10);
        } else {
            System.arraycopy(hVar.f11074a, 0, bArr, 0, i10 << 1);
        }
    }

    public final void a(StringBuilder sb2) {
        int i10 = 0;
        if (this.f11075b == 0) {
            byte[] bArr = this.f11074a;
            int i11 = this.f11076c;
            while (i10 < i11) {
                sb2.append((char) (bArr[i10] & 255));
                i10++;
            }
            return;
        }
        byte[] bArr2 = this.f11074a;
        int i12 = this.f11076c;
        while (i10 < i12) {
            sb2.append(q4.a.k(i10, bArr2));
            i10++;
        }
    }

    public final void b(int i10) {
        if (i10 < 0 || i10 > this.f11076c) {
            StringBuilder sbN = g.b.n("index = ", i10, ", length = ");
            sbN.append(this.f11076c);
            throw new StringIndexOutOfBoundsException(sbN.toString());
        }
    }

    public final void c(int i10, int i11) {
        if (i10 < 0) {
            throw new StringIndexOutOfBoundsException(i10);
        }
        int i12 = this.f11076c;
        if (i11 > i12) {
            i11 = i12;
        }
        if (i10 > i11) {
            throw new StringIndexOutOfBoundsException();
        }
        int i13 = i11 - i10;
        if (i13 > 0) {
            for (int i14 = i10; i14 < i11; i14++) {
                if (s1.g.m(this.f11075b == 0 ? (char) (this.f11074a[i14] & 255) : q4.a.k(i14, this.f11074a))) {
                    this.f11077d--;
                }
            }
            byte[] bArr = this.f11074a;
            int i15 = i10 + i13;
            int i16 = this.f11076c - i11;
            if (this.f11075b == 0) {
                System.arraycopy(bArr, i15, bArr, i10, i16);
            } else {
                System.arraycopy(bArr, i15 << 1, bArr, i10 << 1, i16 << 1);
            }
            this.f11076c -= i13;
        }
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i10) {
        if (i10 < this.f11076c) {
            return this.f11075b == 0 ? (char) (this.f11074a[i10] & 255) : q4.a.k(i10, this.f11074a);
        }
        if (d().f11098b > 0) {
            return d().f11097a.charAt(i10 - this.f11076c);
        }
        return '\n';
    }

    public final m d() {
        m mVar = this.f11078e;
        return mVar == null ? m.NONE : mVar;
    }

    public final void e(int i10, int i11, int i12, CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "null";
        }
        if (i10 < 0 || i10 > this.f11076c) {
            throw new IndexOutOfBoundsException(da.b.a(i10, "dstOffset "));
        }
        if (i11 < 0 || i12 < 0 || i11 > i12 || i12 > charSequence.length()) {
            StringBuilder sbO = ta.q.o(i11, i12, "start ", ", end ", ", s.length() ");
            sbO.append(charSequence.length());
            throw new IndexOutOfBoundsException(sbO.toString());
        }
        int i13 = i12 - i11;
        if (this.f11075b == 0) {
            int i14 = i11;
            while (true) {
                if (i14 >= i12) {
                    break;
                }
                if (charSequence.charAt(i14) <= 255) {
                    i14++;
                } else {
                    int i15 = this.f11076c;
                    int i16 = i15 + i13;
                    byte b10 = this.f11075b;
                    if (b10 == 0) {
                        int length = (b10 == 0 ? this.f11074a.length : this.f11074a.length >> 1) * 2;
                        if (length < i16) {
                            length = i16 + 2;
                        }
                        byte[] bArr = this.f11074a;
                        byte[] bArr2 = new byte[length << 1];
                        for (int i17 = 0; i17 < i15; i17++) {
                            char c7 = (char) (bArr[i17] & 255);
                            int i18 = i17 << 1;
                            bArr2[i18] = (byte) (c7 >>> '\b');
                            bArr2[i18 + 1] = (byte) c7;
                        }
                        this.f11074a = bArr2;
                        this.f11075b = (byte) 1;
                    }
                }
            }
        }
        int i19 = this.f11076c;
        int i20 = i19 + i13;
        byte b11 = this.f11075b;
        byte[] bArr3 = this.f11074a;
        if ((b11 == 0 ? bArr3.length : bArr3.length >> 1) < i20) {
            byte[] bArr4 = this.f11074a;
            int length2 = (b11 == 0 ? bArr4.length : bArr4.length >> 1) * 2;
            if (length2 < i20) {
                length2 = i20 + 2;
            }
            byte[] bArr5 = b11 == 0 ? new byte[length2] : new byte[length2 << 1];
            if (b11 == 0) {
                System.arraycopy(this.f11074a, 0, bArr5, 0, i19);
            } else {
                System.arraycopy(this.f11074a, 0, bArr5, 0, i19 << 1);
            }
            this.f11074a = bArr5;
        }
        byte[] bArr6 = this.f11074a;
        int i21 = i10 + i13;
        int i22 = this.f11076c - i10;
        if (this.f11075b == 0) {
            System.arraycopy(bArr6, i10, bArr6, i21, i22);
        } else {
            System.arraycopy(bArr6, i10 << 1, bArr6, i21 << 1, i22 << 1);
        }
        while (i11 < i12) {
            char cCharAt = charSequence.charAt(i11);
            int i23 = i10 + 1;
            if (this.f11075b == 0) {
                this.f11074a[i10] = (byte) cCharAt;
            } else {
                byte[] bArr7 = this.f11074a;
                int i24 = i10 << 1;
                bArr7[i24] = (byte) (cCharAt >>> '\b');
                bArr7[i24 + 1] = (byte) cCharAt;
            }
            if (s1.g.m(cCharAt)) {
                this.f11077d++;
            }
            i11++;
            i10 = i23;
        }
        this.f11076c += i13;
    }

    @Override // java.lang.CharSequence
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final h subSequence(int i10, int i11) {
        b(i10);
        b(i11);
        if (i11 < i10) {
            throw new StringIndexOutOfBoundsException("start is greater than end");
        }
        h hVar = new h(false);
        byte b10 = this.f11075b;
        hVar.f11075b = b10;
        if (b10 == 0) {
            int i12 = i11 - i10;
            byte[] bArr = new byte[i12 + 16];
            hVar.f11074a = bArr;
            System.arraycopy(this.f11074a, i10, bArr, 0, i12);
        } else {
            int i13 = i11 - i10;
            byte[] bArr2 = new byte[(i13 + 16) << 1];
            hVar.f11074a = bArr2;
            System.arraycopy(this.f11074a, i10 << 1, bArr2, 0, i13 << 1);
        }
        hVar.f11076c = i11 - i10;
        if (this.f11077d > 0) {
            for (int i14 = 0; i14 < hVar.f11076c; i14++) {
                if (s1.g.m(hVar.charAt(i14))) {
                    hVar.f11077d++;
                }
            }
        }
        return hVar;
    }

    @Override // android.text.GetChars
    public final void getChars(int i10, int i11, char[] cArr, int i12) {
        if (i10 < 0) {
            throw new StringIndexOutOfBoundsException(i10);
        }
        if (i11 < 0 || i11 > this.f11076c) {
            throw new StringIndexOutOfBoundsException(i11);
        }
        if (i10 > i11) {
            throw new StringIndexOutOfBoundsException("srcBegin > srcEnd");
        }
        if (this.f11075b == 0) {
            byte[] bArr = this.f11074a;
            while (i10 < i11) {
                cArr[i12] = (char) (bArr[i10] & 255);
                i10++;
                i12++;
            }
            return;
        }
        byte[] bArr2 = this.f11074a;
        while (i10 < i11) {
            cArr[i12] = q4.a.k(i10, bArr2);
            i10++;
            i12++;
        }
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f11076c;
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        int i10 = 0;
        if (this.f11075b == 0) {
            return new String(this.f11074a, 0, this.f11076c, StandardCharsets.ISO_8859_1);
        }
        byte[] bArr = this.f11074a;
        int i11 = this.f11076c;
        char[] cArr = new char[i11];
        int i12 = 0;
        while (i10 < i11) {
            cArr[i12] = q4.a.k(i10, bArr);
            i10++;
            i12++;
        }
        return new String(cArr);
    }

    public h(int i10) {
        this.f11076c = 0;
        this.f11075b = (byte) 0;
        this.f11074a = new byte[i10];
    }

    public h(boolean z) {
        if (z) {
            this.f11076c = 0;
            this.f11075b = (byte) 0;
            this.f11074a = new byte[32];
        }
    }
}
