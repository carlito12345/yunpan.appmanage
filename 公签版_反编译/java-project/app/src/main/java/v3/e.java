package v3;

import android.animation.ValueAnimator;
import android.content.ContextWrapper;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
import ua.g8;

/* loaded from: classes.dex */
public final class e extends View implements l0 {
    public final Point A;
    public final float B;
    public int C;
    public long D;
    public int E;
    public Rect F;
    public final ValueAnimator G;
    public float H;
    public boolean I;
    public boolean K;
    public long L;
    public long M;
    public long N;
    public long O;
    public int P;
    public long[] R;
    public boolean[] S;

    /* renamed from: a, reason: collision with root package name */
    public final Rect f16430a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f16431b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f16432c;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f16433d;

    /* renamed from: e, reason: collision with root package name */
    public final Paint f16434e;

    /* renamed from: f, reason: collision with root package name */
    public final Paint f16435f;

    /* renamed from: g, reason: collision with root package name */
    public final Paint f16436g;

    /* renamed from: h, reason: collision with root package name */
    public final Paint f16437h;

    /* renamed from: i, reason: collision with root package name */
    public final Paint f16438i;

    /* renamed from: j, reason: collision with root package name */
    public final Paint f16439j;

    /* renamed from: k, reason: collision with root package name */
    public final Drawable f16440k;
    public final int l;

    /* renamed from: m, reason: collision with root package name */
    public final int f16441m;

    /* renamed from: n, reason: collision with root package name */
    public final int f16442n;

    /* renamed from: p, reason: collision with root package name */
    public final int f16443p;

    /* renamed from: q, reason: collision with root package name */
    public final int f16444q;
    public final int r;

    /* renamed from: s, reason: collision with root package name */
    public final int f16445s;

    /* renamed from: t, reason: collision with root package name */
    public final int f16446t;

    /* renamed from: v, reason: collision with root package name */
    public final int f16447v;

    /* renamed from: w, reason: collision with root package name */
    public final StringBuilder f16448w;

    /* renamed from: x, reason: collision with root package name */
    public final Formatter f16449x;

    /* renamed from: y, reason: collision with root package name */
    public final g8 f16450y;
    public final CopyOnWriteArraySet z;

    public e(ContextWrapper contextWrapper) {
        super(contextWrapper, null, 0);
        this.f16430a = new Rect();
        this.f16431b = new Rect();
        this.f16432c = new Rect();
        this.f16433d = new Rect();
        Paint paint = new Paint();
        this.f16434e = paint;
        Paint paint2 = new Paint();
        this.f16435f = paint2;
        Paint paint3 = new Paint();
        this.f16436g = paint3;
        Paint paint4 = new Paint();
        this.f16437h = paint4;
        Paint paint5 = new Paint();
        this.f16438i = paint5;
        Paint paint6 = new Paint();
        this.f16439j = paint6;
        paint6.setAntiAlias(true);
        this.z = new CopyOnWriteArraySet();
        this.A = new Point();
        float f10 = contextWrapper.getResources().getDisplayMetrics().density;
        this.B = f10;
        this.f16447v = a(f10, -50);
        int iA = a(f10, 4);
        int iA2 = a(f10, 26);
        int iA3 = a(f10, 4);
        int iA4 = a(f10, 12);
        int iA5 = a(f10, 0);
        int iA6 = a(f10, 16);
        this.l = iA;
        this.f16441m = iA2;
        this.f16442n = 0;
        this.f16443p = iA3;
        this.f16444q = iA4;
        this.r = iA5;
        this.f16445s = iA6;
        paint.setColor(-1);
        paint6.setColor(-1);
        paint2.setColor(-855638017);
        paint3.setColor(872415231);
        paint4.setColor(-1291845888);
        paint5.setColor(872414976);
        this.f16440k = null;
        StringBuilder sb2 = new StringBuilder();
        this.f16448w = sb2;
        this.f16449x = new Formatter(sb2, Locale.getDefault());
        this.f16450y = new g8(2, this);
        this.f16446t = (Math.max(iA5, Math.max(iA4, iA6)) + 1) / 2;
        this.H = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.G = valueAnimator;
        valueAnimator.addUpdateListener(new q7.i(1, this));
        this.M = -9223372036854775807L;
        this.D = -9223372036854775807L;
        this.C = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public static int a(float f10, int i10) {
        return (int) ((i10 * f10) + 0.5f);
    }

    private long getPositionIncrement() {
        long j10 = this.D;
        if (j10 != -9223372036854775807L) {
            return j10;
        }
        long j11 = this.M;
        if (j11 == -9223372036854775807L) {
            return 0L;
        }
        return j11 / this.C;
    }

    private String getProgressText() {
        return u1.f0.u(this.f16448w, this.f16449x, this.N);
    }

    private long getScrubberPosition() {
        if (this.f16431b.width() <= 0 || this.M == -9223372036854775807L) {
            return 0L;
        }
        return (this.f16433d.width() * this.M) / r0.width();
    }

    public final boolean b(long j10) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        long j11 = this.M;
        if (j11 <= 0) {
            return false;
        }
        long j12 = this.K ? this.L : this.N;
        long jH = u1.f0.h(j12 + j10, 0L, j11);
        if (jH == j12) {
            return false;
        }
        if (this.K) {
            f(jH);
        } else {
            c(jH);
        }
        e();
        return true;
    }

