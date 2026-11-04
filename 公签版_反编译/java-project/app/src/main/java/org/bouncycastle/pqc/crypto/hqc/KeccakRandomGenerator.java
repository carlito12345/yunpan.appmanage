package org.bouncycastle.pqc.crypto.hqc;

import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
class KeccakRandomGenerator {
    private static long[] KeccakRoundConstants = {1, 32898, -9223372036854742902L, -9223372034707259392L, 32907, 2147483649L, -9223372034707259263L, -9223372036854743031L, 138, 136, 2147516425L, 2147483658L, 2147516555L, -9223372036854775669L, -9223372036854742903L, -9223372036854743037L, -9223372036854743038L, -9223372036854775680L, 32778, -9223372034707292150L, -9223372034707259263L, -9223372036854742912L, 2147483649L, -9223372034707259384L};
    protected int bitsInQueue;
    protected byte[] dataQueue;
    protected int fixedOutputLength;
    protected int rate;
    protected long[] state;

    public KeccakRandomGenerator() {
        this(288);
    }

    private void init(int i10) {
        if (i10 != 128 && i10 != 224 && i10 != 256 && i10 != 288 && i10 != 384 && i10 != 512) {
            throw new IllegalArgumentException("bitLength must be one of 128, 224, 256, 288, 384, or 512.");
        }
        initSponge(1600 - (i10 << 1));
    }

    private void initSponge(int i10) {
        if (i10 <= 0 || i10 >= 1600 || i10 % 64 != 0) {
            throw new IllegalStateException("invalid rate value");
        }
        this.rate = i10;
        Arrays.fill(this.state, 0L);
        Arrays.fill(this.dataQueue, (byte) 0);
        this.bitsInQueue = 0;
        this.fixedOutputLength = (1600 - i10) / 2;
    }

    private void keccakIncAbsorb(byte[] bArr, int i10) {
        long j10;
        long[] jArr;
        long j11;
        int i11 = this.rate >> 3;
        int i12 = 0;
        int i13 = i10;
        int i14 = 0;
        while (true) {
            j10 = i13;
            long j12 = i11;
            if (this.state[25] + j10 < j12) {
                break;
            }
            int i15 = 0;
            while (true) {
                long j13 = i15;
                jArr = this.state;
                j11 = jArr[25];
                if (j13 < j12 - j11) {
                    int i16 = ((int) (j11 + j13)) >> 3;
                    jArr[i16] = jArr[i16] ^ (toUnsignedLong(bArr[i15 + i14] & 255) << ((int) (((this.state[25] + j13) & 7) * 8)));
                    i15++;
                }
            }
            i13 = (int) (j10 - (j12 - j11));
            i14 = (int) ((j12 - j11) + i14);
            jArr[25] = 0;
            keccakPermutation(jArr);
        }
        while (true) {
            long[] jArr2 = this.state;
            if (i12 >= i13) {
                jArr2[25] = jArr2[25] + j10;
                return;
            }
            long j14 = i12;
            int i17 = ((int) (jArr2[25] + j14)) >> 3;
            jArr2[i17] = jArr2[i17] ^ (toUnsignedLong(bArr[i12 + i14] & 255) << ((int) (((this.state[25] + j14) & 7) * 8)));
            i12++;
        }
    }

    private void keccakIncFinalize(int i10) {
        int i11 = this.rate >> 3;
        long[] jArr = this.state;
        int i12 = ((int) jArr[25]) >> 3;
        long j10 = jArr[i12];
        long unsignedLong = toUnsignedLong(i10);
        long[] jArr2 = this.state;
        jArr[i12] = j10 ^ (unsignedLong << ((int) ((jArr2[25] & 7) * 8)));
        int i13 = i11 - 1;
        int i14 = i13 >> 3;
        jArr2[i14] = jArr2[i14] ^ (toUnsignedLong(128) << ((i13 & 7) * 8));
        this.state[25] = 0;
    }

    private void keccakIncSqueeze(byte[] bArr, int i10) {
        int i11 = this.rate >> 3;
        int i12 = 0;
        while (i12 < i10) {
            if (i12 >= this.state[25]) {
                break;
            }
            long j10 = i11;
            bArr[i12] = (byte) (r9[(int) (((j10 - r10) + r7) >> 3)] >> ((int) ((7 & ((j10 - r10) + r7)) * 8)));
            i12++;
        }
        int i13 = i10 - i12;
        long[] jArr = this.state;
        jArr[25] = jArr[25] - i12;
        while (i13 > 0) {
            keccakPermutation(this.state);
            int i14 = 0;
            while (i14 < i13 && i14 < i11) {
                bArr[i12 + i14] = (byte) (this.state[i14 >> 3] >> ((i14 & 7) * 8));
                i14++;
            }
            i12 += i14;
            i13 -= i14;
            this.state[25] = i11 - i14;
        }
    }

