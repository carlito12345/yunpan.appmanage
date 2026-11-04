package androidx.leanback.widget;

import android.graphics.Color;

/* loaded from: classes.dex */
public final class n0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f1670a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1671b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1672c;

    public n0(int i10, int i11, int i12) {
        this.f1670a = i10;
        if (i11 == i10) {
            i11 = Color.argb((int) ((Color.alpha(i10) * 0.85f) + 38.25f), (int) ((Color.red(i10) * 0.85f) + 38.25f), (int) ((Color.green(i10) * 0.85f) + 38.25f), (int) ((Color.blue(i10) * 0.85f) + 38.25f));
        }
        this.f1671b = i11;
        this.f1672c = i12;
    }
}
