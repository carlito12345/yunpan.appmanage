package j3;

import a2.m;
import android.text.Layout;
import android.text.SpannableStringBuilder;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: c, reason: collision with root package name */
    public static final m f9693c = new m(21);

    /* renamed from: a, reason: collision with root package name */
    public final t1.b f9694a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9695b;

    public d(SpannableStringBuilder spannableStringBuilder, Layout.Alignment alignment, float f10, int i10, float f11, int i11, boolean z, int i12, int i13) {
        boolean z4;
        int i14;
        if (z) {
            i14 = i12;
            z4 = true;
        } else {
            z4 = false;
            i14 = -16777216;
        }
        this.f9694a = new t1.b(spannableStringBuilder, alignment, null, null, f10, 0, i10, f11, i11, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, z4, i14, Integer.MIN_VALUE, 0.0f, 0);
        this.f9695b = i13;
    }
}
