package w;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import com.yunpan.appmanage.R;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class p2 {

    /* renamed from: i, reason: collision with root package name */
    public static p2 f17190i;

    /* renamed from: a, reason: collision with root package name */
    public WeakHashMap f17192a;

    /* renamed from: b, reason: collision with root package name */
    public a0.t f17193b;

    /* renamed from: c, reason: collision with root package name */
    public a0.u f17194c;

    /* renamed from: d, reason: collision with root package name */
    public final WeakHashMap f17195d = new WeakHashMap(0);

    /* renamed from: e, reason: collision with root package name */
    public TypedValue f17196e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17197f;

    /* renamed from: g, reason: collision with root package name */
    public ba.i f17198g;

    /* renamed from: h, reason: collision with root package name */
    public static final PorterDuff.Mode f17189h = PorterDuff.Mode.SRC_IN;

    /* renamed from: j, reason: collision with root package name */
    public static final n2 f17191j = new n2();

    public static synchronized p2 d() {
        try {
            if (f17190i == null) {
                p2 p2Var = new p2();
                f17190i = p2Var;
                j(p2Var);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f17190i;
    }

    public static synchronized PorterDuffColorFilter h(int i10, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        n2 n2Var = f17191j;
        n2Var.getClass();
        int i11 = (31 + i10) * 31;
        porterDuffColorFilter = (PorterDuffColorFilter) n2Var.a(Integer.valueOf(mode.hashCode() + i11));
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i10, mode);
        }
        return porterDuffColorFilter;
    }

    public static void j(p2 p2Var) {
        if (Build.VERSION.SDK_INT < 24) {
            p2Var.a("vector", new o2(3));
            p2Var.a("animated-vector", new o2(2));
            p2Var.a("animated-selector", new o2(1));
            p2Var.a("drawable", new o2(0));
        }
    }

    public final void a(String str, o2 o2Var) {
        if (this.f17193b == null) {
            this.f17193b = new a0.t(0);
        }
        this.f17193b.put(str, o2Var);
    }

    public final synchronized void b(Context context, long j10, Drawable drawable) {
        try {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                a0.k kVar = (a0.k) this.f17195d.get(context);
                if (kVar == null) {
                    kVar = new a0.k();
                    this.f17195d.put(context, kVar);
                }
                kVar.h(new WeakReference(constantState), j10);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final Drawable c(Context context, int i10) throws Resources.NotFoundException {
        if (this.f17196e == null) {
            this.f17196e = new TypedValue();
        }
        TypedValue typedValue = this.f17196e;
        context.getResources().getValue(i10, typedValue, true);
        long j10 = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable drawableE = e(context, j10);
        if (drawableE != null) {
            return drawableE;
        }
        LayerDrawable layerDrawableF = null;
        if (this.f17198g != null) {
            if (i10 == R.drawable.abc_cab_background_top_material) {
                layerDrawableF = new LayerDrawable(new Drawable[]{f(context, R.drawable.abc_cab_background_internal_bg), f(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            } else if (i10 == R.drawable.abc_ratingbar_material) {
                layerDrawableF = ba.i.f(this, context, R.dimen.abc_star_big);
            } else if (i10 == R.drawable.abc_ratingbar_indicator_material) {
                layerDrawableF = ba.i.f(this, context, R.dimen.abc_star_medium);
            } else if (i10 == R.drawable.abc_ratingbar_small_material) {
                layerDrawableF = ba.i.f(this, context, R.dimen.abc_star_small);
            }
        }
        if (layerDrawableF != null) {
            layerDrawableF.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, j10, layerDrawableF);
        }
        return layerDrawableF;
    }

    public final synchronized Drawable e(Context context, long j10) {
        a0.k kVar = (a0.k) this.f17195d.get(context);
        if (kVar == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) kVar.d(j10);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            kVar.i(j10);
        }
        return null;
    }

    public final synchronized Drawable f(Context context, int i10) {
        return g(context, i10, false);
    }

    public final synchronized Drawable g(Context context, int i10, boolean z) {
        Drawable drawableK;
        try {
            if (!this.f17197f) {
                this.f17197f = true;
                Drawable drawableF = f(context, R.drawable.abc_vector_test);
                if (drawableF == null || (!(drawableF instanceof i4.s) && !"android.graphics.drawable.VectorDrawable".equals(drawableF.getClass().getName()))) {
                    this.f17197f = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            drawableK = k(context, i10);
            if (drawableK == null) {
                drawableK = c(context, i10);
            }
            if (drawableK == null) {
                drawableK = n0.g.e(context, i10);
            }
            if (drawableK != null) {
                drawableK = n(context, i10, z, drawableK);
            }
            if (drawableK != null) {
                n1.a(drawableK);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return drawableK;
    }

    public final synchronized ColorStateList i(Context context, int i10) {
        ColorStateList colorStateList;
        a0.u uVar;
        WeakHashMap weakHashMap = this.f17192a;
        ColorStateList colorStateListG = null;
        colorStateList = (weakHashMap == null || (uVar = (a0.u) weakHashMap.get(context)) == null) ? null : (ColorStateList) uVar.c(i10);
        if (colorStateList == null) {
            ba.i iVar = this.f17198g;
            if (iVar != null) {
                colorStateListG = iVar.g(context, i10);
            }
            if (colorStateListG != null) {
                if (this.f17192a == null) {
                    this.f17192a = new WeakHashMap();
                }
                a0.u uVar2 = (a0.u) this.f17192a.get(context);
                if (uVar2 == null) {
                    uVar2 = new a0.u();
                    this.f17192a.put(context, uVar2);
                }
                uVar2.a(i10, colorStateListG);
            }
            colorStateList = colorStateListG;
        }
        return colorStateList;
    }

    public final Drawable k(Context context, int i10) throws XmlPullParserException, Resources.NotFoundException, IOException {
        int next;
        a0.t tVar = this.f17193b;
        if (tVar == null || tVar.isEmpty()) {
            return null;
        }
        a0.u uVar = this.f17194c;
        if (uVar != null) {
            String str = (String) uVar.c(i10);
            if ("appcompat_skip_skip".equals(str) || (str != null && this.f17193b.get(str) == null)) {
                return null;
            }
        } else {
            this.f17194c = new a0.u();
        }
        if (this.f17196e == null) {
            this.f17196e = new TypedValue();
        }
        TypedValue typedValue = this.f17196e;
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        long j10 = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable drawableE = e(context, j10);
        if (drawableE != null) {
            return drawableE;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i10);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.f17194c.a(i10, name);
                o2 o2Var = (o2) this.f17193b.get(name);
                if (o2Var != null) {
                    drawableE = o2Var.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableE != null) {
                    drawableE.setChangingConfigurations(typedValue.changingConfigurations);
                    b(context, j10, drawableE);
                }
            } catch (Exception unused) {
            }
        }
        if (drawableE == null) {
            this.f17194c.a(i10, "appcompat_skip_skip");
        }
        return drawableE;
    }

    public final synchronized void l(Context context) {
        a0.k kVar = (a0.k) this.f17195d.get(context);
        if (kVar != null) {
            kVar.b();
        }
    }

    public final synchronized void m(ba.i iVar) {
        this.f17198g = iVar;
    }

    public final Drawable n(Context context, int i10, boolean z, Drawable drawable) {
        ColorStateList colorStateListI = i(context, i10);
        PorterDuff.Mode mode = null;
        if (colorStateListI != null) {
            int[] iArr = n1.f17160a;
            Drawable drawableN0 = com.bumptech.glide.c.n0(drawable.mutate());
            com.bumptech.glide.c.f0(drawableN0, colorStateListI);
            if (this.f17198g != null && i10 == R.drawable.abc_switch_thumb_material) {
                mode = PorterDuff.Mode.MULTIPLY;
            }
            if (mode == null) {
                return drawableN0;
            }
            com.bumptech.glide.c.g0(drawableN0, mode);
            return drawableN0;
        }
        if (this.f17198g != null) {
            if (i10 == R.drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.background);
                int iC = b3.c(context, R.attr.colorControlNormal);
                PorterDuff.Mode mode2 = s.f17249b;
                ba.i.i(drawableFindDrawableByLayerId, iC);
                ba.i.i(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), b3.c(context, R.attr.colorControlNormal));
                ba.i.i(layerDrawable.findDrawableByLayerId(android.R.id.progress), b3.c(context, R.attr.colorControlActivated));
                return drawable;
            }
            if (i10 == R.drawable.abc_ratingbar_material || i10 == R.drawable.abc_ratingbar_indicator_material || i10 == R.drawable.abc_ratingbar_small_material) {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(android.R.id.background);
                int iB = b3.b(context, R.attr.colorControlNormal);
                PorterDuff.Mode mode3 = s.f17249b;
                ba.i.i(drawableFindDrawableByLayerId2, iB);
                ba.i.i(layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress), b3.c(context, R.attr.colorControlActivated));
                ba.i.i(layerDrawable2.findDrawableByLayerId(android.R.id.progress), b3.c(context, R.attr.colorControlActivated));
                return drawable;
            }
        }
        if (o(context, i10, drawable) || !z) {
            return drawable;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean o(Context context, int i10, Drawable drawable) {
        int i11;
        int iRound;
        boolean z;
        ba.i iVar = this.f17198g;
        if (iVar == null) {
            return false;
        }
        PorterDuff.Mode mode = s.f17249b;
        if (ba.i.b(i10, (int[]) iVar.f2698a)) {
            i11 = R.attr.colorControlNormal;
        } else if (ba.i.b(i10, (int[]) iVar.f2700c)) {
            i11 = R.attr.colorControlActivated;
        } else {
            if (ba.i.b(i10, (int[]) iVar.f2701d)) {
                mode = PorterDuff.Mode.MULTIPLY;
            } else {
                if (i10 == R.drawable.abc_list_divider_mtrl_alpha) {
                    iRound = Math.round(40.8f);
                    i11 = android.R.attr.colorForeground;
                    z = true;
                    if (!z) {
                        return false;
                    }
                    int[] iArr = n1.f17160a;
                    Drawable drawableMutate = drawable.mutate();
                    drawableMutate.setColorFilter(s.c(b3.c(context, i11), mode));
                    if (iRound != -1) {
                        drawableMutate.setAlpha(iRound);
                    }
                    return true;
                }
                if (i10 != R.drawable.abc_dialog_material_background) {
                    i11 = 0;
                    iRound = -1;
                    z = false;
                    if (!z) {
                    }
                }
            }
            i11 = android.R.attr.colorBackground;
        }
        iRound = -1;
        z = true;
        if (!z) {
        }
    }
}
