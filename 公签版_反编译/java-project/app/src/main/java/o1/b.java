package o1;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.leanback.widget.VerticalGridView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m1;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b extends m1 {

    /* renamed from: d, reason: collision with root package name */
    public final int f11487d;

    /* renamed from: e, reason: collision with root package name */
    public final int f11488e;

    /* renamed from: f, reason: collision with root package name */
    public final int f11489f;

    /* renamed from: g, reason: collision with root package name */
    public final e f11490g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ d f11491h;

    public b(d dVar, int i10, int i11, int i12) {
        this.f11491h = dVar;
        this.f11487d = i10;
        this.f11488e = i12;
        this.f11489f = i11;
        this.f11490g = (e) dVar.f11495c.get(i12);
    }

    @Override // androidx.recyclerview.widget.m1
    public final int b() {
        e eVar = this.f11490g;
        if (eVar == null) {
            return 0;
        }
        return (eVar.f11509c - eVar.f11508b) + 1;
    }

    @Override // androidx.recyclerview.widget.m1
    public final void g(RecyclerView.ViewHolder viewHolder, int i10) {
        e eVar;
        c cVar = (c) viewHolder;
        TextView textView = cVar.f11492a;
        if (textView != null && (eVar = this.f11490g) != null) {
            int i11 = eVar.f11508b + i10;
            CharSequence[] charSequenceArr = eVar.f11510d;
            textView.setText(charSequenceArr == null ? String.format(eVar.f11511e, Integer.valueOf(i11)) : charSequenceArr[i11]);
        }
        View view = cVar.itemView;
        d dVar = this.f11491h;
        ArrayList arrayList = dVar.f11494b;
        int i12 = this.f11488e;
        dVar.c(view, ((VerticalGridView) arrayList.get(i12)).getSelectedPosition() == i10, i12, false);
    }

    @Override // androidx.recyclerview.widget.m1
    public final RecyclerView.ViewHolder i(int i10, ViewGroup viewGroup) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.f11487d, viewGroup, false);
        int i11 = this.f11489f;
        return new c(viewInflate, i11 != 0 ? (TextView) viewInflate.findViewById(i11) : (TextView) viewInflate);
    }

    @Override // androidx.recyclerview.widget.m1
    public final void l(RecyclerView.ViewHolder viewHolder) {
        ((c) viewHolder).itemView.setFocusable(this.f11491h.isActivated());
    }
}
