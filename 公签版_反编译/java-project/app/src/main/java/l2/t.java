package l2;

import java.nio.ByteOrder;
import java.util.Collections;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final int f10517a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10518b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10519c;

    /* renamed from: d, reason: collision with root package name */
    public final int f10520d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10521e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10522f;

    /* renamed from: g, reason: collision with root package name */
    public final int f10523g;

    /* renamed from: h, reason: collision with root package name */
    public final int f10524h;

    /* renamed from: i, reason: collision with root package name */
    public final int f10525i;

    /* renamed from: j, reason: collision with root package name */
    public final long f10526j;

    /* renamed from: k, reason: collision with root package name */
    public final kf.d f10527k;
    public final r1.d0 l;

    public t(byte[] bArr, int i10) {
        j3.f fVar = new j3.f(bArr, bArr.length);
        fVar.m(i10 * 8);
        this.f10517a = fVar.g(16);
        this.f10518b = fVar.g(16);
        this.f10519c = fVar.g(24);
        this.f10520d = fVar.g(24);
        int iG = fVar.g(20);
        this.f10521e = iG;
        this.f10522f = d(iG);
        this.f10523g = fVar.g(3) + 1;
        int iG2 = fVar.g(5) + 1;
        this.f10524h = iG2;
        this.f10525i = a(iG2);
        this.f10526j = fVar.i(36);
        this.f10527k = null;
        this.l = null;
    }

    public static int a(int i10) {
        if (i10 == 8) {
            return 1;
        }
        if (i10 == 12) {
            return 2;
        }
        if (i10 == 16) {
            return 4;
        }
        if (i10 == 20) {
            return 5;
        }
        if (i10 != 24) {
            return i10 != 32 ? -1 : 7;
        }
        return 6;
    }

    public static int d(int i10) {
        switch (i10) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public final long b() {
        long j10 = this.f10526j;
        if (j10 == 0) {
            return -9223372036854775807L;
        }
        return (j10 * 1000000) / this.f10521e;
    }

    public final r1.p c(byte[] bArr, r1.d0 d0Var) {
        bArr[4] = Byte.MIN_VALUE;
        int i10 = this.f10520d;
        if (i10 <= 0) {
            i10 = -1;
        }
        r1.d0 d0Var2 = this.l;
        if (d0Var2 != null) {
            d0Var = d0Var2.b(d0Var);
        }
        r1.o oVar = new r1.o();
        oVar.f13492n = r1.e0.l("audio/flac");
        oVar.f13493o = i10;
        oVar.F = this.f10523g;
        oVar.G = this.f10521e;
        String str = u1.f0.f15206a;
        oVar.H = u1.f0.t(this.f10524h, ByteOrder.LITTLE_ENDIAN);
        oVar.f13495q = Collections.singletonList(bArr);
        oVar.f13490k = d0Var;
        return new r1.p(oVar);
    }

    public t(int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, kf.d dVar, r1.d0 d0Var) {
        this.f10517a = i10;
        this.f10518b = i11;
        this.f10519c = i12;
        this.f10520d = i13;
        this.f10521e = i14;
        this.f10522f = d(i14);
        this.f10523g = i15;
        this.f10524h = i16;
        this.f10525i = a(i16);
        this.f10526j = j10;
        this.f10527k = dVar;
        this.l = d0Var;
    }
}
