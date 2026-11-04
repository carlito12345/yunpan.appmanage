package d2;

import android.os.Build;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements b0 {

    /* renamed from: a, reason: collision with root package name */
    public static final l f4291a = new l();

    /* renamed from: b, reason: collision with root package name */
    public static final l f4292b = new l();

    @Override // d2.b0
    public int e(Object obj) {
        String str = ((q) obj).f4294a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (Build.VERSION.SDK_INT >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }
}
