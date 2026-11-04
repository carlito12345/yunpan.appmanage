package androidx.leanback.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public class PagingIndicator extends View {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1516a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1517b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1518c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1519d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1520e;

    /* renamed from: f, reason: collision with root package name */
    public final int f1521f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1522g;

    /* renamed from: h, reason: collision with root package name */
    public final int f1523h;

    /* renamed from: i, reason: collision with root package name */
    public b0[] f1524i;

    /* renamed from: j, reason: collision with root package name */
    public int[] f1525j;

    /* renamed from: k, reason: collision with root package name */
    public int[] f1526k;
    public int[] l;

    /* renamed from: m, reason: collision with root package name */
    public int f1527m;

    /* renamed from: n, reason: collision with root package name */
    public int f1528n;

    /* renamed from: p, reason: collision with root package name */
    public int f1529p;

    /* renamed from: q, reason: collision with root package name */
    public int f1530q;
    public final Paint r;

    /* renamed from: s, reason: collision with root package name */
    public final Paint f1531s;

    /* renamed from: t, reason: collision with root package name */
    public Bitmap f1532t;

    /* renamed from: v, reason: collision with root package name */
    public Paint f1533v;

    /* renamed from: w, reason: collision with root package name */
    public final Rect f1534w;

    /* renamed from: x, reason: collision with root package name */
    public final float f1535x;

    /* renamed from: y, reason: collision with root package name */
    public static final DecelerateInterpolator f1515y = new DecelerateInterpolator();
    public static final a0 z = new a0(0);
    public static final a0 A = new a0(1);
    public static final a0 B = new a0(2);

    public PagingIndicator(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet, 0);
        AnimatorSet animatorSet = new AnimatorSet();
        Resources resources = getResources();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n1.a.f11245b, 0, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(6, getResources().getDimensionPixelOffset(R.dimen.lb_page_indicator_dot_radius));
        this.f1518c = dimensionPixelOffset;
        int i10 = dimensionPixelOffset * 2;
        this.f1517b = i10;
        int dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, getResources().getDimensionPixelOffset(R.dimen.lb_page_indicator_arrow_radius));
        this.f1521f = dimensionPixelOffset2;
        int i11 = dimensionPixelOffset2 * 2;
        this.f1520e = i11;
        this.f1519d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(5, getResources().getDimensionPixelOffset(R.dimen.lb_page_indicator_dot_gap));
        this.f1522g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(4, getResources().getDimensionPixelOffset(R.dimen.lb_page_indicator_arrow_gap));
        int color = typedArrayObtainStyledAttributes.getColor(3, getResources().getColor(R.color.lb_page_indicator_dot));
        Paint paint = new Paint(1);
        this.r = paint;
        paint.setColor(color);
        this.f1530q = typedArrayObtainStyledAttributes.getColor(0, getResources().getColor(R.color.lb_page_indicator_arrow_background));
        if (this.f1533v == null && typedArrayObtainStyledAttributes.hasValue(1)) {
            setArrowColor(typedArrayObtainStyledAttributes.getColor(1, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f1516a = resources.getConfiguration().getLayoutDirection() == 0;
        int color2 = resources.getColor(R.color.lb_page_indicator_arrow_shadow);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.lb_page_indicator_arrow_shadow_radius);
        this.f1523h = dimensionPixelSize;
        Paint paint2 = new Paint(1);
        this.f1531s = paint2;
        float dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.lb_page_indicator_arrow_shadow_offset);
        paint2.setShadowLayer(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize2, color2);
        this.f1532t = d();
        this.f1534w = new Rect(0, 0, this.f1532t.getWidth(), this.f1532t.getHeight());
        float f10 = i11;
        this.f1535x = this.f1532t.getWidth() / f10;
        AnimatorSet animatorSet2 = new AnimatorSet();
        a0 a0Var = z;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat((Object) null, a0Var, 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(167L);
        DecelerateInterpolator decelerateInterpolator = f1515y;
        objectAnimatorOfFloat.setInterpolator(decelerateInterpolator);
        float f11 = i10;
        a0 a0Var2 = A;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat((Object) null, a0Var2, f11, f10);
        objectAnimatorOfFloat2.setDuration(417L);
        objectAnimatorOfFloat2.setInterpolator(decelerateInterpolator);
        animatorSet2.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, c());
        AnimatorSet animatorSet3 = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat((Object) null, a0Var, 1.0f, 0.0f);
        objectAnimatorOfFloat3.setDuration(167L);
        objectAnimatorOfFloat3.setInterpolator(decelerateInterpolator);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat((Object) null, a0Var2, f10, f11);
        objectAnimatorOfFloat4.setDuration(417L);
        objectAnimatorOfFloat4.setInterpolator(decelerateInterpolator);
        animatorSet3.playTogether(objectAnimatorOfFloat3, objectAnimatorOfFloat4, c());
        animatorSet.playTogether(animatorSet2, animatorSet3);
        setLayerType(1, null);
    }

    private int getDesiredHeight() {
        return getPaddingBottom() + getPaddingTop() + this.f1520e + this.f1523h;
    }

    private int getDesiredWidth() {
        return getPaddingRight() + getPaddingLeft() + getRequiredWidth();
    }

    private int getRequiredWidth() {
        return ((this.f1528n - 3) * this.f1519d) + (this.f1522g * 2) + (this.f1518c * 2);
    }

    private void setSelectedPage(int i10) {
        if (i10 == this.f1529p) {
            return;
        }
        this.f1529p = i10;
        a();
    }

    public final void a() {
        int i10;
        int i11 = 0;
        while (true) {
            i10 = this.f1529p;
            if (i11 >= i10) {
                break;
            }
            this.f1524i[i11].b();
            b0 b0Var = this.f1524i[i11];
            if (i11 != 0) {
                f = 1.0f;
            }
            b0Var.f1627h = f;
            b0Var.f1623d = this.f1526k[i11];
            i11++;
        }
        b0 b0Var2 = this.f1524i[i10];
        b0Var2.f1622c = 0.0f;
        b0Var2.f1623d = 0.0f;
        PagingIndicator pagingIndicator = b0Var2.f1629j;
        b0Var2.f1624e = pagingIndicator.f1520e;
        float f10 = pagingIndicator.f1521f;
        b0Var2.f1625f = f10;
        b0Var2.f1626g = f10 * pagingIndicator.f1535x;
        b0Var2.f1620a = 1.0f;
        b0Var2.a();
        b0[] b0VarArr = this.f1524i;
        int i12 = this.f1529p;
        b0 b0Var3 = b0VarArr[i12];
        b0Var3.f1627h = i12 <= 0 ? 1.0f : -1.0f;
        b0Var3.f1623d = this.f1525j[i12];
        while (true) {
            i12++;
            if (i12 >= this.f1528n) {
                return;
            }
            this.f1524i[i12].b();
            b0 b0Var4 = this.f1524i[i12];
            b0Var4.f1627h = 1.0f;
            b0Var4.f1623d = this.l[i12];
        }
    }

    public final void b() {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int requiredWidth = getRequiredWidth();
        int i10 = (paddingLeft + width) / 2;
        int i11 = this.f1528n;
        int[] iArr = new int[i11];
        this.f1525j = iArr;
        int[] iArr2 = new int[i11];
        this.f1526k = iArr2;
        int[] iArr3 = new int[i11];
        this.l = iArr3;
        boolean z4 = this.f1516a;
        int i12 = this.f1518c;
        int i13 = this.f1522g;
        int i14 = this.f1519d;
        int i15 = 1;
        if (z4) {
            int i16 = i10 - (requiredWidth / 2);
            iArr[0] = ((i16 + i12) - i14) + i13;
            iArr2[0] = i16 + i12;
            iArr3[0] = (i13 * 2) + ((i16 + i12) - (i14 * 2));
            while (i15 < this.f1528n) {
                int[] iArr4 = this.f1525j;
                int[] iArr5 = this.f1526k;
                int i17 = i15 - 1;
                iArr4[i15] = iArr5[i17] + i13;
                iArr5[i15] = iArr5[i17] + i14;
                this.l[i15] = iArr4[i17] + i13;
                i15++;
            }
        } else {
            int i18 = (requiredWidth / 2) + i10;
            iArr[0] = ((i18 - i12) + i14) - i13;
            iArr2[0] = i18 - i12;
            iArr3[0] = ((i14 * 2) + (i18 - i12)) - (i13 * 2);
            while (i15 < this.f1528n) {
                int[] iArr6 = this.f1525j;
                int[] iArr7 = this.f1526k;
                int i19 = i15 - 1;
                iArr6[i15] = iArr7[i19] - i13;
                iArr7[i15] = iArr7[i19] - i14;
                this.l[i15] = iArr6[i19] - i13;
                i15++;
            }
        }
        this.f1527m = paddingTop + this.f1521f;
        a();
    }

    public final ObjectAnimator c() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat((Object) null, B, (-this.f1522g) + this.f1519d, 0.0f);
        objectAnimatorOfFloat.setDuration(417L);
        objectAnimatorOfFloat.setInterpolator(f1515y);
        return objectAnimatorOfFloat;
    }

    public final Bitmap d() {
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.lb_ic_nav_arrow);
        if (this.f1516a) {
            return bitmapDecodeResource;
        }
        Matrix matrix = new Matrix();
        matrix.preScale(-1.0f, 1.0f);
        return Bitmap.createBitmap(bitmapDecodeResource, 0, 0, bitmapDecodeResource.getWidth(), bitmapDecodeResource.getHeight(), matrix, false);
    }

    public int[] getDotSelectedLeftX() {
        return this.f1526k;
    }

    public int[] getDotSelectedRightX() {
        return this.l;
    }

    public int[] getDotSelectedX() {
        return this.f1525j;
    }

    public int getPageCount() {
        return this.f1528n;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        for (int i10 = 0; i10 < this.f1528n; i10++) {
            b0 b0Var = this.f1524i[i10];
            float f10 = b0Var.f1623d + b0Var.f1622c;
            PagingIndicator pagingIndicator = b0Var.f1629j;
            canvas.drawCircle(f10, pagingIndicator.f1527m, b0Var.f1625f, pagingIndicator.r);
            if (b0Var.f1620a > 0.0f) {
                Paint paint = pagingIndicator.f1531s;
                paint.setColor(b0Var.f1621b);
                canvas.drawCircle(f10, pagingIndicator.f1527m, b0Var.f1625f, paint);
                Bitmap bitmap = pagingIndicator.f1532t;
                float f11 = b0Var.f1626g;
                float f12 = pagingIndicator.f1527m;
                canvas.drawBitmap(bitmap, pagingIndicator.f1534w, new Rect((int) (f10 - f11), (int) (f12 - f11), (int) (f10 + f11), (int) (f12 + f11)), pagingIndicator.f1533v);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        int desiredHeight = getDesiredHeight();
        int mode = View.MeasureSpec.getMode(i11);
        if (mode == Integer.MIN_VALUE) {
            desiredHeight = Math.min(desiredHeight, View.MeasureSpec.getSize(i11));
        } else if (mode == 1073741824) {
            desiredHeight = View.MeasureSpec.getSize(i11);
        }
        int desiredWidth = getDesiredWidth();
        int mode2 = View.MeasureSpec.getMode(i10);
        if (mode2 == Integer.MIN_VALUE) {
            desiredWidth = Math.min(desiredWidth, View.MeasureSpec.getSize(i10));
        } else if (mode2 == 1073741824) {
            desiredWidth = View.MeasureSpec.getSize(i10);
        }
        setMeasuredDimension(desiredWidth, desiredHeight);
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        boolean z4 = i10 == 0;
        if (this.f1516a != z4) {
            this.f1516a = z4;
            this.f1532t = d();
            b0[] b0VarArr = this.f1524i;
            if (b0VarArr != null) {
                for (b0 b0Var : b0VarArr) {
                    b0Var.f1628i = b0Var.f1629j.f1516a ? 1.0f : -1.0f;
                }
            }
            b();
            invalidate();
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        setMeasuredDimension(i10, i11);
        b();
    }

    public void setArrowBackgroundColor(int i10) {
        this.f1530q = i10;
    }

    public void setArrowColor(int i10) {
        if (this.f1533v == null) {
            this.f1533v = new Paint();
        }
        this.f1533v.setColorFilter(new PorterDuffColorFilter(i10, PorterDuff.Mode.SRC_IN));
    }

    public void setDotBackgroundColor(int i10) {
        this.r.setColor(i10);
    }

    public void setPageCount(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("The page count should be a positive integer");
        }
        this.f1528n = i10;
        this.f1524i = new b0[i10];
        for (int i11 = 0; i11 < this.f1528n; i11++) {
            this.f1524i[i11] = new b0(this);
        }
        b();
        setSelectedPage(0);
    }
}
