package i4;

/* loaded from: classes.dex */
public abstract class o extends n {

    /* renamed from: a, reason: collision with root package name */
    public p0.f[] f8565a;

    /* renamed from: b, reason: collision with root package name */
    public String f8566b;

    /* renamed from: c, reason: collision with root package name */
    public int f8567c;

    public o() {
        this.f8565a = null;
        this.f8567c = 0;
    }

    public p0.f[] getPathData() {
        return this.f8565a;
    }

    public String getPathName() {
        return this.f8566b;
    }

    public void setPathData(p0.f[] fVarArr) {
        if (!p000if.a.j(this.f8565a, fVarArr)) {
            this.f8565a = p000if.a.y(fVarArr);
            return;
        }
        p0.f[] fVarArr2 = this.f8565a;
        for (int i10 = 0; i10 < fVarArr.length; i10++) {
            fVarArr2[i10].f12545a = fVarArr[i10].f12545a;
            int i11 = 0;
            while (true) {
                float[] fArr = fVarArr[i10].f12546b;
                if (i11 < fArr.length) {
                    fVarArr2[i10].f12546b[i11] = fArr[i11];
                    i11++;
                }
            }
        }
    }

    public o(o oVar) {
        this.f8565a = null;
        this.f8567c = 0;
        this.f8566b = oVar.f8566b;
        this.f8565a = p000if.a.y(oVar.f8565a);
    }
}
