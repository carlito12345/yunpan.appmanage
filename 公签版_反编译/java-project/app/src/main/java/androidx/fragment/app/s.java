package androidx.fragment.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public class s extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final p f1381a;

    /* renamed from: b, reason: collision with root package name */
    public final q f1382b;

    /* renamed from: c, reason: collision with root package name */
    public int f1383c;

    /* renamed from: d, reason: collision with root package name */
    public int f1384d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1385e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f1386f;

    /* renamed from: g, reason: collision with root package name */
    public int f1387g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1388h;

    /* renamed from: i, reason: collision with root package name */
    public final y f1389i;

    /* renamed from: j, reason: collision with root package name */
    public Dialog f1390j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f1391k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1392m;

    public s() {
        new o(0, this);
        this.f1381a = new p(this);
        this.f1382b = new q(this);
        this.f1383c = 0;
        this.f1384d = 0;
        this.f1385e = true;
        this.f1386f = true;
        this.f1387g = -1;
        this.f1389i = new y(1, this);
        this.f1392m = false;
    }

    @Override // androidx.fragment.app.Fragment
    public final m0 createFragmentContainer() {
        return new r(this, super.createFragmentContainer());
    }

    public Dialog g() {
        if (Log.isLoggable("FragmentManager", 3)) {
            toString();
        }
        return new androidx.activity.n(requireContext(), this.f1384d);
    }

    public final Dialog h() {
        Dialog dialog = this.f1390j;
        if (dialog != null) {
            return dialog;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        getViewLifecycleOwnerLiveData().d(this.f1389i);
        this.l = false;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        new Handler();
        this.f1386f = this.mContainerId == 0;
        if (bundle != null) {
            this.f1383c = bundle.getInt("android:style", 0);
            this.f1384d = bundle.getInt("android:theme", 0);
            this.f1385e = bundle.getBoolean("android:cancelable", true);
            this.f1386f = bundle.getBoolean("android:showsDialog", this.f1386f);
            this.f1387g = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.f1390j;
        if (dialog != null) {
            this.f1391k = true;
            dialog.setOnDismissListener(null);
            this.f1390j.dismiss();
            if (!this.l) {
                onDismiss(this.f1390j);
            }
            this.f1390j = null;
            this.f1392m = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        if (!this.l) {
            this.l = true;
        }
        androidx.lifecycle.z viewLifecycleOwnerLiveData = getViewLifecycleOwnerLiveData();
        y yVar = this.f1389i;
        viewLifecycleOwnerLiveData.getClass();
        androidx.lifecycle.z.a("removeObserver");
        androidx.lifecycle.y yVar2 = (androidx.lifecycle.y) viewLifecycleOwnerLiveData.f1833b.b(yVar);
        if (yVar2 == null) {
            return;
        }
        yVar2.d();
        yVar2.c(false);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.f1391k) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            toString();
        }
        if (this.l) {
            return;
        }
        this.l = true;
        Dialog dialog = this.f1390j;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f1390j.dismiss();
        }
        this.f1391k = true;
        if (this.f1387g < 0) {
            d1 parentFragmentManager = getParentFragmentManager();
            parentFragmentManager.getClass();
            a aVar = new a(parentFragmentManager);
            aVar.f1174o = true;
            aVar.i(this);
            aVar.d(true);
            return;
        }
        d1 parentFragmentManager2 = getParentFragmentManager();
        int i10 = this.f1387g;
        parentFragmentManager2.getClass();
        if (i10 < 0) {
            throw new IllegalArgumentException(da.b.a(i10, "Bad id: "));
        }
        parentFragmentManager2.w(new c1(parentFragmentManager2, i10), true);
        this.f1387g = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0046 A[Catch: all -> 0x004e, TryCatch #0 {all -> 0x004e, blocks: (B:12:0x001a, B:14:0x0026, B:24:0x003e, B:26:0x0046, B:29:0x0050, B:20:0x0030, B:22:0x0036, B:23:0x003b, B:30:0x0068), top: B:45:0x001a }] */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final LayoutInflater onGetLayoutInflater(Bundle bundle) {
        Context context;
        LayoutInflater layoutInflaterOnGetLayoutInflater = super.onGetLayoutInflater(bundle);
        boolean z = this.f1386f;
        if (!z || this.f1388h) {
            if (Log.isLoggable("FragmentManager", 2)) {
                toString();
            }
            return layoutInflaterOnGetLayoutInflater;
        }
        if (z && !this.f1392m) {
            try {
                this.f1388h = true;
                Dialog dialogG = g();
                this.f1390j = dialogG;
                if (this.f1386f) {
                    int i10 = this.f1383c;
                    if (i10 == 1 || i10 == 2) {
                        dialogG.requestWindowFeature(1);
                        context = getContext();
                        if (context instanceof Activity) {
                            this.f1390j.setOwnerActivity((Activity) context);
                        }
                        this.f1390j.setCancelable(this.f1385e);
                        this.f1390j.setOnCancelListener(this.f1381a);
                        this.f1390j.setOnDismissListener(this.f1382b);
                        this.f1392m = true;
                    } else if (i10 == 3) {
                        Window window = dialogG.getWindow();
                        if (window != null) {
                            window.addFlags(24);
                        }
                        dialogG.requestWindowFeature(1);
                        context = getContext();
                        if (context instanceof Activity) {
                        }
                        this.f1390j.setCancelable(this.f1385e);
                        this.f1390j.setOnCancelListener(this.f1381a);
                        this.f1390j.setOnDismissListener(this.f1382b);
                        this.f1392m = true;
                    } else {
                        context = getContext();
                        if (context instanceof Activity) {
                        }
                        this.f1390j.setCancelable(this.f1385e);
                        this.f1390j.setOnCancelListener(this.f1381a);
                        this.f1390j.setOnDismissListener(this.f1382b);
                        this.f1392m = true;
                    }
                } else {
                    this.f1390j = null;
                }
                this.f1388h = false;
            } catch (Throwable th2) {
                this.f1388h = false;
                throw th2;
            }
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            toString();
        }
        Dialog dialog = this.f1390j;
        return dialog != null ? layoutInflaterOnGetLayoutInflater.cloneInContext(dialog.getContext()) : layoutInflaterOnGetLayoutInflater;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.f1390j;
        if (dialog != null) {
            Bundle bundleOnSaveInstanceState = dialog.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", bundleOnSaveInstanceState);
        }
        int i10 = this.f1383c;
        if (i10 != 0) {
            bundle.putInt("android:style", i10);
        }
        int i11 = this.f1384d;
        if (i11 != 0) {
            bundle.putInt("android:theme", i11);
        }
        boolean z = this.f1385e;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z4 = this.f1386f;
        if (!z4) {
            bundle.putBoolean("android:showsDialog", z4);
        }
        int i12 = this.f1387g;
        if (i12 != -1) {
            bundle.putInt("android:backStackId", i12);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = this.f1390j;
        if (dialog != null) {
            this.f1391k = false;
            dialog.show();
            View decorView = this.f1390j.getWindow().getDecorView();
            androidx.lifecycle.l0.h(decorView, this);
            decorView.setTag(R.id.view_tree_view_model_store_owner, this);
            nh.b.j0(decorView, this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        Dialog dialog = this.f1390j;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewStateRestored(Bundle bundle) {
        Bundle bundle2;
        super.onViewStateRestored(bundle);
        if (this.f1390j == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f1390j.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.Fragment
    public final void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.performCreateView(layoutInflater, viewGroup, bundle);
        if (this.mView != null || this.f1390j == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f1390j.onRestoreInstanceState(bundle2);
    }
}
