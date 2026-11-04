package eb;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: b, reason: collision with root package name */
    public float f4870b;

    /* renamed from: c, reason: collision with root package name */
    public float f4871c;

    /* renamed from: e, reason: collision with root package name */
    public final i f4873e;

    /* renamed from: f, reason: collision with root package name */
    public final g f4874f;

    /* renamed from: a, reason: collision with root package name */
    public boolean f4869a = true;

    /* renamed from: d, reason: collision with root package name */
    public boolean f4872d = false;

    public l(i iVar, g gVar) {
        this.f4873e = iVar;
        this.f4874f = gVar;
    }

    public final void a() {
        if (this.f4869a) {
            return;
        }
        if (!this.f4874f.a(this.f4870b, this.f4871c)) {
            this.f4873e.f4850c = 0.0f;
        }
        this.f4869a = true;
        this.f4872d = false;
    }

    public final void b(float f10, float f11) {
        if (this.f4869a) {
            if (!this.f4872d || Math.abs(f10 - 0.0f) > 1.0E-6f) {
                this.f4870b = f10;
            } else {
                this.f4870b = 0.0f;
            }
            this.f4871c = f11;
            this.f4869a = false;
            this.f4872d = false;
            return;
        }
        if (!this.f4872d && Math.abs(f10 - this.f4871c) <= 1.0E-6f) {
            this.f4871c = f11;
            return;
        }
        if (this.f4872d && Math.abs(f10 - 0.0f) <= 1.0E-6f) {
            this.f4871c = f11;
            this.f4872d = false;
        } else {
            a();
            this.f4869a = false;
            this.f4870b = f10;
            this.f4871c = f11;
        }
    }
}
