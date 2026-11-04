package e5;

import a2.k1;
import android.graphics.Bitmap;
import android.util.Log;
import com.desay_svautomotive.libsvcarinfo.CarLanID;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public int[] f4797a;

    /* renamed from: c, reason: collision with root package name */
    public final kf.d f4799c;

    /* renamed from: d, reason: collision with root package name */
    public ByteBuffer f4800d;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f4801e;

    /* renamed from: f, reason: collision with root package name */
    public short[] f4802f;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f4803g;

    /* renamed from: h, reason: collision with root package name */
    public byte[] f4804h;

    /* renamed from: i, reason: collision with root package name */
    public byte[] f4805i;

    /* renamed from: j, reason: collision with root package name */
    public final int[] f4806j;

    /* renamed from: k, reason: collision with root package name */
    public int f4807k;
    public b l;

    /* renamed from: m, reason: collision with root package name */
    public Bitmap f4808m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f4809n;

    /* renamed from: o, reason: collision with root package name */
    public int f4810o;

    /* renamed from: p, reason: collision with root package name */
    public final int f4811p;

    /* renamed from: q, reason: collision with root package name */
    public final int f4812q;
    public final int r;

    /* renamed from: s, reason: collision with root package name */
    public Boolean f4813s;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f4798b = new int[256];

    /* renamed from: t, reason: collision with root package name */
    public Bitmap.Config f4814t = Bitmap.Config.ARGB_8888;

    public d(kf.d dVar, b bVar, ByteBuffer byteBuffer, int i10) {
        this.f4799c = dVar;
        this.l = new b();
        synchronized (this) {
            try {
                if (i10 <= 0) {
                    throw new IllegalArgumentException("Sample size must be >=0, not: " + i10);
                }
                int iHighestOneBit = Integer.highestOneBit(i10);
                this.f4810o = 0;
                this.l = bVar;
                this.f4807k = -1;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.f4800d = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                this.f4800d.order(ByteOrder.LITTLE_ENDIAN);
                this.f4809n = false;
                Iterator it = bVar.f4786e.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (((a) it.next()).f4777g == 3) {
                        this.f4809n = true;
                        break;
                    }
                }
                this.f4811p = iHighestOneBit;
                int i11 = bVar.f4787f;
                this.r = i11 / iHighestOneBit;
                int i12 = bVar.f4788g;
                this.f4812q = i12 / iHighestOneBit;
                int i13 = i11 * i12;
                k1 k1Var = (k1) this.f4799c.f10287c;
                this.f4805i = k1Var == null ? new byte[i13] : (byte[]) k1Var.e(byte[].class, i13);
                kf.d dVar2 = this.f4799c;
                int i14 = this.r * this.f4812q;
                k1 k1Var2 = (k1) dVar2.f10287c;
                this.f4806j = k1Var2 == null ? new int[i14] : (int[]) k1Var2.e(int[].class, i14);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final Bitmap a() {
        Boolean bool = this.f4813s;
        Bitmap bitmapH = ((i5.c) this.f4799c.f10286b).h(this.r, this.f4812q, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f4814t);
        bitmapH.setHasAlpha(true);
        return bitmapH;
    }

    public final synchronized Bitmap b() {
        try {
            if (this.l.f4784c <= 0 || this.f4807k < 0) {
                if (Log.isLoggable("d", 3)) {
                    int i10 = this.l.f4784c;
                }
                this.f4810o = 1;
            }
            int i11 = this.f4810o;
            if (i11 != 1 && i11 != 2) {
                this.f4810o = 0;
                if (this.f4801e == null) {
                    k1 k1Var = (k1) this.f4799c.f10287c;
                    this.f4801e = k1Var == null ? new byte[255] : (byte[]) k1Var.e(byte[].class, 255);
                }
                a aVar = (a) this.l.f4786e.get(this.f4807k);
                int i12 = this.f4807k - 1;
                a aVar2 = i12 >= 0 ? (a) this.l.f4786e.get(i12) : null;
                int[] iArr = aVar.f4781k;
                if (iArr == null) {
                    iArr = this.l.f4782a;
                }
                this.f4797a = iArr;
                if (iArr == null) {
                    this.f4810o = 1;
                    return null;
                }
                if (aVar.f4776f) {
                    System.arraycopy(iArr, 0, this.f4798b, 0, iArr.length);
                    int[] iArr2 = this.f4798b;
                    this.f4797a = iArr2;
                    iArr2[aVar.f4778h] = 0;
                    if (aVar.f4777g == 2 && this.f4807k == 0) {
                        this.f4813s = Boolean.TRUE;
                    }
                }
                return d(aVar, aVar2);
            }
            return null;
        } finally {
        }
    }

    public final void c(Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
        if (config == config3 || config == (config2 = Bitmap.Config.RGB_565)) {
            this.f4814t = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + config3 + " or " + config2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Bitmap d(a aVar, a aVar2) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        short s8;
        int i22;
        Bitmap bitmap;
        int[] iArr = this.f4806j;
        kf.d dVar = this.f4799c;
        if (aVar2 == null) {
            Bitmap bitmap2 = this.f4808m;
            if (bitmap2 != null) {
                ((i5.c) dVar.f10286b).c(bitmap2);
            }
            this.f4808m = null;
            Arrays.fill(iArr, 0);
        }
        if (aVar2 != null && aVar2.f4777g == 3 && this.f4808m == null) {
            Arrays.fill(iArr, 0);
        }
        if (aVar2 != null && (i22 = aVar2.f4777g) > 0) {
            if (i22 == 2) {
                if (!aVar.f4776f) {
                    b bVar = this.l;
                    int i23 = bVar.f4792k;
                    if (aVar.f4781k != null && bVar.f4791j == aVar.f4778h) {
                        i23 = 0;
                    }
                    int i24 = aVar2.f4774d;
                    int i25 = this.f4811p;
                    int i26 = i24 / i25;
                    int i27 = aVar2.f4772b / i25;
                    int i28 = aVar2.f4773c / i25;
                    int i29 = aVar2.f4771a / i25;
                    int i30 = this.r;
                    int i31 = (i27 * i30) + i29;
                    int i32 = (i26 * i30) + i31;
                    while (i31 < i32) {
                        int i33 = i31 + i28;
                        for (int i34 = i31; i34 < i33; i34++) {
                            iArr[i34] = i23;
                        }
                        i31 += this.r;
                    }
                }
            } else if (i22 == 3 && (bitmap = this.f4808m) != null) {
                int i35 = this.r;
                bitmap.getPixels(iArr, 0, i35, 0, 0, i35, this.f4812q);
            }
        }
        this.f4800d.position(aVar.f4780j);
        int i36 = aVar.f4773c * aVar.f4774d;
        byte[] bArr = this.f4805i;
        if (bArr == null || bArr.length < i36) {
            k1 k1Var = (k1) dVar.f10287c;
            this.f4805i = k1Var == null ? new byte[i36] : (byte[]) k1Var.e(byte[].class, i36);
        }
        byte[] bArr2 = this.f4805i;
        if (this.f4802f == null) {
            this.f4802f = new short[4096];
        }
        short[] sArr = this.f4802f;
        if (this.f4803g == null) {
            this.f4803g = new byte[4096];
        }
        byte[] bArr3 = this.f4803g;
        if (this.f4804h == null) {
            this.f4804h = new byte[CarLanID.Send.MUSIC];
        }
        byte[] bArr4 = this.f4804h;
        int i37 = this.f4800d.get() & 255;
        int i38 = 1 << i37;
        int i39 = i38 + 1;
        int i40 = i38 + 2;
        int i41 = i37 + 1;
        int i42 = (1 << i41) - 1;
        for (int i43 = 0; i43 < i38; i43++) {
            sArr[i43] = 0;
            bArr3[i43] = (byte) i43;
        }
        byte[] bArr5 = this.f4801e;
        int i44 = i41;
        int i45 = i40;
        int i46 = i42;
        int i47 = 0;
        short s10 = -1;
        int i48 = 0;
        int i49 = 0;
        int i50 = 0;
        int i51 = 0;
        int i52 = 0;
        short s11 = 0;
        int i53 = 0;
        while (true) {
            if (i47 >= i36) {
                break;
            }
            if (i48 == 0) {
                int i54 = this.f4800d.get() & 255;
                if (i54 <= 0) {
                    i20 = i41;
                    i21 = i47;
                } else {
                    ByteBuffer byteBuffer = this.f4800d;
                    i20 = i41;
                    i21 = i47;
                    byteBuffer.get(this.f4801e, 0, Math.min(i54, byteBuffer.remaining()));
                }
                if (i54 <= 0) {
                    this.f4810o = 3;
                    break;
                }
                i48 = i54;
                i49 = 0;
            } else {
                i20 = i41;
                i21 = i47;
            }
            i51 += (bArr5[i49] & 255) << i50;
            i49++;
            i48--;
            short s12 = s10;
            int i55 = i50 + 8;
            int i56 = i45;
            int i57 = i44;
            i47 = i21;
            byte[] bArr6 = bArr5;
            short s13 = s11;
            while (true) {
                if (i55 < i57) {
                    s11 = s13;
                    i44 = i57;
                    i50 = i55;
                    i45 = i56;
                    bArr5 = bArr6;
                    i41 = i20;
                    s10 = s12;
                    break;
                }
                int[] iArr2 = iArr;
                int i58 = i51 & i46;
                i51 >>= i57;
                i55 -= i57;
                if (i58 == i38) {
                    i56 = i40;
                    i46 = i42;
                    iArr = iArr2;
                    i57 = i20;
                    s12 = -1;
                } else {
                    if (i58 == i39) {
                        s11 = s13;
                        i44 = i57;
                        i45 = i56;
                        bArr5 = bArr6;
                        iArr = iArr2;
                        i41 = i20;
                        s10 = s12;
                        i50 = i55;
                        break;
                    }
                    if (s12 == -1) {
                        bArr2[i52] = bArr3[i58 == true ? 1 : 0];
                        i52++;
                        i47++;
                        s13 = i58 == true ? 1 : 0;
                        s12 = s13;
                        iArr = iArr2;
                        i55 = i55;
                    } else {
                        if (i58 >= i56) {
                            bArr4[i53] = (byte) s13;
                            i53++;
                            s8 = s12;
                        } else {
                            s8 = i58 == true ? 1 : 0;
                        }
                        while (s8 >= i38) {
                            bArr4[i53] = bArr3[s8];
                            i53++;
                            s8 = sArr[s8];
                        }
                        boolean z = bArr3[s8] & 255;
                        byte b10 = z ? (byte) 1 : (byte) 0;
                        bArr2[i52] = b10;
                        while (true) {
                            i52++;
                            i47++;
                            if (i53 <= 0) {
                                break;
                            }
                            i53--;
                            bArr2[i52] = bArr4[i53];
                        }
                        if (i56 < 4096) {
                            sArr[i56] = s12;
                            bArr3[i56] = b10;
                            i56++;
                            if ((i56 & i46) == 0 && i56 < 4096) {
                                i57++;
                                i46 += i56;
                            }
                        }
                        s12 = i58 == true ? 1 : 0;
                        iArr = iArr2;
                        i55 = i55;
                        s13 = z ? 1 : 0;
                    }
                }
            }
        }
        int[] iArr3 = iArr;
        Arrays.fill(bArr2, i52, i36, (byte) 0);
        if (aVar.f4775e || this.f4811p != 1) {
            int[] iArr4 = this.f4806j;
            int i59 = aVar.f4774d;
            int i60 = this.f4811p;
            int i61 = i59 / i60;
            int i62 = aVar.f4772b / i60;
            int i63 = aVar.f4773c / i60;
            int i64 = aVar.f4771a / i60;
            boolean z4 = this.f4807k == 0;
            int i65 = this.r;
            int i66 = this.f4812q;
            byte[] bArr7 = this.f4805i;
            int[] iArr5 = this.f4797a;
            Boolean bool = this.f4813s;
            int i67 = 0;
            int i68 = 0;
            int i69 = 1;
            int i70 = 8;
            while (i67 < i61) {
                Boolean bool2 = bool;
                if (aVar.f4775e) {
                    if (i68 >= i61) {
                        int i71 = i69 + 1;
                        i10 = i61;
                        if (i71 == 2) {
                            i69 = i71;
                            i68 = 4;
                        } else if (i71 == 3) {
                            i69 = i71;
                            i68 = 2;
                            i70 = 4;
                        } else if (i71 != 4) {
                            i69 = i71;
                        } else {
                            i69 = i71;
                            i68 = 1;
                            i70 = 2;
                        }
                    } else {
                        i10 = i61;
                    }
                    i11 = i68 + i70;
                } else {
                    i10 = i61;
                    i11 = i68;
                    i68 = i67;
                }
                int i72 = i68 + i62;
                boolean z10 = i60 == 1;
                if (i72 < i66) {
                    int i73 = i72 * i65;
                    int i74 = i73 + i64;
                    i12 = i11;
                    int i75 = i74 + i63;
                    int i76 = i73 + i65;
                    if (i76 < i75) {
                        i75 = i76;
                    }
                    i13 = i62;
                    int i77 = i67 * i60 * aVar.f4773c;
                    if (z10) {
                        bool = bool2;
                        int i78 = i74;
                        while (i78 < i75) {
                            int i79 = i63;
                            int i80 = iArr5[bArr7[i77] & 255];
                            if (i80 != 0) {
                                iArr4[i78] = i80;
                            } else if (z4 && bool == null) {
                                bool = Boolean.TRUE;
                            }
                            i77 += i60;
                            i78++;
                            i63 = i79;
                        }
                        i14 = i63;
                    } else {
                        i14 = i63;
                        int i81 = ((i75 - i74) * i60) + i77;
                        bool = bool2;
                        int i82 = i74;
                        while (i82 < i75) {
                            int i83 = i75;
                            int i84 = aVar.f4773c;
                            int i85 = i64;
                            int i86 = i65;
                            int i87 = i77;
                            int i88 = 0;
                            int i89 = 0;
                            int i90 = 0;
                            int i91 = 0;
                            int i92 = 0;
                            while (true) {
                                if (i87 >= this.f4811p + i77) {
                                    i18 = i66;
                                    break;
                                }
                                byte[] bArr8 = this.f4805i;
                                i18 = i66;
                                if (i87 >= bArr8.length || i87 >= i81) {
                                    break;
                                }
                                int i93 = this.f4797a[bArr8[i87] & 255];
                                if (i93 != 0) {
                                    i88 += (i93 >> 24) & 255;
                                    i89 += (i93 >> 16) & 255;
                                    i90 += (i93 >> 8) & 255;
                                    i91 += i93 & 255;
                                    i92++;
                                }
                                i87++;
                                i66 = i18;
                            }
                            int i94 = i84 + i77;
                            for (int i95 = i94; i95 < this.f4811p + i94; i95++) {
                                byte[] bArr9 = this.f4805i;
                                if (i95 >= bArr9.length || i95 >= i81) {
                                    break;
                                }
                                int i96 = this.f4797a[bArr9[i95] & 255];
                                if (i96 != 0) {
                                    i88 += (i96 >> 24) & 255;
                                    i89 += (i96 >> 16) & 255;
                                    i90 += (i96 >> 8) & 255;
                                    i91 += i96 & 255;
                                    i92++;
                                }
                            }
                            int i97 = i92 == 0 ? 0 : ((i88 / i92) << 24) | ((i89 / i92) << 16) | ((i90 / i92) << 8) | (i91 / i92);
                            if (i97 != 0) {
                                iArr4[i82] = i97;
                            } else if (z4 && bool == null) {
                                bool = Boolean.TRUE;
                            }
                            i77 += i60;
                            i82++;
                            i75 = i83;
                            i64 = i85;
                            i65 = i86;
                            i66 = i18;
                        }
                    }
                    i15 = i64;
                    i16 = i65;
                    i17 = i66;
                } else {
                    i12 = i11;
                    i13 = i62;
                    i14 = i63;
                    i15 = i64;
                    i16 = i65;
                    i17 = i66;
                    bool = bool2;
                }
                i67++;
                i61 = i10;
                i68 = i12;
                i62 = i13;
                i63 = i14;
                i64 = i15;
                i65 = i16;
                i66 = i17;
            }
            Boolean bool3 = bool;
            if (this.f4813s == null) {
                this.f4813s = Boolean.valueOf(bool3 == null ? false : bool3.booleanValue());
            }
        } else {
            int[] iArr6 = this.f4806j;
            int i98 = aVar.f4774d;
            int i99 = aVar.f4772b;
            int i100 = aVar.f4773c;
            int i101 = aVar.f4771a;
            boolean z11 = this.f4807k == 0;
            int i102 = this.r;
            byte[] bArr10 = this.f4805i;
            int[] iArr7 = this.f4797a;
            int i103 = -1;
            for (int i104 = 0; i104 < i98; i104++) {
                int i105 = (i104 + i99) * i102;
                int i106 = i105 + i101;
                int i107 = i106 + i100;
                int i108 = i105 + i102;
                if (i108 < i107) {
                    i107 = i108;
                }
                int i109 = aVar.f4773c * i104;
                while (i106 < i107) {
                    int i110 = i98;
                    int i111 = bArr10[i109];
                    int i112 = i99;
                    int i113 = i111 & 255;
                    if (i113 != i103) {
                        int i114 = iArr7[i113];
                        if (i114 != 0) {
                            iArr6[i106] = i114;
                        } else {
                            i103 = i111;
                        }
                    }
                    i109++;
                    i106++;
                    i98 = i110;
                    i99 = i112;
                }
            }
            Boolean bool4 = this.f4813s;
            this.f4813s = Boolean.valueOf((bool4 != null && bool4.booleanValue()) || (this.f4813s == null && z11 && i103 != -1));
        }
        if (this.f4809n && ((i19 = aVar.f4777g) == 0 || i19 == 1)) {
            if (this.f4808m == null) {
                this.f4808m = a();
            }
            Bitmap bitmap3 = this.f4808m;
            int i115 = this.r;
            bitmap3.setPixels(iArr3, 0, i115, 0, 0, i115, this.f4812q);
        }
        Bitmap bitmapA = a();
        int i116 = this.r;
        bitmapA.setPixels(iArr3, 0, i116, 0, 0, i116, this.f4812q);
        return bitmapA;
    }
}
