package ba;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Looper;
import android.view.Surface;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.carsdk.u;
import f2.c0;
import ha.v9;
import j$.util.Objects;
import java.text.DecimalFormat;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import r1.m0;
import r1.o0;
import r1.q0;
import u1.f0;
import u7.d1;
import u7.e0;
import u7.g0;
import u7.y0;
import w.b3;
import w.n1;
import w.p2;
import y1.x;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public Object f2698a;

    /* renamed from: b, reason: collision with root package name */
    public Object f2699b;

    /* renamed from: c, reason: collision with root package name */
    public Object f2700c;

    /* renamed from: d, reason: collision with root package name */
    public Object f2701d;

    /* renamed from: e, reason: collision with root package name */
    public Object f2702e;

    /* renamed from: f, reason: collision with root package name */
    public Object f2703f;

    public i(int i10) {
        switch (i10) {
            case 1:
                this.f2699b = Executors.newCachedThreadPool();
                this.f2700c = Executors.newFixedThreadPool(5);
                this.f2701d = new AtomicInteger(0);
                this.f2703f = new u(this, Looper.getMainLooper(), 2);
                break;
            case 2:
            default:
                this.f2698a = "";
                this.f2699b = "";
                this.f2700c = "";
                this.f2701d = "";
                this.f2702e = "";
                this.f2703f = "";
                break;
            case 3:
                this.f2698a = new int[]{R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
                this.f2699b = new int[]{R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
                this.f2700c = new int[]{R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};
                this.f2701d = new int[]{R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
                this.f2702e = new int[]{R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
                this.f2703f = new int[]{R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};
                break;
        }
    }

    public static boolean b(int i10, int[] iArr) {
        for (int i11 : iArr) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    public static ColorStateList d(Context context, int i10) {
        int iC = b3.c(context, R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{b3.f17031b, b3.f17033d, b3.f17032c, b3.f17035f}, new int[]{b3.b(context, R.attr.colorButtonNormal), p0.a.b(iC, i10), p0.a.b(iC, i10), i10});
    }

    public static c0 e(m0 m0Var, g0 g0Var, c0 c0Var, o0 o0Var) {
        x xVar = (x) m0Var;
        q0 q0VarE = xVar.E();
        int iB = xVar.B();
        Object objL = q0VarE.p() ? null : q0VarE.l(iB);
        int iB2 = (xVar.N() || q0VarE.p()) ? -1 : q0VarE.f(iB, o0Var, false).b(f0.G(xVar.C()) - o0Var.f13507e);
        for (int i10 = 0; i10 < g0Var.size(); i10++) {
            c0 c0Var2 = (c0) g0Var.get(i10);
            if (h(c0Var2, objL, xVar.N(), xVar.y(), xVar.z(), iB2)) {
                return c0Var2;
            }
        }
        if (g0Var.isEmpty() && c0Var != null) {
            if (h(c0Var, objL, xVar.N(), xVar.y(), xVar.z(), iB2)) {
                return c0Var;
            }
        }
        return null;
    }

    public static LayerDrawable f(p2 p2Var, Context context, int i10) {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i10);
        Drawable drawableF = p2Var.f(context, R.drawable.abc_star_black_48dp);
        Drawable drawableF2 = p2Var.f(context, R.drawable.abc_star_half_black_48dp);
        if ((drawableF instanceof BitmapDrawable) && drawableF.getIntrinsicWidth() == dimensionPixelSize && drawableF.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) drawableF;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawableF.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawableF.draw(canvas);
            bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((drawableF2 instanceof BitmapDrawable) && drawableF2.getIntrinsicWidth() == dimensionPixelSize && drawableF2.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) drawableF2;
        } else {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
            drawableF2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawableF2.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.secondaryProgress);
        layerDrawable.setId(2, android.R.id.progress);
        return layerDrawable;
    }

    public static boolean h(c0 c0Var, Object obj, boolean z, int i10, int i11, int i12) {
        if (!c0Var.f5236a.equals(obj)) {
            return false;
        }
        int i13 = c0Var.f5237b;
        return (z && i13 == i10 && c0Var.f5238c == i11) || (!z && i13 == -1 && c0Var.f5240e == i12);
    }

    public static void i(Drawable drawable, int i10) {
        PorterDuff.Mode mode = w.s.f17249b;
        int[] iArr = n1.f17160a;
        drawable.mutate().setColorFilter(w.s.c(i10, mode));
    }

    public void a(androidx.room.s sVar, c0 c0Var, q0 q0Var) {
        if (c0Var == null) {
            return;
        }
        if (q0Var.b(c0Var.f5236a) != -1) {
            sVar.A(c0Var, q0Var);
            return;
        }
        q0 q0Var2 = (q0) ((d1) this.f2700c).get(c0Var);
        if (q0Var2 != null) {
            sVar.A(c0Var, q0Var2);
        }
    }

    public void c(long j10) {
        ((ja.b) this.f2702e).f9821g.incrementAndGet();
        if (j10 > 0) {
            ((ja.b) this.f2702e).f9823i.addAndGet(j10);
        }
        synchronized (((ja.b) this.f2702e)) {
            ((ja.b) this.f2702e).f9825k = v9.b(System.currentTimeMillis() - ((ja.b) this.f2702e).f9824j);
            ja.b bVar = (ja.b) this.f2702e;
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
            double d10 = bVar.f9823i.get();
            Double.isNaN(d10);
            double d11 = d10 * 100.0d;
            double d12 = ((ja.b) this.f2702e).f9822h.get();
            Double.isNaN(d12);
            bVar.f9819e = decimalFormat2.format(d11 / d12);
            ((ja.b) this.f2702e).f9818d = "均速:" + v9.a(0L, ((ja.b) this.f2702e).f9823i.get(), System.currentTimeMillis() - ((ja.b) this.f2702e).f9824j) + " MB/s";
        }
        ((u) this.f2703f).sendEmptyMessage(301);
    }

    public ColorStateList g(Context context, int i10) {
        if (i10 == R.drawable.abc_edit_text_material) {
            return n0.g.d(context, R.color.abc_tint_edittext);
        }
        if (i10 == R.drawable.abc_switch_track_mtrl_alpha) {
            return n0.g.d(context, R.color.abc_tint_switch_track);
        }
        if (i10 != R.drawable.abc_switch_thumb_material) {
            if (i10 == R.drawable.abc_btn_default_mtrl_shape) {
                return d(context, b3.c(context, R.attr.colorButtonNormal));
            }
            if (i10 == R.drawable.abc_btn_borderless_material) {
                return d(context, 0);
            }
            if (i10 == R.drawable.abc_btn_colored_material) {
                return d(context, b3.c(context, R.attr.colorAccent));
            }
            if (i10 == R.drawable.abc_spinner_mtrl_am_alpha || i10 == R.drawable.abc_spinner_textfield_background_material) {
                return n0.g.d(context, R.color.abc_tint_spinner);
            }
            if (b(i10, (int[]) this.f2699b)) {
                return b3.d(context, R.attr.colorControlNormal);
            }
            if (b(i10, (int[]) this.f2702e)) {
                return n0.g.d(context, R.color.abc_tint_default);
            }
            if (b(i10, (int[]) this.f2703f)) {
                return n0.g.d(context, R.color.abc_tint_btn_checkable);
            }
            if (i10 == R.drawable.abc_seekbar_thumb_material) {
                return n0.g.d(context, R.color.abc_tint_seek_thumb);
            }
            return null;
        }
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList colorStateListD = b3.d(context, R.attr.colorSwitchThumbNormal);
        if (colorStateListD == null || !colorStateListD.isStateful()) {
            iArr[0] = b3.f17031b;
            iArr2[0] = b3.b(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = b3.f17034e;
            iArr2[1] = b3.c(context, R.attr.colorControlActivated);
            iArr[2] = b3.f17035f;
            iArr2[2] = b3.c(context, R.attr.colorSwitchThumbNormal);
        } else {
            int[] iArr3 = b3.f17031b;
            iArr[0] = iArr3;
            iArr2[0] = colorStateListD.getColorForState(iArr3, 0);
            iArr[1] = b3.f17034e;
            iArr2[1] = b3.c(context, R.attr.colorControlActivated);
            iArr[2] = b3.f17035f;
            iArr2[2] = colorStateListD.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    public void j(q0 q0Var) {
        androidx.room.s sVarA = d1.a();
        if (((g0) this.f2699b).isEmpty()) {
            a(sVarA, (c0) this.f2702e, q0Var);
            if (!Objects.equals((c0) this.f2703f, (c0) this.f2702e)) {
                a(sVarA, (c0) this.f2703f, q0Var);
            }
            if (!Objects.equals((c0) this.f2701d, (c0) this.f2702e) && !Objects.equals((c0) this.f2701d, (c0) this.f2703f)) {
                a(sVarA, (c0) this.f2701d, q0Var);
            }
        } else {
            for (int i10 = 0; i10 < ((g0) this.f2699b).size(); i10++) {
                a(sVarA, (c0) ((g0) this.f2699b).get(i10), q0Var);
            }
            if (!((g0) this.f2699b).contains((c0) this.f2701d)) {
                a(sVarA, (c0) this.f2701d, q0Var);
            }
        }
        this.f2700c = sVarA.b(true);
    }

    public i(d2.q qVar, MediaFormat mediaFormat, r1.p pVar, Surface surface, MediaCrypto mediaCrypto, v3.f fVar) {
        this.f2698a = qVar;
        this.f2699b = mediaFormat;
        this.f2700c = pVar;
        this.f2701d = surface;
        this.f2702e = mediaCrypto;
        this.f2703f = fVar;
    }

    public i(o0 o0Var) {
        this.f2698a = o0Var;
        e0 e0Var = g0.f15471b;
        this.f2699b = y0.f15549e;
        this.f2700c = d1.f15447g;
    }
}
