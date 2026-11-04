package x9;

import android.view.View;
import ha.ha;
import ua.g6;

/* loaded from: classes.dex */
public final class f implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18224a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f18225b;

    public /* synthetic */ f(g gVar, int i10) {
        this.f18224a = i10;
        this.f18225b = gVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f18224a) {
            case 0:
                int iIntValue = ((Integer) view.getTag()).intValue();
                g gVar = this.f18225b;
                gVar.C(iIntValue);
                gVar.f2188a.b();
                break;
            default:
                g gVar2 = this.f18225b;
                new ha(gVar2.f18228h, gVar2.f18229i, null, gVar2.f18230j, new g6(this, 11, view)).show();
                break;
        }
    }
}
