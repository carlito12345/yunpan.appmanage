package v3;

import android.content.Context;
import android.view.MotionEvent;
import android.webkit.WebView;

/* loaded from: classes.dex */
public final class o0 extends WebView {
    public o0(Context context) {
        super(context, null);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        super.performClick();
        return false;
    }
}
