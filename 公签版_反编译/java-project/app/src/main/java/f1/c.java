package f1;

import android.graphics.Rect;
import java.util.Comparator;
import m7.e;
import y0.n;

/* loaded from: classes.dex */
public final class c implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f5169a = new Rect();

    /* renamed from: b, reason: collision with root package name */
    public final Rect f5170b = new Rect();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f5171c;

    /* renamed from: d, reason: collision with root package name */
    public final e f5172d;

    public c(boolean z, e eVar) {
        this.f5171c = z;
        this.f5172d = eVar;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        this.f5172d.getClass();
        Rect rect = this.f5169a;
        ((n) obj).f(rect);
        Rect rect2 = this.f5170b;
        ((n) obj2).f(rect2);
        int i10 = rect.top;
        int i11 = rect2.top;
        if (i10 < i11) {
            return -1;
        }
        if (i10 > i11) {
            return 1;
        }
        int i12 = rect.left;
        int i13 = rect2.left;
        boolean z = this.f5171c;
        if (i12 < i13) {
            return z ? 1 : -1;
        }
        if (i12 > i13) {
            return z ? -1 : 1;
        }
        int i14 = rect.bottom;
        int i15 = rect2.bottom;
        if (i14 < i15) {
            return -1;
        }
        if (i14 > i15) {
            return 1;
        }
        int i16 = rect.right;
        int i17 = rect2.right;
        if (i16 < i17) {
            return z ? 1 : -1;
        }
        if (i16 > i17) {
            return z ? -1 : 1;
        }
        return 0;
    }
}
