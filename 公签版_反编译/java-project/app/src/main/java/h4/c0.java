package h4;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class c0 extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f6417a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewGroup f6418b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f6419c;

    /* renamed from: d, reason: collision with root package name */
    public final a1.i f6420d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6421e;

    static {
        try {
            Class cls = Integer.TYPE;
            ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", cls, cls, Rect.class);
        } catch (NoSuchMethodException unused) {
        }
    }

    public c0(Context context, ViewGroup viewGroup, ViewGroup viewGroup2, a1.i iVar) {
        super(context);
        this.f6419c = null;
        this.f6417a = viewGroup;
        this.f6418b = viewGroup2;
        setRight(viewGroup.getWidth());
        setBottom(viewGroup.getHeight());
        viewGroup.addView(this);
        this.f6420d = iVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        this.f6417a.getLocationOnScreen(new int[2]);
        ViewGroup viewGroup = this.f6418b;
        viewGroup.getLocationOnScreen(new int[2]);
        canvas.translate(r0[0] - r1[0], r0[1] - r1[1]);
        canvas.clipRect(new Rect(0, 0, viewGroup.getWidth(), viewGroup.getHeight()));
        super.dispatchDraw(canvas);
        ArrayList arrayList = this.f6419c;
        int size = arrayList == null ? 0 : arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((Drawable) this.f6419c.get(i10)).draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        ViewGroup viewGroup = this.f6417a;
        if (viewGroup == null) {
            return null;
        }
        rect.offset(iArr[0], iArr[1]);
        iArr[0] = 0;
        iArr[1] = 0;
        int[] iArr2 = new int[2];
        int[] iArr3 = new int[2];
        viewGroup.getLocationOnScreen(iArr2);
        this.f6418b.getLocationOnScreen(iArr3);
        int[] iArr4 = {iArr3[0] - iArr2[0], iArr3[1] - iArr2[1]};
        rect.offset(iArr4[0], iArr4[1]);
        return super.invalidateChildInParent(iArr, rect);
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        invalidate(drawable.getBounds());
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        ArrayList arrayList;
        return super.verifyDrawable(drawable) || ((arrayList = this.f6419c) != null && arrayList.contains(drawable));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
    }
}
