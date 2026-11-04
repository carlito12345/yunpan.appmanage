package androidx.media3.exoplayer.video;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public int f1915a;

    /* renamed from: b, reason: collision with root package name */
    public int f1916b;

    /* renamed from: c, reason: collision with root package name */
    public int f1917c;

    public /* synthetic */ k(int i10, int i11, int i12) {
        this.f1915a = i10;
        this.f1916b = i11;
        this.f1917c = i12;
    }

    public k(j5.h hVar) {
        Context context = hVar.f9762a;
        ActivityManager activityManager = hVar.f9763b;
        int i10 = Build.VERSION.SDK_INT;
        int i11 = i10 >= 19 ? activityManager.isLowRamDevice() : true ? PKIFailureInfo.badSenderNonce : 4194304;
        this.f1917c = i11;
        int iRound = Math.round(activityManager.getMemoryClass() * 1048576 * (i10 >= 19 ? activityManager.isLowRamDevice() : true ? 0.33f : 0.4f));
        DisplayMetrics displayMetrics = (DisplayMetrics) hVar.f9764c.f6611b;
        float f10 = displayMetrics.widthPixels * displayMetrics.heightPixels * 4;
        float f11 = hVar.f9765d;
        int iRound2 = Math.round(f10 * f11);
        int iRound3 = Math.round(f10 * 2.0f);
        int i12 = iRound - i11;
        if (iRound3 + iRound2 <= i12) {
            this.f1916b = iRound3;
            this.f1915a = iRound2;
        } else {
            float f12 = i12 / (f11 + 2.0f);
            this.f1916b = Math.round(2.0f * f12);
            this.f1915a = Math.round(f12 * f11);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            Formatter.formatFileSize(context, this.f1916b);
            Formatter.formatFileSize(context, this.f1915a);
            Formatter.formatFileSize(context, i11);
            Formatter.formatFileSize(context, iRound);
            activityManager.getMemoryClass();
            if (i10 >= 19) {
                activityManager.isLowRamDevice();
            }
        }
    }

    public k(int i10, int i11, int i12, int i13) {
        this.f1915a = i10;
        this.f1916b = i12;
        this.f1917c = i13;
    }

    public k() {
    }
}
