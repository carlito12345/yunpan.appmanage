package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.digests.ISAPDigest;
import org.bouncycastle.util.Longs;

/* loaded from: classes3.dex */
public class AsconPermutationFriend {

    public static class AsconPermutation {

        /* renamed from: x0, reason: collision with root package name */
        public long f11946x0;

        /* renamed from: x1, reason: collision with root package name */
        public long f11947x1;

        /* renamed from: x2, reason: collision with root package name */
        public long f11948x2;

        /* renamed from: x3, reason: collision with root package name */
        public long f11949x3;

        /* renamed from: x4, reason: collision with root package name */
        public long f11950x4;

        public void p(int i10) {
            if (i10 == 12) {
                round(240L);
                round(225L);
                round(210L);
                round(195L);
            }
            if (i10 >= 8) {
                round(180L);
                round(165L);
            }
            round(150L);
            round(135L);
            round(120L);
            round(105L);
            round(90L);
            round(75L);
        }

        public void round(long j10) {
            long j11 = this.f11948x2 ^ j10;
            this.f11948x2 = j11;
            long j12 = this.f11946x0;
            long j13 = this.f11950x4;
            long j14 = j12 ^ j13;
            long j15 = this.f11947x1;
            long j16 = j15 ^ j11;
            long j17 = j15 | j11;
            long j18 = this.f11949x3;
            long j19 = ((j18 ^ j17) ^ j12) ^ (j15 & j14);
            long j20 = ((j11 & j15) & j18) ^ (j14 ^ (j17 | j18));
            long j21 = ((j18 ^ (-1)) & j13) ^ j16;
            long j22 = (j12 | (j18 ^ j13)) ^ j16;
            long j23 = ((j13 | j15) ^ j18) ^ (j12 & j15);
            this.f11946x0 = Longs.rotateRight(j19, 28) ^ (Longs.rotateRight(j19, 19) ^ j19);
            this.f11947x1 = Longs.rotateRight(j20, 61) ^ (Longs.rotateRight(j20, 39) ^ j20);
            this.f11948x2 = ((Longs.rotateRight(j21, 1) ^ j21) ^ Longs.rotateRight(j21, 6)) ^ (-1);
            this.f11949x3 = (Longs.rotateRight(j22, 10) ^ j22) ^ Longs.rotateRight(j22, 17);
            this.f11950x4 = (Longs.rotateRight(j23, 7) ^ j23) ^ Longs.rotateRight(j23, 41);
        }

        public void set(long j10, long j11, long j12, long j13, long j14) {
            this.f11946x0 = j10;
            this.f11947x1 = j11;
            this.f11948x2 = j12;
            this.f11949x3 = j13;
            this.f11950x4 = j14;
        }
    }

    public static AsconPermutation getAsconPermutation(ISAPDigest.Friend friend) {
        if (friend != null) {
            return new AsconPermutation();
        }
        throw new NullPointerException("This method is only for use by ISAPDigest or Ascon Digest");
    }
}
