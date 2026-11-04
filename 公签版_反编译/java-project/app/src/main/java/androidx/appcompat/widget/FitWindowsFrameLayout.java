package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import q.p;
import w.u1;
import w.v1;

/* loaded from: classes.dex */
public class FitWindowsFrameLayout extends FrameLayout implements v1 {

    /* renamed from: a, reason: collision with root package name */
    public u1 f971a;

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        u1 u1Var = this.f971a;
        if (u1Var != null) {
            rect.top = ((p) u1Var).f12890b.I(null, rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // w.v1
    public void setOnFitSystemWindowsListener(u1 u1Var) {
        this.f971a = u1Var;
    }
}
