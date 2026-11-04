package v3;

import com.yunpan.appmanage.R;
import r1.v0;
import ua.z6;

/* loaded from: classes.dex */
public final class g extends r {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ t f16478f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(t tVar) {
        super(tVar);
        this.f16478f = tVar;
    }

    @Override // v3.r
    public final void q(o oVar) {
        oVar.f16528a.setText(R.string.exo_track_selection_auto);
        r1.m0 m0Var = this.f16478f.g1;
        m0Var.getClass();
        oVar.f16529b.setVisibility(s(((y1.x) m0Var).M()) ? 4 : 0);
        oVar.itemView.setOnClickListener(new z6(7, this));
    }

    @Override // v3.r
    public final void r(String str) {
        this.f16478f.f16567m.f16523e[1] = str;
    }

    public final boolean s(v0 v0Var) {
        for (int i10 = 0; i10 < this.f16541d.size(); i10++) {
            if (v0Var.f13616v.containsKey(((q) this.f16541d.get(i10)).f16532a.f13620b)) {
                return true;
            }
        }
        return false;
    }
}