    public final void c(long j10) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        this.L = j10;
        this.K = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator it = this.z.iterator();
        while (it.hasNext()) {
            t tVar = ((h) it.next()).f16485a;
            tVar.f16570n1 = true;
            TextView textView = tVar.N;
            if (textView != null) {
                textView.setText(u1.f0.u(tVar.P, tVar.R, j10));
            }
            tVar.f16544a.f();
            r1.m0 m0Var = tVar.g1;
            if (m0Var != null && tVar.f16573p1) {
                if (tVar.i(m0Var)) {
                    try {
                        Method method = tVar.f16554f;
                        method.getClass();
                        method.invoke(tVar.g1, Boolean.TRUE);
                    } catch (IllegalAccessException | InvocationTargetException e7) {
                        throw new RuntimeException(e7);
                    }
                } else if (tVar.h(tVar.g1)) {
                    try {
                        Method method2 = tVar.f16560i;
                        method2.getClass();
                        method2.invoke(tVar.g1, Boolean.TRUE);
                    } catch (IllegalAccessException | InvocationTargetException e10) {
                        throw new RuntimeException(e10);
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder("Time bar scrubbing is enabled, but player is not an ExoPlayer or CompositionPlayer instance, so ignoring (because we can't enable scrubbing mode). player.class=");
                    r1.m0 m0Var2 = tVar.g1;
                    m0Var2.getClass();
                    sb2.append(m0Var2.getClass());
                    u1.a.p(sb2.toString());
                }
            }
            if (tVar.k(tVar.g1)) {
                t.a(tVar, tVar.g1, j10);
            }
        }
    }

