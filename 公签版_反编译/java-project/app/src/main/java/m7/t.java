package m7;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public float f10982a;

    /* renamed from: b, reason: collision with root package name */
    public float f10983b;

    /* renamed from: c, reason: collision with root package name */
    public float f10984c;

    /* renamed from: d, reason: collision with root package name */
    public float f10985d;

    /* renamed from: e, reason: collision with root package name */
    public float f10986e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f10987f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f10988g = new ArrayList();

    public t() {
        d(0.0f, 270.0f, 0.0f);
    }

    public final void a(float f10) {
        float f11 = this.f10985d;
        if (f11 == f10) {
            return;
        }
        float f12 = ((f10 - f11) + 360.0f) % 360.0f;
        if (f12 > 180.0f) {
            return;
        }
        float f13 = this.f10983b;
        float f14 = this.f10984c;
        p pVar = new p(f13, f14, f13, f14);
        pVar.f10975f = this.f10985d;
        pVar.f10976g = f12;
        this.f10988g.add(new n(pVar));
        this.f10985d = f10;
    }

    public final void b(Matrix matrix, Path path) {
        ArrayList arrayList = this.f10987f;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((r) arrayList.get(i10)).a(matrix, path);
        }
    }

    public final void c(float f10, float f11) {
        q qVar = new q();
        qVar.f10977b = f10;
        qVar.f10978c = f11;
        this.f10987f.add(qVar);
        o oVar = new o(qVar, this.f10983b, this.f10984c);
        float fB = oVar.b() + 270.0f;
        float fB2 = oVar.b() + 270.0f;
        a(fB);
        this.f10988g.add(oVar);
        this.f10985d = fB2;
        this.f10983b = f10;
        this.f10984c = f11;
    }

    public final void d(float f10, float f11, float f12) {
        this.f10982a = f10;
        this.f10983b = 0.0f;
        this.f10984c = f10;
        this.f10985d = f11;
        this.f10986e = (f11 + f12) % 360.0f;
        this.f10987f.clear();
        this.f10988g.clear();
    }
}
