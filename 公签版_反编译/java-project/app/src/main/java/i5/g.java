package i5;

import a2.g1;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import ha.j2;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class g implements c {

    /* renamed from: g, reason: collision with root package name */
    public static final Bitmap.Config f8617g = Bitmap.Config.ARGB_8888;

    /* renamed from: a, reason: collision with root package name */
    public final h f8618a;

    /* renamed from: b, reason: collision with root package name */
    public final Set f8619b;

    /* renamed from: c, reason: collision with root package name */
    public final long f8620c;

    /* renamed from: d, reason: collision with root package name */
    public final j2 f8621d;

    /* renamed from: e, reason: collision with root package name */
    public long f8622e;

    /* renamed from: f, reason: collision with root package name */
    public long f8623f;

    public g(long j10) {
        int i10 = Build.VERSION.SDK_INT;
        h lVar = i10 >= 19 ? new l() : new g1(24);
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        if (i10 >= 19) {
            hashSet.add(null);
        }
        if (i10 >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        this.f8620c = j10;
        this.f8622e = j10;
        this.f8618a = lVar;
        this.f8619b = setUnmodifiableSet;
        this.f8621d = new j2(12);
    }

    @Override // i5.c
    public final void A(int i10) {
        if (i10 >= 40 || (Build.VERSION.SDK_INT >= 23 && i10 >= 20)) {
            F();
        } else if (i10 >= 20 || i10 == 15) {
            b(this.f8622e / 2);
        }
    }

    @Override // i5.c
    public final void F() {
        b(0L);
    }

    public final synchronized Bitmap a(int i10, int i11, Bitmap.Config config) {
        Bitmap bitmapF;
        try {
            int i12 = Build.VERSION.SDK_INT;
            if (i12 >= 26 && config == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
            }
            bitmapF = this.f8618a.f(i10, i11, config != null ? config : f8617g);
            if (bitmapF != null) {
                this.f8623f -= this.f8618a.G(bitmapF);
                this.f8621d.getClass();
                bitmapF.setHasAlpha(true);
                if (i12 >= 19) {
                    bitmapF.setPremultiplied(true);
                }
            } else if (Log.isLoggable("LruBitmapPool", 3)) {
                this.f8618a.w(i10, i11, config);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                this.f8618a.w(i10, i11, config);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                android.support.v4.media.session.a.A(this.f8618a);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return bitmapF;
    }

    public final synchronized void b(long j10) {
        while (this.f8623f > j10) {
            Bitmap bitmapRemoveLast = this.f8618a.removeLast();
            if (bitmapRemoveLast == null) {
                if (Log.isLoggable("LruBitmapPool", 5)) {
                    android.support.v4.media.session.a.A(this.f8618a);
                }
                this.f8623f = 0L;
                return;
            } else {
                this.f8621d.getClass();
                this.f8623f -= this.f8618a.G(bitmapRemoveLast);
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    this.f8618a.K(bitmapRemoveLast);
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    android.support.v4.media.session.a.A(this.f8618a);
                }
                bitmapRemoveLast.recycle();
            }
        }
    }

    @Override // i5.c
    public final synchronized void c(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable() && this.f8618a.G(bitmap) <= this.f8622e && this.f8619b.contains(bitmap.getConfig())) {
                int iG = this.f8618a.G(bitmap);
                this.f8618a.c(bitmap);
                this.f8621d.getClass();
                this.f8623f += iG;
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    this.f8618a.K(bitmap);
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    android.support.v4.media.session.a.A(this.f8618a);
                }
                b(this.f8622e);
                return;
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                this.f8618a.K(bitmap);
                bitmap.isMutable();
                this.f8619b.contains(bitmap.getConfig());
            }
            bitmap.recycle();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // i5.c
    public final Bitmap f(int i10, int i11, Bitmap.Config config) {
        Bitmap bitmapA = a(i10, i11, config);
        if (bitmapA != null) {
            bitmapA.eraseColor(0);
            return bitmapA;
        }
        if (config == null) {
            config = f8617g;
        }
        return Bitmap.createBitmap(i10, i11, config);
    }

    @Override // i5.c
    public final synchronized void g(float f10) {
        long jRound = Math.round(this.f8620c * f10);
        this.f8622e = jRound;
        b(jRound);
    }

    @Override // i5.c
    public final Bitmap h(int i10, int i11, Bitmap.Config config) {
        Bitmap bitmapA = a(i10, i11, config);
        if (bitmapA != null) {
            return bitmapA;
        }
        if (config == null) {
            config = f8617g;
        }
        return Bitmap.createBitmap(i10, i11, config);
    }
}
