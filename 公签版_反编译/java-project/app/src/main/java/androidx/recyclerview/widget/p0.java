package androidx.recyclerview.widget;

import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public abstract class p0 {

    /* renamed from: b, reason: collision with root package name */
    public static final o0 f2223b = new o0(0);

    /* renamed from: c, reason: collision with root package name */
    public static final o0 f2224c = new o0(1);

    /* renamed from: a, reason: collision with root package name */
    public int f2225a = -1;

    public static int a(int i10, int i11) {
        int i12;
        int i13 = i10 & 3158064;
        if (i13 == 0) {
            return i10;
        }
        int i14 = i10 & (i13 ^ (-1));
        if (i11 == 0) {
            i12 = i13 >> 2;
        } else {
            int i15 = i13 >> 1;
            i14 |= (-3158065) & i15;
            i12 = (i15 & 3158064) >> 2;
        }
        return i14 | i12;
    }

    public static int b(int i10, int i11) {
        int i12;
        int i13 = i10 & 789516;
        if (i13 == 0) {
            return i10;
        }
        int i14 = i10 & (i13 ^ (-1));
        if (i11 == 0) {
            i12 = i13 << 2;
        } else {
            int i15 = i13 << 1;
            i14 |= (-789517) & i15;
            i12 = (i15 & 789516) << 2;
        }
        return i14 | i12;
    }

    public final int c(RecyclerView recyclerView, int i10, int i11, long j10) {
        if (this.f2225a == -1) {
            this.f2225a = recyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame);
        }
        int interpolation = (int) (f2223b.getInterpolation(j10 <= 2000 ? j10 / 2000.0f : 1.0f) * ((int) (f2224c.getInterpolation(Math.min(1.0f, (Math.abs(i11) * 1.0f) / i10)) * ((int) Math.signum(i11)) * this.f2225a)));
        return interpolation == 0 ? i11 > 0 ? 1 : -1 : interpolation;
    }
}
