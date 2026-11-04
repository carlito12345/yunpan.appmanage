package s;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import androidx.activity.h;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public abstract class f extends Drawable implements Drawable.Callback {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f13861m = 0;

    /* renamed from: a, reason: collision with root package name */
    public b f13862a;

    /* renamed from: b, reason: collision with root package name */
    public Rect f13863b;

    /* renamed from: c, reason: collision with root package name */
    public Drawable f13864c;

    /* renamed from: d, reason: collision with root package name */
    public Drawable f13865d;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13867f;

    /* renamed from: h, reason: collision with root package name */
    public boolean f13869h;

    /* renamed from: i, reason: collision with root package name */
    public h f13870i;

    /* renamed from: j, reason: collision with root package name */
    public long f13871j;

    /* renamed from: k, reason: collision with root package name */
    public long f13872k;
    public i4.c l;

    /* renamed from: e, reason: collision with root package name */
    public int f13866e = 255;

    /* renamed from: g, reason: collision with root package name */
    public int f13868g = -1;

    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(boolean z) {
        boolean z4;
        Drawable drawable;
        boolean z10 = true;
        this.f13867f = true;
        long jUptimeMillis = SystemClock.uptimeMillis();
        Drawable drawable2 = this.f13864c;
        if (drawable2 != null) {
            long j10 = this.f13871j;
            if (j10 != 0) {
                if (j10 <= jUptimeMillis) {
                    drawable2.setAlpha(this.f13866e);
                    this.f13871j = 0L;
                } else {
                    drawable2.setAlpha(((255 - (((int) ((j10 - jUptimeMillis) * 255)) / this.f13862a.f13849y)) * this.f13866e) / 255);
                    z4 = true;
                }
            }
            drawable = this.f13865d;
            if (drawable == null) {
                long j11 = this.f13872k;
                if (j11 != 0) {
                    if (j11 <= jUptimeMillis) {
                        drawable.setVisible(false, false);
                        this.f13865d = null;
                        this.f13872k = 0L;
                    } else {
                        drawable.setAlpha(((((int) ((j11 - jUptimeMillis) * 255)) / this.f13862a.z) * this.f13866e) / 255);
                    }
                }
                if (z && z10) {
                    scheduleSelf(this.f13870i, jUptimeMillis + 16);
                    return;
                }
                return;
            }
            this.f13872k = 0L;
            z10 = z4;
            if (z) {
                return;
            } else {
                return;
            }
        }
        this.f13871j = 0L;
        z4 = false;
        drawable = this.f13865d;
        if (drawable == null) {
        }
        z10 = z4;
        if (z) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        b bVar = this.f13862a;
        if (theme == null) {
            bVar.getClass();
            return;
        }
        bVar.c();
        int i10 = bVar.f13834h;
        Drawable[] drawableArr = bVar.f13833g;
        for (int i11 = 0; i11 < i10; i11++) {
            Drawable drawable = drawableArr[i11];
            if (drawable != null) {
                int i12 = Build.VERSION.SDK_INT;
                if (i12 >= 21 ? q0.b.b(drawable) : false) {
                    Drawable drawable2 = drawableArr[i11];
                    if (i12 >= 21) {
                        q0.b.a(drawable2, theme);
                    }
                    bVar.f13831e |= drawableArr[i11].getChangingConfigurations();
                }
            }
        }
        Resources resourcesF = a2.d.f(theme);
        if (resourcesF != null) {
            bVar.f13828b = resourcesF;
            int i13 = resourcesF.getDisplayMetrics().densityDpi;
            if (i13 == 0) {
                i13 = CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ;
            }
            int i14 = bVar.f13829c;
            bVar.f13829c = i13;
            if (i14 != i13) {
                bVar.f13838m = false;
                bVar.f13836j = false;
            }
        }
    }

    public final void b(Drawable drawable) {
        if (this.l == null) {
            this.l = new i4.c();
        }
        i4.c cVar = this.l;
        cVar.f8524b = drawable.getCallback();
        drawable.setCallback(cVar);
        try {
            if (this.f13862a.f13849y <= 0 && this.f13867f) {
                drawable.setAlpha(this.f13866e);
            }
            b bVar = this.f13862a;
            if (bVar.C) {
                drawable.setColorFilter(bVar.B);
            } else {
                if (bVar.F) {
                    com.bumptech.glide.c.f0(drawable, bVar.D);
                }
                b bVar2 = this.f13862a;
                if (bVar2.G) {
                    com.bumptech.glide.c.g0(drawable, bVar2.E);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f13862a.f13847w);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 23) {
                com.bumptech.glide.c.d0(drawable, com.bumptech.glide.c.F(this));
            }
            if (i10 >= 19) {
                com.bumptech.glide.c.a0(drawable, this.f13862a.A);
            }
            Rect rect = this.f13863b;
            if (i10 >= 21 && rect != null) {
                com.bumptech.glide.c.c0(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
            i4.c cVar2 = this.l;
            Drawable.Callback callback = (Drawable.Callback) cVar2.f8524b;
            cVar2.f8524b = null;
            drawable.setCallback(callback);
        } catch (Throwable th2) {
            i4.c cVar3 = this.l;
            Drawable.Callback callback2 = (Drawable.Callback) cVar3.f8524b;
            cVar3.f8524b = null;
            drawable.setCallback(callback2);
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean c(int i10) {
        if (i10 == this.f13868g) {
            return false;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.f13862a.z > 0) {
            Drawable drawable = this.f13865d;
            if (drawable != null) {
                drawable.setVisible(false, false);
            }
            Drawable drawable2 = this.f13864c;
            if (drawable2 != null) {
                this.f13865d = drawable2;
                this.f13872k = this.f13862a.z + jUptimeMillis;
            } else {
                this.f13865d = null;
                this.f13872k = 0L;
            }
        } else {
            Drawable drawable3 = this.f13864c;
            if (drawable3 != null) {
                drawable3.setVisible(false, false);
            }
        }
        if (i10 >= 0) {
            b bVar = this.f13862a;
            if (i10 < bVar.f13834h) {
                Drawable drawableD = bVar.d(i10);
                this.f13864c = drawableD;
                this.f13868g = i10;
                if (drawableD != null) {
                    int i11 = this.f13862a.f13849y;
                    if (i11 > 0) {
                        this.f13871j = jUptimeMillis + i11;
                    }
                    b(drawableD);
                }
            } else {
                this.f13864c = null;
                this.f13868g = -1;
            }
        }
        if (this.f13871j != 0 || this.f13872k != 0) {
            h hVar = this.f13870i;
            if (hVar == null) {
                this.f13870i = new h(16, (e) this);
            } else {
                unscheduleSelf(hVar);
            }
            a(true);
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        return this.f13862a.canApplyTheme();
    }

    public abstract void d(b bVar);

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f13864c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f13865d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f13866e;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f13862a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        boolean z;
        b bVar = this.f13862a;
        if (!bVar.f13845u) {
            bVar.c();
            bVar.f13845u = true;
            int i10 = bVar.f13834h;
            Drawable[] drawableArr = bVar.f13833g;
            int i11 = 0;
            while (true) {
                if (i11 >= i10) {
                    bVar.f13846v = true;
                    z = true;
                    break;
                }
                if (drawableArr[i11].getConstantState() == null) {
                    bVar.f13846v = false;
                    z = false;
                    break;
                }
                i11++;
            }
        } else {
            z = bVar.f13846v;
        }
        if (!z) {
            return null;
        }
        this.f13862a.f13830d = getChangingConfigurations();
        return this.f13862a;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.f13864c;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f13863b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        b bVar = this.f13862a;
        if (bVar.l) {
            if (!bVar.f13838m) {
                bVar.b();
            }
            return bVar.f13840o;
        }
        Drawable drawable = this.f13864c;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        b bVar = this.f13862a;
        if (bVar.l) {
            if (!bVar.f13838m) {
                bVar.b();
            }
            return bVar.f13839n;
        }
        Drawable drawable = this.f13864c;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        b bVar = this.f13862a;
        if (bVar.l) {
            if (!bVar.f13838m) {
                bVar.b();
            }
            return bVar.f13842q;
        }
        Drawable drawable = this.f13864c;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        b bVar = this.f13862a;
        if (bVar.l) {
            if (!bVar.f13838m) {
                bVar.b();
            }
            return bVar.f13841p;
        }
        Drawable drawable = this.f13864c;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Drawable drawable = this.f13864c;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        b bVar = this.f13862a;
        if (bVar.r) {
            return bVar.f13843s;
        }
        bVar.c();
        int i10 = bVar.f13834h;
        Drawable[] drawableArr = bVar.f13833g;
        int opacity = i10 > 0 ? drawableArr[0].getOpacity() : -2;
        for (int i11 = 1; i11 < i10; i11++) {
            opacity = Drawable.resolveOpacity(opacity, drawableArr[i11].getOpacity());
        }
        bVar.f13843s = opacity;
        bVar.r = true;
        return opacity;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Drawable drawable = this.f13864c;
        if (drawable != null) {
            a2.d.d(drawable, outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        b bVar = this.f13862a;
        boolean padding = false;
        Rect rect2 = null;
        if (!bVar.f13835i) {
            Rect rect3 = bVar.f13837k;
            if (rect3 != null || bVar.f13836j) {
                rect2 = rect3;
            } else {
                bVar.c();
                Rect rect4 = new Rect();
                int i10 = bVar.f13834h;
                Drawable[] drawableArr = bVar.f13833g;
                for (int i11 = 0; i11 < i10; i11++) {
                    if (drawableArr[i11].getPadding(rect4)) {
                        if (rect2 == null) {
                            rect2 = new Rect(0, 0, 0, 0);
                        }
                        int i12 = rect4.left;
                        if (i12 > rect2.left) {
                            rect2.left = i12;
                        }
                        int i13 = rect4.top;
                        if (i13 > rect2.top) {
                            rect2.top = i13;
                        }
                        int i14 = rect4.right;
                        if (i14 > rect2.right) {
                            rect2.right = i14;
                        }
                        int i15 = rect4.bottom;
                        if (i15 > rect2.bottom) {
                            rect2.bottom = i15;
                        }
                    }
                }
                bVar.f13836j = true;
                bVar.f13837k = rect2;
            }
        }
        if (rect2 != null) {
            rect.set(rect2);
            if ((rect2.left | rect2.top | rect2.bottom | rect2.right) != 0) {
                padding = true;
            }
        } else {
            Drawable drawable = this.f13864c;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (this.f13862a.A && com.bumptech.glide.c.F(this) == 1) {
            int i16 = rect.left;
            rect.left = rect.right;
            rect.right = i16;
        }
        return padding;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        b bVar = this.f13862a;
        if (bVar != null) {
            bVar.r = false;
            bVar.f13844t = false;
        }
        if (drawable != this.f13864c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f13862a.A;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f13865d;
        boolean z4 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f13865d = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f13864c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f13867f) {
                this.f13864c.setAlpha(this.f13866e);
            }
        }
        if (this.f13872k != 0) {
            this.f13872k = 0L;
            z = true;
        }
        if (this.f13871j != 0) {
            this.f13871j = 0L;
        } else {
            z4 = z;
        }
        if (z4) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f13869h && super.mutate() == this) {
            e eVar = (e) this;
            b bVar = new b(eVar.f13857q, eVar, null);
            bVar.I = bVar.I.clone();
            bVar.J = bVar.J.clone();
            d(bVar);
            this.f13869h = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f13865d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f13864c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i10) {
        b bVar = this.f13862a;
        int i11 = this.f13868g;
        int i12 = bVar.f13834h;
        Drawable[] drawableArr = bVar.f13833g;
        boolean z = false;
        for (int i13 = 0; i13 < i12; i13++) {
            Drawable drawable = drawableArr[i13];
            if (drawable != null) {
                boolean zD0 = Build.VERSION.SDK_INT >= 23 ? com.bumptech.glide.c.d0(drawable, i10) : false;
                if (i13 == i11) {
                    z = zD0;
                }
            }
        }
        bVar.f13848x = i10;
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i10) {
        Drawable drawable = this.f13865d;
        if (drawable != null) {
            return drawable.setLevel(i10);
        }
        Drawable drawable2 = this.f13864c;
        if (drawable2 != null) {
            return drawable2.setLevel(i10);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        if (drawable != this.f13864c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        if (this.f13867f && this.f13866e == i10) {
            return;
        }
        this.f13867f = true;
        this.f13866e = i10;
        Drawable drawable = this.f13864c;
        if (drawable != null) {
            if (this.f13871j == 0) {
                drawable.setAlpha(i10);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        b bVar = this.f13862a;
        if (bVar.A != z) {
            bVar.A = z;
            Drawable drawable = this.f13864c;
            if (drawable != null) {
                com.bumptech.glide.c.a0(drawable, z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        b bVar = this.f13862a;
        bVar.C = true;
        if (bVar.B != colorFilter) {
            bVar.B = colorFilter;
            Drawable drawable = this.f13864c;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z) {
        b bVar = this.f13862a;
        if (bVar.f13847w != z) {
            bVar.f13847w = z;
            Drawable drawable = this.f13864c;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f10, float f11) {
        Drawable drawable = this.f13864c;
        if (drawable != null) {
            com.bumptech.glide.c.b0(drawable, f10, f11);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i10, int i11, int i12, int i13) {
        Rect rect = this.f13863b;
        if (rect == null) {
            this.f13863b = new Rect(i10, i11, i12, i13);
        } else {
            rect.set(i10, i11, i12, i13);
        }
        Drawable drawable = this.f13864c;
        if (drawable != null) {
            com.bumptech.glide.c.c0(drawable, i10, i11, i12, i13);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i10) {
        setTintList(ColorStateList.valueOf(i10));
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        b bVar = this.f13862a;
        bVar.F = true;
        if (bVar.D != colorStateList) {
            bVar.D = colorStateList;
            com.bumptech.glide.c.f0(this.f13864c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        b bVar = this.f13862a;
        bVar.G = true;
        if (bVar.E != mode) {
            bVar.E = mode;
            com.bumptech.glide.c.g0(this.f13864c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z4) {
        boolean visible = super.setVisible(z, z4);
        Drawable drawable = this.f13865d;
        if (drawable != null) {
            drawable.setVisible(z, z4);
        }
        Drawable drawable2 = this.f13864c;
        if (drawable2 != null) {
            drawable2.setVisible(z, z4);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f13864c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
