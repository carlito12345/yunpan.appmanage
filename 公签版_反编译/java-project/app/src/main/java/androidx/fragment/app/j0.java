package androidx.fragment.app;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public abstract class j0 extends androidx.activity.m implements m0.e {

    /* renamed from: t, reason: collision with root package name */
    public final y f1307t;

    /* renamed from: w, reason: collision with root package name */
    public boolean f1309w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f1310x;

    /* renamed from: v, reason: collision with root package name */
    public final androidx.lifecycle.v f1308v = new androidx.lifecycle.v(this);

    /* renamed from: y, reason: collision with root package name */
    public boolean f1311y = true;

    public j0() {
        final q.i iVar = (q.i) this;
        this.f1307t = new y(3, new i0(iVar));
        this.f807e.f2550b.c("android:support:lifecycle", new f0(0, iVar));
        final int i10 = 0;
        b(new w0.a() { // from class: androidx.fragment.app.g0
            @Override // w0.a
            public final void accept(Object obj) {
                switch (i10) {
                    case 0:
                        iVar.f1307t.a();
                        break;
                    default:
                        iVar.f1307t.a();
                        break;
                }
            }
        });
        final int i11 = 1;
        this.f815n.add(new w0.a() { // from class: androidx.fragment.app.g0
            @Override // w0.a
            public final void accept(Object obj) {
                switch (i11) {
                    case 0:
                        iVar.f1307t.a();
                        break;
                    default:
                        iVar.f1307t.a();
                        break;
                }
            }
        });
        o(new m.a() { // from class: androidx.fragment.app.h0
            @Override // m.a
            public final void a() {
                i0 i0Var = (i0) iVar.f1307t.f1426b;
                i0Var.f1362d.b(i0Var, i0Var, null);
            }
        });
    }

    public static boolean q(d1 d1Var) {
        boolean zQ = false;
        for (Fragment fragment : d1Var.f1231c.f()) {
            if (fragment != null) {
                if (fragment.getHost() != null) {
                    zQ |= q(fragment.getChildFragmentManager());
                }
                w1 w1Var = fragment.mViewLifecycleOwner;
                androidx.lifecycle.n nVar = androidx.lifecycle.n.STARTED;
                if (w1Var != null) {
                    w1Var.c();
                    if (w1Var.f1420d.f1818c.compareTo(nVar) >= 0) {
                        fragment.mViewLifecycleOwner.f1420d.g();
                        zQ = true;
                    }
                }
                if (fragment.mLifecycleRegistry.f1818c.compareTo(nVar) >= 0) {
                    fragment.mLifecycleRegistry.g();
                    zQ = true;
                }
            }
        }
        return zQ;
    }

    @Override // android.app.Activity
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (strArr != null && strArr.length > 0) {
            String str2 = strArr[0];
            str2.getClass();
            switch (str2) {
                case "--translation":
                    if (Build.VERSION.SDK_INT >= 31) {
                        return;
                    }
                    break;
                case "--dump-dumpable":
                case "--list-dumpables":
                    if (Build.VERSION.SDK_INT >= 33) {
                        return;
                    }
                    break;
                case "--contentcapture":
                    if (Build.VERSION.SDK_INT >= 29) {
                        return;
                    }
                    break;
                case "--autofill":
                    if (Build.VERSION.SDK_INT >= 26) {
                        return;
                    }
                    break;
            }
        }
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str3 = str + "  ";
        printWriter.print(str3);
        printWriter.print("mCreated=");
        printWriter.print(this.f1309w);
        printWriter.print(" mResumed=");
        printWriter.print(this.f1310x);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1311y);
        if (getApplication() != null) {
            v3.f fVar = new v3.f(getViewModelStore(), q1.b.f12929e);
            String canonicalName = q1.b.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            a0.u uVar = ((q1.b) fVar.w(q1.b.class, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName))).f12930d;
            if (uVar.f68c > 0) {
                printWriter.print(str3);
                printWriter.println("Loaders:");
                if (uVar.f68c > 0) {
                    if (uVar.e(0) != null) {
                        throw new ClassCastException();
                    }
                    printWriter.print(str3);
                    printWriter.print("  #");
                    printWriter.print(uVar.f66a[0]);
                    printWriter.print(": ");
                    throw null;
                }
            }
        }
        ((i0) this.f1307t.f1426b).f1362d.v(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.activity.m, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        this.f1307t.a();
        super.onActivityResult(i10, i11, intent);
    }

    @Override // androidx.activity.m, m0.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1308v.e(androidx.lifecycle.m.ON_CREATE);
        e1 e1Var = ((i0) this.f1307t.f1426b).f1362d;
        e1Var.E = false;
        e1Var.F = false;
        e1Var.L.f1283i = false;
        e1Var.t(1);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = ((i0) this.f1307t.f1426b).f1362d.f1234f.onCreateView(view, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ((i0) this.f1307t.f1426b).f1362d.k();
        this.f1308v.e(androidx.lifecycle.m.ON_DESTROY);
    }

    @Override // androidx.activity.m, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i10, MenuItem menuItem) {
        if (super.onMenuItemSelected(i10, menuItem)) {
            return true;
        }
        if (i10 == 6) {
            return ((i0) this.f1307t.f1426b).f1362d.i(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        this.f1310x = false;
        ((i0) this.f1307t.f1426b).f1362d.t(5);
        this.f1308v.e(androidx.lifecycle.m.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.f1308v.e(androidx.lifecycle.m.ON_RESUME);
        e1 e1Var = ((i0) this.f1307t.f1426b).f1362d;
        e1Var.E = false;
        e1Var.F = false;
        e1Var.L.f1283i = false;
        e1Var.t(7);
    }

    @Override // androidx.activity.m, android.app.Activity
    public final void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        this.f1307t.a();
        super.onRequestPermissionsResult(i10, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        y yVar = this.f1307t;
        yVar.a();
        super.onResume();
        this.f1310x = true;
        ((i0) yVar.f1426b).f1362d.y(true);
    }

    @Override // android.app.Activity
    public void onStart() {
        y yVar = this.f1307t;
        yVar.a();
        super.onStart();
        this.f1311y = false;
        boolean z = this.f1309w;
        i0 i0Var = (i0) yVar.f1426b;
        if (!z) {
            this.f1309w = true;
            e1 e1Var = i0Var.f1362d;
            e1Var.E = false;
            e1Var.F = false;
            e1Var.L.f1283i = false;
            e1Var.t(4);
        }
        i0Var.f1362d.y(true);
        this.f1308v.e(androidx.lifecycle.m.ON_START);
        e1 e1Var2 = i0Var.f1362d;
        e1Var2.E = false;
        e1Var2.F = false;
        e1Var2.L.f1283i = false;
        e1Var2.t(5);
    }

    @Override // android.app.Activity
    public final void onStateNotSaved() {
        this.f1307t.a();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f1311y = true;
        while (q(p())) {
        }
        e1 e1Var = ((i0) this.f1307t.f1426b).f1362d;
        e1Var.F = true;
        e1Var.L.f1283i = true;
        e1Var.t(4);
        this.f1308v.e(androidx.lifecycle.m.ON_STOP);
    }

    public final e1 p() {
        return ((i0) this.f1307t.f1426b).f1362d;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = ((i0) this.f1307t.f1426b).f1362d.f1234f.onCreateView(null, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewOnCreateView;
    }
}
