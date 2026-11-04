package tb;

import android.graphics.Paint;

/* loaded from: classes.dex */
public abstract /* synthetic */ class j {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f14951a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f14952b;

    static {
        int[] iArr = new int[cc.b.values().length];
        f14952b = iArr;
        try {
            iArr[3] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f14952b[1] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f14952b[2] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        int[] iArr2 = new int[Paint.Align.values().length];
        f14951a = iArr2;
        try {
            iArr2[Paint.Align.LEFT.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f14951a[Paint.Align.RIGHT.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f14951a[Paint.Align.CENTER.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
