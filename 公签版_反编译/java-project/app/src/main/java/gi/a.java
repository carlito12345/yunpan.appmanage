package gi;

/* loaded from: classes3.dex */
public final class a implements b {

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f6194d = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 6, 6, 0, 0, 7, 7, 4, 4, 0, 0, 4, 4, 0, 0};

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6195a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f6196b;

    /* renamed from: c, reason: collision with root package name */
    public int f6197c;

    public /* synthetic */ a(int i10, int i11, boolean z, boolean z4) {
        this.f6195a = i11;
        this.f6196b = z;
        this.f6197c = i10;
    }

    @Override // gi.b
    public final int g(int i10, int i11, byte[] bArr) {
        int i12;
        int i13;
        switch (this.f6195a) {
            case 0:
                int i14 = (i10 + i11) - 16;
                int i15 = i10;
                while (i15 <= i14) {
                    int i16 = f6194d[bArr[i15] & 31];
                    int i17 = 5;
                    int i18 = 0;
                    while (i18 < 3) {
                        if (((i16 >>> i18) & 1) == 0) {
                            i12 = i15;
                        } else {
                            int i19 = i17 >>> 3;
                            int i20 = i17 & 7;
                            long j10 = 0;
                            int i21 = 0;
                            while (i21 < 6) {
                                j10 |= (bArr[(i15 + i19) + i21] & 255) << (i21 * 8);
                                i21++;
                                i15 = i15;
                            }
                            i12 = i15;
                            long j11 = j10 >>> i20;
                            if (((j11 >>> 37) & 15) == 5 && ((j11 >>> 9) & 7) == 0) {
                                i13 = i17;
                                int i22 = (((((int) (j11 >>> 36)) & 1) << 20) | ((int) ((j11 >>> 13) & 1048575))) << 4;
                                long j12 = (this.f6196b ? ((this.f6197c + i12) - i10) + i22 : i22 - ((this.f6197c + i12) - i10)) >>> 4;
                                long j13 = ((((j11 & (-77309403137L)) | ((j12 & 1048575) << 13)) | ((j12 & 1048576) << 16)) << i20) | (j10 & ((1 << i20) - 1));
                                for (int i23 = 0; i23 < 6; i23++) {
                                    bArr[i12 + i19 + i23] = (byte) (j13 >>> (i23 * 8));
                                }
                            }
                            i18++;
                            i17 = i13 + 41;
                            i15 = i12;
                        }
                        i13 = i17;
                        i18++;
                        i17 = i13 + 41;
                        i15 = i12;
                    }
                    i15 += 16;
                }
                int i24 = i15 - i10;
                this.f6197c += i24;
                return i24;
            case 1:
                int i25 = (i10 + i11) - 4;
                int i26 = i10;
                while (i26 <= i25) {
                    if ((bArr[i26 + 3] & 255) == 235) {
                        int i27 = i26 + 2;
                        int i28 = i26 + 1;
                        int i29 = ((((bArr[i27] & 255) << 16) | ((bArr[i28] & 255) << 8)) | (bArr[i26] & 255)) << 2;
                        int i30 = this.f6196b ? ((this.f6197c + i26) - i10) + i29 : i29 - ((this.f6197c + i26) - i10);
                        bArr[i27] = (byte) (i30 >>> 18);
                        bArr[i28] = (byte) (i30 >>> 10);
                        bArr[i26] = (byte) (i30 >>> 2);
                    }
                    i26 += 4;
                }
                int i31 = i26 - i10;
                this.f6197c += i31;
                return i31;
            case 2:
                int i32 = (i10 + i11) - 4;
                int i33 = i10;
                while (i33 <= i32) {
                    int i34 = i33 + 1;
                    byte b10 = bArr[i34];
                    if ((b10 & 248) == 240) {
                        int i35 = i33 + 3;
                        byte b11 = bArr[i35];
                        if ((b11 & 248) == 248) {
                            int i36 = ((b10 & 7) << 19) | ((bArr[i33] & 255) << 11) | ((b11 & 7) << 8);
                            int i37 = i33 + 2;
                            int i38 = (i36 | (bArr[i37] & 255)) << 1;
                            int i39 = this.f6196b ? ((this.f6197c + i33) - i10) + i38 : i38 - ((this.f6197c + i33) - i10);
                            bArr[i34] = (byte) (240 | ((i39 >>> 20) & 7));
                            bArr[i33] = (byte) (i39 >>> 12);
                            bArr[i35] = (byte) (((i39 >>> 9) & 7) | 248);
                            bArr[i37] = (byte) (i39 >>> 1);
                            i33 = i37;
                        }
                    }
                    i33 += 2;
                }
                int i40 = i33 - i10;
                this.f6197c += i40;
                return i40;
            case 3:
                int i41 = (i10 + i11) - 4;
                int i42 = i10;
                while (i42 <= i41) {
                    if ((bArr[i42] & 252) == 72 && (bArr[i42 + 3] & 3) == 1) {
                        int iO = q4.a.o(i42, bArr);
                        int i43 = (this.f6197c + i42) - i10;
                        if (!this.f6196b) {
                            i43 = -i43;
                        }
                        q4.a.Y(i42, ((iO + i43) & 67108860) | 1207959553, bArr);
                    }
                    i42 += 4;
                }
                int i44 = i42 - i10;
                this.f6197c += i44;
                return i44;
            default:
                int i45 = (i10 + i11) - 4;
                int i46 = i10;
                while (i46 <= i45) {
                    byte b12 = bArr[i46];
                    if ((b12 == 64 && (bArr[i46 + 1] & 192) == 0) || (b12 == Byte.MAX_VALUE && (bArr[i46 + 1] & 192) == 192)) {
                        int iO2 = q4.a.o(i46, bArr);
                        int i47 = ((this.f6197c + i46) - i10) >>> 2;
                        if (!this.f6196b) {
                            i47 = -i47;
                        }
                        q4.a.Y(i46, ((((iO2 + i47) << 9) >> 9) & 1073741823) | 1073741824, bArr);
                    }
                    i46 += 4;
                }
                int i48 = i46 - i10;
                this.f6197c += i48;
                return i48;
        }
    }

    public a(int i10, int i11, boolean z) {
        this.f6195a = i11;
        switch (i11) {
            case 2:
                this.f6196b = z;
                this.f6197c = i10 + 4;
                break;
            default:
                this.f6196b = z;
                this.f6197c = i10 + 8;
                break;
        }
    }
}
