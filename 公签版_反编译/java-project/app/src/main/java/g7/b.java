package g7;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.animation.LinearInterpolator;
import com.google.android.material.textfield.TextInputLayout;
import java.util.WeakHashMap;
import x0.b1;
import x0.j0;
import x0.k0;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: i0, reason: collision with root package name */
    public static final boolean f6058i0;
    public CharSequence A;
    public CharSequence B;
    public boolean C;
    public boolean E;
    public Bitmap F;
    public Paint G;
    public float H;
    public float I;
    public float J;
    public float K;
    public float L;
    public int M;
    public int[] N;
    public boolean O;
    public final TextPaint P;
    public final TextPaint Q;
    public LinearInterpolator R;
    public LinearInterpolator S;
    public float T;
    public float U;
    public float V;
    public ColorStateList W;
    public float X;
    public float Y;
    public float Z;

    /* renamed from: a, reason: collision with root package name */
    public final TextInputLayout f6059a;

    /* renamed from: a0, reason: collision with root package name */
    public StaticLayout f6060a0;

    /* renamed from: b, reason: collision with root package name */
    public float f6061b;

    /* renamed from: b0, reason: collision with root package name */
    public float f6062b0;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f6063c;

    /* renamed from: c0, reason: collision with root package name */
    public float f6064c0;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f6065d;

    /* renamed from: d0, reason: collision with root package name */
    public float f6066d0;

    /* renamed from: e, reason: collision with root package name */
    public final RectF f6067e;

    /* renamed from: e0, reason: collision with root package name */
    public CharSequence f6068e0;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f6076j;

    /* renamed from: k, reason: collision with root package name */
    public ColorStateList f6077k;
    public float l;

    /* renamed from: m, reason: collision with root package name */
    public float f6078m;

    /* renamed from: n, reason: collision with root package name */
    public float f6079n;

    /* renamed from: o, reason: collision with root package name */
    public float f6080o;

    /* renamed from: p, reason: collision with root package name */
    public float f6081p;

    /* renamed from: q, reason: collision with root package name */
    public float f6082q;
    public Typeface r;

    /* renamed from: s, reason: collision with root package name */
    public Typeface f6083s;

    /* renamed from: t, reason: collision with root package name */
    public Typeface f6084t;

    /* renamed from: u, reason: collision with root package name */
    public Typeface f6085u;

    /* renamed from: v, reason: collision with root package name */
    public Typeface f6086v;

    /* renamed from: w, reason: collision with root package name */
    public Typeface f6087w;

    /* renamed from: x, reason: collision with root package name */
    public Typeface f6088x;

    /* renamed from: y, reason: collision with root package name */
    public j7.a f6089y;

    /* renamed from: f, reason: collision with root package name */
    public int f6069f = 16;

    /* renamed from: g, reason: collision with root package name */
    public int f6071g = 16;

    /* renamed from: h, reason: collision with root package name */
    public float f6073h = 15.0f;

    /* renamed from: i, reason: collision with root package name */
    public float f6075i = 15.0f;
    public final TextUtils.TruncateAt z = TextUtils.TruncateAt.END;
    public final boolean D = true;

    /* renamed from: f0, reason: collision with root package name */
    public final int f6070f0 = 1;

    /* renamed from: g0, reason: collision with root package name */
    public final float f6072g0 = 1.0f;

    /* renamed from: h0, reason: collision with root package name */
    public final int f6074h0 = h.l;

    static {
        f6058i0 = Build.VERSION.SDK_INT < 18;
    }

    public b(TextInputLayout textInputLayout) {
        this.f6059a = textInputLayout;
        TextPaint textPaint = new TextPaint(129);
        this.P = textPaint;
        this.Q = new TextPaint(textPaint);
        this.f6065d = new Rect();
        this.f6063c = new Rect();
        this.f6067e = new RectF();
        h(textInputLayout.getContext().getResources().getConfiguration());
    }

    public static int a(int i10, float f10, int i11) {
        float f11 = 1.0f - f10;
        return Color.argb(Math.round((Color.alpha(i11) * f10) + (Color.alpha(i10) * f11)), Math.round((Color.red(i11) * f10) + (Color.red(i10) * f11)), Math.round((Color.green(i11) * f10) + (Color.green(i10) * f11)), Math.round((Color.blue(i11) * f10) + (Color.blue(i10) * f11)));
    }

    public static float g(float f10, float f11, float f12, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f12 = timeInterpolator.getInterpolation(f12);
        }
        return r6.a.a(f10, f11, f12);
    }

    public final boolean b(CharSequence charSequence) {
        WeakHashMap weakHashMap = b1.f17953a;
        boolean z = k0.d(this.f6059a) == 1;
        if (this.D) {
            return (z ? v0.i.f16321d : v0.i.f16320c).d(charSequence.length(), charSequence);
        }
        return z;
    }

    public final void c(float f10) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        float f11 = this.f6063c.left;
        Rect rect = this.f6065d;
        float fG = g(f11, rect.left, f10, this.R);
        RectF rectF = this.f6067e;
        rectF.left = fG;
        rectF.top = g(this.l, this.f6078m, f10, this.R);
        rectF.right = g(r0.right, rect.right, f10, this.R);
        rectF.bottom = g(r0.bottom, rect.bottom, f10, this.R);
        this.f6081p = g(this.f6079n, this.f6080o, f10, this.R);
        this.f6082q = g(this.l, this.f6078m, f10, this.R);
        m(f10);
        m1.a aVar = r6.a.f13711b;
        this.f6064c0 = 1.0f - g(0.0f, 1.0f, 1.0f - f10, aVar);
        WeakHashMap weakHashMap = b1.f17953a;
        TextInputLayout textInputLayout = this.f6059a;
        j0.k(textInputLayout);
        this.f6066d0 = g(1.0f, 0.0f, f10, aVar);
        j0.k(textInputLayout);
        ColorStateList colorStateList = this.f6077k;
        ColorStateList colorStateList2 = this.f6076j;
        TextPaint textPaint = this.P;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(a(f(colorStateList2), f10, f(this.f6077k)));
        } else {
            textPaint.setColor(f(colorStateList));
        }
        if (Build.VERSION.SDK_INT >= 21) {
            float f12 = this.X;
            float f13 = this.Y;
            if (f12 != f13) {
                textPaint.setLetterSpacing(g(f13, f12, f10, aVar));
            } else {
                textPaint.setLetterSpacing(f12);
            }
        }
        this.J = r6.a.a(0.0f, this.T, f10);
        this.K = r6.a.a(0.0f, this.U, f10);
        this.L = r6.a.a(0.0f, this.V, f10);
        int iA = a(0, f10, f(this.W));
        this.M = iA;
        textPaint.setShadowLayer(this.J, this.K, this.L, iA);
        j0.k(textInputLayout);
    }

    public final void d(boolean z, float f10) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        float f11;
        float f12;
        Typeface typeface;
        boolean z4;
        StaticLayout staticLayoutA;
        Layout.Alignment alignment;
        if (this.A == null) {
            return;
        }
        float fWidth = this.f6065d.width();
        float fWidth2 = this.f6063c.width();
        if (Math.abs(f10 - 1.0f) < 1.0E-5f) {
            f11 = this.f6075i;
            f12 = this.X;
            this.H = 1.0f;
            typeface = this.r;
        } else {
            float f13 = this.f6073h;
            float f14 = this.Y;
            Typeface typeface2 = this.f6085u;
            if (Math.abs(f10 - 0.0f) < 1.0E-5f) {
                this.H = 1.0f;
            } else {
                this.H = g(this.f6073h, this.f6075i, f10, this.S) / this.f6073h;
            }
            float f15 = this.f6075i / this.f6073h;
            fWidth = (z || fWidth2 * f15 <= fWidth) ? fWidth2 : Math.min(fWidth / f15, fWidth2);
            f11 = f13;
            f12 = f14;
            typeface = typeface2;
        }
        TextPaint textPaint = this.P;
        if (fWidth > 0.0f) {
            boolean z10 = this.I != f11;
            boolean z11 = this.Z != f12;
            boolean z12 = this.f6088x != typeface;
            StaticLayout staticLayout = this.f6060a0;
            z4 = z10 || z11 || (staticLayout != null && (fWidth > ((float) staticLayout.getWidth()) ? 1 : (fWidth == ((float) staticLayout.getWidth()) ? 0 : -1)) != 0) || z12 || this.O;
            this.I = f11;
            this.Z = f12;
            this.f6088x = typeface;
            this.O = false;
            textPaint.setLinearText(this.H != 1.0f);
        } else {
            z4 = false;
        }
        if (this.B == null || z4) {
            textPaint.setTextSize(this.I);
            textPaint.setTypeface(this.f6088x);
            if (Build.VERSION.SDK_INT >= 21) {
                textPaint.setLetterSpacing(this.Z);
            }
            boolean zB = b(this.A);
            this.C = zB;
            int i10 = this.f6070f0;
            if (i10 <= 1 || zB || this.E) {
                i10 = 1;
            }
            try {
                if (i10 == 1) {
                    alignment = Layout.Alignment.ALIGN_NORMAL;
                } else {
                    int absoluteGravity = Gravity.getAbsoluteGravity(this.f6069f, zB ? 1 : 0) & 7;
                    alignment = absoluteGravity != 1 ? absoluteGravity != 5 ? this.C ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : this.C ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_CENTER;
                }
                h hVar = new h(this.A, textPaint, (int) fWidth);
                hVar.f6110k = this.z;
                hVar.f6109j = zB;
                hVar.f6104e = alignment;
                hVar.f6108i = false;
                hVar.f6105f = i10;
                hVar.f6106g = this.f6072g0;
                hVar.f6107h = this.f6074h0;
                staticLayoutA = hVar.a();
            } catch (g e7) {
                e7.getCause().getMessage();
                staticLayoutA = null;
            }
            staticLayoutA.getClass();
            this.f6060a0 = staticLayoutA;
            this.B = staticLayoutA.getText();
        }
    }

    public final float e() {
        TextPaint textPaint = this.Q;
        textPaint.setTextSize(this.f6075i);
        textPaint.setTypeface(this.r);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.X);
        }
        return -textPaint.ascent();
    }

    public final int f(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.N;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    public final void h(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.f6084t;
            if (typeface != null) {
                this.f6083s = d.b.X(configuration, typeface);
            }
            Typeface typeface2 = this.f6087w;
            if (typeface2 != null) {
                this.f6086v = d.b.X(configuration, typeface2);
            }
            Typeface typeface3 = this.f6083s;
            if (typeface3 == null) {
                typeface3 = this.f6084t;
            }
            this.r = typeface3;
            Typeface typeface4 = this.f6086v;
            if (typeface4 == null) {
                typeface4 = this.f6087w;
            }
            this.f6085u = typeface4;
            i(true);
        }
    }

    public final void i(boolean z) {
        StaticLayout staticLayout;
        TextInputLayout textInputLayout = this.f6059a;
        if ((textInputLayout.getHeight() <= 0 || textInputLayout.getWidth() <= 0) && !z) {
            return;
        }
        d(z, 1.0f);
        CharSequence charSequence = this.B;
        TextPaint textPaint = this.P;
        if (charSequence != null && (staticLayout = this.f6060a0) != null) {
            this.f6068e0 = TextUtils.ellipsize(charSequence, textPaint, staticLayout.getWidth(), this.z);
        }
        CharSequence charSequence2 = this.f6068e0;
        float fMeasureText = 0.0f;
        if (charSequence2 != null) {
            this.f6062b0 = textPaint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.f6062b0 = 0.0f;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(this.f6071g, this.C ? 1 : 0);
        int i10 = absoluteGravity & 112;
        Rect rect = this.f6065d;
        if (i10 == 48) {
            this.f6078m = rect.top;
        } else if (i10 != 80) {
            this.f6078m = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
        } else {
            this.f6078m = textPaint.ascent() + rect.bottom;
        }
        int i11 = absoluteGravity & 8388615;
        if (i11 == 1) {
            this.f6080o = rect.centerX() - (this.f6062b0 / 2.0f);
        } else if (i11 != 5) {
            this.f6080o = rect.left;
        } else {
            this.f6080o = rect.right - this.f6062b0;
        }
        d(z, 0.0f);
        float height = this.f6060a0 != null ? r12.getHeight() : 0.0f;
        StaticLayout staticLayout2 = this.f6060a0;
        if (staticLayout2 == null || this.f6070f0 <= 1) {
            CharSequence charSequence3 = this.B;
            if (charSequence3 != null) {
                fMeasureText = textPaint.measureText(charSequence3, 0, charSequence3.length());
            }
        } else {
            fMeasureText = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.f6060a0;
        if (staticLayout3 != null) {
            staticLayout3.getLineCount();
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.f6069f, this.C ? 1 : 0);
        int i12 = absoluteGravity2 & 112;
        Rect rect2 = this.f6063c;
        if (i12 == 48) {
            this.l = rect2.top;
        } else if (i12 != 80) {
            this.l = rect2.centerY() - (height / 2.0f);
        } else {
            this.l = textPaint.descent() + (rect2.bottom - height);
        }
        int i13 = absoluteGravity2 & 8388615;
        if (i13 == 1) {
            this.f6079n = rect2.centerX() - (fMeasureText / 2.0f);
        } else if (i13 != 5) {
            this.f6079n = rect2.left;
        } else {
            this.f6079n = rect2.right - fMeasureText;
        }
        Bitmap bitmap = this.F;
        if (bitmap != null) {
            bitmap.recycle();
            this.F = null;
        }
        m(this.f6061b);
        c(this.f6061b);
    }

    public final void j(ColorStateList colorStateList) {
        if (this.f6077k == colorStateList && this.f6076j == colorStateList) {
            return;
        }
        this.f6077k = colorStateList;
        this.f6076j = colorStateList;
        i(false);
    }

    public final boolean k(Typeface typeface) {
        j7.a aVar = this.f6089y;
        if (aVar != null) {
            aVar.f9772g = true;
        }
        if (this.f6084t == typeface) {
            return false;
        }
        this.f6084t = typeface;
        Typeface typefaceX = d.b.X(this.f6059a.getContext().getResources().getConfiguration(), typeface);
        this.f6083s = typefaceX;
        if (typefaceX == null) {
            typefaceX = this.f6084t;
        }
        this.r = typefaceX;
        return true;
    }

    public final void l(float f10) {
        if (f10 < 0.0f) {
            f10 = 0.0f;
        } else if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        if (f10 != this.f6061b) {
            this.f6061b = f10;
            c(f10);
        }
    }

    public final void m(float f10) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        boolean z = false;
        d(false, f10);
        if (f6058i0 && this.H != 1.0f) {
            z = true;
        }
        this.E = z;
        if (z && this.F == null && !this.f6063c.isEmpty() && !TextUtils.isEmpty(this.B)) {
            c(0.0f);
            int width = this.f6060a0.getWidth();
            int height = this.f6060a0.getHeight();
            if (width > 0 && height > 0) {
                this.F = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                this.f6060a0.draw(new Canvas(this.F));
                if (this.G == null) {
                    this.G = new Paint(3);
                }
            }
        }
        WeakHashMap weakHashMap = b1.f17953a;
        j0.k(this.f6059a);
    }

    public final void n(Typeface typeface) {
        boolean z;
        boolean zK = k(typeface);
        if (this.f6087w != typeface) {
            this.f6087w = typeface;
            Typeface typefaceX = d.b.X(this.f6059a.getContext().getResources().getConfiguration(), typeface);
            this.f6086v = typefaceX;
            if (typefaceX == null) {
                typefaceX = this.f6087w;
            }
            this.f6085u = typefaceX;
            z = true;
        } else {
            z = false;
        }
        if (zK || z) {
            i(false);
        }
    }
}
