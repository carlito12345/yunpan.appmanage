package o5;

import android.os.Build;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: b, reason: collision with root package name */
    public static final n f11604b = new n(2);

    /* renamed from: c, reason: collision with root package name */
    public static final n f11605c = new n(0);

    /* renamed from: d, reason: collision with root package name */
    public static final n f11606d;

    /* renamed from: e, reason: collision with root package name */
    public static final n f11607e;

    /* renamed from: f, reason: collision with root package name */
    public static final n f11608f;

    /* renamed from: g, reason: collision with root package name */
    public static final f5.h f11609g;

    /* renamed from: h, reason: collision with root package name */
    public static final boolean f11610h;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11611a;

    static {
        n nVar = new n(1);
        f11606d = nVar;
        f11607e = new n(3);
        f11608f = nVar;
        f11609g = f5.h.a(nVar, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy");
        f11610h = Build.VERSION.SDK_INT >= 19;
    }

    public n(int i10) {
        this.f11611a = i10;
    }

    public final int a(int i10, int i11, int i12, int i13) {
        switch (this.f11611a) {
            case 0:
                if (b(i10, i11, i12, i13) != 1.0f) {
                    break;
                }
                break;
            case 2:
                if (f11610h) {
                }
                break;
        }
        return 2;
    }

    public final float b(int i10, int i11, int i12, int i13) {
        switch (this.f11611a) {
            case 0:
                return Math.min(1.0f, f11604b.b(i10, i11, i12, i13));
            case 1:
                return Math.max(i12 / i10, i13 / i11);
            case 2:
                if (f11610h) {
                    return Math.min(i12 / i10, i13 / i11);
                }
                if (Math.max(i11 / i13, i10 / i12) == 0) {
                    return 1.0f;
                }
                return 1.0f / Integer.highestOneBit(r2);
            default:
                return 1.0f;
        }
    }
}
