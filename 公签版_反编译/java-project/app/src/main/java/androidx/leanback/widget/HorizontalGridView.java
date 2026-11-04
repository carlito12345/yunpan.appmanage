package androidx.leanback.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class HorizontalGridView extends f {

    /* renamed from: g, reason: collision with root package name */
    public boolean f1493g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1494h;

    /* renamed from: i, reason: collision with root package name */
    public final Paint f1495i;

    /* renamed from: j, reason: collision with root package name */
    public Bitmap f1496j;

    /* renamed from: k, reason: collision with root package name */
    public LinearGradient f1497k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f1498m;

    /* renamed from: n, reason: collision with root package name */
    public Bitmap f1499n;

    /* renamed from: p, reason: collision with root package name */
    public LinearGradient f1500p;

    /* renamed from: q, reason: collision with root package name */
    public int f1501q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public final Rect f1502s;

    public HorizontalGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1495i = new Paint();
        this.f1502s = new Rect();
        this.f1634a.setOrientation(0);
        r(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n1.a.f11248e);
        setRowHeight(typedArrayObtainStyledAttributes);
        setNumRows(typedArrayObtainStyledAttributes.getInt(0, 1));
        typedArrayObtainStyledAttributes.recycle();
        s();
        Paint paint = new Paint();
        this.f1495i = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    }

    private Bitmap getTempBitmapHigh() {
        Bitmap bitmap = this.f1499n;
        if (bitmap == null || bitmap.getWidth() != this.f1501q || this.f1499n.getHeight() != getHeight()) {
            this.f1499n = Bitmap.createBitmap(this.f1501q, getHeight(), Bitmap.Config.ARGB_8888);
        }
        return this.f1499n;
    }

    private Bitmap getTempBitmapLow() {
        Bitmap bitmap = this.f1496j;
        if (bitmap == null || bitmap.getWidth() != this.l || this.f1496j.getHeight() != getHeight()) {
            this.f1496j = Bitmap.createBitmap(this.l, getHeight(), Bitmap.Config.ARGB_8888);
        }
        return this.f1496j;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void draw(Canvas canvas) {
        boolean z;
        boolean z4 = this.f1493g;
        q qVar = this.f1634a;
        boolean z10 = true;
        if (z4) {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = getChildAt(i10);
                qVar.getClass();
                n nVar = (n) childAt.getLayoutParams();
                nVar.getClass();
                if (childAt.getLeft() + nVar.f1664a < getPaddingLeft() - this.f1498m) {
                    z = true;
                    break;
                }
            }
            z = false;
        } else {
            z = false;
        }
        if (this.f1494h) {
            for (int childCount2 = getChildCount() - 1; childCount2 >= 0; childCount2--) {
                View childAt2 = getChildAt(childCount2);
                qVar.getClass();
                n nVar2 = (n) childAt2.getLayoutParams();
                nVar2.getClass();
                if (childAt2.getRight() - nVar2.f1666c > (getWidth() - getPaddingRight()) + this.r) {
                    break;
                }
            }
            z10 = false;
        } else {
            z10 = false;
        }
        if (!z) {
            this.f1496j = null;
        }
        if (!z10) {
            this.f1499n = null;
        }
        if (!z && !z10) {
            super.draw(canvas);
            return;
        }
        int paddingLeft = this.f1493g ? (getPaddingLeft() - this.f1498m) - this.l : 0;
        int width = this.f1494h ? (getWidth() - getPaddingRight()) + this.r + this.f1501q : getWidth();
        int iSave = canvas.save();
        canvas.clipRect((this.f1493g ? this.l : 0) + paddingLeft, 0, width - (this.f1494h ? this.f1501q : 0), getHeight());
        super.draw(canvas);
        canvas.restoreToCount(iSave);
        Canvas canvas2 = new Canvas();
        Rect rect = this.f1502s;
        rect.top = 0;
        rect.bottom = getHeight();
        if (z && this.l > 0) {
            Bitmap tempBitmapLow = getTempBitmapLow();
            tempBitmapLow.eraseColor(0);
            canvas2.setBitmap(tempBitmapLow);
            int iSave2 = canvas2.save();
            canvas2.clipRect(0, 0, this.l, getHeight());
            float f10 = -paddingLeft;
            canvas2.translate(f10, 0.0f);
            super.draw(canvas2);
            canvas2.restoreToCount(iSave2);
            this.f1495i.setShader(this.f1497k);
            canvas2.drawRect(0.0f, 0.0f, this.l, getHeight(), this.f1495i);
            rect.left = 0;
            rect.right = this.l;
            canvas.translate(paddingLeft, 0.0f);
            canvas.drawBitmap(tempBitmapLow, rect, rect, (Paint) null);
            canvas.translate(f10, 0.0f);
        }
        if (!z10 || this.f1501q <= 0) {
            return;
        }
        Bitmap tempBitmapHigh = getTempBitmapHigh();
        tempBitmapHigh.eraseColor(0);
        canvas2.setBitmap(tempBitmapHigh);
        int iSave3 = canvas2.save();
        canvas2.clipRect(0, 0, this.f1501q, getHeight());
        canvas2.translate(-(width - this.f1501q), 0.0f);
        super.draw(canvas2);
        canvas2.restoreToCount(iSave3);
        this.f1495i.setShader(this.f1500p);
        canvas2.drawRect(0.0f, 0.0f, this.f1501q, getHeight(), this.f1495i);
        rect.left = 0;
        rect.right = this.f1501q;
        canvas.translate(width - r4, 0.0f);
        canvas.drawBitmap(tempBitmapHigh, rect, rect, (Paint) null);
        canvas.translate(-(width - this.f1501q), 0.0f);
    }

    public final boolean getFadingLeftEdge() {
        return this.f1493g;
    }

    public final int getFadingLeftEdgeLength() {
        return this.l;
    }

    public final int getFadingLeftEdgeOffset() {
        return this.f1498m;
    }

    public final boolean getFadingRightEdge() {
        return this.f1494h;
    }

    public final int getFadingRightEdgeLength() {
        return this.f1501q;
    }

    public final int getFadingRightEdgeOffset() {
        return this.r;
    }

    public final void s() {
        if (this.f1493g || this.f1494h) {
            setLayerType(2, null);
            setWillNotDraw(false);
        } else {
            setLayerType(0, null);
            setWillNotDraw(true);
        }
    }

    public final void setFadingLeftEdge(boolean z) {
        if (this.f1493g != z) {
            this.f1493g = z;
            if (!z) {
                this.f1496j = null;
            }
            invalidate();
            s();
        }
    }

    public final void setFadingLeftEdgeLength(int i10) {
        if (this.l != i10) {
            this.l = i10;
            if (i10 != 0) {
                this.f1497k = new LinearGradient(0.0f, 0.0f, this.l, 0.0f, 0, -16777216, Shader.TileMode.CLAMP);
            } else {
                this.f1497k = null;
            }
            invalidate();
        }
    }

    public final void setFadingLeftEdgeOffset(int i10) {
        if (this.f1498m != i10) {
            this.f1498m = i10;
            invalidate();
        }
    }

    public final void setFadingRightEdge(boolean z) {
        if (this.f1494h != z) {
            this.f1494h = z;
            if (!z) {
                this.f1499n = null;
            }
            invalidate();
            s();
        }
    }

    public final void setFadingRightEdgeLength(int i10) {
        if (this.f1501q != i10) {
            this.f1501q = i10;
            if (i10 != 0) {
                this.f1500p = new LinearGradient(0.0f, 0.0f, this.f1501q, 0.0f, -16777216, 0, Shader.TileMode.CLAMP);
            } else {
                this.f1500p = null;
            }
            invalidate();
        }
    }

    public final void setFadingRightEdgeOffset(int i10) {
        if (this.r != i10) {
            this.r = i10;
            invalidate();
        }
    }

    public void setNumRows(int i10) {
        q qVar = this.f1634a;
        if (i10 < 0) {
            qVar.getClass();
            throw new IllegalArgumentException();
        }
        qVar.C = i10;
        requestLayout();
    }

    public void setRowHeight(TypedArray typedArray) {
        if (typedArray.peekValue(1) != null) {
            setRowHeight(typedArray.getLayoutDimension(1, 0));
        }
    }

    public void setRowHeight(int i10) {
        this.f1634a.E(i10);
        requestLayout();
    }
}
