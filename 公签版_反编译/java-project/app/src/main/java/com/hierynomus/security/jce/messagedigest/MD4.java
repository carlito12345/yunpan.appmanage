package com.hierynomus.security.jce.messagedigest;

import java.security.DigestException;
import java.security.MessageDigest;
import ta.q;

/* loaded from: classes.dex */
public class MD4 extends MessageDigest {
    private static final int A = 1732584193;
    private static final int B = -271733879;
    public static final int BYTE_BLOCK_LENGTH = 64;
    public static final int BYTE_DIGEST_LENGTH = 16;
    private static final int C = -1732584194;
    private static final int D = 271733878;

    /* renamed from: a, reason: collision with root package name */
    private int f3742a;

    /* renamed from: b, reason: collision with root package name */
    private int f3743b;
    private final byte[] buffer;

    /* renamed from: c, reason: collision with root package name */
    private int f3744c;

    /* renamed from: d, reason: collision with root package name */
    private int f3745d;
    private long msgLength;

    public MD4() {
        super("MD4");
        this.f3742a = A;
        this.f3743b = B;
        this.f3744c = C;
        this.f3745d = D;
        this.buffer = new byte[64];
    }

    private byte[] pad() {
        long j10 = this.msgLength;
        int i10 = (int) (j10 % 64);
        int i11 = i10 < 56 ? 64 - i10 : 128 - i10;
        byte[] bArr = new byte[i11];
        int i12 = 0;
        bArr[0] = Byte.MIN_VALUE;
        long j11 = j10 << 3;
        int i13 = i11 - 8;
        while (i12 < 8) {
            bArr[i13] = (byte) (j11 >>> (i12 << 3));
            i12++;
            i13++;
        }
        return bArr;
    }

