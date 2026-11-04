package h6;

import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import ue.d;

/* loaded from: classes.dex */
public class a extends RecyclerView.ViewHolder {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f6679a;

    /* JADX WARN: Illegal instructions before constructor call */
    public a(int i10, ViewGroup viewGroup) {
        d.e(viewGroup, "parent");
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(i10, viewGroup, false);
        d.d(viewInflate, "inflate(...)");
        super(viewInflate);
        this.f6679a = new SparseArray();
    }

    public final View a(int i10) {
        SparseArray sparseArray = this.f6679a;
        View viewFindViewById = (View) sparseArray.get(i10);
        if (viewFindViewById == null) {
            viewFindViewById = this.itemView.findViewById(i10);
            if (viewFindViewById != null) {
                sparseArray.put(i10, viewFindViewById);
            } else {
                viewFindViewById = null;
            }
        }
        if (viewFindViewById != null) {
            return viewFindViewById;
        }
        throw new IllegalStateException(da.b.a(i10, "No view found with id ").toString());
    }

    public final void b(int i10, int i11) {
        ((ImageView) a(i10)).setImageResource(i11);
    }

    public final void c(int i10, CharSequence charSequence) {
        ((TextView) a(i10)).setText(charSequence);
    }

    public final void d(int i10, boolean z) {
        a(i10).setVisibility(z ? 0 : 4);
    }
}
