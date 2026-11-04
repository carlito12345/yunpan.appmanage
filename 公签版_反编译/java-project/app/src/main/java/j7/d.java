package j7;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.util.TypedValue;
import o0.o;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final ColorStateList f9779a;

    /* renamed from: b, reason: collision with root package name */
    public final String f9780b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9781c;

    /* renamed from: d, reason: collision with root package name */
    public final int f9782d;

    /* renamed from: e, reason: collision with root package name */
    public final float f9783e;

    /* renamed from: f, reason: collision with root package name */
    public final float f9784f;

    /* renamed from: g, reason: collision with root package name */
    public final float f9785g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f9786h;

    /* renamed from: i, reason: collision with root package name */
    public final float f9787i;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f9788j;

    /* renamed from: k, reason: collision with root package name */
    public float f9789k;
    public final int l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f9790m = false;

    /* renamed from: n, reason: collision with root package name */
    public Typeface f9791n;

    public d(Context context, int i10) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, q6.a.A);
        this.f9789k = typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
        this.f9788j = com.bumptech.glide.c.w(context, typedArrayObtainStyledAttributes, 3);
        com.bumptech.glide.c.w(context, typedArrayObtainStyledAttributes, 4);
        com.bumptech.glide.c.w(context, typedArrayObtainStyledAttributes, 5);
        this.f9781c = typedArrayObtainStyledAttributes.getInt(2, 0);
        this.f9782d = typedArrayObtainStyledAttributes.getInt(1, 1);
        int i11 = typedArrayObtainStyledAttributes.hasValue(12) ? 12 : 10;
        this.l = typedArrayObtainStyledAttributes.getResourceId(i11, 0);
        this.f9780b = typedArrayObtainStyledAttributes.getString(i11);
        typedArrayObtainStyledAttributes.getBoolean(14, false);
        this.f9779a = com.bumptech.glide.c.w(context, typedArrayObtainStyledAttributes, 6);
        this.f9783e = typedArrayObtainStyledAttributes.getFloat(7, 0.0f);
        this.f9784f = typedArrayObtainStyledAttributes.getFloat(8, 0.0f);
        this.f9785g = typedArrayObtainStyledAttributes.getFloat(9, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT < 21) {
            this.f9786h = false;
            this.f9787i = 0.0f;
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i10, q6.a.r);
            this.f9786h = typedArrayObtainStyledAttributes2.hasValue(0);
            this.f9787i = typedArrayObtainStyledAttributes2.getFloat(0, 0.0f);
            typedArrayObtainStyledAttributes2.recycle();
        }
    }

    public final void a() {
        String str;
        Typeface typeface = this.f9791n;
        int i10 = this.f9781c;
        if (typeface == null && (str = this.f9780b) != null) {
            this.f9791n = Typeface.create(str, i10);
        }
        if (this.f9791n == null) {
            int i11 = this.f9782d;
            if (i11 == 1) {
                this.f9791n = Typeface.SANS_SERIF;
            } else if (i11 == 2) {
                this.f9791n = Typeface.SERIF;
            } else if (i11 != 3) {
                this.f9791n = Typeface.DEFAULT;
            } else {
                this.f9791n = Typeface.MONOSPACE;
            }
            this.f9791n = Typeface.create(this.f9791n, i10);
        }
    }

    public final Typeface b(Context context) {
        if (this.f9790m) {
            return this.f9791n;
        }
        if (!context.isRestricted()) {
            try {
                int i10 = this.l;
                ThreadLocal threadLocal = o.f11472a;
                Typeface typefaceC = context.isRestricted() ? null : o.c(context, i10, new TypedValue(), 0, null, false, false);
                this.f9791n = typefaceC;
                if (typefaceC != null) {
                    this.f9791n = Typeface.create(typefaceC, this.f9781c);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException | Exception unused) {
            }
        }
        a();
        this.f9790m = true;
        return this.f9791n;
    }

    public final void c(Context context, com.bumptech.glide.d dVar) {
        if (d(context)) {
            b(context);
        } else {
            a();
        }
        int i10 = this.l;
        if (i10 == 0) {
            this.f9790m = true;
        }
        if (this.f9790m) {
            dVar.P(this.f9791n, true);
            return;
        }
        try {
            b bVar = new b(this, dVar);
            ThreadLocal threadLocal = o.f11472a;
            if (context.isRestricted()) {
                bVar.a(-4);
            } else {
                o.c(context, i10, new TypedValue(), 0, bVar, false, false);
            }
        } catch (Resources.NotFoundException unused) {
            this.f9790m = true;
            dVar.O(1);
        } catch (Exception unused2) {
            this.f9790m = true;
            dVar.O(-3);
        }
    }

    public final boolean d(Context context) throws Resources.NotFoundException {
        Typeface typefaceC = null;
        int i10 = this.l;
        if (i10 != 0) {
            ThreadLocal threadLocal = o.f11472a;
            if (!context.isRestricted()) {
                typefaceC = o.c(context, i10, new TypedValue(), 0, null, false, true);
            }
        }
        return typefaceC != null;
    }

    public final void e(Context context, TextPaint textPaint, com.bumptech.glide.d dVar) {
        f(context, textPaint, dVar);
        ColorStateList colorStateList = this.f9788j;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        ColorStateList colorStateList2 = this.f9779a;
        textPaint.setShadowLayer(this.f9785g, this.f9783e, this.f9784f, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public final void f(Context context, TextPaint textPaint, com.bumptech.glide.d dVar) {
        if (d(context)) {
            g(context, textPaint, b(context));
            return;
        }
        a();
        g(context, textPaint, this.f9791n);
        c(context, new c(this, context, textPaint, dVar));
    }

    public final void g(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface typefaceX = d.b.X(context.getResources().getConfiguration(), typeface);
        if (typefaceX != null) {
            typeface = typefaceX;
        }
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ (-1)) & this.f9781c;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f9789k);
        if (Build.VERSION.SDK_INT < 21 || !this.f9786h) {
            return;
        }
        textPaint.setLetterSpacing(this.f9787i);
    }
}