    private static void keccakPermutation(long[] jArr) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        long j14 = jArr[4];
        long j15 = jArr[5];
        long j16 = jArr[6];
        long j17 = jArr[7];
        long j18 = jArr[8];
        long j19 = jArr[9];
        long j20 = jArr[10];
        long j21 = jArr[11];
        long j22 = jArr[12];
        long j23 = jArr[13];
        long j24 = jArr[14];
        long j25 = jArr[15];
        long j26 = jArr[16];
        long j27 = jArr[17];
        long j28 = jArr[18];
        long j29 = jArr[19];
        long j30 = jArr[20];
        long j31 = jArr[21];
        long j32 = jArr[22];
        long j33 = jArr[23];
        long j34 = jArr[24];
        int i10 = 0;
        while (i10 < 24) {
            long j35 = (((j10 ^ j15) ^ j20) ^ j25) ^ j30;
            long j36 = (((j11 ^ j16) ^ j21) ^ j26) ^ j31;
            long j37 = (((j12 ^ j17) ^ j22) ^ j27) ^ j32;
            long j38 = (((j13 ^ j18) ^ j23) ^ j28) ^ j33;
            long j39 = (((j14 ^ j19) ^ j24) ^ j29) ^ j34;
            long j40 = ((j36 << 1) | (j36 >>> (-1))) ^ j39;
            long j41 = ((j37 << 1) | (j37 >>> (-1))) ^ j35;
            long j42 = ((j38 << 1) | (j38 >>> (-1))) ^ j36;
            long j43 = ((j39 << 1) | (j39 >>> (-1))) ^ j37;
            long j44 = ((j35 << 1) | (j35 >>> (-1))) ^ j38;
            long j45 = j10 ^ j40;
            long j46 = j15 ^ j40;
            long j47 = j20 ^ j40;
            long j48 = j25 ^ j40;
            long j49 = j30 ^ j40;
            long j50 = j11 ^ j41;
            long j51 = j16 ^ j41;
            long j52 = j21 ^ j41;
            long j53 = j26 ^ j41;
            long j54 = j31 ^ j41;
            long j55 = j12 ^ j42;
            long j56 = j17 ^ j42;
            long j57 = j22 ^ j42;
            long j58 = j27 ^ j42;
            long j59 = j32 ^ j42;
            long j60 = j13 ^ j43;
            long j61 = j18 ^ j43;
            long j62 = j23 ^ j43;
            long j63 = j28 ^ j43;
            long j64 = j33 ^ j43;
            long j65 = j14 ^ j44;
            long j66 = j19 ^ j44;
            long j67 = j24 ^ j44;
            long j68 = j29 ^ j44;
            long j69 = j34 ^ j44;
            long j70 = (j50 << 1) | (j50 >>> 63);
            long j71 = (j51 << 44) | (j51 >>> 20);
            long j72 = (j66 << 20) | (j66 >>> 44);
            long j73 = (j59 << 61) | (j59 >>> 3);
            long j74 = (j67 << 39) | (j67 >>> 25);
            long j75 = (j49 << 18) | (j49 >>> 46);
            long j76 = (j55 << 62) | (j55 >>> 2);
            long j77 = (j57 << 43) | (j57 >>> 21);
            long j78 = (j62 << 25) | (j62 >>> 39);
            long j79 = (j68 << 8) | (j68 >>> 56);
            long j80 = (j64 << 56) | (j64 >>> 8);
            long j81 = (j48 << 41) | (j48 >>> 23);
            long j82 = (j65 << 27) | (j65 >>> 37);
            long j83 = (j69 << 14) | (j69 >>> 50);
            long j84 = (j54 << 2) | (j54 >>> 62);
            long j85 = (j61 << 55) | (j61 >>> 9);
            long j86 = (j53 << 45) | (j53 >>> 19);
            long j87 = (j46 << 36) | (j46 >>> 28);
            long j88 = (j60 << 28) | (j60 >>> 36);
            long j89 = (j63 << 21) | (j63 >>> 43);
            long j90 = (j58 << 15) | (j58 >>> 49);
            long j91 = (j52 << 10) | (j52 >>> 54);
            long j92 = (j56 << 6) | (j56 >>> 58);
            long j93 = (j47 << 3) | (j47 >>> 61);
            long j94 = j45 ^ ((j71 ^ (-1)) & j77);
            long j95 = j71 ^ ((j77 ^ (-1)) & j89);
            long j96 = j77 ^ ((j89 ^ (-1)) & j83);
            long j97 = j89 ^ ((j83 ^ (-1)) & j45);
            long j98 = j83 ^ ((j45 ^ (-1)) & j71);
            long j99 = j88 ^ ((j72 ^ (-1)) & j93);
            long j100 = j72 ^ ((j93 ^ (-1)) & j86);
            long j101 = j93 ^ ((j86 ^ (-1)) & j73);
            long j102 = j86 ^ ((j73 ^ (-1)) & j88);
            j19 = j73 ^ ((j88 ^ (-1)) & j72);
            long j103 = ((j92 ^ (-1)) & j78) ^ j70;
            long j104 = j92 ^ ((j78 ^ (-1)) & j79);
            long j105 = j78 ^ ((j79 ^ (-1)) & j75);
            long j106 = j79 ^ ((j75 ^ (-1)) & j70);
            long j107 = j75 ^ ((j70 ^ (-1)) & j92);
            long j108 = j82 ^ ((j87 ^ (-1)) & j91);
            long j109 = j87 ^ ((j91 ^ (-1)) & j90);
            long j110 = j91 ^ ((j90 ^ (-1)) & j80);
            long j111 = j90 ^ ((j80 ^ (-1)) & j82);
            long j112 = j80 ^ ((j82 ^ (-1)) & j87);
            long j113 = j76 ^ ((j85 ^ (-1)) & j74);
            long j114 = j85 ^ ((j74 ^ (-1)) & j81);
            long j115 = j74 ^ ((j81 ^ (-1)) & j84);
            long j116 = j81 ^ ((j84 ^ (-1)) & j76);
            long j117 = j84 ^ ((j76 ^ (-1)) & j85);
            long j118 = j94 ^ KeccakRoundConstants[i10];
            i10++;
            j31 = j114;
            j33 = j116;
            j25 = j108;
            j17 = j101;
            j20 = j103;
            j13 = j97;
            j28 = j111;
            j27 = j110;
            j21 = j104;
            j32 = j115;
            j24 = j107;
            j11 = j95;
            j16 = j100;
            j34 = j117;
            j12 = j96;
            j22 = j105;
            j23 = j106;
            j29 = j112;
            j14 = j98;
            j10 = j118;
            j18 = j102;
            j26 = j109;
            j30 = j113;
            j15 = j99;
        }
        jArr[0] = j10;
        jArr[1] = j11;
        jArr[2] = j12;
        jArr[3] = j13;
        jArr[4] = j14;
        jArr[5] = j15;
        jArr[6] = j16;
        jArr[7] = j17;
        jArr[8] = j18;
        jArr[9] = j19;
        jArr[10] = j20;
        jArr[11] = j21;
        jArr[12] = j22;
        jArr[13] = j23;
        jArr[14] = j24;
        jArr[15] = j25;
        jArr[16] = j26;
        jArr[17] = j27;
        jArr[18] = j28;
        jArr[19] = j29;
        jArr[20] = j30;
        jArr[21] = j31;
        jArr[22] = j32;
        jArr[23] = j33;
        jArr[24] = j34;
    }

    private static long toUnsignedLong(int i10) {
        return i10 & 4294967295L;
    }

    public void SHAKE256_512_ds(byte[] bArr, byte[] bArr2, int i10, byte[] bArr3) {
        Arrays.fill(this.state, 0L);
        keccakIncAbsorb(bArr2, i10);
        keccakIncAbsorb(bArr3, bArr3.length);
        keccakIncFinalize(31);
        keccakIncSqueeze(bArr, 64);
    }

    public void expandSeed(byte[] bArr, int i10) {
        int i11 = i10 & 7;
        int i12 = i10 - i11;
        keccakIncSqueeze(bArr, i12);
        if (i11 != 0) {
            byte[] bArr2 = new byte[8];
            keccakIncSqueeze(bArr2, 8);
            System.arraycopy(bArr2, 0, bArr, i12, i11);
        }
    }

    public void randomGeneratorInit(byte[] bArr, byte[] bArr2, int i10, int i11) {
        keccakIncAbsorb(bArr, i10);
        keccakIncAbsorb(bArr2, i11);
        keccakIncAbsorb(new byte[]{1}, 1);
        keccakIncFinalize(31);
    }

    public void seedExpanderInit(byte[] bArr, int i10) {
        keccakIncAbsorb(bArr, i10);
        keccakIncAbsorb(new byte[]{2}, 1);
        keccakIncFinalize(31);
    }

    public void squeeze(byte[] bArr, int i10) {
        keccakIncSqueeze(bArr, i10);
    }

    public KeccakRandomGenerator(int i10) {
        this.state = new long[26];
        this.dataQueue = new byte[192];
        init(i10);
    }
}
