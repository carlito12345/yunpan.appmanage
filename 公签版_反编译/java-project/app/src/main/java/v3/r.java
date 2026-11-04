package v3;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m1;
import com.yunpan.appmanage.R;
import ha.tc;
import java.util.ArrayList;
import java.util.List;
import r1.r0;

/* loaded from: classes.dex */
public abstract class r extends m1 {

    /* renamed from: d, reason: collision with root package name */
    public List f16541d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ t f16542e;

    public r(t tVar) {
        this.f16542e = tVar;
    }

    @Override // androidx.recyclerview.widget.m1
    public final int b() {
        if (this.f16541d.isEmpty()) {
            return 0;
        }
        return this.f16541d.size() + 1;
    }

    @Override // androidx.recyclerview.widget.m1
    public final RecyclerView.ViewHolder i(int i10, ViewGroup viewGroup) {
        return new o(LayoutInflater.from(this.f16542e.getContext()).inflate(R.layout.exo_styled_sub_settings_list_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.m1
    /* renamed from: p */
    public void g(o oVar, int i10) {
        r1.m0 m0Var = this.f16542e.g1;
        if (m0Var == null) {
            return;
        }
        if (i10 == 0) {
            q(oVar);
            return;
        }
        q qVar = (q) this.f16541d.get(i10 - 1);
        r0 r0Var = qVar.f16532a.f13620b;
        boolean z = ((y1.x) m0Var).M().f13616v.get(r0Var) != null && qVar.f16532a.f13623e[qVar.f16533b];
        oVar.f16528a.setText(qVar.f16534c);
        oVar.f16529b.setVisibility(z ? 0 : 4);
        oVar.itemView.setOnClickListener(new tc(this, m0Var, r0Var, qVar, 2));
    }

    public abstract void q(o oVar);

    public abstract void r(String str);
}
