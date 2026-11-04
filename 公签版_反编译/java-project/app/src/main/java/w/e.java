package w;

import android.content.Context;
import android.view.View;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class e extends v.v {
    public final /* synthetic */ int l = 0;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ j f17051m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(j jVar, Context context, v.k kVar, View view) {
        super(R.attr.actionOverflowMenuStyle, context, view, kVar, true);
        this.f17051m = jVar;
        this.f16295f = 8388613;
        i iVar = jVar.f17128y;
        this.f16297h = iVar;
        v.s sVar = this.f16298i;
        if (sVar != null) {
            sVar.c(iVar);
        }
    }

    @Override // v.v
    public final void c() {
        switch (this.l) {
            case 0:
                j jVar = this.f17051m;
                jVar.f17125v = null;
                jVar.getClass();
                super.c();
                break;
            default:
                j jVar2 = this.f17051m;
                v.k kVar = jVar2.f17110c;
                if (kVar != null) {
                    kVar.c(true);
                }
                jVar2.f17124t = null;
                super.c();
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(j jVar, Context context, v.d0 d0Var, View view) {
        super(R.attr.actionOverflowMenuStyle, context, view, d0Var, false);
        this.f17051m = jVar;
        if (!d0Var.C.f()) {
            View view2 = jVar.f17116i;
            this.f16294e = view2 == null ? (View) jVar.f17115h : view2;
        }
        i iVar = jVar.f17128y;
        this.f16297h = iVar;
        v.s sVar = this.f16298i;
        if (sVar != null) {
            sVar.c(iVar);
        }
    }
}
