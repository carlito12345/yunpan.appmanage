package x0;

import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeProvider;
import com.yunpan.appmanage.R;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class c {

    /* renamed from: c, reason: collision with root package name */
    public static final View.AccessibilityDelegate f17970c = new View.AccessibilityDelegate();

    /* renamed from: a, reason: collision with root package name */
    public final View.AccessibilityDelegate f17971a;

    /* renamed from: b, reason: collision with root package name */
    public final a f17972b;

    public c() {
        this(f17970c);
    }

    public boolean a(View view, AccessibilityEvent accessibilityEvent) {
        return this.f17971a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public w.i b(View view) {
        AccessibilityNodeProvider accessibilityNodeProviderA = b.a(this.f17971a, view);
        if (accessibilityNodeProviderA != null) {
            return new w.i(8, accessibilityNodeProviderA);
        }
        return null;
    }

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        this.f17971a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void d(View view, y0.n nVar) {
        this.f17971a.onInitializeAccessibilityNodeInfo(view, nVar.f18549a);
    }

    public void e(View view, AccessibilityEvent accessibilityEvent) {
        this.f17971a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f17971a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean g(View view, int i10, Bundle bundle) {
        boolean zB;
        WeakReference weakReference;
        ClickableSpan clickableSpan;
        List listEmptyList = (List) view.getTag(R.id.tag_accessibility_actions);
        if (listEmptyList == null) {
            listEmptyList = Collections.emptyList();
        }
        boolean z = false;
        int i11 = 0;
        while (true) {
            if (i11 >= listEmptyList.size()) {
                break;
            }
            y0.f fVar = (y0.f) listEmptyList.get(i11);
            if (fVar.a() == i10) {
                y0.a0 a0Var = fVar.f18546d;
                if (a0Var != null) {
                    Class cls = fVar.f18545c;
                    if (cls != null) {
                        try {
                            if (cls.getDeclaredConstructor(null).newInstance(null) == null) {
                                throw null;
                            }
                            throw new ClassCastException();
                        } catch (Exception unused) {
                        }
                    }
                    zB = a0Var.d(view);
                }
            } else {
                i11++;
            }
        }
        zB = false;
        if (!zB) {
            zB = b.b(this.f17971a, view, i10, bundle);
        }
        if (zB || i10 != R.id.accessibility_action_clickable_span || bundle == null) {
            return zB;
        }
        int i12 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
        if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i12)) != null && (clickableSpan = (ClickableSpan) weakReference.get()) != null) {
            CharSequence text = view.createAccessibilityNodeInfo().getText();
            ClickableSpan[] clickableSpanArr = text instanceof Spanned ? (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class) : null;
            int i13 = 0;
            while (true) {
                if (clickableSpanArr == null || i13 >= clickableSpanArr.length) {
                    break;
                }
                if (clickableSpan.equals(clickableSpanArr[i13])) {
                    clickableSpan.onClick(view);
                    z = true;
                    break;
                }
                i13++;
            }
        }
        return z;
    }

    public void h(View view, int i10) {
        this.f17971a.sendAccessibilityEvent(view, i10);
    }

    public void i(View view, AccessibilityEvent accessibilityEvent) {
        this.f17971a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public c(View.AccessibilityDelegate accessibilityDelegate) {
        this.f17971a = accessibilityDelegate;
        this.f17972b = new a(this);
    }
}
