package j$.time.chrono;

/* renamed from: j$.time.chrono.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract /* synthetic */ class AbstractC0022l {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f8795a;

    static {
        int[] iArr = new int[j$.time.temporal.a.values().length];
        f8795a = iArr;
        try {
            iArr[j$.time.temporal.a.INSTANT_SECONDS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f8795a[j$.time.temporal.a.OFFSET_SECONDS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
