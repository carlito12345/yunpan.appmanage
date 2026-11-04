package w;

import android.view.View;

/* loaded from: classes.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final e f17064a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f17065b;

    public g(j jVar, e eVar) {
        this.f17065b = jVar;
        this.f17064a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        v.i iVar;
        j jVar = this.f17065b;
        v.k kVar = jVar.f17110c;
        if (kVar != null && (iVar = kVar.f16237e) != null) {
            iVar.f(kVar);
        }
        View view = (View) jVar.f17115h;
        if (view != null && view.getWindowToken() != null) {
            e eVar = this.f17064a;
            if (eVar.b()) {
                jVar.f17124t = eVar;
            } else if (eVar.f16294e != null) {
                eVar.d(0, 0, false, false);
                jVar.f17124t = eVar;
            }
        }
        jVar.f17126w = null;
    }
}
