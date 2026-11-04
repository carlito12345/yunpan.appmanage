package androidx.leanback.widget;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.TextView;

/* loaded from: classes.dex */
public class GuidedActionEditText extends EditText {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f1488a;

    /* renamed from: b, reason: collision with root package name */
    public final s f1489b;

    public GuidedActionEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.editTextStyle);
        this.f1488a = getBackground();
        s sVar = new s();
        this.f1489b = sVar;
        setBackground(sVar);
    }

    @Override // android.widget.TextView, android.view.View
    public int getAutofillType() {
        return 1;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i10, Rect rect) {
        super.onFocusChanged(z, i10, rect);
        if (z) {
            setBackground(this.f1488a);
        } else {
            setBackground(this.f1489b);
        }
        if (z) {
            return;
        }
        setFocusable(false);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName((isFocused() ? EditText.class : TextView.class).getName());
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d.b.y0(callback, this));
    }

    public void setImeKeyListener(t tVar) {
    }

    public void setOnAutofillListener(r rVar) {
    }
}
