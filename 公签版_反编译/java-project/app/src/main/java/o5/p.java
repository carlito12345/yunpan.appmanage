package o5;

import a2.k1;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.RectF;
import android.os.Build;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import ha.l2;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: f, reason: collision with root package name */
    public static final f5.h f11612f = f5.h.a(f5.b.f5615c, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat");

    /* renamed from: g, reason: collision with root package name */
    public static final f5.h f11613g = new f5.h("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", null, f5.h.f5619e);

    /* renamed from: h, reason: collision with root package name */
    public static final f5.h f11614h;

    /* renamed from: i, reason: collision with root package name */
    public static final f5.h f11615i;

    /* renamed from: j, reason: collision with root package name */
    public static final Set f11616j;

    /* renamed from: k, reason: collision with root package name */
    public static final l2 f11617k;
    public static final Set l;

    /* renamed from: m, reason: collision with root package name */
    public static final ArrayDeque f11618m;

    /* renamed from: a, reason: collision with root package name */
    public final i5.c f11619a;

    /* renamed from: b, reason: collision with root package name */
    public final DisplayMetrics f11620b;

    /* renamed from: c, reason: collision with root package name */
    public final k1 f11621c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f11622d;

    /* renamed from: e, reason: collision with root package name */
    public final v f11623e = v.a();

    static {
        n nVar = n.f11604b;
        Boolean bool = Boolean.FALSE;
        f11614h = f5.h.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize");
        f11615i = f5.h.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode");
        f11616j = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f11617k = new l2(23);
        l = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser$ImageType.JPEG, ImageHeaderParser$ImageType.PNG_A, ImageHeaderParser$ImageType.PNG));
        char[] cArr = a6.q.f446a;
        f11618m = new ArrayDeque(0);
    }

    public p(ArrayList arrayList, DisplayMetrics displayMetrics, i5.c cVar, k1 k1Var) {
        this.f11622d = arrayList;
        a6.h.c(displayMetrics, "Argument must not be null");
        this.f11620b = displayMetrics;
        a6.h.c(cVar, "Argument must not be null");
        this.f11619a = cVar;
        a6.h.c(k1Var, "Argument must not be null");
        this.f11621c = k1Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:?, code lost:
    
        throw r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap c(v3.f fVar, BitmapFactory.Options options, o oVar, i5.c cVar) {
        if (!options.inJustDecodeBounds) {
            oVar.p();
            switch (fVar.f16473a) {
                case 22:
                    w wVar = (w) ((com.bumptech.glide.load.data.i) fVar.f16474b).f3361b;
                    synchronized (wVar) {
                        wVar.f11638c = wVar.f11636a.length;
                        break;
                    }
            }
        }
        int i10 = options.outWidth;
        int i11 = options.outHeight;
        String str = options.outMimeType;
        Lock lock = z.f11645b;
        lock.lock();
        try {
            try {
                Bitmap bitmapU = fVar.u(options);
                lock.unlock();
                return bitmapU;
            } catch (IllegalArgumentException e7) {
                StringBuilder sbO = ta.q.o(i10, i11, "Exception decoding bitmap, outWidth: ", ", outHeight: ", ", outMimeType: ");
                sbO.append(str);
                sbO.append(", inBitmap: ");
                sbO.append(d(options.inBitmap));
                IOException iOException = new IOException(sbO.toString(), e7);
                Bitmap bitmap = options.inBitmap;
                if (bitmap == null) {
                    throw iOException;
                }
                try {
                    cVar.c(bitmap);
                    options.inBitmap = null;
                    Bitmap bitmapC = c(fVar, options, oVar, cVar);
                    z.f11645b.unlock();
                    return bitmapC;
                } catch (IOException unused) {
                    throw iOException;
                }
            }
        } catch (Throwable th2) {
            z.f11645b.unlock();
            throw th2;
        }
    }

    public static String d(Bitmap bitmap) {
        String str;
        if (bitmap == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            str = " (" + bitmap.getAllocationByteCount() + ")";
        } else {
            str = "";
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + str;
    }

    public static void e(BitmapFactory.Options options) {
        f(options);
        ArrayDeque arrayDeque = f11618m;
        synchronized (arrayDeque) {
            arrayDeque.offer(options);
        }
    }

    public static void f(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public final d a(v3.f fVar, int i10, int i11, f5.i iVar, o oVar) {
        BitmapFactory.Options options;
        BitmapFactory.Options options2;
        byte[] bArr = (byte[]) this.f11621c.e(byte[].class, 65536);
        synchronized (p.class) {
            ArrayDeque arrayDeque = f11618m;
            synchronized (arrayDeque) {
                options = (BitmapFactory.Options) arrayDeque.poll();
            }
            if (options == null) {
                options = new BitmapFactory.Options();
                f(options);
            }
            options2 = options;
        }
        options2.inTempStorage = bArr;
        f5.b bVar = (f5.b) iVar.c(f11612f);
        f5.j jVar = (f5.j) iVar.c(f11613g);
        n nVar = (n) iVar.c(n.f11609g);
        boolean zBooleanValue = ((Boolean) iVar.c(f11614h)).booleanValue();
        f5.h hVar = f11615i;
        try {
            return d.b(b(fVar, options2, nVar, bVar, jVar, iVar.c(hVar) != null && ((Boolean) iVar.c(hVar)).booleanValue(), i10, i11, zBooleanValue, oVar), this.f11619a);
        } finally {
            e(options2);
            this.f11621c.i(bArr);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x031d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x037e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x03f8  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0457  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x04f3 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x012e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Bitmap b(v3.f fVar, BitmapFactory.Options options, n nVar, f5.b bVar, f5.j jVar, boolean z, int i10, int i11, boolean z4, o oVar) throws Throwable {
        int iL;
        char c7;
        boolean z10;
        int iRound;
        int i12;
        ImageHeaderParser$ImageType imageHeaderParser$ImageTypeZ;
        boolean z11;
        int i13;
        int i14;
        boolean z12;
        int iRound2;
        String str;
        int i15;
        p pVar;
        boolean zC;
        int i16;
        int i17;
        Bitmap.Config config;
        Bitmap bitmapC;
        Bitmap bitmap;
        boolean zHasAlpha;
        int i18;
        int i19;
        int iMax;
        int iFloor;
        int iFloor2;
        int i20;
        int i21;
        double d10;
        w wVar;
        o oVar2 = oVar;
        int i22 = a6.k.f434a;
        SystemClock.elapsedRealtimeNanos();
        options.inJustDecodeBounds = true;
        i5.c cVar = this.f11619a;
        c(fVar, options, oVar2, cVar);
        options.inJustDecodeBounds = false;
        int[] iArr = {options.outWidth, options.outHeight};
        int i23 = iArr[0];
        int i24 = iArr[1];
        boolean z13 = (i23 == -1 || i24 == -1) ? false : z;
        switch (fVar.f16473a) {
            case 21:
                ByteBuffer byteBufferC = a6.c.c((ByteBuffer) fVar.f16474b);
                k1 k1Var = (k1) fVar.f16476d;
                if (byteBufferC == null) {
                    iL = -1;
                } else {
                    ArrayList arrayList = (ArrayList) fVar.f16475c;
                    int size = arrayList.size();
                    for (int i25 = 0; i25 < size; i25++) {
                        try {
                            int iB = ((f5.e) arrayList.get(i25)).b(byteBufferC, k1Var);
                            if (iB != -1) {
                                iL = iB;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    iL = -1;
                }
                switch (iL) {
                    case 3:
                    case 4:
                        c7 = 180;
                        break;
                    case 5:
                    case 6:
                        c7 = Matrix.MATRIX_TYPE_ZERO;
                        break;
                    case 7:
                    case 8:
                        c7 = 270;
                        break;
                    default:
                        c7 = 0;
                        break;
                }
                switch (iL) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        z10 = true;
                        break;
                    default:
                        z10 = false;
                        break;
                }
                iRound = i10;
                if (iRound == Integer.MIN_VALUE) {
                    i12 = i11;
                } else if (c7 == 'Z' || c7 == 270) {
                    i12 = i11;
                    iRound = i24;
                } else {
                    i12 = i11;
                    iRound = i23;
                }
                if (i12 == Integer.MIN_VALUE) {
                    i12 = (c7 == 'Z' || c7 == 270) ? i23 : i24;
                }
                imageHeaderParser$ImageTypeZ = fVar.z();
                int i26 = iL;
                if (i23 > 0) {
                    z11 = z10;
                    i13 = i24;
                    i14 = i23;
                    z12 = z13;
                    iRound2 = i12;
                    str = "Downsampler";
                    i15 = 3;
                } else if (i24 <= 0) {
                    z11 = z10;
                    i14 = i23;
                    z12 = z13;
                    i15 = 3;
                    int i27 = i12;
                    str = "Downsampler";
                    i13 = i24;
                    iRound2 = i27;
                } else {
                    if (c7 == 'Z' || c7 == 270) {
                        z11 = z10;
                        i18 = i24;
                        i19 = i23;
                    } else {
                        z11 = z10;
                        i19 = i24;
                        i18 = i23;
                    }
                    float fB = nVar.b(i18, i19, iRound, i12);
                    if (fB <= 0.0f) {
                        throw new IllegalArgumentException("Cannot scale with factor: " + fB + " from: " + nVar + ", source: [" + i23 + "x" + i24 + "], target: [" + iRound + "x" + i12 + "]");
                    }
                    z12 = z13;
                    int iA = nVar.a(i18, i19, iRound, i12);
                    if (iA == 0) {
                        throw new IllegalArgumentException("Cannot round with null rounding");
                    }
                    float f10 = i18;
                    double d11 = fB * f10;
                    Double.isNaN(d11);
                    int i28 = (int) (d11 + 0.5d);
                    float f11 = i19;
                    int i29 = i12;
                    double d12 = fB * f11;
                    Double.isNaN(d12);
                    int i30 = i18 / i28;
                    int i31 = i19 / ((int) (d12 + 0.5d));
                    int iMax2 = iA == 1 ? Math.max(i30, i31) : Math.min(i30, i31);
                    int i32 = Build.VERSION.SDK_INT;
                    if (i32 > 23 || !f11616j.contains(options.outMimeType)) {
                        iMax = Math.max(1, Integer.highestOneBit(iMax2));
                        if (iA == 1 && iMax < 1.0f / fB) {
                            iMax <<= 1;
                        }
                    } else {
                        iMax = 1;
                    }
                    options.inSampleSize = iMax;
                    if (imageHeaderParser$ImageTypeZ != ImageHeaderParser$ImageType.JPEG) {
                        if (imageHeaderParser$ImageTypeZ == ImageHeaderParser$ImageType.PNG || imageHeaderParser$ImageTypeZ == ImageHeaderParser$ImageType.PNG_A) {
                            oVar2 = oVar;
                            float f12 = iMax;
                            iFloor = (int) Math.floor(f10 / f12);
                            iFloor2 = (int) Math.floor(f11 / f12);
                        } else if (imageHeaderParser$ImageTypeZ.isWebp()) {
                            if (i32 >= 24) {
                                float f13 = iMax;
                                iFloor = Math.round(f10 / f13);
                                iFloor2 = Math.round(f11 / f13);
                            } else {
                                float f14 = iMax;
                                iFloor = (int) Math.floor(f10 / f14);
                                iFloor2 = (int) Math.floor(f11 / f14);
                            }
                        } else if (i18 % iMax == 0 && i19 % iMax == 0) {
                            iFloor = i18 / iMax;
                            iFloor2 = i19 / iMax;
                        } else {
                            options.inJustDecodeBounds = true;
                            oVar2 = oVar;
                            c(fVar, options, oVar2, cVar);
                            options.inJustDecodeBounds = false;
                            int[] iArr2 = {options.outWidth, options.outHeight};
                            int i33 = iArr2[0];
                            iFloor2 = iArr2[1];
                            iFloor = i33;
                        }
                        iRound2 = i29;
                        double dB = nVar.b(iFloor, iFloor2, iRound, iRound2);
                        if (i32 >= 19) {
                            if (dB <= 1.0d) {
                                d10 = dB;
                            } else {
                                Double.isNaN(dB);
                                d10 = 1.0d / dB;
                            }
                            int iRound3 = (int) Math.round(d10 * 2.147483647E9d);
                            double d13 = iRound3;
                            Double.isNaN(d13);
                            Double.isNaN(dB);
                            int i34 = (int) ((d13 * dB) + 0.5d);
                            double d14 = i34 / iRound3;
                            Double.isNaN(dB);
                            Double.isNaN(d14);
                            double d15 = i34;
                            Double.isNaN(d15);
                            options.inTargetDensity = (int) (((dB / d14) * d15) + 0.5d);
                            if (dB > 1.0d) {
                                Double.isNaN(dB);
                                dB = 1.0d / dB;
                            }
                            options.inDensity = (int) Math.round(dB * 2.147483647E9d);
                        }
                        i20 = options.inTargetDensity;
                        if (i20 > 0 || (i21 = options.inDensity) <= 0 || i20 == i21) {
                            options.inTargetDensity = 0;
                            options.inDensity = 0;
                        } else {
                            options.inScaled = true;
                        }
                        pVar = this;
                        str = "Downsampler";
                        i14 = i23;
                        i13 = i24;
                        zC = pVar.f11623e.c(iRound, iRound2, z12, z11);
                        if (!zC) {
                            options.inPreferredConfig = Bitmap.Config.HARDWARE;
                            options.inMutable = false;
                        }
                        if (!zC) {
                            if (bVar != f5.b.PREFER_ARGB_8888) {
                                try {
                                    zHasAlpha = fVar.z().hasAlpha();
                                } catch (IOException unused) {
                                    if (Log.isLoggable(str, 3) && bVar != null) {
                                        bVar.toString();
                                    }
                                    zHasAlpha = false;
                                }
                                Bitmap.Config config2 = zHasAlpha ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
                                options.inPreferredConfig = config2;
                                if (config2 == Bitmap.Config.RGB_565) {
                                    options.inDither = true;
                                }
                            } else {
                                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                            }
                        }
                        i16 = Build.VERSION.SDK_INT;
                        boolean z14 = i16 < 19;
                        if (options.inSampleSize != 1 || z14) {
                            if (i16 < 19 ? true : l.contains(imageHeaderParser$ImageTypeZ)) {
                                if (i14 < 0 || i13 < 0 || !z4 || !z14) {
                                    int i35 = options.inTargetDensity;
                                    float f15 = i35 > 0 && (i17 = options.inDensity) > 0 && i35 != i17 ? i35 / options.inDensity : 1.0f;
                                    float f16 = options.inSampleSize;
                                    int iCeil = (int) Math.ceil(i14 / f16);
                                    int iCeil2 = (int) Math.ceil(i13 / f16);
                                    iRound = Math.round(iCeil * f15);
                                    iRound2 = Math.round(iCeil2 * f15);
                                }
                                if (iRound > 0 && iRound2 > 0) {
                                    if (i16 >= 26) {
                                        config = options.inPreferredConfig != Bitmap.Config.HARDWARE ? options.outConfig : null;
                                    }
                                    if (config == null) {
                                        config = options.inPreferredConfig;
                                    }
                                    options.inBitmap = cVar.h(iRound, iRound2, config);
                                }
                            }
                        }
                        if (jVar != null) {
                            if (i16 >= 28) {
                                options.inPreferredColorSpace = ColorSpace.get(jVar == f5.j.DISPLAY_P3 && options.outColorSpace != null && options.outColorSpace.isWideGamut() ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB);
                            } else if (i16 >= 26) {
                                options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
                            }
                        }
                        bitmapC = c(fVar, options, oVar2, cVar);
                        oVar2.l(bitmapC, cVar);
                        if (Log.isLoggable(str, 2)) {
                            d(bitmapC);
                            d(options.inBitmap);
                            Thread.currentThread().getName();
                            SystemClock.elapsedRealtimeNanos();
                        }
                        if (bitmapC != null) {
                            return null;
                        }
                        bitmapC.setDensity(pVar.f11620b.densityDpi);
                        switch (i26) {
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                                android.graphics.Matrix matrix = new android.graphics.Matrix();
                                switch (i26) {
                                    case 2:
                                        matrix.setScale(-1.0f, 1.0f);
                                        break;
                                    case 3:
                                        matrix.setRotate(180.0f);
                                        break;
                                    case 4:
                                        matrix.setRotate(180.0f);
                                        matrix.postScale(-1.0f, 1.0f);
                                        break;
                                    case 5:
                                        matrix.setRotate(90.0f);
                                        matrix.postScale(-1.0f, 1.0f);
                                        break;
                                    case 6:
                                        matrix.setRotate(90.0f);
                                        break;
                                    case 7:
                                        matrix.setRotate(-90.0f);
                                        matrix.postScale(-1.0f, 1.0f);
                                        break;
                                    case 8:
                                        matrix.setRotate(-90.0f);
                                        break;
                                }
                                RectF rectF = new RectF(0.0f, 0.0f, bitmapC.getWidth(), bitmapC.getHeight());
                                matrix.mapRect(rectF);
                                Bitmap bitmapF = cVar.f(Math.round(rectF.width()), Math.round(rectF.height()), bitmapC.getConfig() != null ? bitmapC.getConfig() : Bitmap.Config.ARGB_8888);
                                matrix.postTranslate(-rectF.left, -rectF.top);
                                bitmapF.setHasAlpha(bitmapC.hasAlpha());
                                z.a(bitmapC, bitmapF, matrix);
                                bitmap = bitmapF;
                                break;
                            default:
                                bitmap = bitmapC;
                                break;
                        }
                        if (bitmapC.equals(bitmap)) {
                            return bitmap;
                        }
                        cVar.c(bitmapC);
                        return bitmap;
                    }
                    float fMin = Math.min(iMax, 8);
                    iFloor = (int) Math.ceil(f10 / fMin);
                    iFloor2 = (int) Math.ceil(f11 / fMin);
                    int i36 = iMax / 8;
                    if (i36 > 0) {
                        iFloor /= i36;
                        iFloor2 /= i36;
                    }
                    oVar2 = oVar;
                    iRound2 = i29;
                    double dB2 = nVar.b(iFloor, iFloor2, iRound, iRound2);
                    if (i32 >= 19) {
                    }
                    i20 = options.inTargetDensity;
                    if (i20 > 0) {
                        options.inTargetDensity = 0;
                        options.inDensity = 0;
                        pVar = this;
                        str = "Downsampler";
                        i14 = i23;
                        i13 = i24;
                    }
                    zC = pVar.f11623e.c(iRound, iRound2, z12, z11);
                    if (!zC) {
                    }
                    if (!zC) {
                    }
                    i16 = Build.VERSION.SDK_INT;
                    if (i16 < 19) {
                    }
                    if (options.inSampleSize != 1) {
                        if (i16 < 19 ? true : l.contains(imageHeaderParser$ImageTypeZ)) {
                        }
                    }
                    if (jVar != null) {
                    }
                    bitmapC = c(fVar, options, oVar2, cVar);
                    oVar2.l(bitmapC, cVar);
                    if (Log.isLoggable(str, 2)) {
                    }
                    if (bitmapC != null) {
                    }
                }
                if (Log.isLoggable(str, i15) && imageHeaderParser$ImageTypeZ != null) {
                    imageHeaderParser$ImageTypeZ.toString();
                }
                pVar = this;
                zC = pVar.f11623e.c(iRound, iRound2, z12, z11);
                if (!zC) {
                }
                if (!zC) {
                }
                i16 = Build.VERSION.SDK_INT;
                if (i16 < 19) {
                }
                if (options.inSampleSize != 1) {
                }
                if (jVar != null) {
                }
                bitmapC = c(fVar, options, oVar2, cVar);
                oVar2.l(bitmapC, cVar);
                if (Log.isLoggable(str, 2)) {
                }
                if (bitmapC != null) {
                }
                break;
            case 22:
                w wVar2 = (w) ((com.bumptech.glide.load.data.i) fVar.f16474b).f3361b;
                wVar2.reset();
                iL = android.support.v4.media.session.b.l((ArrayList) fVar.f16476d, wVar2, (k1) fVar.f16475c);
                switch (iL) {
                }
                switch (iL) {
                }
                iRound = i10;
                if (iRound == Integer.MIN_VALUE) {
                }
                if (i12 == Integer.MIN_VALUE) {
                }
                imageHeaderParser$ImageTypeZ = fVar.z();
                int i262 = iL;
                if (i23 > 0) {
                }
                if (Log.isLoggable(str, i15)) {
                    imageHeaderParser$ImageTypeZ.toString();
                }
                pVar = this;
                zC = pVar.f11623e.c(iRound, iRound2, z12, z11);
                if (!zC) {
                }
                if (!zC) {
                }
                i16 = Build.VERSION.SDK_INT;
                if (i16 < 19) {
                }
                if (options.inSampleSize != 1) {
                }
                if (jVar != null) {
                }
                bitmapC = c(fVar, options, oVar2, cVar);
                oVar2.l(bitmapC, cVar);
                if (Log.isLoggable(str, 2)) {
                }
                if (bitmapC != null) {
                }
                break;
            default:
                com.bumptech.glide.load.data.i iVar = (com.bumptech.glide.load.data.i) fVar.f16476d;
                k1 k1Var2 = (k1) fVar.f16474b;
                ArrayList arrayList2 = (ArrayList) fVar.f16475c;
                int size2 = arrayList2.size();
                int i37 = 0;
                while (i37 < size2) {
                    ArrayList arrayList3 = arrayList2;
                    f5.e eVar = (f5.e) arrayList2.get(i37);
                    int i38 = size2;
                    try {
                        w wVar3 = new w(new FileInputStream(iVar.f().getFileDescriptor()), k1Var2);
                        try {
                            int iD = eVar.d(wVar3, k1Var2);
                            wVar3.A();
                            iVar.f();
                            if (iD != -1) {
                                iL = iD;
                                switch (iL) {
                                }
                                switch (iL) {
                                }
                                iRound = i10;
                                if (iRound == Integer.MIN_VALUE) {
                                }
                                if (i12 == Integer.MIN_VALUE) {
                                }
                                imageHeaderParser$ImageTypeZ = fVar.z();
                                int i2622 = iL;
                                if (i23 > 0) {
                                }
                                if (Log.isLoggable(str, i15)) {
                                }
                                pVar = this;
                                zC = pVar.f11623e.c(iRound, iRound2, z12, z11);
                                if (!zC) {
                                }
                                if (!zC) {
                                }
                                i16 = Build.VERSION.SDK_INT;
                                if (i16 < 19) {
                                }
                                if (options.inSampleSize != 1) {
                                }
                                if (jVar != null) {
                                }
                                bitmapC = c(fVar, options, oVar2, cVar);
                                oVar2.l(bitmapC, cVar);
                                if (Log.isLoggable(str, 2)) {
                                }
                                if (bitmapC != null) {
                                }
                            } else {
                                i37++;
                                arrayList2 = arrayList3;
                                size2 = i38;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            wVar = wVar3;
                            if (wVar != null) {
                                wVar.A();
                            }
                            iVar.f();
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        wVar = null;
                    }
                }
                iL = -1;
                switch (iL) {
                }
                switch (iL) {
                }
                iRound = i10;
                if (iRound == Integer.MIN_VALUE) {
                }
                if (i12 == Integer.MIN_VALUE) {
                }
                imageHeaderParser$ImageTypeZ = fVar.z();
                int i26222 = iL;
                if (i23 > 0) {
                }
                if (Log.isLoggable(str, i15)) {
                }
                pVar = this;
                zC = pVar.f11623e.c(iRound, iRound2, z12, z11);
                if (!zC) {
                }
                if (!zC) {
                }
                i16 = Build.VERSION.SDK_INT;
                if (i16 < 19) {
                }
                if (options.inSampleSize != 1) {
                }
                if (jVar != null) {
                }
                bitmapC = c(fVar, options, oVar2, cVar);
                oVar2.l(bitmapC, cVar);
                if (Log.isLoggable(str, 2)) {
                }
                if (bitmapC != null) {
                }
                break;
        }
    }
}
