package t1;

import android.os.Bundle;
import android.text.Spanned;
import u1.f0;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static final String f14683a;

    /* renamed from: b, reason: collision with root package name */
    public static final String f14684b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f14685c;

    /* renamed from: d, reason: collision with root package name */
    public static final String f14686d;

    /* renamed from: e, reason: collision with root package name */
    public static final String f14687e;

    static {
        String str = f0.f15206a;
        f14683a = Integer.toString(0, 36);
        f14684b = Integer.toString(1, 36);
        f14685c = Integer.toString(2, 36);
        f14686d = Integer.toString(3, 36);
        f14687e = Integer.toString(4, 36);
    }

    public static Bundle a(Spanned spanned, Object obj, int i10, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt(f14683a, spanned.getSpanStart(obj));
        bundle2.putInt(f14684b, spanned.getSpanEnd(obj));
        bundle2.putInt(f14685c, spanned.getSpanFlags(obj));
        bundle2.putInt(f14686d, i10);
        if (bundle != null) {
            bundle2.putBundle(f14687e, bundle);
        }
        return bundle2;
    }
}
