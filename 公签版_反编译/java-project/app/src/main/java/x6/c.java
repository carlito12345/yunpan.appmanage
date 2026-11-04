package x6;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import com.google.android.material.button.MaterialButton;
import com.yunpan.appmanage.R;
import java.util.WeakHashMap;
import m7.f;
import m7.g;
import m7.j;
import m7.u;
import x0.b1;
import x0.k0;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: u, reason: collision with root package name */
    public static final boolean f18159u;

    /* renamed from: v, reason: collision with root package name */
    public static final boolean f18160v;

    /* renamed from: a, reason: collision with root package name */
    public final MaterialButton f18161a;

    /* renamed from: b, reason: collision with root package name */
    public j f18162b;

    /* renamed from: c, reason: collision with root package name */
    public int f18163c;

    /* renamed from: d, reason: collision with root package name */
    public int f18164d;

    /* renamed from: e, reason: collision with root package name */
    public int f18165e;

    /* renamed from: f, reason: collision with root package name */
    public int f18166f;

    /* renamed from: g, reason: collision with root package name */
    public int f18167g;

    /* renamed from: h, reason: collision with root package name */
    public int f18168h;

    /* renamed from: i, reason: collision with root package name */
    public PorterDuff.Mode f18169i;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f18170j;

    /* renamed from: k, reason: collision with root package name */
    public ColorStateList f18171k;
    public ColorStateList l;

    /* renamed from: m, reason: collision with root package name */
    public Drawable f18172m;

    /* renamed from: q, reason: collision with root package name */
    public boolean f18176q;

    /* renamed from: s, reason: collision with root package name */
    public LayerDrawable f18177s;

    /* renamed from: t, reason: collision with root package name */
    public int f18178t;

    /* renamed from: n, reason: collision with root package name */
    public boolean f18173n = false;

    /* renamed from: o, reason: collision with root package name */
    public boolean f18174o = false;

    /* renamed from: p, reason: collision with root package name */
    public boolean f18175p = false;
    public boolean r = true;

    static {
        int i10 = Build.VERSION.SDK_INT;
        boolean z = false;
        f18159u = i10 >= 21;
        if (i10 >= 21 && i10 <= 22) {
            z = true;
        }
        f18160v = z;
    }

    public c(MaterialButton materialButton, j jVar) {
        this.f18161a = materialButton;
        this.f18162b = jVar;
    }

    public final u a() {
        LayerDrawable layerDrawable = this.f18177s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f18177s.getNumberOfLayers() > 2 ? (u) this.f18177s.getDrawable(2) : (u) this.f18177s.getDrawable(1);
    }

    public final g b(boolean z) {
        LayerDrawable layerDrawable = this.f18177s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f18159u ? (g) ((LayerDrawable) ((InsetDrawable) this.f18177s.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0) : (g) this.f18177s.getDrawable(!z ? 1 : 0);
    }

    public final void c(j jVar) {
        this.f18162b = jVar;
        if (!f18160v || this.f18174o) {
            if (b(false) != null) {
                b(false).setShapeAppearanceModel(jVar);
            }
            if (b(true) != null) {
                b(true).setShapeAppearanceModel(jVar);
            }
            if (a() != null) {
                a().setShapeAppearanceModel(jVar);
                return;
            }
            return;
        }
        WeakHashMap weakHashMap = b1.f17953a;
        MaterialButton materialButton = this.f18161a;
        int iF = k0.f(materialButton);
        int paddingTop = materialButton.getPaddingTop();
        int iE = k0.e(materialButton);
        int paddingBottom = materialButton.getPaddingBottom();
        e();
        k0.k(materialButton, iF, paddingTop, iE, paddingBottom);
    }

    public final void d(int i10, int i11) {
        WeakHashMap weakHashMap = b1.f17953a;
        MaterialButton materialButton = this.f18161a;
        int iF = k0.f(materialButton);
        int paddingTop = materialButton.getPaddingTop();
        int iE = k0.e(materialButton);
        int paddingBottom = materialButton.getPaddingBottom();
        int i12 = this.f18165e;
        int i13 = this.f18166f;
        this.f18166f = i11;
        this.f18165e = i10;
        if (!this.f18174o) {
            e();
        }
        k0.k(materialButton, iF, (paddingTop + i10) - i12, iE, (paddingBottom + i11) - i13);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v11, types: [android.graphics.drawable.LayerDrawable, android.graphics.drawable.RippleDrawable] */
    public final void e() {
        InsetDrawable insetDrawable;
        g gVar = new g(this.f18162b);
        MaterialButton materialButton = this.f18161a;
        gVar.i(materialButton.getContext());
        com.bumptech.glide.c.f0(gVar, this.f18170j);
        PorterDuff.Mode mode = this.f18169i;
        if (mode != null) {
            com.bumptech.glide.c.g0(gVar, mode);
        }
        float f10 = this.f18168h;
        ColorStateList colorStateList = this.f18171k;
        gVar.f10920a.f10913j = f10;
        gVar.invalidateSelf();
        f fVar = gVar.f10920a;
        if (fVar.f10907d != colorStateList) {
            fVar.f10907d = colorStateList;
            gVar.onStateChange(gVar.getState());
        }
        g gVar2 = new g(this.f18162b);
        gVar2.setTint(0);
        float f11 = this.f18168h;
        int iS = this.f18173n ? com.bumptech.glide.d.s(R.attr.colorSurface, materialButton) : 0;
        gVar2.f10920a.f10913j = f11;
        gVar2.invalidateSelf();
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(iS);
        f fVar2 = gVar2.f10920a;
        if (fVar2.f10907d != colorStateListValueOf) {
            fVar2.f10907d = colorStateListValueOf;
            gVar2.onStateChange(gVar2.getState());
        }
        if (f18159u) {
            g gVar3 = new g(this.f18162b);
            this.f18172m = gVar3;
            com.bumptech.glide.c.e0(gVar3, -1);
            ?? rippleDrawable = new RippleDrawable(k7.d.b(this.l), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{gVar2, gVar}), this.f18163c, this.f18165e, this.f18164d, this.f18166f), this.f18172m);
            this.f18177s = rippleDrawable;
            insetDrawable = rippleDrawable;
        } else {
            k7.b bVar = new k7.b(new k7.a(new g(this.f18162b)));
            this.f18172m = bVar;
            com.bumptech.glide.c.f0(bVar, k7.d.b(this.l));
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gVar2, gVar, this.f18172m});
            this.f18177s = layerDrawable;
            insetDrawable = new InsetDrawable((Drawable) layerDrawable, this.f18163c, this.f18165e, this.f18164d, this.f18166f);
        }
        materialButton.setInternalBackground(insetDrawable);
        g gVarB = b(false);
        if (gVarB != null) {
            gVarB.j(this.f18178t);
            gVarB.setState(materialButton.getDrawableState());
        }
    }

    public final void f() {
        g gVarB = b(false);
        g gVarB2 = b(true);
        if (gVarB != null) {
            float f10 = this.f18168h;
            ColorStateList colorStateList = this.f18171k;
            gVarB.f10920a.f10913j = f10;
            gVarB.invalidateSelf();
            f fVar = gVarB.f10920a;
            if (fVar.f10907d != colorStateList) {
                fVar.f10907d = colorStateList;
                gVarB.onStateChange(gVarB.getState());
            }
            if (gVarB2 != null) {
                float f11 = this.f18168h;
                int iS = this.f18173n ? com.bumptech.glide.d.s(R.attr.colorSurface, this.f18161a) : 0;
                gVarB2.f10920a.f10913j = f11;
                gVarB2.invalidateSelf();
                ColorStateList colorStateListValueOf = ColorStateList.valueOf(iS);
                f fVar2 = gVarB2.f10920a;
                if (fVar2.f10907d != colorStateListValueOf) {
                    fVar2.f10907d = colorStateListValueOf;
                    gVarB2.onStateChange(gVarB2.getState());
                }
            }
        }
    }
}
