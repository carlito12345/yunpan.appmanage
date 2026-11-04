package v;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public final class o extends FrameLayout implements u.b {

    /* renamed from: a, reason: collision with root package name */
    public final CollapsibleActionView f16281a;

    /* JADX WARN: Multi-variable type inference failed */
    public o(View view) {
        super(view.getContext());
        this.f16281a = (CollapsibleActionView) view;
        addView(view);
    }

    @Override // u.b
    public final void d() {
        this.f16281a.onActionViewExpanded();
    }

    @Override // u.b
    public final void e() {
        this.f16281a.onActionViewCollapsed();
    }
}
