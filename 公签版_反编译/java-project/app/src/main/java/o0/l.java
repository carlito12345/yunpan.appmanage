package o0;

import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final ColorStateList f11467a;

    /* renamed from: b, reason: collision with root package name */
    public final Configuration f11468b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11469c;

    public l(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
        this.f11467a = colorStateList;
        this.f11468b = configuration;
        this.f11469c = theme == null ? 0 : theme.hashCode();
    }
}
