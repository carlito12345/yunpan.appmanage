package j$.time.chrono;

/* renamed from: j$.time.chrono.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract /* synthetic */ class AbstractC0020j {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f8794a;

    static {
        int[] iArr = new int[j$.time.temporal.a.values().length];
        f8794a = iArr;
        try {
            iArr[j$.time.temporal.a.INSTANT_SECONDS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f8794a[j$.time.temporal.a.OFFSET_SECONDS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
