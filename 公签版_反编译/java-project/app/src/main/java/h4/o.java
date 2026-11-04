package h4;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

/* loaded from: classes.dex */
public final class o extends Property {

    /* renamed from: a, reason: collision with root package name */
    public final Property f6465a;

    /* renamed from: b, reason: collision with root package name */
    public final PathMeasure f6466b;

    /* renamed from: c, reason: collision with root package name */
    public final float f6467c;

    /* renamed from: d, reason: collision with root package name */
    public final float[] f6468d;

    /* renamed from: e, reason: collision with root package name */
    public final PointF f6469e;

    /* renamed from: f, reason: collision with root package name */
    public float f6470f;

    public o(Property property, Path path) {
        super(Float.class, property.getName());
        this.f6468d = new float[2];
        this.f6469e = new PointF();
        this.f6465a = property;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.f6466b = pathMeasure;
        this.f6467c = pathMeasure.getLength();
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        return Float.valueOf(this.f6470f);
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        Float f10 = (Float) obj2;
        this.f6470f = f10.floatValue();
        PathMeasure pathMeasure = this.f6466b;
        float fFloatValue = f10.floatValue() * this.f6467c;
        float[] fArr = this.f6468d;
        pathMeasure.getPosTan(fFloatValue, fArr, null);
        PointF pointF = this.f6469e;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.f6465a.set(obj, pointF);
    }
}
