package m7;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import java.util.BitSet;
import l5.y;

/* loaded from: classes.dex */
public class g extends Drawable implements q0.h, u {

    /* renamed from: y, reason: collision with root package name */
    public static final Paint f10919y;

    /* renamed from: a, reason: collision with root package name */
    public f f10920a;

    /* renamed from: b, reason: collision with root package name */
    public final s[] f10921b;

    /* renamed from: c, reason: collision with root package name */
    public final s[] f10922c;

    /* renamed from: d, reason: collision with root package name */
    public final BitSet f10923d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f10924e;

    /* renamed from: f, reason: collision with root package name */
    public final Matrix f10925f;

    /* renamed from: g, reason: collision with root package name */
    public final Path f10926g;

    /* renamed from: h, reason: collision with root package name */
    public final Path f10927h;

    /* renamed from: i, reason: collision with root package name */
    public final RectF f10928i;

    /* renamed from: j, reason: collision with root package name */
    public final RectF f10929j;

    /* renamed from: k, reason: collision with root package name */
    public final Region f10930k;
    public final Region l;

    /* renamed from: m, reason: collision with root package name */
    public j f10931m;

    /* renamed from: n, reason: collision with root package name */
    public final Paint f10932n;

    /* renamed from: p, reason: collision with root package name */
    public final Paint f10933p;

    /* renamed from: q, reason: collision with root package name */
    public final l7.a f10934q;
    public final y r;

    /* renamed from: s, reason: collision with root package name */
    public final l f10935s;

    /* renamed from: t, reason: collision with root package name */
    public PorterDuffColorFilter f10936t;

    /* renamed from: v, reason: collision with root package name */
    public PorterDuffColorFilter f10937v;

    /* renamed from: w, reason: collision with root package name */
    public final RectF f10938w;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f10939x;

