package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
class GuidedActionItemContainer extends w {

    /* renamed from: d, reason: collision with root package name */
    public final boolean f1490d;

    public GuidedActionItemContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1490d = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i10) {
        if (this.f1490d || !qf.c.H(this, view)) {
            return super.focusSearch(view, i10);
        }
        View viewFocusSearch = super.focusSearch(view, i10);
        if (qf.c.H(this, viewFocusSearch)) {
            return viewFocusSearch;
        }
        return null;
    }
}
