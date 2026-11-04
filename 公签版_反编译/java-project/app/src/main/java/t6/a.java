package t6;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.yunpan.appmanage.R;
import g7.i;
import g7.j;
import g7.l;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.util.WeakHashMap;
import m7.g;
import org.slf4j.Marker;
import x0.b1;
import x0.k0;

/* loaded from: classes.dex */
public final class a extends Drawable implements i {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f14782a;

    /* renamed from: b, reason: collision with root package name */
    public final g f14783b;

    /* renamed from: c, reason: collision with root package name */
    public final j f14784c;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f14785d;

    /* renamed from: e, reason: collision with root package name */
    public final c f14786e;

    /* renamed from: f, reason: collision with root package name */
    public float f14787f;

    /* renamed from: g, reason: collision with root package name */
    public float f14788g;

    /* renamed from: h, reason: collision with root package name */
    public final int f14789h;

    /* renamed from: i, reason: collision with root package name */
    public float f14790i;

    /* renamed from: j, reason: collision with root package name */
    public float f14791j;

    /* renamed from: k, reason: collision with root package name */
    public float f14792k;
    public WeakReference l;

    /* renamed from: m, reason: collision with root package name */
    public WeakReference f14793m;

    public a(Context context) {
        j7.d dVar;
        WeakReference weakReference = new WeakReference(context);
        this.f14782a = weakReference;
        l.c(context, l.f6119b, "Theme.MaterialComponents");
        this.f14785d = new Rect();
        j jVar = new j(this);
        this.f14784c = jVar;
        TextPaint textPaint = jVar.f6111a;
        textPaint.setTextAlign(Paint.Align.CENTER);
        c cVar = new c(context);
        this.f14786e = cVar;
        boolean zE = e();
        b bVar = cVar.f14816b;
        g gVar = new g(new m7.j(m7.j.a(context, zE ? bVar.f14800g.intValue() : bVar.f14798e.intValue(), e() ? bVar.f14801h.intValue() : bVar.f14799f.intValue(), new m7.a(0))));
        this.f14783b = gVar;
        g();
        Context context2 = (Context) weakReference.get();
        if (context2 != null && jVar.f6117g != (dVar = new j7.d(context2, bVar.f14797d.intValue()))) {
            jVar.b(dVar, context2);
            textPaint.setColor(bVar.f14796c.intValue());
            invalidateSelf();
            i();
            invalidateSelf();
        }
        int i10 = bVar.l;
        if (i10 != -2) {
            double d10 = i10;
            Double.isNaN(d10);
            this.f14789h = ((int) Math.pow(10.0d, d10 - 1.0d)) - 1;
        } else {
            this.f14789h = bVar.f14805m;
        }
        jVar.f6115e = true;
        i();
        invalidateSelf();
        jVar.f6115e = true;
        g();
        i();
        invalidateSelf();
        textPaint.setAlpha(getAlpha());
        invalidateSelf();
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(bVar.f14795b.intValue());
        if (gVar.f10920a.f10906c != colorStateListValueOf) {
            gVar.k(colorStateListValueOf);
            invalidateSelf();
        }
        textPaint.setColor(bVar.f14796c.intValue());
        invalidateSelf();
        WeakReference weakReference2 = this.l;
        if (weakReference2 != null && weakReference2.get() != null) {
            View view = (View) this.l.get();
            WeakReference weakReference3 = this.f14793m;
            h(view, weakReference3 != null ? (FrameLayout) weakReference3.get() : null);
        }
        i();
        boolean zBooleanValue = bVar.f14811v.booleanValue();
        setVisible(zBooleanValue, false);
        if (!d.f14826a || c() == null || zBooleanValue) {
            return;
        }
        ((ViewGroup) c().getParent()).invalidate();
    }

    @Override // g7.i
    public final void a() {
        invalidateSelf();
    }

