package androidx.leanback.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import com.yunpan.appmanage.R;
import java.util.Random;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public abstract class u0 extends EditText {

    /* renamed from: f, reason: collision with root package name */
    public static final Pattern f1722f = Pattern.compile("\\S+");

    /* renamed from: g, reason: collision with root package name */
    public static final a0 f1723g = new a0(3);

    /* renamed from: a, reason: collision with root package name */
    public final Random f1724a;

    /* renamed from: b, reason: collision with root package name */
    public Bitmap f1725b;

    /* renamed from: c, reason: collision with root package name */
    public Bitmap f1726c;

    /* renamed from: d, reason: collision with root package name */
    public int f1727d;

    /* renamed from: e, reason: collision with root package name */
    public ObjectAnimator f1728e;

    public u0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.style.TextAppearance_Leanback_SearchTextEdit);
        this.f1724a = new Random();
    }

    public int getStreamPosition() {
        return this.f1727d;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f1725b = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(getResources(), R.drawable.lb_text_dot_one), (int) (r0.getWidth() * 1.3f), (int) (r0.getHeight() * 1.3f), false);
        this.f1726c = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(getResources(), R.drawable.lb_text_dot_two), (int) (r0.getWidth() * 1.3f), (int) (r0.getHeight() * 1.3f), false);
        this.f1727d = -1;
        ObjectAnimator objectAnimator = this.f1728e;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        setText("");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(u0.class.getCanonicalName());
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d.b.y0(callback, this));
    }

    public void setStreamPosition(int i10) {
        this.f1727d = i10;
        invalidate();
    }
}
