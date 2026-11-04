package i4;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class q extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public int f8583a;

    /* renamed from: b, reason: collision with root package name */
    public p f8584b;

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f8585c;

    /* renamed from: d, reason: collision with root package name */
    public PorterDuff.Mode f8586d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8587e;

    /* renamed from: f, reason: collision with root package name */
    public Bitmap f8588f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f8589g;

    /* renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f8590h;

    /* renamed from: i, reason: collision with root package name */
    public int f8591i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f8592j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f8593k;
    public Paint l;

    public q(q qVar) {
        this.f8585c = null;
        this.f8586d = s.f8595j;
        if (qVar != null) {
            this.f8583a = qVar.f8583a;
            p pVar = new p(qVar.f8584b);
            this.f8584b = pVar;
            if (qVar.f8584b.f8573e != null) {
                pVar.f8573e = new Paint(qVar.f8584b.f8573e);
            }
            if (qVar.f8584b.f8572d != null) {
                this.f8584b.f8572d = new Paint(qVar.f8584b.f8572d);
            }
            this.f8585c = qVar.f8585c;
            this.f8586d = qVar.f8586d;
            this.f8587e = qVar.f8587e;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f8583a;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new s(this);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new s(this);
    }

    public q() {
        this.f8585c = null;
        this.f8586d = s.f8595j;
        this.f8584b = new p();
    }
}
