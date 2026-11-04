package s5;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b extends Drawable implements f, Animatable {

    /* renamed from: a, reason: collision with root package name */
    public final i4.e f14417a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f14418b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14419c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f14420d;

    /* renamed from: f, reason: collision with root package name */
    public int f14422f;

    /* renamed from: h, reason: collision with root package name */
    public boolean f14424h;

    /* renamed from: i, reason: collision with root package name */
    public Paint f14425i;

    /* renamed from: j, reason: collision with root package name */
    public Rect f14426j;

    /* renamed from: e, reason: collision with root package name */
    public boolean f14421e = true;

    /* renamed from: g, reason: collision with root package name */
    public final int f14423g = -1;

    public b(i4.e eVar) {
        a6.h.c(eVar, "Argument must not be null");
        this.f14417a = eVar;
    }

    public final void a() {
        a6.h.a("You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.", !this.f14420d);
        g gVar = (g) this.f14417a.f8530b;
        if (gVar.f14436a.l.f4784c == 1) {
            invalidateSelf();
            return;
        }
        if (this.f14418b) {
            return;
        }
        this.f14418b = true;
        if (gVar.f14445j) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        ArrayList arrayList = gVar.f14438c;
        if (arrayList.contains(this)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean zIsEmpty = arrayList.isEmpty();
        arrayList.add(this);
        if (zIsEmpty && !gVar.f14441f) {
            gVar.f14441f = true;
            gVar.f14445j = false;
            gVar.a();
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f14420d) {
            return;
        }
        if (this.f14424h) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            if (this.f14426j == null) {
                this.f14426j = new Rect();
            }
            Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.f14426j);
            this.f14424h = false;
        }
        g gVar = (g) this.f14417a.f8530b;
        e eVar = gVar.f14444i;
        Bitmap bitmap = eVar != null ? eVar.f14435g : gVar.l;
        if (this.f14426j == null) {
            this.f14426j = new Rect();
        }
        Rect rect = this.f14426j;
        if (this.f14425i == null) {
            this.f14425i = new Paint(2);
        }
        canvas.drawBitmap(bitmap, (Rect) null, rect, this.f14425i);
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f14417a;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return ((g) this.f14417a.f8530b).f14450p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return ((g) this.f14417a.f8530b).f14449o;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f14418b;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f14424h = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        if (this.f14425i == null) {
            this.f14425i = new Paint(2);
        }
        this.f14425i.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f14425i == null) {
            this.f14425i = new Paint(2);
        }
        this.f14425i.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z4) {
        a6.h.a("Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.", !this.f14420d);
        this.f14421e = z;
        if (!z) {
            this.f14418b = false;
            g gVar = (g) this.f14417a.f8530b;
            ArrayList arrayList = gVar.f14438c;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                gVar.f14441f = false;
            }
        } else if (this.f14419c) {
            a();
        }
        return super.setVisible(z, z4);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.f14419c = true;
        this.f14422f = 0;
        if (this.f14421e) {
            a();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f14419c = false;
        this.f14418b = false;
        g gVar = (g) this.f14417a.f8530b;
        ArrayList arrayList = gVar.f14438c;
        arrayList.remove(this);
        if (arrayList.isEmpty()) {
            gVar.f14441f = false;
        }
    }
}
