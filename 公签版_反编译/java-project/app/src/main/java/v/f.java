package v;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.yunpan.appmanage.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class f extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    public int f16219a = -1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f16220b;

    public f(g gVar) {
        this.f16220b = gVar;
        a();
    }

    public final void a() {
        k kVar = this.f16220b.f16223c;
        m mVar = kVar.f16252x;
        if (mVar != null) {
            kVar.i();
            ArrayList arrayList = kVar.f16242j;
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (((m) arrayList.get(i10)) == mVar) {
                    this.f16219a = i10;
                    return;
                }
            }
        }
        this.f16219a = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final m getItem(int i10) {
        g gVar = this.f16220b;
        k kVar = gVar.f16223c;
        kVar.i();
        ArrayList arrayList = kVar.f16242j;
        gVar.getClass();
        int i11 = this.f16219a;
        if (i11 >= 0 && i10 >= i11) {
            i10++;
        }
        return (m) arrayList.get(i10);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        g gVar = this.f16220b;
        k kVar = gVar.f16223c;
        kVar.i();
        int size = kVar.f16242j.size();
        gVar.getClass();
        return this.f16219a < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f16220b.f16222b.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
        }
        ((y) view).c(getItem(i10));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
