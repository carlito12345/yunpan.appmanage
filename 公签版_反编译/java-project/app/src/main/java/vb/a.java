package vb;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.BaseAdapter;
import com.yunpan.appmanage.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class a extends BaseAdapter implements Adapter {

    /* renamed from: a, reason: collision with root package name */
    public k f16721a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f16722b;

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList arrayList = this.f16722b;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i10) {
        if (this.f16722b.get(i10) == null) {
            return null;
        }
        throw new ClassCastException();
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i10) {
        this.f16722b.get(i10).getClass();
        throw new ClassCastException();
    }

    @Override // android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        k kVar = this.f16721a;
        int i11 = kVar.f16745x;
        if (view == null) {
            view = LayoutInflater.from(kVar.f16739p.getContext()).inflate(R.layout.default_completion_result_item, viewGroup, false);
        }
        if (this.f16722b.get(i10) != null) {
            throw new ClassCastException();
        }
        throw null;
    }
}
