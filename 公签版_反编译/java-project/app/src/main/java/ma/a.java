package ma;

import a9.o;
import java.io.File;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11020a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ File f11021b;

    public /* synthetic */ a(File file, int i10) {
        this.f11020a = i10;
        this.f11021b = file;
    }

    @Override // ec.d
    public final void g(mc.b bVar) {
        switch (this.f11020a) {
            case 0:
                try {
                    o.R(this.f11021b);
                    bVar.b();
                    break;
                } catch (Exception e7) {
                    bVar.d(e7);
                    return;
                }
            default:
                try {
                    bVar.f(q4.a.A(this.f11021b));
                    bVar.b();
                    break;
                } catch (Exception e10) {
                    bVar.d(e10);
                }
        }
    }
}
