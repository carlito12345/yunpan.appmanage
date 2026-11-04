package da;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public abstract class h extends Fragment {

    /* renamed from: a, reason: collision with root package name */
    public View f4525a = null;

    /* renamed from: b, reason: collision with root package name */
    public boolean f4526b = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4527c = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f4528d = true;

    /* renamed from: e, reason: collision with root package name */
    public Context f4529e;

    /* renamed from: f, reason: collision with root package name */
    public Activity f4530f;

    public final void g(boolean z) {
        for (Fragment fragment : getChildFragmentManager().f1231c.f()) {
            if ((fragment instanceof h) && !fragment.isHidden() && fragment.getUserVisibleHint()) {
                ((h) fragment).h(z);
            }
        }
    }

    public final void h(boolean z) {
        if (z) {
            if (getParentFragment() instanceof h ? !((h) r2).f4527c : false) {
                return;
            }
        }
        if (this.f4527c == z) {
            return;
        }
        this.f4527c = z;
        if (!z) {
            g(false);
            return;
        }
        if (this.f4528d) {
            this.f4528d = false;
            k();
        }
        g(true);
    }

    public final View i(int i10) {
        View view = this.f4525a;
        if (view != null) {
            return view.findViewById(i10);
        }
        return null;
    }

    public abstract int j();

    public abstract void k();

    public final void l(Class cls) {
        startActivity(new Intent(this.f4529e, (Class<?>) cls));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        this.f4529e = context;
        this.f4530f = (Activity) context;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f4525a == null) {
            this.f4525a = layoutInflater.inflate(j(), viewGroup, false);
        }
        this.f4526b = true;
        return this.f4525a;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.f4526b = false;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z) {
            h(false);
        } else {
            h(true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        if (this.f4527c && getUserVisibleHint()) {
            h(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.f4528d || isHidden() || this.f4527c || !getUserVisibleHint()) {
            return;
        }
        h(true);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (isHidden() || !getUserVisibleHint()) {
            return;
        }
        h(true);
    }

    @Override // androidx.fragment.app.Fragment
    public final void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (this.f4526b) {
            if (z && !this.f4527c) {
                h(true);
            } else {
                if (z || !this.f4527c) {
                    return;
                }
                h(false);
            }
        }
    }

    public void m() {
    }
}
