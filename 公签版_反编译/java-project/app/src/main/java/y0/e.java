package y0;

import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import x0.b1;

/* loaded from: classes.dex */
public final class e implements AccessibilityManager.TouchExplorationStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final d f18533a;

    public e(d dVar) {
        this.f18533a = dVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            return this.f18533a.equals(((e) obj).f18533a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f18533a.hashCode();
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z) {
        q7.l lVar = (q7.l) ((ph.j) this.f18533a).f12718b;
        AutoCompleteTextView autoCompleteTextView = lVar.f13078h;
        if (autoCompleteTextView == null || p000if.a.Z(autoCompleteTextView)) {
            return;
        }
        b1.B(lVar.f13114d, z ? 2 : 1);
    }
}
