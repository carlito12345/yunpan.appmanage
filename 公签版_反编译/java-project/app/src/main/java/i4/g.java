package i4;

import android.animation.TypeEvaluator;

/* loaded from: classes.dex */
public final class g implements TypeEvaluator {

    /* renamed from: a, reason: collision with root package name */
    public p0.f[] f8538a;

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f10, Object obj, Object obj2) {
        p0.f[] fVarArr = (p0.f[]) obj;
        p0.f[] fVarArr2 = (p0.f[]) obj2;
        if (!p000if.a.j(fVarArr, fVarArr2)) {
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
        if (!p000if.a.j(this.f8538a, fVarArr)) {
            this.f8538a = p000if.a.y(fVarArr);
        }
        for (int i10 = 0; i10 < fVarArr.length; i10++) {
            p0.f fVar = this.f8538a[i10];
            p0.f fVar2 = fVarArr[i10];
            p0.f fVar3 = fVarArr2[i10];
            fVar.getClass();
            fVar.f12545a = fVar2.f12545a;
            int i11 = 0;
            while (true) {
                float[] fArr = fVar2.f12546b;
                if (i11 < fArr.length) {
                    fVar.f12546b[i11] = (fVar3.f12546b[i11] * f10) + ((1.0f - f10) * fArr[i11]);
                    i11++;
                }
            }
        }
        return this.f8538a;
    }
}
