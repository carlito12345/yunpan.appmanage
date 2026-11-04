package b1;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ScrollView;
import androidx.core.widget.NestedScrollView;

/* loaded from: classes.dex */
public final class i extends x0.c {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f2518d;

    public /* synthetic */ i(int i10) {
        this.f2518d = i10;
    }

    @Override // x0.c
    public void c(View view, AccessibilityEvent accessibilityEvent) {
        switch (this.f2518d) {
            case 0:
                super.c(view, accessibilityEvent);
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                accessibilityEvent.setClassName(ScrollView.class.getName());
                accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
                accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
                accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
                y0.r.c(accessibilityEvent, nestedScrollView.getScrollX());
                y0.r.d(accessibilityEvent, nestedScrollView.getScrollRange());
                break;
            default:
                super.c(view, accessibilityEvent);
                break;
        }
    }

    @Override // x0.c
    public final void d(View view, y0.n nVar) {
        int scrollRange;
        switch (this.f2518d) {
            case 0:
                this.f17971a.onInitializeAccessibilityNodeInfo(view, nVar.f18549a);
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                nVar.j(ScrollView.class.getName());
                if (nestedScrollView.isEnabled() && (scrollRange = nestedScrollView.getScrollRange()) > 0) {
                    nVar.n(true);
                    if (nestedScrollView.getScrollY() > 0) {
                        nVar.b(y0.f.f18536g);
                        nVar.b(y0.f.f18540k);
                    }
                    if (nestedScrollView.getScrollY() < scrollRange) {
                        nVar.b(y0.f.f18535f);
                        nVar.b(y0.f.f18541m);
                        break;
                    }
                }
                break;
            case 1:
                this.f17971a.onInitializeAccessibilityNodeInfo(view, nVar.f18549a);
                nVar.k(null);
                break;
            case 2:
                this.f17971a.onInitializeAccessibilityNodeInfo(view, nVar.f18549a);
                nVar.n(false);
                break;
            default:
                this.f17971a.onInitializeAccessibilityNodeInfo(view, nVar.f18549a);
                nVar.k(null);
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0078  */
    @Override // x0.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean g(View view, int i10, Bundle bundle) {
        switch (this.f2518d) {
            case 0:
                if (super.g(view, i10, bundle)) {
                    return true;
                }
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                if (nestedScrollView.isEnabled()) {
                    int height = nestedScrollView.getHeight();
                    Rect rect = new Rect();
                    if (nestedScrollView.getMatrix().isIdentity() && nestedScrollView.getGlobalVisibleRect(rect)) {
                        height = rect.height();
                    }
                    if (i10 == 4096) {
                        int iMin = Math.min(nestedScrollView.getScrollY() + ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
                        if (iMin != nestedScrollView.getScrollY()) {
                            nestedScrollView.v(0 - nestedScrollView.getScrollX(), iMin - nestedScrollView.getScrollY(), 250, true);
                            return true;
                        }
                    } else if (i10 == 8192 || i10 == 16908344) {
                        int iMax = Math.max(nestedScrollView.getScrollY() - ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                        if (iMax != nestedScrollView.getScrollY()) {
                            nestedScrollView.v(0 - nestedScrollView.getScrollX(), iMax - nestedScrollView.getScrollY(), 250, true);
                            return true;
                        }
                    } else if (i10 == 16908346) {
                    }
                }
                return false;
            default:
                return super.g(view, i10, bundle);
        }
    }
}
