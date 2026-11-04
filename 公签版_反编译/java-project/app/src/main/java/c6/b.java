package c6;

import android.content.Context;
import android.util.SparseArray;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import java.util.List;
import je.r;

/* loaded from: classes.dex */
public abstract class b extends g {

    /* renamed from: h, reason: collision with root package name */
    public final SparseArray f2874h;

    public b() {
        super(r.f9870a, 2);
        this.f2874h = new SparseArray(1);
    }

    public static a F(RecyclerView.ViewHolder viewHolder) {
        Object tag = viewHolder.itemView.getTag(R.id.BaseQuickAdapter_key_multi);
        if (tag instanceof a) {
            return (a) tag;
        }
        return null;
    }

    @Override // c6.g
    public final void A(RecyclerView.ViewHolder viewHolder, int i10, Object obj, List list) {
        ue.d.e(list, "payloads");
        if (list.isEmpty()) {
            a aVarF = F(viewHolder);
            if (aVarF != null) {
                aVarF.h(viewHolder, i10, obj);
                return;
            }
            return;
        }
        a aVarF2 = F(viewHolder);
        if (aVarF2 != null) {
            aVarF2.a(viewHolder, i10, obj, list);
        }
    }

    @Override // c6.g
    public final RecyclerView.ViewHolder B(Context context, ViewGroup viewGroup, int i10) {
        ue.d.e(viewGroup, "parent");
        a aVar = (a) this.f2874h.get(i10);
        if (aVar == null) {
            throw new IllegalArgumentException(g.b.i("ViewType: ", i10, " not found onViewHolderListener，please use addItemType() first!"));
        }
        ue.d.d(viewGroup.getContext(), "getContext(...)");
        RecyclerView.ViewHolder viewHolderD = aVar.d(viewGroup);
        viewHolderD.itemView.setTag(R.id.BaseQuickAdapter_key_multi, aVar);
        return viewHolderD;
    }

    @Override // androidx.recyclerview.widget.m1
    public final boolean k(RecyclerView.ViewHolder viewHolder) {
        a aVarF = F(viewHolder);
        if (aVarF == null) {
            return false;
        }
        aVarF.c(viewHolder);
        return false;
    }

    @Override // c6.g, androidx.recyclerview.widget.m1
    public final void l(RecyclerView.ViewHolder viewHolder) {
        super.l(viewHolder);
        a aVarF = F(viewHolder);
        if (aVarF != null) {
            aVarF.b(viewHolder);
        }
    }

    @Override // c6.g, androidx.recyclerview.widget.m1
    public final void m(RecyclerView.ViewHolder viewHolder) {
        a aVarF = F(viewHolder);
        if (aVarF != null) {
            aVarF.f(viewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.m1
    public final void n(RecyclerView.ViewHolder viewHolder) {
        ue.d.e(viewHolder, "holder");
        a aVarF = F(viewHolder);
        if (aVarF != null) {
            aVarF.e(viewHolder);
        }
    }

    @Override // c6.g
    public final boolean x(int i10) {
        if (super.x(i10)) {
            return true;
        }
        a aVar = (a) this.f2874h.get(i10);
        return aVar != null && aVar.g();
    }

    @Override // c6.g
    public final void z(RecyclerView.ViewHolder viewHolder, int i10, Object obj) {
        a aVarF = F(viewHolder);
        if (aVarF != null) {
            aVarF.h(viewHolder, i10, obj);
        }
    }
}
