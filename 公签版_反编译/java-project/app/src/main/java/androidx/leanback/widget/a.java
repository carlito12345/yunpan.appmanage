package androidx.leanback.widget;

import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.h2;

/* loaded from: classes.dex */
public final class a implements h2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f1618a;

    public a(f fVar) {
        this.f1618a = fVar;
    }

    public final void a(RecyclerView.ViewHolder viewHolder) {
        f fVar = this.f1618a;
        q qVar = fVar.f1634a;
        qVar.getClass();
        int adapterPosition = viewHolder.getAdapterPosition();
        if (adapterPosition != -1) {
            View view = viewHolder.itemView;
            a0.h hVar = qVar.K;
            int i10 = hVar.f28b;
            if (i10 == 1) {
                a0.m mVar = (a0.m) hVar.f30d;
                if (mVar != null && mVar.e() != 0) {
                    ((a0.m) hVar.f30d).d(Integer.toString(adapterPosition));
                }
            } else if ((i10 == 2 || i10 == 3) && ((a0.m) hVar.f30d) != null) {
                String string = Integer.toString(adapterPosition);
                SparseArray<Parcelable> sparseArray = new SparseArray<>();
                view.saveHierarchyState(sparseArray);
                ((a0.m) hVar.f30d).c(string, sparseArray);
            }
        }
        h2 h2Var = fVar.f1638e;
        if (h2Var != null) {
            ((a) h2Var).a(viewHolder);
        }
    }
}