    static {
        Paint paint = new Paint(1);
        f10919y = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public g() {
        this(new j());
    }

    public final void b(RectF rectF, Path path) {
        f fVar = this.f10920a;
        this.f10935s.b(fVar.f10904a, fVar.f10912i, rectF, this.r, path);
        if (this.f10920a.f10911h != 1.0f) {
            Matrix matrix = this.f10925f;
            matrix.reset();
            float f10 = this.f10920a.f10911h;
            matrix.setScale(f10, f10, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.f10938w, true);
    }

    public final int c(int i10) {
        int i11;
        f fVar = this.f10920a;
        float f10 = fVar.f10915m + 0.0f + fVar.l;
        f7.a aVar = fVar.f10905b;
        if (aVar == null || !aVar.f5628a || p0.a.d(i10, 255) != aVar.f5631d) {
            return i10;
        }
        float fMin = (aVar.f5632e <= 0.0f || f10 <= 0.0f) ? 0.0f : Math.min(((((float) Math.log1p(f10 / r4)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        int iAlpha = Color.alpha(i10);
        int iK = com.bumptech.glide.d.K(p0.a.d(i10, 255), fMin, aVar.f5629b);
        if (fMin > 0.0f && (i11 = aVar.f5630c) != 0) {
            iK = p0.a.b(p0.a.d(i11, f7.a.f5627f), iK);
        }
        return p0.a.d(iK, iAlpha);
    }

    public final void d(Canvas canvas) {
        this.f10923d.cardinality();
        int i10 = this.f10920a.f10917o;
        Path path = this.f10926g;
        l7.a aVar = this.f10934q;
        if (i10 != 0) {
            canvas.drawPath(path, aVar.f10696a);
        }
        for (int i11 = 0; i11 < 4; i11++) {
            s sVar = this.f10921b[i11];
            int i12 = this.f10920a.f10916n;
            Matrix matrix = s.f10980b;
            sVar.a(matrix, aVar, i12, canvas);
            this.f10922c[i11].a(matrix, aVar, this.f10920a.f10916n, canvas);
        }
        if (this.f10939x) {
            double d10 = this.f10920a.f10917o;
            double d11 = 0;
            double dSin = Math.sin(Math.toRadians(d11));
            Double.isNaN(d10);
            int i13 = (int) (dSin * d10);
            double d12 = this.f10920a.f10917o;
            double dCos = Math.cos(Math.toRadians(d11));
            Double.isNaN(d12);
            canvas.translate(-i13, -r2);
            canvas.drawPath(path, f10919y);
            canvas.translate(i13, (int) (dCos * d12));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i10;
        Paint paint = this.f10932n;
        paint.setColorFilter(this.f10936t);
        int alpha = paint.getAlpha();
        int i11 = this.f10920a.f10914k;
        paint.setAlpha(((i11 + (i11 >>> 7)) * alpha) >>> 8);
        Paint paint2 = this.f10933p;
        paint2.setColorFilter(this.f10937v);
        paint2.setStrokeWidth(this.f10920a.f10913j);
        int alpha2 = paint2.getAlpha();
        int i12 = this.f10920a.f10914k;
        paint2.setAlpha(((i12 + (i12 >>> 7)) * alpha2) >>> 8);
        boolean z = this.f10924e;
        Path path = this.f10926g;
        if (z) {
            float f10 = -(h() ? paint2.getStrokeWidth() / 2.0f : 0.0f);
            j jVar = this.f10920a.f10904a;
            jVar.getClass();
            ff.b bVar = new ff.b(jVar);
            c bVar2 = jVar.f10945e;
            if (!(bVar2 instanceof h)) {
                bVar2 = new b(f10, bVar2);
            }
            bVar.f5806e = bVar2;
            c bVar3 = jVar.f10946f;
            if (!(bVar3 instanceof h)) {
                bVar3 = new b(f10, bVar3);
            }
            bVar.f5807f = bVar3;
            c bVar4 = jVar.f10948h;
            if (!(bVar4 instanceof h)) {
                bVar4 = new b(f10, bVar4);
            }
            bVar.f5809h = bVar4;
            c bVar5 = jVar.f10947g;
            if (!(bVar5 instanceof h)) {
                bVar5 = new b(f10, bVar5);
            }
            bVar.f5808g = bVar5;
            j jVar2 = new j(bVar);
            this.f10931m = jVar2;
            float f11 = this.f10920a.f10912i;
            RectF rectF = this.f10929j;
            rectF.set(g());
            float strokeWidth = h() ? paint2.getStrokeWidth() / 2.0f : 0.0f;
            rectF.inset(strokeWidth, strokeWidth);
            this.f10935s.b(jVar2, f11, rectF, null, this.f10927h);
            b(g(), path);
            this.f10924e = false;
        }
        f fVar = this.f10920a;
        fVar.getClass();
        if (fVar.f10916n > 0 && ((i10 = Build.VERSION.SDK_INT) < 21 || (!this.f10920a.f10904a.d(g()) && !path.isConvex() && i10 < 29))) {
            canvas.save();
            double d10 = this.f10920a.f10917o;
            double d11 = 0;
            double dSin = Math.sin(Math.toRadians(d11));
            Double.isNaN(d10);
            int i13 = (int) (dSin * d10);
            double d12 = this.f10920a.f10917o;
            double dCos = Math.cos(Math.toRadians(d11));
            Double.isNaN(d12);
            int i14 = (int) (dCos * d12);
            boolean z4 = this.f10939x;
            if (i10 < 21 && z4) {
                Rect clipBounds = canvas.getClipBounds();
                int i15 = -this.f10920a.f10916n;
                clipBounds.inset(i15, i15);
                clipBounds.offset(i13, i14);
                canvas.clipRect(clipBounds, Region.Op.REPLACE);
            }
            canvas.translate(i13, i14);
            if (z4) {
                RectF rectF2 = this.f10938w;
                int iWidth = (int) (rectF2.width() - getBounds().width());
                int iHeight = (int) (rectF2.height() - getBounds().height());
                if (iWidth < 0 || iHeight < 0) {
                    throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
                }
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(org.bouncycastle.jcajce.provider.digest.a.b(this.f10920a.f10916n, 2, (int) rectF2.width(), iWidth), org.bouncycastle.jcajce.provider.digest.a.b(this.f10920a.f10916n, 2, (int) rectF2.height(), iHeight), Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(bitmapCreateBitmap);
                float f12 = (getBounds().left - this.f10920a.f10916n) - iWidth;
                float f13 = (getBounds().top - this.f10920a.f10916n) - iHeight;
                canvas2.translate(-f12, -f13);
                d(canvas2);
                canvas.drawBitmap(bitmapCreateBitmap, f12, f13, (Paint) null);
                bitmapCreateBitmap.recycle();
                canvas.restore();
            } else {
                d(canvas);
                canvas.restore();
            }
        }
        f fVar2 = this.f10920a;
        Paint.Style style = fVar2.f10918p;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            e(canvas, paint, path, fVar2.f10904a, g());
        }
        if (h()) {
            f(canvas);
        }
        paint.setAlpha(alpha);
        paint2.setAlpha(alpha2);
    }

    public final void e(Canvas canvas, Paint paint, Path path, j jVar, RectF rectF) {
        if (!jVar.d(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fA = jVar.f10946f.a(rectF) * this.f10920a.f10912i;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        }
    }

    public void f(Canvas canvas) {
        Paint paint = this.f10933p;
        Path path = this.f10927h;
        j jVar = this.f10931m;
        RectF rectF = this.f10929j;
        rectF.set(g());
        float strokeWidth = h() ? paint.getStrokeWidth() / 2.0f : 0.0f;
        rectF.inset(strokeWidth, strokeWidth);
        e(canvas, paint, path, jVar, rectF);
    }

    public final RectF g() {
        RectF rectF = this.f10928i;
        rectF.set(getBounds());
        return rectF;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f10920a.f10914k;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f10920a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.f10920a.getClass();
        if (this.f10920a.f10904a.d(g())) {
            outline.setRoundRect(getBounds(), this.f10920a.f10904a.f10945e.a(g()) * this.f10920a.f10912i);
            return;
        }
        RectF rectFG = g();
        Path path = this.f10926g;
        b(rectFG, path);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            outline.setPath(path);
            return;
        }
        if (i10 >= 29) {
            try {
                outline.setConvexPath(path);
            } catch (IllegalArgumentException unused) {
            }
        } else {
            if (i10 < 21 || !path.isConvex()) {
                return;
            }
            outline.setConvexPath(path);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.f10920a.f10910g;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.f10930k;
        region.set(bounds);
        RectF rectFG = g();
        Path path = this.f10926g;
        b(rectFG, path);
        Region region2 = this.l;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    public final boolean h() {
        Paint.Style style = this.f10920a.f10918p;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f10933p.getStrokeWidth() > 0.0f;
    }

    public final void i(Context context) {
        this.f10920a.f10905b = new f7.a(context);
        n();
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.f10924e = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        if (!super.isStateful() && ((colorStateList = this.f10920a.f10908e) == null || !colorStateList.isStateful())) {
            this.f10920a.getClass();
            ColorStateList colorStateList3 = this.f10920a.f10907d;
            if ((colorStateList3 == null || !colorStateList3.isStateful()) && ((colorStateList2 = this.f10920a.f10906c) == null || !colorStateList2.isStateful())) {
                return false;
            }
        }
        return true;
    }

    public final void j(float f10) {
        f fVar = this.f10920a;
        if (fVar.f10915m != f10) {
            fVar.f10915m = f10;
            n();
        }
    }

    public final void k(ColorStateList colorStateList) {
        f fVar = this.f10920a;
        if (fVar.f10906c != colorStateList) {
            fVar.f10906c = colorStateList;
            onStateChange(getState());
        }
    }

    public final boolean l(int[] iArr) {
        boolean z;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.f10920a.f10906c == null || color2 == (colorForState2 = this.f10920a.f10906c.getColorForState(iArr, (color2 = (paint2 = this.f10932n).getColor())))) {
            z = false;
        } else {
            paint2.setColor(colorForState2);
            z = true;
        }
        if (this.f10920a.f10907d == null || color == (colorForState = this.f10920a.f10907d.getColorForState(iArr, (color = (paint = this.f10933p).getColor())))) {
            return z;
        }
        paint.setColor(colorForState);
        return true;
    }

    public final boolean m() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f10936t;
        PorterDuffColorFilter porterDuffColorFilter3 = this.f10937v;
        f fVar = this.f10920a;
        ColorStateList colorStateList = fVar.f10908e;
        PorterDuff.Mode mode = fVar.f10909f;
        Paint paint = this.f10932n;
        if (colorStateList == null || mode == null) {
            int color = paint.getColor();
            int iC = c(color);
            porterDuffColorFilter = iC != color ? new PorterDuffColorFilter(iC, PorterDuff.Mode.SRC_IN) : null;
        } else {
            porterDuffColorFilter = new PorterDuffColorFilter(c(colorStateList.getColorForState(getState(), 0)), mode);
        }
        this.f10936t = porterDuffColorFilter;
        this.f10920a.getClass();
        this.f10937v = null;
        this.f10920a.getClass();
        return (qf.c.o(porterDuffColorFilter2, this.f10936t) && qf.c.o(porterDuffColorFilter3, this.f10937v)) ? false : true;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f10920a = new f(this.f10920a);
        return this;
    }

    public final void n() {
        f fVar = this.f10920a;
        float f10 = fVar.f10915m + 0.0f;
        fVar.f10916n = (int) Math.ceil(0.75f * f10);
        this.f10920a.f10917o = (int) Math.ceil(f10 * 0.25f);
        m();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.f10924e = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, g7.i
    public boolean onStateChange(int[] iArr) {
        boolean z = l(iArr) || m();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        f fVar = this.f10920a;
        if (fVar.f10914k != i10) {
            fVar.f10914k = i10;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f10920a.getClass();
        super.invalidateSelf();
    }

    @Override // m7.u
    public final void setShapeAppearanceModel(j jVar) {
        this.f10920a.f10904a = jVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, q0.h
    public final void setTint(int i10) {
        setTintList(ColorStateList.valueOf(i10));
    }

    @Override // android.graphics.drawable.Drawable, q0.h
    public void setTintList(ColorStateList colorStateList) {
        this.f10920a.f10908e = colorStateList;
        m();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, q0.h
    public void setTintMode(PorterDuff.Mode mode) {
        f fVar = this.f10920a;
        if (fVar.f10909f != mode) {
            fVar.f10909f = mode;
            m();
            super.invalidateSelf();
        }
    }

    public g(Context context, AttributeSet attributeSet, int i10, int i11) {
        this(new j(j.b(context, attributeSet, i10, i11)));
    }

    public g(j jVar) {
        this(new f(jVar));
    }

    public g(f fVar) {
        l lVar;
        this.f10921b = new s[4];
        this.f10922c = new s[4];
        this.f10923d = new BitSet(8);
        this.f10925f = new Matrix();
        this.f10926g = new Path();
        this.f10927h = new Path();
        this.f10928i = new RectF();
        this.f10929j = new RectF();
        this.f10930k = new Region();
        this.l = new Region();
        Paint paint = new Paint(1);
        this.f10932n = paint;
        Paint paint2 = new Paint(1);
        this.f10933p = paint2;
        this.f10934q = new l7.a();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            lVar = k.f10952a;
        } else {
            lVar = new l();
        }
        this.f10935s = lVar;
        this.f10938w = new RectF();
        this.f10939x = true;
        this.f10920a = fVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        m();
        l(getState());
        this.r = new y(3, this);
    }
}
