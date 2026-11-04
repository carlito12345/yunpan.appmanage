package v3;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;

/* loaded from: classes.dex */
public final class j0 {
    public int A;
    public int B;
    public int C;
    public int D;
    public StaticLayout E;
    public StaticLayout F;
    public int G;
    public int H;
    public int I;
    public Rect J;

    /* renamed from: a, reason: collision with root package name */
    public final float f16491a;

    /* renamed from: b, reason: collision with root package name */
    public final float f16492b;

    /* renamed from: c, reason: collision with root package name */
    public final float f16493c;

    /* renamed from: d, reason: collision with root package name */
    public final float f16494d;

    /* renamed from: e, reason: collision with root package name */
    public final float f16495e;

    /* renamed from: f, reason: collision with root package name */
    public final TextPaint f16496f;

    /* renamed from: g, reason: collision with root package name */
    public final Paint f16497g;

    /* renamed from: h, reason: collision with root package name */
    public final Paint f16498h;

    /* renamed from: i, reason: collision with root package name */
    public CharSequence f16499i;

    /* renamed from: j, reason: collision with root package name */
    public Layout.Alignment f16500j;

    /* renamed from: k, reason: collision with root package name */
    public Bitmap f16501k;
    public float l;

    /* renamed from: m, reason: collision with root package name */
    public int f16502m;

    /* renamed from: n, reason: collision with root package name */
    public int f16503n;

    /* renamed from: o, reason: collision with root package name */
    public float f16504o;

    /* renamed from: p, reason: collision with root package name */
    public int f16505p;

    /* renamed from: q, reason: collision with root package name */
    public float f16506q;
    public float r;

    /* renamed from: s, reason: collision with root package name */
    public int f16507s;

    /* renamed from: t, reason: collision with root package name */
    public int f16508t;

    /* renamed from: u, reason: collision with root package name */
    public int f16509u;

    /* renamed from: v, reason: collision with root package name */
    public int f16510v;

    /* renamed from: w, reason: collision with root package name */
    public int f16511w;

    /* renamed from: x, reason: collision with root package name */
    public float f16512x;

    /* renamed from: y, reason: collision with root package name */
    public float f16513y;
    public float z;

    public j0(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier}, 0, 0);
        this.f16495e = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f16494d = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        float fRound = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f16491a = fRound;
        this.f16492b = fRound;
        this.f16493c = fRound;
        TextPaint textPaint = new TextPaint();
        this.f16496f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f16497g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f16498h = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    public final void a(Canvas canvas, boolean z) {
        if (!z) {
            this.J.getClass();
            this.f16501k.getClass();
            canvas.drawBitmap(this.f16501k, (Rect) null, this.J, this.f16498h);
            return;
        }
        StaticLayout staticLayout = this.E;
        StaticLayout staticLayout2 = this.F;
        if (staticLayout == null || staticLayout2 == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(this.G, this.H);
        if (Color.alpha(this.f16509u) > 0) {
            Paint paint = this.f16497g;
            paint.setColor(this.f16509u);
            canvas.drawRect(-this.I, 0.0f, staticLayout.getWidth() + this.I, staticLayout.getHeight(), paint);
        }
        int i10 = this.f16511w;
        TextPaint textPaint = this.f16496f;
        if (i10 == 1) {
            textPaint.setStrokeJoin(Paint.Join.ROUND);
            textPaint.setStrokeWidth(this.f16491a);
            textPaint.setColor(this.f16510v);
            textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout2.draw(canvas);
        } else {
            float f10 = this.f16492b;
            if (i10 == 2) {
                float f11 = this.f16493c;
                textPaint.setShadowLayer(f10, f11, f11, this.f16510v);
            } else if (i10 == 3 || i10 == 4) {
                boolean z4 = i10 == 3;
                int i11 = z4 ? -1 : this.f16510v;
                int i12 = z4 ? this.f16510v : -1;
                float f12 = f10 / 2.0f;
                textPaint.setColor(this.f16507s);
                textPaint.setStyle(Paint.Style.FILL);
                float f13 = -f12;
                textPaint.setShadowLayer(f10, f13, f13, i11);
                staticLayout2.draw(canvas);
                textPaint.setShadowLayer(f10, f12, f12, i12);
            }
        }
        textPaint.setColor(this.f16507s);
        textPaint.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        textPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(iSave);
    }
}
