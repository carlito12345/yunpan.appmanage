package f7;

import android.content.Context;
import android.support.v4.media.session.b;
import com.bumptech.glide.d;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: f, reason: collision with root package name */
    public static final int f5627f = (int) Math.round(5.1000000000000005d);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f5628a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5629b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5630c;

    /* renamed from: d, reason: collision with root package name */
    public final int f5631d;

    /* renamed from: e, reason: collision with root package name */
    public final float f5632e;

    public a(Context context) {
        boolean zE = b.E(context, R.attr.elevationOverlayEnabled, false);
        int iT = d.t(context, R.attr.elevationOverlayColor, 0);
        int iT2 = d.t(context, R.attr.elevationOverlayAccentColor, 0);
        int iT3 = d.t(context, R.attr.colorSurface, 0);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.f5628a = zE;
        this.f5629b = iT;
        this.f5630c = iT2;
        this.f5631d = iT3;
        this.f5632e = f10;
    }
}
