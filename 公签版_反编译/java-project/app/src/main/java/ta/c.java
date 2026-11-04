package ta;

import android.view.View;
import com.yunpan.appmanage.service.AccService;
import wa.t;
import wa.u;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements ec.d, v8.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AccService f14859a;

    public /* synthetic */ c(AccService accService) {
        this.f14859a = accService;
    }

    @Override // v8.c
    public void e(v8.a aVar, View view) {
        u uVar = t.f17728a;
        uVar.c();
        uVar.f("");
        uVar.e("");
        try {
            uVar.S = false;
            uVar.f17731b.k("AutoRotationGlobalHorizontal", Boolean.FALSE);
        } catch (Exception unused) {
        }
        uVar.i();
        try {
            uVar.T = false;
            uVar.f17731b.k("AutoRotationGlobalVertical", Boolean.FALSE);
        } catch (Exception unused2) {
        }
        uVar.i();
        p000if.a.G0(this.f14859a);
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        AccService.a(this.f14859a, bVar);
    }
}
