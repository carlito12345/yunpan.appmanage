package m7;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;

/* loaded from: classes.dex */
public final class p extends r {

    /* renamed from: h, reason: collision with root package name */
    public static final RectF f10970h = new RectF();

    /* renamed from: b, reason: collision with root package name */
    public final float f10971b;

    /* renamed from: c, reason: collision with root package name */
    public final float f10972c;

    /* renamed from: d, reason: collision with root package name */
    public final float f10973d;

    /* renamed from: e, reason: collision with root package name */
    public final float f10974e;

    /* renamed from: f, reason: collision with root package name */
    public float f10975f;

    /* renamed from: g, reason: collision with root package name */
    public float f10976g;

    public p(float f10, float f11, float f12, float f13) {
        this.f10971b = f10;
        this.f10972c = f11;
        this.f10973d = f12;
        this.f10974e = f13;
    }

    @Override // m7.r
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f10979a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        RectF rectF = f10970h;
        rectF.set(this.f10971b, this.f10972c, this.f10973d, this.f10974e);
        path.arcTo(rectF, this.f10975f, this.f10976g, false);
        path.transform(matrix);
    }
}
