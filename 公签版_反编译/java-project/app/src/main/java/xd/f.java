package xd;

import s3.d0;

/* loaded from: classes.dex */
public final class f extends nh.b {

    /* renamed from: h, reason: collision with root package name */
    public static final char[] f18456h = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b, reason: collision with root package name */
    public int f18457b;

    /* renamed from: c, reason: collision with root package name */
    public short f18458c;

    /* renamed from: d, reason: collision with root package name */
    public short f18459d;

    /* renamed from: e, reason: collision with root package name */
    public byte f18460e;

    /* renamed from: f, reason: collision with root package name */
    public byte f18461f;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f18462g;

    public f(String str) {
        char[] charArray = str.toCharArray();
        this.f18457b = t0(charArray, 0, 8);
        this.f18458c = (short) (t0(charArray, 9, 4) & 65535);
        this.f18459d = (short) (t0(charArray, 14, 4) & 65535);
        this.f18460e = (byte) (t0(charArray, 19, 2) & 255);
        this.f18461f = (byte) (t0(charArray, 21, 2) & 255);
        byte[] bArr = new byte[6];
        this.f18462g = bArr;
        bArr[0] = (byte) (t0(charArray, 24, 2) & 255);
        this.f18462g[1] = (byte) (t0(charArray, 26, 2) & 255);
        this.f18462g[2] = (byte) (t0(charArray, 28, 2) & 255);
        this.f18462g[3] = (byte) (t0(charArray, 30, 2) & 255);
        this.f18462g[4] = (byte) (t0(charArray, 32, 2) & 255);
        this.f18462g[5] = (byte) (t0(charArray, 34, 2) & 255);
    }

    public static String s0(int i10, int i11) {
        char[] cArr = new char[i11];
        while (true) {
            int i12 = i11 - 1;
            if (i11 <= 0) {
                return new String(cArr);
            }
            cArr[i12] = f18456h[i10 & 15];
            i10 >>>= 4;
            i11 = i12;
        }
    }

    public static int t0(char[] cArr, int i10, int i11) {
        int i12;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = i10; i15 < cArr.length && i13 < i11; i15++) {
            int i16 = i14 << 4;
            char c7 = cArr[i15];
            switch (c7) {
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    i12 = c7 - '0';
                    break;
                default:
                    switch (c7) {
                        case 'A':
                        case 'B':
                        case 'C':
                        case 'D':
                        case 'E':
                        case 'F':
                            i12 = c7 - '7';
                            break;
                        default:
                            switch (c7) {
                                case 'a':
                                case 'b':
                                case 'c':
                                case 'd':
                                case 'e':
                                case 'f':
                                    i12 = c7 - 'W';
                                    break;
                                default:
                                    throw new IllegalArgumentException(new String(cArr, i10, i11));
                            }
                    }
            }
            i14 = i12 + i16;
            i13++;
        }
        return i14;
    }

    @Override // nh.b
    public final void s(d0 d0Var) {
        d0Var.b(4);
        this.f18457b = d0Var.c();
        this.f18458c = (short) d0Var.d();
        this.f18459d = (short) d0Var.d();
        this.f18460e = (byte) d0Var.e();
        this.f18461f = (byte) d0Var.e();
        int i10 = d0Var.f14063c;
        d0Var.a(6);
        if (this.f18462g == null) {
            this.f18462g = new byte[6];
        }
        d0 d0VarG = d0Var.g(i10);
        for (int i11 = 0; i11 < 6; i11++) {
            this.f18462g[i11] = (byte) d0VarG.e();
        }
    }

    public final String toString() {
        return s0(this.f18457b, 8) + '-' + s0(this.f18458c, 4) + '-' + s0(this.f18459d, 4) + '-' + s0(this.f18460e, 2) + s0(this.f18461f, 2) + '-' + s0(this.f18462g[0], 2) + s0(this.f18462g[1], 2) + s0(this.f18462g[2], 2) + s0(this.f18462g[3], 2) + s0(this.f18462g[4], 2) + s0(this.f18462g[5], 2);
    }

    @Override // nh.b
    public final void v(d0 d0Var) {
        d0Var.b(4);
        d0Var.h(this.f18457b);
        d0Var.j(this.f18458c);
        d0Var.j(this.f18459d);
        d0Var.k(this.f18460e);
        d0Var.k(this.f18461f);
        int i10 = d0Var.f14063c;
        d0Var.a(6);
        d0 d0VarG = d0Var.g(i10);
        for (int i11 = 0; i11 < 6; i11++) {
            d0VarG.k(this.f18462g[i11]);
        }
    }
}
