package com.yunpan.appmanage.carsdk;

import android.os.IBinder;
import com.autolink.adapterinterface.IHardKeyCallback;

/* loaded from: classes.dex */
public final class c0 extends IHardKeyCallback.Stub {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ h0 f3790e;

    public c0(h0 h0Var) {
        this.f3790e = h0Var;
    }

    @Override // com.autolink.adapterinterface.IHardKeyCallback.Stub, android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // com.autolink.adapterinterface.IHardKeyCallback
    public final void onKeyEvent(int i10, int i11, int i12) {
        IHardKeyCallback.Stub stub = this.f3790e.f3818g;
        if (stub != null) {
            stub.onKeyEvent(i10, i11, i12);
        }
    }

    @Override // com.autolink.adapterinterface.IHardKeyCallback
    public final void onKeyPressed(int i10) {
        h0 h0Var = this.f3790e;
        IHardKeyCallback.Stub stub = h0Var.f3818g;
        if (stub != null) {
            stub.onKeyPressed(i10);
        }
        if (h0Var.G == null) {
            return;
        }
        try {
            if (h0Var.f3830u > 0 && h0Var.f3832w > 0 && System.currentTimeMillis() - h0Var.f3831v < 601 && h0Var.f3832w == i10) {
                h0Var.f3834y.removeCallbacks(h0Var.z);
                h0Var.f3834y.removeCallbacks(h0Var.A);
                h0Var.f3833x.add(Integer.valueOf(i10));
                h0Var.G.b(((z7.s) h0Var.H.get(Integer.valueOf(h0Var.f3830u))).p("zhClick"));
                h0Var.f3830u = -1;
                h0Var.f3831v = 0L;
                h0Var.f3832w = 0;
                return;
            }
            if (h0Var.f3832w > 0) {
                h0Var.f3832w = 0;
            }
            z7.s sVar = (z7.s) h0Var.H.get(Integer.valueOf(i10));
            if (sVar == null) {
                return;
            }
            if (h0Var.f3830u == i10 && System.currentTimeMillis() - h0Var.f3831v < 300 && !sVar.p("doubleClick").f19478a.isEmpty()) {
                h0Var.f3834y.removeCallbacks(h0Var.z);
                h0Var.f3834y.removeCallbacks(h0Var.A);
                h0Var.f3833x.add(Integer.valueOf(i10));
                h0Var.G.b(sVar.p("doubleClick"));
                h0Var.f3830u = -1;
                h0Var.f3831v = 0L;
                h0Var.f3832w = 0;
                return;
            }
            h0Var.f3830u = i10;
            h0Var.f3831v = System.currentTimeMillis();
            int iE = sVar.o("key2").e();
            h0Var.f3832w = iE;
            boolean z = iE > 0 && !sVar.p("zhClick").f19478a.isEmpty();
            if (!sVar.p("longClick").f19478a.isEmpty()) {
                h0Var.f3834y.postDelayed(h0Var.z, z ? 600L : 300L);
            }
            if (sVar.p("click").f19478a.isEmpty()) {
                return;
            }
            if (z) {
                h0Var.f3834y.postDelayed(h0Var.A, 600L);
                return;
            }
            if (!sVar.p("longClick").f19478a.isEmpty()) {
                h0Var.f3834y.postDelayed(h0Var.A, 300L);
            } else if (sVar.p("doubleClick").f19478a.isEmpty()) {
                h0Var.G.b(sVar.p("click"));
            } else {
                h0Var.f3834y.postDelayed(h0Var.A, 300L);
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    @Override // com.autolink.adapterinterface.IHardKeyCallback
    public final void onKeyReleased(int i10) {
        h0 h0Var = this.f3790e;
        IHardKeyCallback.Stub stub = h0Var.f3818g;
        if (stub != null) {
            stub.onKeyReleased(i10);
        }
        if (h0Var.G == null) {
            return;
        }
        try {
            if (h0Var.f3833x.contains(Integer.valueOf(i10))) {
                h0Var.f3833x.remove(Integer.valueOf(i10));
            } else {
                if (((z7.s) h0Var.H.get(Integer.valueOf(i10))) == null) {
                    return;
                }
                h0Var.f3834y.removeCallbacks(h0Var.z);
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }
}