    private void process(byte[] bArr, int i10) {
        int i11 = this.f3742a;
        int i12 = this.f3743b;
        int i13 = this.f3744c;
        int i14 = this.f3745d;
        int[] iArr = new int[16];
        int i15 = i10;
        for (int i16 = 0; i16 < 16; i16++) {
            int i17 = ((bArr[i15 + 1] & 255) << 8) | (bArr[i15] & 255);
            int i18 = i15 + 3;
            int i19 = i17 | ((bArr[i15 + 2] & 255) << 16);
            i15 += 4;
            iArr[i16] = i19 | ((bArr[i18] & 255) << 24);
        }
        int i20 = this.f3742a;
        int i21 = this.f3743b;
        int i22 = this.f3744c;
        int i23 = this.f3745d;
        int i24 = iArr[0];
        int i25 = ((i21 & i22) | ((i21 ^ (-1)) & i23)) + i24 + i20;
        int i26 = (i25 << 3) | (i25 >>> 29);
        int i27 = iArr[1];
        int i28 = ((i26 & i21) | ((i26 ^ (-1)) & i22)) + i27 + i23;
        int i29 = (i28 >>> 25) | (i28 << 7);
        int i30 = iArr[2];
        int i31 = ((i29 & i26) | ((i29 ^ (-1)) & i21)) + i30 + i22;
        int i32 = (i31 << 11) | (i31 >>> 21);
        int i33 = iArr[3];
        int i34 = ((i32 & i29) | ((i32 ^ (-1)) & i26)) + i33 + i21;
        int i35 = (i34 << 19) | (i34 >>> 13);
        int i36 = iArr[4];
        int i37 = ((i35 & i32) | ((i35 ^ (-1)) & i29)) + i36 + i26;
        int i38 = (i37 << 3) | (i37 >>> 29);
        int i39 = iArr[5];
        int i40 = ((i38 & i35) | ((i38 ^ (-1)) & i32)) + i39 + i29;
        int i41 = (i40 << 7) | (i40 >>> 25);
        int i42 = iArr[6];
        int i43 = ((i41 & i38) | ((i41 ^ (-1)) & i35)) + i42 + i32;
        int i44 = (i43 << 11) | (i43 >>> 21);
        int i45 = iArr[7];
        int i46 = ((i44 & i41) | ((i44 ^ (-1)) & i38)) + i45 + i35;
        int i47 = (i46 << 19) | (i46 >>> 13);
        int i48 = iArr[8];
        int i49 = ((i47 & i44) | ((i47 ^ (-1)) & i41)) + i48 + i38;
        int i50 = (i49 << 3) | (i49 >>> 29);
        int i51 = iArr[9];
        int i52 = ((i50 & i47) | ((i50 ^ (-1)) & i44)) + i51 + i41;
        int i53 = (i52 << 7) | (i52 >>> 25);
        int i54 = iArr[10];
        int i55 = ((i53 & i50) | ((i53 ^ (-1)) & i47)) + i54 + i44;
        int i56 = (i55 << 11) | (i55 >>> 21);
        int i57 = iArr[11];
        int i58 = ((i56 & i53) | ((i56 ^ (-1)) & i50)) + i57 + i47;
        int i59 = (i58 << 19) | (i58 >>> 13);
        int i60 = iArr[12];
        int i61 = ((i59 & i56) | ((i59 ^ (-1)) & i53)) + i60 + i50;
        int i62 = (i61 << 3) | (i61 >>> 29);
        int i63 = iArr[13];
        int i64 = ((i62 & i59) | ((i62 ^ (-1)) & i56)) + i63 + i53;
        int i65 = (i64 << 7) | (i64 >>> 25);
        int i66 = iArr[14];
        int i67 = ((i65 & i62) | ((i65 ^ (-1)) & i59)) + i66 + i56;
        int i68 = (i67 << 11) | (i67 >>> 21);
        int i69 = iArr[15];
        int i70 = ((i68 & i65) | ((i68 ^ (-1)) & i62)) + i69 + i59;
        int i71 = (i70 << 19) | (i70 >>> 13);
        int iX = q.x(((i68 | i65) & i71) | (i68 & i65), i24, 1518500249, i62);
        int i72 = (iX >>> 29) | (iX << 3);
        int iX2 = q.x(((i71 | i68) & i72) | (i71 & i68), i36, 1518500249, i65);
        int i73 = (iX2 >>> 27) | (iX2 << 5);
        int iX3 = q.x(((i72 | i71) & i73) | (i72 & i71), i48, 1518500249, i68);
        int i74 = (iX3 >>> 23) | (iX3 << 9);
        int iX4 = q.x(((i73 | i72) & i74) | (i73 & i72), i60, 1518500249, i71);
        int i75 = (iX4 >>> 19) | (iX4 << 13);
        int iX5 = q.x(((i74 | i73) & i75) | (i74 & i73), i27, 1518500249, i72);
        int i76 = (iX5 >>> 29) | (iX5 << 3);
        int iX6 = q.x(((i75 | i74) & i76) | (i75 & i74), i39, 1518500249, i73);
        int i77 = (iX6 >>> 27) | (iX6 << 5);
        int iX7 = q.x(((i76 | i75) & i77) | (i76 & i75), i51, 1518500249, i74);
        int i78 = (iX7 >>> 23) | (iX7 << 9);
        int iX8 = q.x(((i77 | i76) & i78) | (i77 & i76), i63, 1518500249, i75);
        int i79 = (iX8 >>> 19) | (iX8 << 13);
        int iX9 = q.x(((i78 | i77) & i79) | (i78 & i77), i30, 1518500249, i76);
        int i80 = (iX9 >>> 29) | (iX9 << 3);
        int iX10 = q.x(((i79 | i78) & i80) | (i79 & i78), i42, 1518500249, i77);
        int i81 = (iX10 >>> 27) | (iX10 << 5);
        int iX11 = q.x(((i80 | i79) & i81) | (i80 & i79), i54, 1518500249, i78);
        int i82 = (iX11 >>> 23) | (iX11 << 9);
        int iX12 = q.x(((i81 | i80) & i82) | (i81 & i80), i66, 1518500249, i79);
        int i83 = (iX12 >>> 19) | (iX12 << 13);
        int iX13 = q.x(((i82 | i81) & i83) | (i82 & i81), i33, 1518500249, i80);
        int i84 = (iX13 >>> 29) | (iX13 << 3);
        int iX14 = q.x(((i83 | i82) & i84) | (i83 & i82), i45, 1518500249, i81);
        int i85 = (iX14 >>> 27) | (iX14 << 5);
        int iX15 = q.x(((i84 | i83) & i85) | (i84 & i83), i57, 1518500249, i82);
        int i86 = (iX15 >>> 23) | (iX15 << 9);
        int iX16 = q.x(((i85 | i84) & i86) | (i85 & i84), i69, 1518500249, i83);
        int i87 = (iX16 >>> 19) | (iX16 << 13);
        int iX17 = q.x((i87 ^ i86) ^ i85, i24, 1859775393, i84);
        int i88 = (iX17 >>> 29) | (iX17 << 3);
        int iX18 = q.x((i88 ^ i87) ^ i86, i48, 1859775393, i85);
        int i89 = (iX18 >>> 23) | (iX18 << 9);
        int iX19 = q.x((i89 ^ i88) ^ i87, i36, 1859775393, i86);
        int i90 = (iX19 >>> 21) | (iX19 << 11);
        int iX20 = q.x((i90 ^ i89) ^ i88, i60, 1859775393, i87);
        int i91 = (iX20 >>> 17) | (iX20 << 15);
        int iX21 = q.x((i91 ^ i90) ^ i89, i30, 1859775393, i88);
        int i92 = (iX21 >>> 29) | (iX21 << 3);
        int iX22 = q.x((i92 ^ i91) ^ i90, i54, 1859775393, i89);
        int i93 = (iX22 >>> 23) | (iX22 << 9);
        int iX23 = q.x((i93 ^ i92) ^ i91, i42, 1859775393, i90);
        int i94 = (iX23 >>> 21) | (iX23 << 11);
        int iX24 = q.x((i94 ^ i93) ^ i92, i66, 1859775393, i91);
        int i95 = (iX24 >>> 17) | (iX24 << 15);
        int iX25 = q.x((i95 ^ i94) ^ i93, i27, 1859775393, i92);
        int i96 = (iX25 >>> 29) | (iX25 << 3);
        int iX26 = q.x((i96 ^ i95) ^ i94, i51, 1859775393, i93);
        int i97 = (iX26 >>> 23) | (iX26 << 9);
        int iX27 = q.x((i97 ^ i96) ^ i95, i39, 1859775393, i94);
        int i98 = (iX27 >>> 21) | (iX27 << 11);
        int iX28 = q.x((i98 ^ i97) ^ i96, i63, 1859775393, i95);
        int i99 = (iX28 >>> 17) | (iX28 << 15);
        int iX29 = q.x((i99 ^ i98) ^ i97, i33, 1859775393, i96);
        int i100 = (iX29 >>> 29) | (iX29 << 3);
        int iX30 = q.x((i100 ^ i99) ^ i98, i57, 1859775393, i97);
        int i101 = (iX30 >>> 23) | (iX30 << 9);
        int iX31 = q.x((i101 ^ i100) ^ i99, i45, 1859775393, i98);
        int i102 = (iX31 >>> 21) | (iX31 << 11);
        int iX32 = q.x((i102 ^ i101) ^ i100, i69, 1859775393, i99);
        this.f3742a = i100 + i11;
        this.f3743b = ((iX32 >>> 17) | (iX32 << 15)) + i12;
        this.f3744c = i102 + i13;
        this.f3745d = i101 + i14;
    }

