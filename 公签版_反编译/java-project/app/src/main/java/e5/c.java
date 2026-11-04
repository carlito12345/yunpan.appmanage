package e5;

import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: b, reason: collision with root package name */
    public ByteBuffer f4794b;

    /* renamed from: c, reason: collision with root package name */
    public b f4795c;

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f4793a = new byte[256];

    /* renamed from: d, reason: collision with root package name */
    public int f4796d = 0;

    public final boolean a() {
        return this.f4795c.f4783b != 0;
    }

    public final b b() {
        byte[] bArr;
        if (this.f4794b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (a()) {
            return this.f4795c;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < 6; i10++) {
            sb2.append((char) c());
        }
        if (sb2.toString().startsWith("GIF")) {
            this.f4795c.f4787f = this.f4794b.getShort();
            this.f4795c.f4788g = this.f4794b.getShort();
            int iC = c();
            b bVar = this.f4795c;
            bVar.f4789h = (iC & 128) != 0;
            bVar.f4790i = (int) Math.pow(2.0d, (iC & 7) + 1);
            this.f4795c.f4791j = c();
            b bVar2 = this.f4795c;
            c();
            bVar2.getClass();
            if (this.f4795c.f4789h && !a()) {
                b bVar3 = this.f4795c;
                bVar3.f4782a = e(bVar3.f4790i);
                b bVar4 = this.f4795c;
                bVar4.f4792k = bVar4.f4782a[bVar4.f4791j];
            }
        } else {
            this.f4795c.f4783b = 1;
        }
        if (!a()) {
            boolean z = false;
            while (!z && !a() && this.f4795c.f4784c <= Integer.MAX_VALUE) {
                int iC2 = c();
                if (iC2 == 33) {
                    int iC3 = c();
                    if (iC3 == 1) {
                        f();
                    } else if (iC3 == 249) {
                        this.f4795c.f4785d = new a();
                        c();
                        int iC4 = c();
                        a aVar = this.f4795c.f4785d;
                        int i11 = (iC4 & 28) >> 2;
                        aVar.f4777g = i11;
                        if (i11 == 0) {
                            aVar.f4777g = 1;
                        }
                        aVar.f4776f = (iC4 & 1) != 0;
                        short s8 = this.f4794b.getShort();
                        if (s8 < 2) {
                            s8 = 10;
                        }
                        a aVar2 = this.f4795c.f4785d;
                        aVar2.f4779i = s8 * 10;
                        aVar2.f4778h = c();
                        c();
                    } else if (iC3 == 254) {
                        f();
                    } else if (iC3 != 255) {
                        f();
                    } else {
                        d();
                        StringBuilder sb3 = new StringBuilder();
                        int i12 = 0;
                        while (true) {
                            bArr = this.f4793a;
                            if (i12 >= 11) {
                                break;
                            }
                            sb3.append((char) bArr[i12]);
                            i12++;
                        }
                        if (sb3.toString().equals("NETSCAPE2.0")) {
                            do {
                                d();
                                if (bArr[0] == 1) {
                                    byte b10 = bArr[1];
                                    byte b11 = bArr[2];
                                    this.f4795c.getClass();
                                }
                                if (this.f4796d > 0) {
                                }
                            } while (!a());
                        } else {
                            f();
                        }
                    }
                } else if (iC2 == 44) {
                    b bVar5 = this.f4795c;
                    if (bVar5.f4785d == null) {
                        bVar5.f4785d = new a();
                    }
                    bVar5.f4785d.f4771a = this.f4794b.getShort();
                    this.f4795c.f4785d.f4772b = this.f4794b.getShort();
                    this.f4795c.f4785d.f4773c = this.f4794b.getShort();
                    this.f4795c.f4785d.f4774d = this.f4794b.getShort();
                    int iC5 = c();
                    boolean z4 = (iC5 & 128) != 0;
                    int iPow = (int) Math.pow(2.0d, (iC5 & 7) + 1);
                    a aVar3 = this.f4795c.f4785d;
                    aVar3.f4775e = (iC5 & 64) != 0;
                    if (z4) {
                        aVar3.f4781k = e(iPow);
                    } else {
                        aVar3.f4781k = null;
                    }
                    this.f4795c.f4785d.f4780j = this.f4794b.position();
                    c();
                    f();
                    if (!a()) {
                        b bVar6 = this.f4795c;
                        bVar6.f4784c++;
                        bVar6.f4786e.add(bVar6.f4785d);
                    }
                } else if (iC2 != 59) {
                    this.f4795c.f4783b = 1;
                } else {
                    z = true;
                }
            }
            b bVar7 = this.f4795c;
            if (bVar7.f4784c < 0) {
                bVar7.f4783b = 1;
            }
        }
        return this.f4795c;
    }

    public final int c() {
        try {
            return this.f4794b.get() & 255;
        } catch (Exception unused) {
            this.f4795c.f4783b = 1;
            return 0;
        }
    }

    public final void d() {
        int iC = c();
        this.f4796d = iC;
        if (iC <= 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            try {
                int i11 = this.f4796d;
                if (i10 >= i11) {
                    return;
                }
                int i12 = i11 - i10;
                this.f4794b.get(this.f4793a, i10, i12);
                i10 += i12;
            } catch (Exception unused) {
                this.f4795c.f4783b = 1;
                return;
            }
        }
    }

    public final int[] e(int i10) {
        byte[] bArr = new byte[i10 * 3];
        int[] iArr = null;
        try {
            this.f4794b.get(bArr);
            iArr = new int[256];
            int i11 = 0;
            int i12 = 0;
            while (i11 < i10) {
                int i13 = bArr[i12] & 255;
                int i14 = i12 + 2;
                int i15 = bArr[i12 + 1] & 255;
                i12 += 3;
                int i16 = i11 + 1;
                iArr[i11] = (i15 << 8) | (i13 << 16) | (-16777216) | (bArr[i14] & 255);
                i11 = i16;
            }
        } catch (BufferUnderflowException unused) {
            this.f4795c.f4783b = 1;
        }
        return iArr;
    }

    public final void f() {
        int iC;
        do {
            iC = c();
            this.f4794b.position(Math.min(this.f4794b.position() + iC, this.f4794b.limit()));
        } while (iC > 0);
    }
}
