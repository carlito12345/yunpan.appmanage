package ei;

import androidx.room.s;
import com.hsae.autosdk.source.SourceConst;

/* loaded from: classes3.dex */
public final class i extends h {
    public s B;

    public i(fi.d dVar, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, yh.b bVar) {
        di.a aVar;
        int iMax = Math.max(i14, 1);
        if (i16 == 4) {
            aVar = new di.a(i13, iMax, SourceConst.IOCTL_FM_VOLUME, i15, i17, bVar, 1);
        } else {
            if (i16 != 20) {
                throw new IllegalArgumentException();
            }
            aVar = new di.a(i13, iMax, SourceConst.IOCTL_FM_VOLUME, i15, i17, bVar, 0);
        }
        super(dVar, aVar, i10, i11, i12, i13, i15);
        this.B = null;
    }

    @Override // ei.h
    public final int j() {
        int i10;
        int i11;
        if (this.z == -1) {
            this.B = i();
        }
        this.f5037y = -1;
        di.a aVar = this.f5027n;
        int iMin = Math.min(aVar.f4682j - aVar.f4679g, SourceConst.IOCTL_AM_VOLUME);
        int i12 = 1;
        if (iMin < 2) {
            return 1;
        }
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            int[] iArr = this.f5002b;
            byte[] bArr = aVar.f4677e;
            int i16 = this.r;
            if (i13 >= 4) {
                s sVar = this.B;
                int i17 = sVar.f2426b;
                if (i17 > 0) {
                    int i18 = i17 - 1;
                    i11 = ((int[]) sVar.f2427c)[i18];
                    i10 = ((int[]) sVar.f2428d)[i18];
                    if (i11 >= i16) {
                        this.f5037y = i10 + 4;
                        k(i11 - 1);
                        return i11;
                    }
                    while (true) {
                        s sVar2 = this.B;
                        int i19 = sVar2.f2426b;
                        if (i19 <= i12) {
                            break;
                        }
                        int[] iArr2 = (int[]) sVar2.f2427c;
                        int i20 = i19 - 2;
                        if (i11 != iArr2[i20] + 1) {
                            break;
                        }
                        int[] iArr3 = (int[]) sVar2.f2428d;
                        if (iArr3[i20] >= (i10 >>> 7)) {
                            break;
                        }
                        sVar2.f2426b = i19 - 1;
                        int i21 = i19 - 2;
                        i11 = iArr2[i21];
                        i10 = iArr3[i21];
                        i12 = 1;
                    }
                    if (i11 == 2 && i10 >= 128) {
                        i11 = 1;
                    }
                } else {
                    i10 = 0;
                    i11 = 0;
                }
                if (i14 >= 2 && (i14 + 1 >= i11 || ((i14 + 2 >= i11 && i10 >= 512) || (i14 + 3 >= i11 && i10 >= 32768)))) {
                    this.f5037y = i15;
                    k(i14 - 1);
                    return i14;
                }
                if (i11 < 2 || iMin <= 2) {
                    return 1;
                }
                s sVarI = i();
                this.B = sVarI;
                int i22 = sVarI.f2426b;
                if (i22 > 0) {
                    int i23 = i22 - 1;
                    int i24 = ((int[]) sVarI.f2427c)[i23];
                    int i25 = ((int[]) sVarI.f2428d)[i23];
                    if (i24 >= i11 && i25 < i10) {
                        return 1;
                    }
                    int i26 = i11 + 1;
                    if ((i24 == i26 && i10 >= (i25 >>> 7)) || i24 > i26) {
                        return 1;
                    }
                    if (i24 + 1 >= i11 && i11 >= 3 && i25 < (i10 >>> 7)) {
                        return 1;
                    }
                }
                int iMax = Math.max(i11 - 1, 2);
                int i27 = 4;
                int i28 = 0;
                while (i28 < i27) {
                    if (com.bumptech.glide.d.A(bArr, aVar.f4679g, iArr[i28] + 1, 0, iMax) == iMax) {
                        return 1;
                    }
                    i28++;
                    i27 = 4;
                }
                this.f5037y = i10 + i27;
                k(i11 - 2);
                return i11;
            }
            int iA = com.bumptech.glide.d.A(bArr, aVar.f4679g, iArr[i13] + 1, 0, iMin);
            if (iA >= 2) {
                if (iA >= i16) {
                    this.f5037y = i13;
                    k(iA - 1);
                    return iA;
                }
                if (iA > i14) {
                    i15 = i13;
                    i14 = iA;
                }
            }
            i13++;
        }
    }
}
