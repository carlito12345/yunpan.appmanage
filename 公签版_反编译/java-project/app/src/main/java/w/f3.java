package w;

import androidx.appcompat.widget.Toolbar;

/* loaded from: classes.dex */
public final /* synthetic */ class f3 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17062a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Toolbar f17063b;

    public /* synthetic */ f3(Toolbar toolbar, int i10) {
        this.f17062a = i10;
        this.f17063b = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f17062a) {
            case 0:
                i3 i3Var = this.f17063b.O;
                v.m mVar = i3Var == null ? null : i3Var.f17106b;
                if (mVar != null) {
                    mVar.collapseActionView();
                    break;
                }
                break;
            default:
                this.f17063b.o();
                break;
        }
    }
}
