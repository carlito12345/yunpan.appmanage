package za;

import net.sf.sevenzipjbinding.ExtractOperationResult;

/* loaded from: classes.dex */
public abstract /* synthetic */ class f {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f19536a;

    static {
        int[] iArr = new int[ExtractOperationResult.values().length];
        f19536a = iArr;
        try {
            iArr[ExtractOperationResult.OK.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f19536a[ExtractOperationResult.WRONG_PASSWORD.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f19536a[ExtractOperationResult.UNSUPPORTEDMETHOD.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f19536a[ExtractOperationResult.DATAERROR.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f19536a[ExtractOperationResult.CRCERROR.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f19536a[ExtractOperationResult.UNAVAILABLE.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f19536a[ExtractOperationResult.UNEXPECTED_END.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f19536a[ExtractOperationResult.DATA_AFTER_END.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f19536a[ExtractOperationResult.HEADERS_ERROR.ordinal()] = 9;
        } catch (NoSuchFieldError unused9) {
        }
    }
}
