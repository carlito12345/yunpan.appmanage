package g;

import java.io.IOException;
import java.util.ArrayList;
import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f5912a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f5913b;

    /* renamed from: c, reason: collision with root package name */
    public int f5914c;

    /* renamed from: d, reason: collision with root package name */
    public int f5915d;

    /* renamed from: e, reason: collision with root package name */
    public int f5916e;

    /* renamed from: f, reason: collision with root package name */
    public int f5917f;

    /* renamed from: g, reason: collision with root package name */
    public int f5918g = 0;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f5919h = new ArrayList();

    /* renamed from: i, reason: collision with root package name */
    public int f5920i = 0;

    /* JADX WARN: Removed duplicated region for block: B:100:0x013c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:101:? A[LOOP:0: B:3:0x000e->B:101:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0254 A[LOOP:4: B:91:0x0252->B:92:0x0254, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final byte[] a(byte[] bArr) throws IOException {
        ArrayList arrayList;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        byte[] bArr2;
        this.f5912a = bArr;
        int i17 = 0;
        this.f5915d = 0;
        this.f5917f = 0;
        this.f5916e = bArr.length;
        while (true) {
            int i18 = this.f5915d;
            int i19 = this.f5916e;
            arrayList = this.f5919h;
            i10 = 3;
            i11 = 2;
            i12 = 128;
            if (i18 >= i19) {
                i13 = 0;
                break;
            }
            if (i18 != i19) {
                byte[] bArr3 = this.f5912a;
                byte b10 = bArr3[i18];
                if ((b10 & 31) == 0 && (b10 & HebrewProber.SPACE) == 0 && (b10 & 192) == 0 && bArr3[i18 + 1] == 0) {
                    int size = arrayList.size() - 1;
                    Object obj = null;
                    int length = 0;
                    while (size >= 0) {
                        obj = arrayList.get(size);
                        if (obj instanceof Integer) {
                            break;
                        }
                        length += ((byte[]) obj).length - 3;
                        size--;
                    }
                    if (size < 0) {
                        throw new IOException("EOC does not have matching indefinite-length tag");
                    }
                    int iIntValue = (this.f5915d - ((Integer) obj).intValue()) + length;
                    if (iIntValue < 128) {
                        bArr2 = new byte[]{(byte) iIntValue};
                    } else if (iIntValue < 256) {
                        bArr2 = new byte[]{-127, (byte) iIntValue};
                    } else if (iIntValue < 65536) {
                        bArr2 = new byte[]{-126, (byte) (iIntValue >> 8), (byte) iIntValue};
                    } else {
                        bArr2 = iIntValue < 16777216 ? new byte[]{-125, (byte) (iIntValue >> 16), (byte) (iIntValue >> 8), (byte) iIntValue} : new byte[]{-124, (byte) (iIntValue >> 24), (byte) (iIntValue >> 16), (byte) (iIntValue >> 8), (byte) iIntValue};
                    }
                    arrayList.set(size, bArr2);
                    this.f5918g--;
                    this.f5920i = (bArr2.length - 3) + this.f5920i;
                }
                this.f5915d++;
            }
            int i20 = this.f5915d;
            int i21 = this.f5916e;
            if (i20 == i21) {
                i16 = 0;
                int i22 = this.f5915d + i16;
                this.f5915d = i22;
                if (this.f5918g == 0) {
                    i13 = this.f5916e - i22;
                    this.f5916e = i22;
                    break;
                }
            } else {
                byte[] bArr4 = this.f5912a;
                int i23 = i20 + 1;
                this.f5915d = i23;
                byte b11 = bArr4[i20];
                int i24 = b11 & 128;
                if (i24 == 128 && (b11 & Byte.MAX_VALUE) == 0) {
                    arrayList.add(new Integer(i23));
                    this.f5918g++;
                    i16 = 0;
                    int i222 = this.f5915d + i16;
                    this.f5915d = i222;
                    if (this.f5918g == 0) {
                    }
                } else {
                    if (i24 == 128) {
                        int i25 = b11 & Byte.MAX_VALUE;
                        if (i25 > 4) {
                            throw new IOException("Too much data");
                        }
                        if (i21 - i23 < i25 + 1) {
                            throw new IOException("Too little data");
                        }
                        i16 = 0;
                        for (int i26 = 0; i26 < i25; i26++) {
                            byte[] bArr5 = this.f5912a;
                            int i27 = this.f5915d;
                            this.f5915d = i27 + 1;
                            i16 = (i16 << 8) + (bArr5[i27] & 255);
                        }
                    } else {
                        i16 = b11 & Byte.MAX_VALUE;
                    }
                    int i2222 = this.f5915d + i16;
                    this.f5915d = i2222;
                    if (this.f5918g == 0) {
                    }
                }
            }
        }
        this.f5913b = new byte[this.f5916e + this.f5920i + i13];
        this.f5915d = 0;
        this.f5914c = 0;
        this.f5917f = 0;
        while (true) {
            int i28 = this.f5915d;
            int i29 = this.f5916e;
            if (i28 >= i29) {
                System.arraycopy(bArr, i29, this.f5913b, this.f5920i + i29, i13);
                return this.f5913b;
            }
            b();
            int i30 = this.f5915d;
            if (i30 != this.f5916e) {
                byte[] bArr6 = this.f5912a;
                this.f5915d = i30 + 1;
                byte b12 = bArr6[i30];
                int i31 = b12 & 128;
                if (i31 == i12 && (b12 & Byte.MAX_VALUE) == 0) {
                    int i32 = this.f5917f;
                    this.f5917f = i32 + 1;
                    byte[] bArr7 = (byte[]) arrayList.get(i32);
                    System.arraycopy(bArr7, i17, this.f5913b, this.f5914c, bArr7.length);
                    this.f5914c += bArr7.length;
                } else {
                    if (i31 == i12) {
                        int i33 = b12 & Byte.MAX_VALUE;
                        i14 = 0;
                        for (int i34 = 0; i34 < i33; i34++) {
                            byte[] bArr8 = this.f5912a;
                            int i35 = this.f5915d;
                            this.f5915d = i35 + 1;
                            i14 = (i14 << 8) + (bArr8[i35] & 255);
                        }
                    } else {
                        i14 = b12 & Byte.MAX_VALUE;
                    }
                    if (i14 < i12) {
                        byte[] bArr9 = this.f5913b;
                        int i36 = this.f5914c;
                        this.f5914c = i36 + 1;
                        bArr9[i36] = (byte) i14;
                    } else if (i14 < 256) {
                        byte[] bArr10 = this.f5913b;
                        int i37 = this.f5914c;
                        int i38 = i37 + 1;
                        this.f5914c = i38;
                        bArr10[i37] = -127;
                        this.f5914c = i37 + i11;
                        bArr10[i38] = (byte) i14;
                    } else if (i14 < 65536) {
                        byte[] bArr11 = this.f5913b;
                        int i39 = this.f5914c;
                        int i40 = i39 + 1;
                        this.f5914c = i40;
                        bArr11[i39] = -126;
                        int i41 = i39 + 2;
                        this.f5914c = i41;
                        bArr11[i40] = (byte) (i14 >> 8);
                        this.f5914c = i39 + i10;
                        bArr11[i41] = (byte) i14;
                    } else {
                        if (i14 < 16777216) {
                            byte[] bArr12 = this.f5913b;
                            int i42 = this.f5914c;
                            int i43 = i42 + 1;
                            this.f5914c = i43;
                            bArr12[i42] = -125;
                            int i44 = i42 + 2;
                            this.f5914c = i44;
                            bArr12[i43] = (byte) (i14 >> 16);
                            int i45 = i42 + 3;
                            this.f5914c = i45;
                            bArr12[i44] = (byte) (i14 >> 8);
                            this.f5914c = i42 + 4;
                            bArr12[i45] = (byte) i14;
                        } else {
                            byte[] bArr13 = this.f5913b;
                            int i46 = this.f5914c;
                            int i47 = i46 + 1;
                            this.f5914c = i47;
                            bArr13[i46] = -124;
                            int i48 = i46 + 2;
                            this.f5914c = i48;
                            bArr13[i47] = (byte) (i14 >> 24);
                            int i49 = i46 + 3;
                            this.f5914c = i49;
                            bArr13[i48] = (byte) (i14 >> 16);
                            int i50 = i46 + 4;
                            this.f5914c = i50;
                            bArr13[i49] = (byte) (i14 >> 8);
                            this.f5914c = i46 + 5;
                            bArr13[i50] = (byte) i14;
                        }
                        for (i15 = 0; i15 < i14; i15++) {
                            byte[] bArr14 = this.f5913b;
                            int i51 = this.f5914c;
                            this.f5914c = i51 + 1;
                            byte[] bArr15 = this.f5912a;
                            int i52 = this.f5915d;
                            this.f5915d = i52 + 1;
                            bArr14[i51] = bArr15[i52];
                        }
                    }
                    while (i15 < i14) {
                    }
                }
            }
            i17 = 0;
            i10 = 3;
            i11 = 2;
            i12 = 128;
        }
    }

    public final void b() {
        int i10 = this.f5915d;
        if (i10 == this.f5916e) {
            return;
        }
        byte[] bArr = this.f5912a;
        int i11 = i10 + 1;
        this.f5915d = i11;
        byte b10 = bArr[i10];
        if ((b10 & 31) == 0 && (b10 & HebrewProber.SPACE) == 0 && (b10 & 192) == 0 && bArr[i11] == 0) {
            this.f5915d = i10 + 2;
            b();
        } else {
            byte[] bArr2 = this.f5913b;
            int i12 = this.f5914c;
            this.f5914c = i12 + 1;
            bArr2[i12] = b10;
        }
    }
}