    @Override // java.security.MessageDigestSpi
    public byte[] engineDigest() {
        byte[] bArrPad = pad();
        engineUpdate(bArrPad, 0, bArrPad.length);
        int i10 = this.f3742a;
        int i11 = this.f3743b;
        int i12 = this.f3744c;
        int i13 = this.f3745d;
        byte[] bArr = {(byte) i10, (byte) (i10 >>> 8), (byte) (i10 >>> 16), (byte) (i10 >>> 24), (byte) i11, (byte) (i11 >>> 8), (byte) (i11 >>> 16), (byte) (i11 >>> 24), (byte) i12, (byte) (i12 >>> 8), (byte) (i12 >>> 16), (byte) (i12 >>> 24), (byte) i13, (byte) (i13 >>> 8), (byte) (i13 >>> 16), (byte) (i13 >>> 24)};
        engineReset();
        return bArr;
    }

    @Override // java.security.MessageDigestSpi
    public int engineGetDigestLength() {
        return 16;
    }

    @Override // java.security.MessageDigestSpi
    public void engineReset() {
        this.f3742a = A;
        this.f3743b = B;
        this.f3744c = C;
        this.f3745d = D;
        this.msgLength = 0L;
    }

    @Override // java.security.MessageDigestSpi
    public void engineUpdate(byte b10) {
        long j10 = this.msgLength;
        int i10 = (int) (j10 % 64);
        byte[] bArr = this.buffer;
        bArr[i10] = b10;
        this.msgLength = j10 + 1;
        if (i10 == 63) {
            process(bArr, 0);
        }
    }

    @Override // java.security.MessageDigestSpi
    public int engineDigest(byte[] bArr, int i10, int i11) throws DigestException {
        if (i10 >= 0 && i10 + i11 < bArr.length) {
            int iMin = Math.min(i11, 16);
            System.arraycopy(engineDigest(), 0, bArr, i10, iMin);
            return iMin;
        }
        throw new DigestException("Wrong offset or not enough space to store the digest");
    }

    @Override // java.security.MessageDigestSpi
    public void engineUpdate(byte[] bArr, int i10, int i11) {
        long j10 = this.msgLength;
        int i12 = (int) (j10 % 64);
        int i13 = 64 - i12;
        this.msgLength = j10 + i11;
        int i14 = 0;
        if (i11 >= i13) {
            System.arraycopy(bArr, i10, this.buffer, i12, i13);
            process(this.buffer, 0);
            while (true) {
                int i15 = i13 + 64;
                if (i13 + 63 >= i11) {
                    break;
                }
                process(bArr, i13 + i10);
                i13 = i15;
            }
            i14 = i13;
            i12 = 0;
        }
        if (i14 < i11) {
            System.arraycopy(bArr, i10 + i14, this.buffer, i12, i11 - i14);
        }
    }
}
