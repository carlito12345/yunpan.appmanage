package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public abstract class f1 {

    /* renamed from: a, reason: collision with root package name */
    public final RecyclerView.LayoutManager f2111a;

    /* renamed from: b, reason: collision with root package name */
    public int f2112b = Integer.MIN_VALUE;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f2113c = new Rect();

    public f1(RecyclerView.LayoutManager layoutManager) {
        this.f2111a = layoutManager;
    }

    public static f1 a(RecyclerView.LayoutManager layoutManager, int i10) {
        if (i10 == 0) {
            return new d1(layoutManager);
        }
        if (i10 == 1) {
            return new e1(layoutManager);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public final int m() {
        if (Integer.MIN_VALUE == this.f2112b) {
            return 0;
        }
        return l() - this.f2112b;
    }

    public abstract int n(View view);

    public abstract int o(View view);

    public abstract void p(int i10);
}
