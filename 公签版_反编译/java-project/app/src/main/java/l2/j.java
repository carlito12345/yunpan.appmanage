package l2;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class j implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f10475a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f10476b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f10477c;

    /* renamed from: d, reason: collision with root package name */
    public final long[] f10478d;

    /* renamed from: e, reason: collision with root package name */
    public final long[] f10479e;

    /* renamed from: f, reason: collision with root package name */
    public final long f10480f;

    public j(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f10476b = iArr;
        this.f10477c = jArr;
        this.f10478d = jArr2;
        this.f10479e = jArr3;
        int length = iArr.length;
        this.f10475a = length;
        if (length > 0) {
            this.f10480f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f10480f = 0L;
        }
    }

    @Override // l2.c0
    public final boolean c() {
        return true;
    }

    @Override // l2.c0
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // l2.c0
    public final b0 f(long j10) {
        long[] jArr = this.f10479e;
        int iD = u1.f0.d(jArr, j10, true);
        long j11 = jArr[iD];
        long[] jArr2 = this.f10477c;
        d0 d0Var = new d0(j11, jArr2[iD]);
        if (j11 >= j10 || iD == this.f10475a - 1) {
            return new b0(d0Var, d0Var);
        }
        int i10 = iD + 1;
        return new b0(d0Var, new d0(jArr[i10], jArr2[i10]));
    }

    @Override // l2.c0
    public final long h() {
        return this.f10480f;
    }

    public final String toString() {
        return "ChunkIndex(length=" + this.f10475a + ", sizes=" + Arrays.toString(this.f10476b) + ", offsets=" + Arrays.toString(this.f10477c) + ", timeUs=" + Arrays.toString(this.f10479e) + ", durationsUs=" + Arrays.toString(this.f10478d) + ")";
    }
}
