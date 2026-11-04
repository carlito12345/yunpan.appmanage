package q;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* loaded from: classes.dex */
public final class b implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f12779a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f12780b;

    public b(c cVar, e eVar) {
        this.f12780b = cVar;
        this.f12779a = eVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
        c cVar = this.f12780b;
        DialogInterface.OnClickListener onClickListener = cVar.l;
        e eVar = this.f12779a;
        onClickListener.onClick(eVar.f12809b, i10);
        if (cVar.f12794n) {
            return;
        }
        eVar.f12809b.dismiss();
    }
}
