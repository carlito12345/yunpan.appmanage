package v3;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m1;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class k extends m1 {

    /* renamed from: d, reason: collision with root package name */
    public final String[] f16514d;

    /* renamed from: e, reason: collision with root package name */
    public final float[] f16515e;

    /* renamed from: f, reason: collision with root package name */
    public int f16516f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ t f16517g;

    public k(t tVar, String[] strArr, float[] fArr) {
        this.f16517g = tVar;
        this.f16514d = strArr;
        this.f16515e = fArr;
    }

    @Override // androidx.recyclerview.widget.m1
    public final int b() {
        return this.f16514d.length;
    }

    @Override // androidx.recyclerview.widget.m1
    public final void g(RecyclerView.ViewHolder viewHolder, final int i10) {
        o oVar = (o) viewHolder;
        String[] strArr = this.f16514d;
        if (i10 < strArr.length) {
            oVar.f16528a.setText(strArr[i10]);
        }
        int i11 = this.f16516f;
        View view = oVar.f16529b;
        if (i10 == i11) {
            oVar.itemView.setSelected(true);
            view.setVisibility(0);
        } else {
            oVar.itemView.setSelected(false);
            view.setVisibility(4);
        }
        oVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: v3.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                k kVar = this.f16489a;
                int i12 = kVar.f16516f;
                int i13 = i10;
                t tVar = kVar.f16517g;
                if (i13 != i12) {
                    tVar.setPlaybackSpeed(kVar.f16515e[i13]);
                }
                tVar.f16577s.dismiss();
            }
        });
    }

    @Override // androidx.recyclerview.widget.m1
    public final RecyclerView.ViewHolder i(int i10, ViewGroup viewGroup) {
        return new o(LayoutInflater.from(this.f16517g.getContext()).inflate(R.layout.exo_styled_sub_settings_list_item, viewGroup, false));
    }
}
