package v;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class h extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final k f16227a;

    /* renamed from: b, reason: collision with root package name */
    public int f16228b = -1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f16229c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f16230d;

    /* renamed from: e, reason: collision with root package name */
    public final LayoutInflater f16231e;

    /* renamed from: f, reason: collision with root package name */
    public final int f16232f;

    public h(k kVar, LayoutInflater layoutInflater, boolean z, int i10) {
        this.f16230d = z;
        this.f16231e = layoutInflater;
        this.f16227a = kVar;
        this.f16232f = i10;
        a();
    }

    public final void a() {
        k kVar = this.f16227a;
        m mVar = kVar.f16252x;
        if (mVar != null) {
            kVar.i();
            ArrayList arrayList = kVar.f16242j;
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (((m) arrayList.get(i10)) == mVar) {
                    this.f16228b = i10;
                    return;
                }
            }
        }
        this.f16228b = -1;
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final m getItem(int i10) {
        ArrayList arrayListL;
        k kVar = this.f16227a;
        if (this.f16230d) {
            kVar.i();
            arrayListL = kVar.f16242j;
        } else {
            arrayListL = kVar.l();
        }
        int i11 = this.f16228b;
        if (i11 >= 0 && i10 >= i11) {
            i10++;
        }
        return (m) arrayListL.get(i10);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList arrayListL;
        k kVar = this.f16227a;
        if (this.f16230d) {
            kVar.i();
            arrayListL = kVar.f16242j;
        } else {
            arrayListL = kVar.l();
        }
        return this.f16228b < 0 ? arrayListL.size() : arrayListL.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        boolean z = false;
        if (view == null) {
            view = this.f16231e.inflate(this.f16232f, viewGroup, false);
        }
        int i11 = getItem(i10).f16258b;
        int i12 = i10 - 1;
        int i13 = i12 >= 0 ? getItem(i12).f16258b : i11;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f16227a.m() && i11 != i13) {
            z = true;
        }
        listMenuItemView.setGroupDividerEnabled(z);
        y yVar = (y) view;
        if (this.f16229c) {
            listMenuItemView.setForceShowIcon(true);
        }
        yVar.c(getItem(i10));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
