package i4;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public final class i implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8540a = 0;

    /* renamed from: b, reason: collision with root package name */
    public float[] f8541b;

    /* renamed from: c, reason: collision with root package name */
    public float[] f8542c;

    public i(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i10 = (int) (length / 0.002f);
        int i11 = i10 + 1;
        this.f8541b = new float[i11];
        this.f8542c = new float[i11];
        float[] fArr = new float[2];
        for (int i12 = 0; i12 < i11; i12++) {
            pathMeasure.getPosTan((i12 * length) / i10, fArr, null);
            this.f8541b[i12] = fArr[0];
            this.f8542c[i12] = fArr[1];
        }
    }

    public void a(Path path) {
        int i10 = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int iMin = Math.min(3000, ((int) (length / 0.002f)) + 1);
        if (iMin <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.f8541b = new float[iMin];
        this.f8542c = new float[iMin];
        float[] fArr = new float[2];
        for (int i11 = 0; i11 < iMin; i11++) {
            pathMeasure.getPosTan((i11 * length) / (iMin - 1), fArr, null);
            this.f8541b[i11] = fArr[0];
            this.f8542c[i11] = fArr[1];
        }
        if (Math.abs(this.f8541b[0]) <= 1.0E-5d && Math.abs(this.f8542c[0]) <= 1.0E-5d) {
            int i12 = iMin - 1;
            if (Math.abs(this.f8541b[i12] - 1.0f) <= 1.0E-5d && Math.abs(this.f8542c[i12] - 1.0f) <= 1.0E-5d) {
                float f10 = 0.0f;
                int i13 = 0;
                while (i10 < iMin) {
                    float[] fArr2 = this.f8541b;
                    int i14 = i13 + 1;
                    float f11 = fArr2[i13];
                    if (f11 < f10) {
                        throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f11);
                    }
                    fArr2[i10] = f11;
                    i10++;
                    f10 = f11;
                    i13 = i14;
                }
                if (pathMeasure.nextContour()) {
                    throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                }
                return;
            }
        }
        StringBuilder sb2 = new StringBuilder("The Path must start at (0,0) and end at (1,1) start: ");
        sb2.append(this.f8541b[0]);
        sb2.append(",");
        sb2.append(this.f8542c[0]);
        sb2.append(" end:");
        int i15 = iMin - 1;
        sb2.append(this.f8541b[i15]);
        sb2.append(",");
        sb2.append(this.f8542c[i15]);
        throw new IllegalArgumentException(sb2.toString());
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f10) {
        switch (this.f8540a) {
            case 0:
                if (f10 <= 0.0f) {
                    return 0.0f;
                }
                if (f10 >= 1.0f) {
                    return 1.0f;
                }
                int length = this.f8541b.length - 1;
                int i10 = 0;
                while (length - i10 > 1) {
                    int i11 = (i10 + length) / 2;
                    if (f10 < this.f8541b[i11]) {
                        length = i11;
                    } else {
                        i10 = i11;
                    }
                }
                float[] fArr = this.f8541b;
                float f11 = fArr[length];
                float f12 = fArr[i10];
                float f13 = f11 - f12;
                if (f13 == 0.0f) {
                    return this.f8542c[i10];
                }
                float f14 = (f10 - f12) / f13;
                float[] fArr2 = this.f8542c;
                float f15 = fArr2[i10];
                return g.b.b(fArr2[length], f15, f14, f15);
            default:
                if (f10 <= 0.0f) {
                    return 0.0f;
                }
                if (f10 >= 1.0f) {
                    return 1.0f;
                }
                float[] fArr3 = this.f8541b;
                int length2 = fArr3.length - 1;
                int i12 = 0;
                while (length2 - i12 > 1) {
                    int i13 = (i12 + length2) / 2;
                    if (f10 < fArr3[i13]) {
                        length2 = i13;
                    } else {
                        i12 = i13;
                    }
                }
                float f16 = fArr3[length2];
                float f17 = fArr3[i12];
                float f18 = f16 - f17;
                float[] fArr4 = this.f8542c;
                if (f18 == 0.0f) {
                    return fArr4[i12];
                }
                float f19 = (f10 - f17) / f18;
                float f20 = fArr4[i12];
                return g.b.b(fArr4[length2], f20, f19, f20);
        }
    }

    public i(Context context, AttributeSet attributeSet, XmlResourceParser xmlResourceParser) throws NumberFormatException {
        TypedArray typedArrayG = o0.b.g(context.getResources(), context.getTheme(), attributeSet, a.l);
        if (o0.b.d(xmlResourceParser, "pathData")) {
            String strC = o0.b.c(typedArrayG, xmlResourceParser, "pathData", 4);
            Path pathV = p000if.a.v(strC);
            if (pathV != null) {
                a(pathV);
            } else {
                throw new InflateException(da.b.c("The path is null, which is created from ", strC));
            }
        } else if (o0.b.d(xmlResourceParser, "controlX1")) {
            if (o0.b.d(xmlResourceParser, "controlY1")) {
                float f10 = !o0.b.d(xmlResourceParser, "controlX1") ? 0.0f : typedArrayG.getFloat(0, 0.0f);
                float f11 = !o0.b.d(xmlResourceParser, "controlY1") ? 0.0f : typedArrayG.getFloat(1, 0.0f);
                boolean zD = o0.b.d(xmlResourceParser, "controlX2");
                if (zD != o0.b.d(xmlResourceParser, "controlY2")) {
                    throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
                }
                if (!zD) {
                    Path path = new Path();
                    path.moveTo(0.0f, 0.0f);
                    path.quadTo(f10, f11, 1.0f, 1.0f);
                    a(path);
                } else {
                    float f12 = !o0.b.d(xmlResourceParser, "controlX2") ? 0.0f : typedArrayG.getFloat(2, 0.0f);
                    float f13 = !o0.b.d(xmlResourceParser, "controlY2") ? 0.0f : typedArrayG.getFloat(3, 0.0f);
                    Path path2 = new Path();
                    path2.moveTo(0.0f, 0.0f);
                    path2.cubicTo(f10, f11, f12, f13, 1.0f, 1.0f);
                    a(path2);
                }
            } else {
                throw new InflateException("pathInterpolator requires the controlY1 attribute");
            }
        } else {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
        typedArrayG.recycle();
    }
}