    public final void d(boolean z) {
        removeCallbacks(this.f16450y);
        this.K = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator it = this.z.iterator();
        while (it.hasNext()) {
            h hVar = (h) it.next();
            long j10 = this.L;
            t tVar = hVar.f16485a;
            tVar.f16570n1 = false;
            r1.m0 m0Var = tVar.g1;
            if (m0Var != null) {
                if (!z) {
                    t.a(tVar, m0Var, j10);
                }
                if (tVar.i(tVar.g1)) {
                    try {
                        Method method = tVar.f16554f;
                        method.getClass();
                        method.invoke(tVar.g1, Boolean.FALSE);
                    } catch (IllegalAccessException | InvocationTargetException e7) {
                        throw new RuntimeException(e7);
                    }
                } else if (tVar.h(tVar.g1)) {
                    try {
                        Method method2 = tVar.f16560i;
                        method2.getClass();
                        method2.invoke(tVar.g1, Boolean.FALSE);
                    } catch (IllegalAccessException | InvocationTargetException e10) {
                        throw new RuntimeException(e10);
                    }
                } else {
                    continue;
                }
            }
            tVar.f16544a.g();
        }
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f16440k;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidate();
        }
    }

    public final void e() {
        Rect rect = this.f16432c;
        Rect rect2 = this.f16431b;
        rect.set(rect2);
        Rect rect3 = this.f16433d;
        rect3.set(rect2);
        long j10 = this.K ? this.L : this.N;
        if (this.M > 0) {
            rect.right = Math.min(rect2.left + ((int) ((rect2.width() * this.O) / this.M)), rect2.right);
            rect3.right = Math.min(rect2.left + ((int) ((rect2.width() * j10) / this.M)), rect2.right);
        } else {
            int i10 = rect2.left;
            rect.right = i10;
            rect3.right = i10;
        }
        invalidate(this.f16430a);
    }

    public final void f(long j10) {
        if (this.L == j10) {
            return;
        }
        this.L = j10;
        Iterator it = this.z.iterator();
        while (it.hasNext()) {
            t tVar = ((h) it.next()).f16485a;
            TextView textView = tVar.N;
            if (textView != null) {
                textView.setText(u1.f0.u(tVar.P, tVar.R, j10));
            }
            if (tVar.k(tVar.g1)) {
                t.a(tVar, tVar.g1, j10);
            }
        }
    }

    public long getPreferredUpdateDelay() {
        int iWidth = (int) (this.f16431b.width() / this.B);
        if (iWidth != 0) {
            long j10 = this.M;
            if (j10 != 0 && j10 != -9223372036854775807L) {
                return j10 / iWidth;
            }
        }
        return Long.MAX_VALUE;
    }

    @Override // android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f16440k;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.save();
        Rect rect = this.f16431b;
        int iHeight = rect.height();
        int iCenterY = rect.centerY() - (iHeight / 2);
        int i10 = iCenterY + iHeight;
        long j10 = this.M;
        Paint paint = this.f16436g;
        Rect rect2 = this.f16433d;
        if (j10 <= 0) {
            canvas.drawRect(rect.left, iCenterY, rect.right, i10, paint);
        } else {
            Rect rect3 = this.f16432c;
            int i11 = rect3.left;
            int i12 = rect3.right;
            int iMax = Math.max(Math.max(rect.left, i12), rect2.right);
            int i13 = rect.right;
            if (iMax < i13) {
                canvas.drawRect(iMax, iCenterY, i13, i10, paint);
            }
            int iMax2 = Math.max(i11, rect2.right);
            if (i12 > iMax2) {
                canvas.drawRect(iMax2, iCenterY, i12, i10, this.f16435f);
            }
            if (rect2.width() > 0) {
                canvas.drawRect(rect2.left, iCenterY, rect2.right, i10, this.f16434e);
            }
            if (this.P != 0) {
                long[] jArr = this.R;
                jArr.getClass();
                boolean[] zArr = this.S;
                zArr.getClass();
                int i14 = this.f16443p;
                int i15 = i14 / 2;
                int i16 = 0;
                int i17 = 0;
                while (i17 < this.P) {
                    canvas.drawRect(Math.min(rect.width() - i14, Math.max(i16, ((int) ((rect.width() * u1.f0.h(jArr[i17], 0L, this.M)) / this.M)) - i15)) + rect.left, iCenterY, r1 + i14, i10, zArr[i17] ? this.f16438i : this.f16437h);
                    i17++;
                    i14 = i14;
                    i16 = 0;
                }
            }
        }
        if (this.M > 0) {
            int iG = u1.f0.g(rect2.right, rect2.left, rect.right);
            int iCenterY2 = rect2.centerY();
            Drawable drawable = this.f16440k;
            if (drawable == null) {
                canvas.drawCircle(iG, iCenterY2, (int) ((((this.K || isFocused()) ? this.f16445s : isEnabled() ? this.f16444q : this.r) * this.H) / 2.0f), this.f16439j);
            } else {
                int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.H)) / 2;
                int intrinsicHeight = ((int) (drawable.getIntrinsicHeight() * this.H)) / 2;
                drawable.setBounds(iG - intrinsicWidth, iCenterY2 - intrinsicHeight, iG + intrinsicWidth, iCenterY2 + intrinsicHeight);
                drawable.draw(canvas);
            }
        }
        canvas.restore();
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i10, Rect rect) {
        super.onFocusChanged(z, i10, rect);
        if (!this.K || z) {
            return;
        }
        d(false);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.M <= 0) {
            return;
        }
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0025  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (isEnabled()) {
            long positionIncrement = getPositionIncrement();
            if (i10 != 66) {
                switch (i10) {
                    case 21:
                        positionIncrement = -positionIncrement;
                        if (b(positionIncrement)) {
                            g8 g8Var = this.f16450y;
                            removeCallbacks(g8Var);
                            postDelayed(g8Var, 1000L);
                            break;
                        }
                        break;
                    case 22:
                        if (b(positionIncrement)) {
                        }
                        break;
                    case 23:
                        if (this.K) {
                            d(false);
                            break;
                        }
                        break;
                }
                return true;
            }
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        int paddingBottom;
        int paddingBottom2;
        Rect rect;
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i14 - getPaddingRight();
        int i16 = this.I ? 0 : this.f16446t;
        int i17 = this.f16442n;
        int i18 = this.l;
        int i19 = this.f16441m;
        if (i17 == 1) {
            paddingBottom = (i15 - getPaddingBottom()) - i19;
            paddingBottom2 = ((i15 - getPaddingBottom()) - i18) - Math.max(i16 - (i18 / 2), 0);
        } else {
            paddingBottom = (i15 - i19) / 2;
            paddingBottom2 = (i15 - i18) / 2;
        }
        Rect rect2 = this.f16430a;
        rect2.set(paddingLeft, paddingBottom, paddingRight, i19 + paddingBottom);
        this.f16431b.set(rect2.left + i16, paddingBottom2, rect2.right - i16, i18 + paddingBottom2);
        if (Build.VERSION.SDK_INT >= 29 && ((rect = this.F) == null || rect.width() != i14 || this.F.height() != i15)) {
            Rect rect3 = new Rect(0, 0, i14, i15);
            this.F = rect3;
            setSystemGestureExclusionRects(Collections.singletonList(rect3));
        }
        e();
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int i12 = this.f16441m;
        if (mode == 0) {
            size = i12;
        } else if (mode != 1073741824) {
            size = Math.min(i12, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i10), size);
        Drawable drawable = this.f16440k;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidate();
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i10) {
        Drawable drawable = this.f16440k;
        if (drawable == null || !drawable.setLayoutDirection(i10)) {
            return;
        }
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (isEnabled() && this.M > 0) {
            Point point = this.A;
            point.set((int) motionEvent.getX(), (int) motionEvent.getY());
            int i10 = point.x;
            int i11 = point.y;
            int action = motionEvent.getAction();
            Rect rect = this.f16433d;
            Rect rect2 = this.f16431b;
            if (action == 0) {
                int i12 = i10;
                if (this.f16430a.contains(i12, i11)) {
                    rect.right = u1.f0.g(i12, rect2.left, rect2.right);
                    c(getScrubberPosition());
                    e();
                    invalidate();
                    return true;
                }
            } else if (action == 1) {
                if (this.K) {
                    d(motionEvent.getAction() == 3);
                    return true;
                }
            } else if (action != 2) {
                if (action == 3) {
                }
            } else if (this.K) {
                if (i11 < this.f16447v) {
                    int i13 = this.E;
                    rect.right = u1.f0.g(ta.q.g(i10, i13, 3, i13), rect2.left, rect2.right);
                } else {
                    this.E = i10;
                    rect.right = u1.f0.g(i10, rect2.left, rect2.right);
                }
                f(getScrubberPosition());
                e();
                invalidate();
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i10, Bundle bundle) {
        if (super.performAccessibilityAction(i10, bundle)) {
            return true;
        }
        if (this.M <= 0) {
            return false;
        }
        if (i10 == 8192) {
            if (b(-getPositionIncrement())) {
                d(false);
            }
        } else {
            if (i10 != 4096) {
                return false;
            }
            if (b(getPositionIncrement())) {
                d(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void setAdMarkerColor(int i10) {
        this.f16437h.setColor(i10);
        invalidate(this.f16430a);
    }

    public void setBufferedColor(int i10) {
        this.f16435f.setColor(i10);
        invalidate(this.f16430a);
    }

    public void setBufferedPosition(long j10) {
        if (this.O == j10) {
            return;
        }
        this.O = j10;
        e();
    }

    public void setDuration(long j10) {
        if (this.M == j10) {
            return;
        }
        this.M = j10;
        if (this.K && j10 == -9223372036854775807L) {
            d(true);
        }
        e();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!this.K || z) {
            return;
        }
        d(true);
    }

    public void setKeyCountIncrement(int i10) {
        a9.o.k(i10 > 0);
        this.C = i10;
        this.D = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j10) {
        a9.o.k(j10 > 0);
        this.C = -1;
        this.D = j10;
    }

    public void setPlayedAdMarkerColor(int i10) {
        this.f16438i.setColor(i10);
        invalidate(this.f16430a);
    }

    public void setPlayedColor(int i10) {
        this.f16434e.setColor(i10);
        invalidate(this.f16430a);
    }

    public void setPosition(long j10) {
        if (this.N == j10) {
            return;
        }
        this.N = j10;
        setContentDescription(getProgressText());
        e();
    }

    public void setScrubberColor(int i10) {
        this.f16439j.setColor(i10);
        invalidate(this.f16430a);
    }

    public void setUnplayedColor(int i10) {
        this.f16436g.setColor(i10);
        invalidate(this.f16430a);
    }
}
