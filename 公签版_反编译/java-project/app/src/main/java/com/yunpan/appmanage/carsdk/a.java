package com.yunpan.appmanage.carsdk;

import a2.w0;
import android.widget.ListView;
import fa.l0;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3782a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3783b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3784c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3785d;

    public /* synthetic */ a(Object obj, int i10, int i11, int i12) {
        this.f3782a = i12;
        this.f3785d = obj;
        this.f3783b = i10;
        this.f3784c = i11;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3782a) {
            case 0:
                e eVar = (e) this.f3785d;
                d dVar = eVar.f3796d;
                if (dVar != null) {
                    int i10 = this.f3783b;
                    int i11 = this.f3784c;
                    try {
                        if (i10 != 0) {
                            boolean z = true;
                            if (i10 != 1) {
                                if (i10 == 4) {
                                    if (i11 == 1) {
                                        if (eVar.f3793a.getItemValue(4, i11) != 1) {
                                            z = false;
                                        }
                                        dVar.a(z);
                                    } else if (i11 == 14) {
                                        eVar.f3796d.o(eVar.f3793a.getItemValue(4, i11));
                                    } else if (i11 == 26) {
                                        eVar.f3796d.b(eVar.f3793a.getItemValue(4, i11));
                                    }
                                }
                            } else if (i11 != 22) {
                                break;
                            } else {
                                eVar.f3796d.i(eVar.f3793a.getItemValue(1, i11));
                            }
                        } else {
                            eVar.g(i11);
                        }
                        break;
                    } catch (Exception unused) {
                        return;
                    }
                }
                break;
            case 1:
                ((l0) ((hi.a) this.f3785d).f8207a).a(this.f3783b, this.f3784c);
                break;
            default:
                w0 w0Var = (w0) this.f3785d;
                w0Var.getClass();
                int i12 = this.f3783b;
                int i13 = this.f3784c;
                if (i12 == 0 && i13 == 0) {
                    ((ListView) w0Var.f346b).setSelectionFromTop(0, 0);
                    break;
                } else {
                    for (int i14 = 0; ((ListView) w0Var.f346b).getFirstVisiblePosition() + 1 > i12 && ((ListView) w0Var.f346b).canScrollList(-1) && i14 < 100; i14++) {
                        w0Var.T(i13 / 2);
                    }
                    for (int i15 = 0; ((ListView) w0Var.f346b).getLastVisiblePosition() - 1 < i12 && ((ListView) w0Var.f346b).canScrollList(1) && i15 < 100; i15++) {
                        w0Var.T((-i13) / 2);
                    }
                }
        }
    }
}
