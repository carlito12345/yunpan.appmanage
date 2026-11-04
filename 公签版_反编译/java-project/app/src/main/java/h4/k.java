package h4;

import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class k implements s {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f6440a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f6441b;

    public k(View view, ArrayList arrayList) {
        this.f6440a = view;
        this.f6441b = arrayList;
    }

    @Override // h4.s
    public final void c(t tVar) {
        tVar.v(this);
        this.f6440a.setVisibility(8);
        ArrayList arrayList = this.f6441b;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((View) arrayList.get(i10)).setVisibility(0);
        }
    }

    @Override // h4.s
    public final void d(t tVar) {
        tVar.v(this);
        tVar.a(this);
    }

    @Override // h4.s
    public final void a() {
    }

    @Override // h4.s
    public final void b() {
    }

    @Override // h4.s
    public final void e() {
    }
}
