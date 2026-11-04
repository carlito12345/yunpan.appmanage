package u6;

import a9.o;
import android.view.View;
import android.view.ViewParent;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.WeakHashMap;
import x0.b1;
import x0.j0;
import x0.k0;
import y7.b;

/* loaded from: classes.dex */
public final class a extends o {

    /* renamed from: b, reason: collision with root package name */
    public int f15416b;

    /* renamed from: c, reason: collision with root package name */
    public int f15417c = -1;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f15418d;

    public a(SwipeDismissBehavior swipeDismissBehavior) {
        this.f15418d = swipeDismissBehavior;
    }

    @Override // a9.o
    public final int O(View view) {
        return view.getWidth();
    }

    @Override // a9.o
    public final void U(int i10, View view) {
        this.f15417c = i10;
        this.f15416b = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            SwipeDismissBehavior swipeDismissBehavior = this.f15418d;
            swipeDismissBehavior.f3456c = true;
            parent.requestDisallowInterceptTouchEvent(true);
            swipeDismissBehavior.f3456c = false;
        }
    }

    @Override // a9.o
    public final void V(int i10) {
        this.f15418d.getClass();
    }

    @Override // a9.o
    public final void W(View view, int i10, int i11) {
        float width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.f15418d;
        float f10 = width * swipeDismissBehavior.f3458e;
        float width2 = view.getWidth() * swipeDismissBehavior.f3459f;
        float fAbs = Math.abs(i10 - this.f15416b);
        if (fAbs <= f10) {
            view.setAlpha(1.0f);
        } else if (fAbs >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((fAbs - f10) / (width2 - f10))), 1.0f));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006e  */
    @Override // a9.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void X(View view, float f10, float f11) {
        int i10;
        this.f15417c = -1;
        int width = view.getWidth();
        boolean z = true;
        SwipeDismissBehavior swipeDismissBehavior = this.f15418d;
        if (f10 != 0.0f) {
            WeakHashMap weakHashMap = b1.f17953a;
            boolean z4 = k0.d(view) == 1;
            int i11 = swipeDismissBehavior.f3457d;
            if (i11 != 2 && (i11 != 0 ? i11 != 1 || (!z4 ? f10 < 0.0f : f10 > 0.0f) : !z4 ? f10 > 0.0f : f10 < 0.0f)) {
                i10 = this.f15416b;
                z = false;
            } else if (f10 >= 0.0f) {
                int left = view.getLeft();
                int i12 = this.f15416b;
                i10 = left < i12 ? this.f15416b - width : i12 + width;
            }
        } else {
            int left2 = view.getLeft() - this.f15416b;
            float width2 = view.getWidth();
            swipeDismissBehavior.getClass();
            if (Math.abs(left2) >= Math.round(width2 * 0.5f)) {
            }
        }
        if (swipeDismissBehavior.f3454a.n(i10, view.getTop())) {
            b bVar = new b(swipeDismissBehavior, view, z);
            WeakHashMap weakHashMap2 = b1.f17953a;
            j0.m(view, bVar);
        }
    }

    @Override // a9.o
    public final boolean c0(int i10, View view) {
        int i11 = this.f15417c;
        return (i11 == -1 || i11 == i10) && this.f15418d.r(view);
    }

    @Override // a9.o
    public final int v(int i10, View view) {
        int width;
        int width2;
        int width3;
        WeakHashMap weakHashMap = b1.f17953a;
        boolean z = k0.d(view) == 1;
        int i11 = this.f15418d.f3457d;
        if (i11 == 0) {
            if (z) {
                width = this.f15416b - view.getWidth();
                width2 = this.f15416b;
            } else {
                width = this.f15416b;
                width3 = view.getWidth();
                width2 = width3 + width;
            }
        } else if (i11 != 1) {
            width = this.f15416b - view.getWidth();
            width2 = view.getWidth() + this.f15416b;
        } else if (z) {
            width = this.f15416b;
            width3 = view.getWidth();
            width2 = width3 + width;
        } else {
            width = this.f15416b - view.getWidth();
            width2 = this.f15416b;
        }
        return Math.min(Math.max(width, i10), width2);
    }

    @Override // a9.o
    public final int w(int i10, View view) {
        return view.getTop();
    }
}
