package s3;

import u1.f0;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14259a;

    /* renamed from: b, reason: collision with root package name */
    public final u1.d0 f14260b;

    /* renamed from: c, reason: collision with root package name */
    public final u1.q f14261c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f14262d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f14263e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f14264f;

    /* renamed from: g, reason: collision with root package name */
    public long f14265g;

    /* renamed from: h, reason: collision with root package name */
    public long f14266h;

    /* renamed from: i, reason: collision with root package name */
    public long f14267i;

    public v(int i10) {
        this.f14259a = i10;
        switch (i10) {
            case 1:
                this.f14260b = new u1.d0(0L);
                this.f14265g = -9223372036854775807L;
                this.f14266h = -9223372036854775807L;
                this.f14267i = -9223372036854775807L;
                this.f14261c = new u1.q();
                break;
            default:
                this.f14260b = new u1.d0(0L);
                this.f14265g = -9223372036854775807L;
                this.f14266h = -9223372036854775807L;
                this.f14267i = -9223372036854775807L;
                this.f14261c = new u1.q();
                break;
        }
    }

    public static int b(int i10, byte[] bArr) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    public static long c(u1.q qVar) {
        int i10 = qVar.f15267b;
        if (qVar.a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        qVar.l(0, 9, bArr);
        qVar.O(i10);
        byte b10 = bArr[0];
        if ((b10 & 196) == 68) {
            byte b11 = bArr[2];
            if ((b11 & 4) == 4) {
                byte b12 = bArr[4];
                if ((b12 & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
                    long j10 = b10;
                    long j11 = b11;
                    return ((j11 & 3) << 13) | ((j10 & 3) << 28) | (((56 & j10) >> 3) << 30) | ((bArr[1] & 255) << 20) | (((j11 & 248) >> 3) << 15) | ((bArr[3] & 255) << 5) | ((b12 & 248) >> 3);
                }
            }
        }
        return -9223372036854775807L;
    }

    public final void a(l2.l lVar) {
        switch (this.f14259a) {
            case 0:
                byte[] bArr = f0.f15207b;
                u1.q qVar = this.f14261c;
                qVar.getClass();
                qVar.M(bArr.length, bArr);
                this.f14262d = true;
                lVar.f10501f = 0;
                break;
            default:
                byte[] bArr2 = f0.f15207b;
                u1.q qVar2 = this.f14261c;
                qVar2.getClass();
                qVar2.M(bArr2.length, bArr2);
                this.f14262d = true;
                lVar.f10501f = 0;
                break;
        }
    }
}
