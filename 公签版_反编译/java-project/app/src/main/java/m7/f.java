package m7;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public class f extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public j f10904a;

    /* renamed from: b, reason: collision with root package name */
    public f7.a f10905b;

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f10906c;

    /* renamed from: d, reason: collision with root package name */
    public ColorStateList f10907d;

    /* renamed from: e, reason: collision with root package name */
    public ColorStateList f10908e;

    /* renamed from: f, reason: collision with root package name */
    public PorterDuff.Mode f10909f;

    /* renamed from: g, reason: collision with root package name */
    public Rect f10910g;

    /* renamed from: h, reason: collision with root package name */
    public final float f10911h;

    /* renamed from: i, reason: collision with root package name */
    public float f10912i;

    /* renamed from: j, reason: collision with root package name */
    public float f10913j;

    /* renamed from: k, reason: collision with root package name */
    public int f10914k;
    public float l;

    /* renamed from: m, reason: collision with root package name */
    public float f10915m;

    /* renamed from: n, reason: collision with root package name */
    public int f10916n;

    /* renamed from: o, reason: collision with root package name */
    public int f10917o;

    /* renamed from: p, reason: collision with root package name */
    public final Paint.Style f10918p;

    public f(j jVar) {
        this.f10906c = null;
        this.f10907d = null;
        this.f10908e = null;
        this.f10909f = PorterDuff.Mode.SRC_IN;
        this.f10910g = null;
        this.f10911h = 1.0f;
        this.f10912i = 1.0f;
        this.f10914k = 255;
        this.l = 0.0f;
        this.f10915m = 0.0f;
        this.f10916n = 0;
        this.f10917o = 0;
        this.f10918p = Paint.Style.FILL_AND_STROKE;
        this.f10904a = jVar;
        this.f10905b = null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        g gVar = new g(this);
        gVar.f10924e = true;
        return gVar;
    }

    public f(f fVar) {
        this.f10906c = null;
        this.f10907d = null;
        this.f10908e = null;
        this.f10909f = PorterDuff.Mode.SRC_IN;
        this.f10910g = null;
        this.f10911h = 1.0f;
        this.f10912i = 1.0f;
        this.f10914k = 255;
        this.l = 0.0f;
        this.f10915m = 0.0f;
        this.f10916n = 0;
        this.f10917o = 0;
        this.f10918p = Paint.Style.FILL_AND_STROKE;
        this.f10904a = fVar.f10904a;
        this.f10905b = fVar.f10905b;
        this.f10913j = fVar.f10913j;
        this.f10906c = fVar.f10906c;
        this.f10907d = fVar.f10907d;
        this.f10909f = fVar.f10909f;
        this.f10908e = fVar.f10908e;
        this.f10914k = fVar.f10914k;
        this.f10911h = fVar.f10911h;
        this.f10917o = fVar.f10917o;
        this.f10912i = fVar.f10912i;
        this.l = fVar.l;
        this.f10915m = fVar.f10915m;
        this.f10916n = fVar.f10916n;
        this.f10918p = fVar.f10918p;
        if (fVar.f10910g != null) {
            this.f10910g = new Rect(fVar.f10910g);
        }
    }
}
