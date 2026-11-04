package l7;

import android.graphics.Paint;
import android.graphics.Path;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f10693i = new int[3];

    /* renamed from: j, reason: collision with root package name */
    public static final float[] f10694j = {0.0f, 0.5f, 1.0f};

    /* renamed from: k, reason: collision with root package name */
    public static final int[] f10695k = new int[4];
    public static final float[] l = {0.0f, 0.0f, 0.5f, 1.0f};

    /* renamed from: a, reason: collision with root package name */
    public final Paint f10696a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f10697b;

    /* renamed from: c, reason: collision with root package name */
    public final Paint f10698c;

    /* renamed from: d, reason: collision with root package name */
    public final int f10699d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10700e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10701f;

    /* renamed from: g, reason: collision with root package name */
    public final Path f10702g = new Path();

    /* renamed from: h, reason: collision with root package name */
    public final Paint f10703h;

    public a() {
        Paint paint = new Paint();
        this.f10703h = paint;
        Paint paint2 = new Paint();
        this.f10696a = paint2;
        this.f10699d = p0.a.d(-16777216, 68);
        this.f10700e = p0.a.d(-16777216, 20);
        this.f10701f = p0.a.d(-16777216, 0);
        paint2.setColor(this.f10699d);
        paint.setColor(0);
        Paint paint3 = new Paint(4);
        this.f10697b = paint3;
        paint3.setStyle(Paint.Style.FILL);
        this.f10698c = new Paint(paint3);
    }
}
