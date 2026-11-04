package v3;

import android.widget.ImageView;
import com.yunpan.appmanage.R;
import java.util.List;
import ua.z6;

/* loaded from: classes.dex */
public final class p extends r {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ t f16530f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(t tVar) {
        super(tVar);
        this.f16530f = tVar;
    }

    @Override // v3.r, androidx.recyclerview.widget.m1
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public final void g(o oVar, int i10) {
        super.g(oVar, i10);
        if (i10 > 0) {
            q qVar = (q) this.f16541d.get(i10 - 1);
            oVar.f16529b.setVisibility(qVar.f16532a.f13623e[qVar.f16533b] ? 0 : 4);
        }
    }

    @Override // v3.r
    public final void q(o oVar) {
        oVar.f16528a.setText(R.string.exo_track_selection_none);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i11 >= this.f16541d.size()) {
                break;
            }
            q qVar = (q) this.f16541d.get(i11);
            if (qVar.f16532a.f13623e[qVar.f16533b]) {
                i10 = 4;
                break;
            }
            i11++;
        }
        oVar.f16529b.setVisibility(i10);
        oVar.itemView.setOnClickListener(new z6(9, this));
    }

    public final void s(List list) {
        boolean z = false;
        int i10 = 0;
        while (true) {
            if (i10 >= list.size()) {
                break;
            }
            q qVar = (q) list.get(i10);
            if (qVar.f16532a.f13623e[qVar.f16533b]) {
                z = true;
                break;
            }
            i10++;
        }
        t tVar = this.f16530f;
        ImageView imageView = tVar.F;
        if (imageView != null) {
            imageView.setImageDrawable(z ? tVar.Y0 : tVar.Z0);
            tVar.F.setContentDescription(z ? tVar.f16545a1 : tVar.f16547b1);
        }
        this.f16541d = list;
    }

    @Override // v3.r
    public final void r(String str) {
    }
}
