package i4;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import java.io.IOException;
import java.util.ArrayDeque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class s extends j {

    /* renamed from: j, reason: collision with root package name */
    public static final PorterDuff.Mode f8595j = PorterDuff.Mode.SRC_IN;

    /* renamed from: b, reason: collision with root package name */
    public q f8596b;

    /* renamed from: c, reason: collision with root package name */
    public PorterDuffColorFilter f8597c;

    /* renamed from: d, reason: collision with root package name */
    public ColorFilter f8598d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8599e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8600f;

    /* renamed from: g, reason: collision with root package name */
    public final float[] f8601g;

    /* renamed from: h, reason: collision with root package name */
    public final Matrix f8602h;

    /* renamed from: i, reason: collision with root package name */
    public final Rect f8603i;

    public s() {
        this.f8600f = true;
        this.f8601g = new float[9];
        this.f8602h = new Matrix();
        this.f8603i = new Rect();
        this.f8596b = new q();
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f8543a;
        if (drawable == null || Build.VERSION.SDK_INT < 21) {
            return false;
        }
        q0.b.b(drawable);
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect = this.f8603i;
        copyBounds(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f8598d;
        if (colorFilter == null) {
            colorFilter = this.f8597c;
        }
        Matrix matrix = this.f8602h;
        canvas.getMatrix(matrix);
        float[] fArr = this.f8601g;
        matrix.getValues(fArr);
        float fAbs = Math.abs(fArr[0]);
        float fAbs2 = Math.abs(fArr[4]);
        float fAbs3 = Math.abs(fArr[1]);
        float fAbs4 = Math.abs(fArr[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iWidth = (int) (rect.width() * fAbs);
        int iMin = Math.min(2048, iWidth);
        int iMin2 = Math.min(2048, (int) (rect.height() * fAbs2));
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(rect.left, rect.top);
        if (isAutoMirrored() && com.bumptech.glide.c.F(this) == 1) {
            canvas.translate(rect.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        rect.offsetTo(0, 0);
        q qVar = this.f8596b;
        Bitmap bitmap = qVar.f8588f;
        if (bitmap == null || iMin != bitmap.getWidth() || iMin2 != qVar.f8588f.getHeight()) {
            qVar.f8588f = Bitmap.createBitmap(iMin, iMin2, Bitmap.Config.ARGB_8888);
            qVar.f8593k = true;
        }
        if (this.f8600f) {
            q qVar2 = this.f8596b;
            if (qVar2.f8593k || qVar2.f8589g != qVar2.f8585c || qVar2.f8590h != qVar2.f8586d || qVar2.f8592j != qVar2.f8587e || qVar2.f8591i != qVar2.f8584b.getRootAlpha()) {
                q qVar3 = this.f8596b;
                qVar3.f8588f.eraseColor(0);
                Canvas canvas2 = new Canvas(qVar3.f8588f);
                p pVar = qVar3.f8584b;
                pVar.a(pVar.f8575g, p.f8568p, canvas2, iMin, iMin2);
                q qVar4 = this.f8596b;
                qVar4.f8589g = qVar4.f8585c;
                qVar4.f8590h = qVar4.f8586d;
                qVar4.f8591i = qVar4.f8584b.getRootAlpha();
                qVar4.f8592j = qVar4.f8587e;
                qVar4.f8593k = false;
            }
        } else {
            q qVar5 = this.f8596b;
            qVar5.f8588f.eraseColor(0);
            Canvas canvas3 = new Canvas(qVar5.f8588f);
            p pVar2 = qVar5.f8584b;
            pVar2.a(pVar2.f8575g, p.f8568p, canvas3, iMin, iMin2);
        }
        q qVar6 = this.f8596b;
        if (qVar6.f8584b.getRootAlpha() >= 255 && colorFilter == null) {
            paint = null;
        } else {
            if (qVar6.l == null) {
                Paint paint2 = new Paint();
                qVar6.l = paint2;
                paint2.setFilterBitmap(true);
            }
            qVar6.l.setAlpha(qVar6.f8584b.getRootAlpha());
            qVar6.l.setColorFilter(colorFilter);
            paint = qVar6.l;
        }
        canvas.drawBitmap(qVar6.f8588f, (Rect) null, rect, paint);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f8543a;
        if (drawable == null) {
            return this.f8596b.f8584b.getRootAlpha();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return q0.a.a(drawable);
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f8543a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f8596b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f8543a;
        if (drawable == null) {
            return this.f8598d;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            return q0.b.c(drawable);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f8543a != null && Build.VERSION.SDK_INT >= 24) {
            return new r(this.f8543a.getConstantState());
        }
        this.f8596b.f8583a = getChangingConfigurations();
        return this.f8596b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f8543a;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f8596b.f8584b.f8577i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f8543a;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f8596b.f8584b.f8576h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f8543a;
        if (drawable == null) {
            return this.f8596b.f8587e;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return q0.a.d(drawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (!super.isStateful()) {
            q qVar = this.f8596b;
            if (qVar != null) {
                p pVar = qVar.f8584b;
                if (pVar.f8581n == null) {
                    pVar.f8581n = Boolean.valueOf(pVar.f8575g.a());
                }
                if (pVar.f8581n.booleanValue() || ((colorStateList = this.f8596b.f8585c) != null && colorStateList.isStateful())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f8599e && super.mutate() == this) {
            this.f8596b = new q(this.f8596b);
            this.f8599e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z;
        PorterDuff.Mode mode;
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        q qVar = this.f8596b;
        ColorStateList colorStateList = qVar.f8585c;
        if (colorStateList == null || (mode = qVar.f8586d) == null) {
            z = false;
        } else {
            this.f8597c = a(colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        p pVar = qVar.f8584b;
        if (pVar.f8581n == null) {
            pVar.f8581n = Boolean.valueOf(pVar.f8575g.a());
        }
        if (pVar.f8581n.booleanValue()) {
            boolean zB = qVar.f8584b.f8575g.b(iArr);
            qVar.f8593k |= zB;
            if (zB) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j10) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j10);
        } else {
            super.scheduleSelf(runnable, j10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            drawable.setAlpha(i10);
        } else if (this.f8596b.f8584b.getRootAlpha() != i10) {
            this.f8596b.f8584b.setRootAlpha(i10);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            com.bumptech.glide.c.a0(drawable, z);
        } else {
            this.f8596b.f8587e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f8598d = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, q0.h
    public final void setTint(int i10) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            com.bumptech.glide.c.e0(drawable, i10);
        } else {
            setTintList(ColorStateList.valueOf(i10));
        }
    }

    @Override // android.graphics.drawable.Drawable, q0.h
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            com.bumptech.glide.c.f0(drawable, colorStateList);
            return;
        }
        q qVar = this.f8596b;
        if (qVar.f8585c != colorStateList) {
            qVar.f8585c = colorStateList;
            this.f8597c = a(colorStateList, qVar.f8586d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, q0.h
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            com.bumptech.glide.c.g0(drawable, mode);
            return;
        }
        q qVar = this.f8596b;
        if (qVar.f8586d != mode) {
            qVar.f8586d = mode;
            this.f8597c = a(qVar.f8585c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z4) {
        Drawable drawable = this.f8543a;
        return drawable != null ? drawable.setVisible(z, z4) : super.setVisible(z, z4);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        p pVar;
        int i10;
        Drawable drawable = this.f8543a;
        if (drawable != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                q0.b.d(drawable, resources, xmlPullParser, attributeSet, theme);
                return;
            } else {
                drawable.inflate(resources, xmlPullParser, attributeSet);
                return;
            }
        }
        q qVar = this.f8596b;
        qVar.f8584b = new p();
        TypedArray typedArrayG = o0.b.g(resources, theme, attributeSet, a.f8511a);
        q qVar2 = this.f8596b;
        p pVar2 = qVar2.f8584b;
        int i11 = !o0.b.d(xmlPullParser, "tintMode") ? -1 : typedArrayG.getInt(6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        if (i11 == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (i11 != 5) {
            if (i11 != 9) {
                switch (i11) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        qVar2.f8586d = mode;
        int i12 = 1;
        ColorStateList colorStateListA = null;
        if (o0.b.d(xmlPullParser, "tint")) {
            TypedValue typedValue = new TypedValue();
            typedArrayG.getValue(1, typedValue);
            int i13 = typedValue.type;
            if (i13 == 2) {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            }
            if (i13 >= 28 && i13 <= 31) {
                colorStateListA = ColorStateList.valueOf(typedValue.data);
            } else {
                Resources resources2 = typedArrayG.getResources();
                int resourceId = typedArrayG.getResourceId(1, 0);
                ThreadLocal threadLocal = o0.c.f11455a;
                try {
                    colorStateListA = o0.c.a(resources2, resources2.getXml(resourceId), theme);
                } catch (Exception unused) {
                }
            }
        }
        ColorStateList colorStateList = colorStateListA;
        if (colorStateList != null) {
            qVar2.f8585c = colorStateList;
        }
        boolean z = qVar2.f8587e;
        if (o0.b.d(xmlPullParser, "autoMirrored")) {
            z = typedArrayG.getBoolean(5, z);
        }
        qVar2.f8587e = z;
        float f10 = pVar2.f8578j;
        if (o0.b.d(xmlPullParser, "viewportWidth")) {
            f10 = typedArrayG.getFloat(7, f10);
        }
        pVar2.f8578j = f10;
        float f11 = pVar2.f8579k;
        if (o0.b.d(xmlPullParser, "viewportHeight")) {
            f11 = typedArrayG.getFloat(8, f11);
        }
        pVar2.f8579k = f11;
        if (pVar2.f8578j <= 0.0f) {
            throw new XmlPullParserException(typedArrayG.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f11 > 0.0f) {
            pVar2.f8576h = typedArrayG.getDimension(3, pVar2.f8576h);
            float dimension = typedArrayG.getDimension(2, pVar2.f8577i);
            pVar2.f8577i = dimension;
            if (pVar2.f8576h <= 0.0f) {
                throw new XmlPullParserException(typedArrayG.getPositionDescription() + "<vector> tag requires width > 0");
            }
            if (dimension > 0.0f) {
                float alpha = pVar2.getAlpha();
                if (o0.b.d(xmlPullParser, "alpha")) {
                    alpha = typedArrayG.getFloat(4, alpha);
                }
                pVar2.setAlpha(alpha);
                String string = typedArrayG.getString(0);
                if (string != null) {
                    pVar2.f8580m = string;
                    pVar2.f8582o.put(string, pVar2);
                }
                typedArrayG.recycle();
                qVar.f8583a = getChangingConfigurations();
                qVar.f8593k = true;
                q qVar3 = this.f8596b;
                p pVar3 = qVar3.f8584b;
                ArrayDeque arrayDeque = new ArrayDeque();
                arrayDeque.push(pVar3.f8575g);
                int eventType = xmlPullParser.getEventType();
                int depth = xmlPullParser.getDepth() + 1;
                boolean z4 = true;
                for (int i14 = 3; eventType != i12 && (xmlPullParser.getDepth() >= depth || eventType != i14); i14 = 3) {
                    if (eventType == 2) {
                        String name = xmlPullParser.getName();
                        m mVar = (m) arrayDeque.peek();
                        boolean zEquals = "path".equals(name);
                        a0.e eVar = pVar3.f8582o;
                        pVar = pVar3;
                        if (zEquals) {
                            l lVar = new l();
                            TypedArray typedArrayG2 = o0.b.g(resources, theme, attributeSet, a.f8513c);
                            if (o0.b.d(xmlPullParser, "pathData")) {
                                String string2 = typedArrayG2.getString(0);
                                if (string2 != null) {
                                    lVar.f8566b = string2;
                                }
                                String string3 = typedArrayG2.getString(2);
                                if (string3 != null) {
                                    lVar.f8565a = p000if.a.t(string3);
                                }
                                lVar.f8546f = o0.b.b(typedArrayG2, xmlPullParser, theme, "fillColor", 1);
                                float f12 = lVar.f8548h;
                                if (o0.b.d(xmlPullParser, "fillAlpha")) {
                                    f12 = typedArrayG2.getFloat(12, f12);
                                }
                                lVar.f8548h = f12;
                                int i15 = !o0.b.d(xmlPullParser, "strokeLineCap") ? -1 : typedArrayG2.getInt(8, -1);
                                Paint.Cap cap = lVar.l;
                                if (i15 != 0) {
                                    i10 = depth;
                                    if (i15 == 1) {
                                        cap = Paint.Cap.ROUND;
                                    } else if (i15 == 2) {
                                        cap = Paint.Cap.SQUARE;
                                    }
                                } else {
                                    i10 = depth;
                                    cap = Paint.Cap.BUTT;
                                }
                                lVar.l = cap;
                                int i16 = !o0.b.d(xmlPullParser, "strokeLineJoin") ? -1 : typedArrayG2.getInt(9, -1);
                                Paint.Join join = lVar.f8552m;
                                if (i16 == 0) {
                                    join = Paint.Join.MITER;
                                } else if (i16 == 1) {
                                    join = Paint.Join.ROUND;
                                } else if (i16 == 2) {
                                    join = Paint.Join.BEVEL;
                                }
                                lVar.f8552m = join;
                                float f13 = lVar.f8553n;
                                if (o0.b.d(xmlPullParser, "strokeMiterLimit")) {
                                    f13 = typedArrayG2.getFloat(10, f13);
                                }
                                lVar.f8553n = f13;
                                lVar.f8544d = o0.b.b(typedArrayG2, xmlPullParser, theme, "strokeColor", 3);
                                float f14 = lVar.f8547g;
                                if (o0.b.d(xmlPullParser, "strokeAlpha")) {
                                    f14 = typedArrayG2.getFloat(11, f14);
                                }
                                lVar.f8547g = f14;
                                float f15 = lVar.f8545e;
                                if (o0.b.d(xmlPullParser, "strokeWidth")) {
                                    f15 = typedArrayG2.getFloat(4, f15);
                                }
                                lVar.f8545e = f15;
                                float f16 = lVar.f8550j;
                                if (o0.b.d(xmlPullParser, "trimPathEnd")) {
                                    f16 = typedArrayG2.getFloat(6, f16);
                                }
                                lVar.f8550j = f16;
                                float f17 = lVar.f8551k;
                                if (o0.b.d(xmlPullParser, "trimPathOffset")) {
                                    f17 = typedArrayG2.getFloat(7, f17);
                                }
                                lVar.f8551k = f17;
                                float f18 = lVar.f8549i;
                                if (o0.b.d(xmlPullParser, "trimPathStart")) {
                                    f18 = typedArrayG2.getFloat(5, f18);
                                }
                                lVar.f8549i = f18;
                                int i17 = lVar.f8567c;
                                if (o0.b.d(xmlPullParser, "fillType")) {
                                    i17 = typedArrayG2.getInt(13, i17);
                                }
                                lVar.f8567c = i17;
                            } else {
                                i10 = depth;
                            }
                            typedArrayG2.recycle();
                            mVar.f8555b.add(lVar);
                            if (lVar.getPathName() != null) {
                                eVar.put(lVar.getPathName(), lVar);
                            }
                            qVar3.f8583a = qVar3.f8583a;
                            z4 = false;
                        } else {
                            i10 = depth;
                            if ("clip-path".equals(name)) {
                                k kVar = new k();
                                if (o0.b.d(xmlPullParser, "pathData")) {
                                    TypedArray typedArrayG3 = o0.b.g(resources, theme, attributeSet, a.f8514d);
                                    String string4 = typedArrayG3.getString(0);
                                    if (string4 != null) {
                                        kVar.f8566b = string4;
                                    }
                                    String string5 = typedArrayG3.getString(1);
                                    if (string5 != null) {
                                        kVar.f8565a = p000if.a.t(string5);
                                    }
                                    kVar.f8567c = !o0.b.d(xmlPullParser, "fillType") ? 0 : typedArrayG3.getInt(2, 0);
                                    typedArrayG3.recycle();
                                }
                                mVar.f8555b.add(kVar);
                                if (kVar.getPathName() != null) {
                                    eVar.put(kVar.getPathName(), kVar);
                                }
                                qVar3.f8583a = qVar3.f8583a;
                            } else if ("group".equals(name)) {
                                m mVar2 = new m();
                                TypedArray typedArrayG4 = o0.b.g(resources, theme, attributeSet, a.f8512b);
                                float f19 = mVar2.f8556c;
                                if (o0.b.d(xmlPullParser, "rotation")) {
                                    f19 = typedArrayG4.getFloat(5, f19);
                                }
                                mVar2.f8556c = f19;
                                mVar2.f8557d = typedArrayG4.getFloat(1, mVar2.f8557d);
                                mVar2.f8558e = typedArrayG4.getFloat(2, mVar2.f8558e);
                                float f20 = mVar2.f8559f;
                                if (o0.b.d(xmlPullParser, "scaleX")) {
                                    f20 = typedArrayG4.getFloat(3, f20);
                                }
                                mVar2.f8559f = f20;
                                float f21 = mVar2.f8560g;
                                if (o0.b.d(xmlPullParser, "scaleY")) {
                                    f21 = typedArrayG4.getFloat(4, f21);
                                }
                                mVar2.f8560g = f21;
                                float f22 = mVar2.f8561h;
                                if (o0.b.d(xmlPullParser, "translateX")) {
                                    f22 = typedArrayG4.getFloat(6, f22);
                                }
                                mVar2.f8561h = f22;
                                float f23 = mVar2.f8562i;
                                if (o0.b.d(xmlPullParser, "translateY")) {
                                    f23 = typedArrayG4.getFloat(7, f23);
                                }
                                mVar2.f8562i = f23;
                                String string6 = typedArrayG4.getString(0);
                                if (string6 != null) {
                                    mVar2.f8564k = string6;
                                }
                                mVar2.c();
                                typedArrayG4.recycle();
                                mVar.f8555b.add(mVar2);
                                arrayDeque.push(mVar2);
                                if (mVar2.getGroupName() != null) {
                                    eVar.put(mVar2.getGroupName(), mVar2);
                                }
                                qVar3.f8583a = qVar3.f8583a;
                            }
                        }
                    } else {
                        pVar = pVar3;
                        i10 = depth;
                        if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                            arrayDeque.pop();
                        }
                    }
                    eventType = xmlPullParser.next();
                    pVar3 = pVar;
                    depth = i10;
                    i12 = 1;
                }
                if (!z4) {
                    this.f8597c = a(qVar.f8585c, qVar.f8586d);
                    return;
                }
                throw new XmlPullParserException("no path defined");
            }
            throw new XmlPullParserException(typedArrayG.getPositionDescription() + "<vector> tag requires height > 0");
        }
        throw new XmlPullParserException(typedArrayG.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
    }

    public s(q qVar) {
        this.f8600f = true;
        this.f8601g = new float[9];
        this.f8602h = new Matrix();
        this.f8603i = new Rect();
        this.f8596b = qVar;
        this.f8597c = a(qVar.f8585c, qVar.f8586d);
    }
}
