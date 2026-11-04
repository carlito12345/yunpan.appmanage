package fi;

/* loaded from: classes3.dex */
public abstract class d extends com.bumptech.glide.c {

    /* renamed from: p, reason: collision with root package name */
    public static final int[] f5899p = new int[128];
    public long l;

    /* renamed from: m, reason: collision with root package name */
    public int f5900m;

    /* renamed from: n, reason: collision with root package name */
    public long f5901n;

    /* renamed from: o, reason: collision with root package name */
    public byte f5902o;

    static {
        for (int i10 = 8; i10 < 2048; i10 += 16) {
            int i11 = i10;
            int i12 = 0;
            for (int i13 = 0; i13 < 4; i13++) {
                i11 *= i11;
                i12 <<= 1;
                while (((-65536) & i11) != 0) {
                    i11 >>>= 1;
                    i12++;
                }
            }
            f5899p[i10 >> 4] = 161 - i12;
        }
    }

    public static int q0(int i10, int i11) {
        return f5899p[(i10 ^ ((-i11) & 2047)) >>> 4];
    }

    public static int r0(short[] sArr, int i10) {
        int length = i10 | sArr.length;
        int iQ0 = 0;
        do {
            int i11 = length & 1;
            length >>>= 1;
            iQ0 += q0(sArr[length], i11);
        } while (length != 1);
        return iQ0;
    }

    public final void o0(short[] sArr, int i10, int i11) {
        short s8 = sArr[i10];
        int i12 = this.f5900m;
        int i13 = (i12 >>> 11) * s8;
        if (i11 == 0) {
            this.f5900m = i13;
            sArr[i10] = (short) (s8 + ((2048 - s8) >>> 5));
        } else {
            this.l += i13 & 4294967295L;
            this.f5900m = i12 - i13;
            sArr[i10] = (short) (s8 - (s8 >>> 5));
        }
        int i14 = this.f5900m;
        if (((-16777216) & i14) == 0) {
            this.f5900m = i14 << 8;
            t0();
        }
    }

    public final void p0(short[] sArr, int i10) {
        int length = sArr.length;
        int i11 = 1;
        do {
            length >>>= 1;
            int i12 = i10 & length;
            o0(sArr, i11, i12);
            i11 <<= 1;
            if (i12 != 0) {
                i11 |= 1;
            }
        } while (length != 1);
    }

    public int s0() {
        throw new Error();
    }

    public final void t0() {
        long j10 = this.l;
        int i10 = (int) (j10 >>> 32);
        if (i10 != 0 || j10 < 4278190080L) {
            byte b10 = this.f5902o;
            while (true) {
                u0(b10 + i10);
                long j11 = this.f5901n - 1;
                this.f5901n = j11;
                if (j11 == 0) {
                    break;
                } else {
                    b10 = 255;
                }
            }
            this.f5902o = (byte) (this.l >>> 24);
        }
        this.f5901n++;
        this.l = (this.l & 16777215) << 8;
    }

    public abstract void u0(int i10);
}
