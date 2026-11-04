package c1;

import android.database.DataSetObserver;
import com.google.android.material.tabs.TabLayout;
import k4.g;
import w.g2;

/* loaded from: classes.dex */
public final class b extends DataSetObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2844a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2845b;

    public /* synthetic */ b(int i10, Object obj) {
        this.f2844a = i10;
        this.f2845b = obj;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        switch (this.f2844a) {
            case 0:
                c cVar = (c) this.f2845b;
                cVar.f2846a = true;
                cVar.notifyDataSetChanged();
                break;
            case 1:
                ((g) this.f2845b).c();
                break;
            case 2:
                ((TabLayout) this.f2845b).h();
                break;
            default:
                g2 g2Var = (g2) this.f2845b;
                if (g2Var.B.isShowing()) {
                    g2Var.show();
                    break;
                }
                break;
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        switch (this.f2844a) {
            case 0:
                c cVar = (c) this.f2845b;
                cVar.f2846a = false;
                cVar.notifyDataSetInvalidated();
                break;
            case 1:
                ((g) this.f2845b).c();
                break;
            case 2:
                ((TabLayout) this.f2845b).h();
                break;
            default:
                ((g2) this.f2845b).dismiss();
                break;
        }
    }
}
