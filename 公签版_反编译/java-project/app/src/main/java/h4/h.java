package h4;

import android.view.View;

/* loaded from: classes.dex */
public final class h extends u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6436a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6437b;

    public /* synthetic */ h(int i10, Object obj) {
        this.f6436a = i10;
        this.f6437b = obj;
    }

    @Override // h4.s
    public final void c(t tVar) {
        switch (this.f6436a) {
            case 0:
                gf.g gVar = d0.f6422a;
                View view = (View) this.f6437b;
                gVar.H(view, 1.0f);
                gVar.y(view);
                tVar.v(this);
                break;
            case 1:
                ((t) this.f6437b).y();
                tVar.v(this);
                break;
            default:
                y yVar = (y) this.f6437b;
                int i10 = yVar.B - 1;
                yVar.B = i10;
                if (i10 == 0) {
                    yVar.C = false;
                    yVar.m();
                }
                tVar.v(this);
                break;
        }
    }

    @Override // h4.u, h4.s
    public void d(t tVar) {
        switch (this.f6436a) {
            case 2:
                y yVar = (y) this.f6437b;
                if (!yVar.C) {
                    yVar.F();
                    yVar.C = true;
                    break;
                }
                break;
        }
    }

    public h(y yVar) {
        this.f6436a = 2;
        this.f6437b = yVar;
    }
}
