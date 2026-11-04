package w;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class a2 implements AdapterView.OnItemSelectedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17001a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f17002b;

    public /* synthetic */ a2(int i10, Object obj) {
        this.f17001a = i10;
        this.f17002b = obj;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
        t1 t1Var;
        switch (this.f17001a) {
            case 0:
                if (i10 != -1 && (t1Var = ((g2) this.f17002b).f17070c) != null) {
                    t1Var.setListSelectionHidden(false);
                    break;
                }
                break;
            default:
                ((SearchView) this.f17002b).q(i10);
                break;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i10 = this.f17001a;
    }

    private final void a(AdapterView adapterView) {
    }

    private final void b(AdapterView adapterView) {
    }
}