    public final String b() {
        int i10 = this.f14789h;
        c cVar = this.f14786e;
        b bVar = cVar.f14816b;
        String str = bVar.f14803j;
        boolean z = str != null;
        WeakReference weakReference = this.f14782a;
        if (!z) {
            if (!f()) {
                return null;
            }
            b bVar2 = cVar.f14816b;
            if (i10 == -2 || d() <= i10) {
                return NumberFormat.getInstance(bVar2.f14806n).format(d());
            }
            Context context = (Context) weakReference.get();
            return context == null ? "" : String.format(bVar2.f14806n, context.getString(R.string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(i10), Marker.ANY_NON_NULL_MARKER);
        }
        int i11 = bVar.l;
        if (i11 == -2 || str == null || str.length() <= i11) {
            return str;
        }
        Context context2 = (Context) weakReference.get();
        if (context2 == null) {
            return "";
        }
        return String.format(context2.getString(R.string.m3_exceed_max_badge_text_suffix), str.substring(0, i11 - 1), "…");
    }

    public final FrameLayout c() {
        WeakReference weakReference = this.f14793m;
        if (weakReference != null) {
            return (FrameLayout) weakReference.get();
        }
        return null;
    }

    public final int d() {
        int i10 = this.f14786e.f14816b.f14804k;
        if (i10 != -1) {
            return i10;
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        String strB;
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f14783b.draw(canvas);
        if (!e() || (strB = b()) == null) {
            return;
        }
        Rect rect = new Rect();
        j jVar = this.f14784c;
        jVar.f6111a.getTextBounds(strB, 0, strB.length(), rect);
        float fExactCenterY = this.f14788g - rect.exactCenterY();
        canvas.drawText(strB, this.f14787f, rect.bottom <= 0 ? (int) fExactCenterY : Math.round(fExactCenterY), jVar.f6111a);
    }

    public final boolean e() {
        return this.f14786e.f14816b.f14803j != null || f();
    }

    public final boolean f() {
        b bVar = this.f14786e.f14816b;
        return bVar.f14803j == null && bVar.f14804k != -1;
    }

    public final void g() {
        Context context = (Context) this.f14782a.get();
        if (context == null) {
            return;
        }
        boolean zE = e();
        c cVar = this.f14786e;
        this.f14783b.setShapeAppearanceModel(new m7.j(m7.j.a(context, zE ? cVar.f14816b.f14800g.intValue() : cVar.f14816b.f14798e.intValue(), e() ? cVar.f14816b.f14801h.intValue() : cVar.f14816b.f14799f.intValue(), new m7.a(0))));
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f14786e.f14816b.f14802i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f14785d.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f14785d.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    public final void h(View view, FrameLayout frameLayout) {
        WeakReference weakReference;
        this.l = new WeakReference(view);
        boolean z = d.f14826a;
        if (z && frameLayout == null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if ((viewGroup == null || viewGroup.getId() != R.id.mtrl_anchor_parent) && ((weakReference = this.f14793m) == null || weakReference.get() != viewGroup)) {
                ViewGroup viewGroup2 = (ViewGroup) view.getParent();
                viewGroup2.setClipChildren(false);
                viewGroup2.setClipToPadding(false);
                FrameLayout frameLayout2 = new FrameLayout(view.getContext());
                frameLayout2.setId(R.id.mtrl_anchor_parent);
                frameLayout2.setClipChildren(false);
                frameLayout2.setClipToPadding(false);
                frameLayout2.setLayoutParams(view.getLayoutParams());
                frameLayout2.setMinimumWidth(view.getWidth());
                frameLayout2.setMinimumHeight(view.getHeight());
                int iIndexOfChild = viewGroup.indexOfChild(view);
                viewGroup.removeViewAt(iIndexOfChild);
                view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                frameLayout2.addView(view);
                viewGroup.addView(frameLayout2, iIndexOfChild);
                this.f14793m = new WeakReference(frameLayout2);
                frameLayout2.post(new com.yunpan.appmanage.util.l(this, view, frameLayout2, 3));
            }
        } else {
            this.f14793m = new WeakReference(frameLayout);
        }
        if (!z) {
            ViewGroup viewGroup3 = (ViewGroup) view.getParent();
            viewGroup3.setClipChildren(false);
            viewGroup3.setClipToPadding(false);
        }
        i();
        invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0290  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i() {
        float y6;
        float x10;
        float y10;
        float x11;
        float height;
        float width;
        float f10;
        float f11;
        WeakReference weakReference = this.f14782a;
        Context context = (Context) weakReference.get();
        WeakReference weakReference2 = this.l;
        View view = weakReference2 != null ? (View) weakReference2.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        Rect rect2 = this.f14785d;
        rect.set(rect2);
        Rect rect3 = new Rect();
        view.getDrawingRect(rect3);
        WeakReference weakReference3 = this.f14793m;
        ViewGroup viewGroup = weakReference3 != null ? (ViewGroup) weakReference3.get() : null;
        if (viewGroup != null || d.f14826a) {
            if (viewGroup == null) {
                viewGroup = (ViewGroup) view.getParent();
            }
            viewGroup.offsetDescendantRectToMyCoords(view, rect3);
        }
        boolean zE = e();
        c cVar = this.f14786e;
        float f12 = zE ? cVar.f14818d : cVar.f14817c;
        this.f14790i = f12;
        if (f12 != -1.0f) {
            this.f14791j = f12;
            this.f14792k = f12;
        } else {
            this.f14791j = Math.round((e() ? cVar.f14821g : cVar.f14819e) / 2.0f);
            this.f14792k = Math.round((e() ? cVar.f14822h : cVar.f14820f) / 2.0f);
        }
        if (e()) {
            String strB = b();
            float f13 = this.f14791j;
            j jVar = this.f14784c;
            if (jVar.f6115e) {
                jVar.a(strB);
                f10 = jVar.f6113c;
            } else {
                f10 = jVar.f6113c;
            }
            this.f14791j = Math.max(f13, (f10 / 2.0f) + cVar.f14816b.f14812w.intValue());
            float f14 = this.f14792k;
            if (jVar.f6115e) {
                jVar.a(strB);
                f11 = jVar.f6114d;
            } else {
                f11 = jVar.f6114d;
            }
            float fMax = Math.max(f14, (f11 / 2.0f) + cVar.f14816b.f14813x.intValue());
            this.f14792k = fMax;
            this.f14791j = Math.max(this.f14791j, fMax);
        }
        int iIntValue = cVar.f14816b.z.intValue();
        boolean zE2 = e();
        b bVar = cVar.f14816b;
        if (zE2) {
            iIntValue = bVar.B.intValue();
            Context context2 = (Context) weakReference.get();
            if (context2 != null) {
                iIntValue = r6.a.c(iIntValue, r6.a.b(0.0f, 1.0f, 0.3f, 1.0f, context2.getResources().getConfiguration().fontScale - 1.0f), iIntValue - bVar.E.intValue());
            }
        }
        int i10 = cVar.f14825k;
        if (i10 == 0) {
            iIntValue -= Math.round(this.f14792k);
        }
        int iIntValue2 = bVar.D.intValue() + iIntValue;
        int iIntValue3 = bVar.f14810t.intValue();
        if (iIntValue3 == 8388691 || iIntValue3 == 8388693) {
            this.f14788g = rect3.bottom - iIntValue2;
        } else {
            this.f14788g = rect3.top + iIntValue2;
        }
        int iIntValue4 = e() ? bVar.A.intValue() : bVar.f14814y.intValue();
        if (i10 == 1) {
            iIntValue4 += e() ? cVar.f14824j : cVar.f14823i;
        }
        int iIntValue5 = bVar.C.intValue() + iIntValue4;
        int iIntValue6 = bVar.f14810t.intValue();
        if (iIntValue6 == 8388659 || iIntValue6 == 8388691) {
            WeakHashMap weakHashMap = b1.f17953a;
            this.f14787f = k0.d(view) == 0 ? (rect3.left - this.f14791j) + iIntValue5 : (rect3.right + this.f14791j) - iIntValue5;
        } else {
            WeakHashMap weakHashMap2 = b1.f17953a;
            this.f14787f = k0.d(view) == 0 ? (rect3.right + this.f14791j) - iIntValue5 : (rect3.left - this.f14791j) + iIntValue5;
        }
        if (bVar.F.booleanValue()) {
            View viewC = c();
            if (viewC != null) {
                FrameLayout frameLayoutC = c();
                if (frameLayoutC == null || frameLayoutC.getId() != R.id.mtrl_anchor_parent) {
                    y6 = 0.0f;
                    x10 = 0.0f;
                } else if (viewC.getParent() instanceof View) {
                    y6 = viewC.getY();
                    x10 = viewC.getX();
                    viewC = (View) viewC.getParent();
                }
                y10 = viewC.getY() + (this.f14788g - this.f14792k) + y6;
                x11 = viewC.getX() + (this.f14787f - this.f14791j) + x10;
                if (!(viewC.getParent() instanceof View)) {
                }
                if (!(viewC.getParent() instanceof View)) {
                }
                if (y10 < 0.0f) {
                }
                if (x11 < 0.0f) {
                }
                if (height > 0.0f) {
                }
                if (width > 0.0f) {
                }
            } else if (view.getParent() instanceof View) {
                float y11 = view.getY();
                x10 = view.getX();
                View view2 = (View) view.getParent();
                y6 = y11;
                viewC = view2;
                y10 = viewC.getY() + (this.f14788g - this.f14792k) + y6;
                x11 = viewC.getX() + (this.f14787f - this.f14791j) + x10;
                height = !(viewC.getParent() instanceof View) ? ((this.f14788g + this.f14792k) - (((View) viewC.getParent()).getHeight() - viewC.getY())) + y6 : 0.0f;
                width = !(viewC.getParent() instanceof View) ? ((this.f14787f + this.f14791j) - (((View) viewC.getParent()).getWidth() - viewC.getX())) + x10 : 0.0f;
                if (y10 < 0.0f) {
                    this.f14788g = Math.abs(y10) + this.f14788g;
                }
                if (x11 < 0.0f) {
                    this.f14787f = Math.abs(x11) + this.f14787f;
                }
                if (height > 0.0f) {
                    this.f14788g -= Math.abs(height);
                }
                if (width > 0.0f) {
                    this.f14787f -= Math.abs(width);
                }
            }
        }
        float f15 = this.f14787f;
        float f16 = this.f14788g;
        float f17 = this.f14791j;
        float f18 = this.f14792k;
        boolean z = d.f14826a;
        rect2.set((int) (f15 - f17), (int) (f16 - f18), (int) (f15 + f17), (int) (f16 + f18));
        float f19 = this.f14790i;
        g gVar = this.f14783b;
        if (f19 != -1.0f) {
            m7.j jVar2 = gVar.f10920a.f10904a;
            jVar2.getClass();
            ff.b bVar2 = new ff.b(jVar2);
            bVar2.f5806e = new m7.a(f19);
            bVar2.f5807f = new m7.a(f19);
            bVar2.f5808g = new m7.a(f19);
            bVar2.f5809h = new m7.a(f19);
            gVar.setShapeAppearanceModel(new m7.j(bVar2));
        }
        if (rect.equals(rect2)) {
            return;
        }
        gVar.setBounds(rect2);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable, g7.i
    public final boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        c cVar = this.f14786e;
        cVar.f14815a.f14802i = i10;
        cVar.f14816b.f14802i = i10;
        this.f14784c.f6111a.setAlpha(getAlpha());
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
