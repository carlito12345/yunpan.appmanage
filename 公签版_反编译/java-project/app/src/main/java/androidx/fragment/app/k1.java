package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class k1 {

    /* renamed from: a, reason: collision with root package name */
    public final k0 f1318a;

    /* renamed from: b, reason: collision with root package name */
    public final l1 f1319b;

    /* renamed from: c, reason: collision with root package name */
    public final Fragment f1320c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1321d = false;

    /* renamed from: e, reason: collision with root package name */
    public int f1322e = -1;

    public k1(k0 k0Var, l1 l1Var, Fragment fragment) {
        this.f1318a = k0Var;
        this.f1319b = l1Var;
        this.f1320c = fragment;
    }

    public final void a() {
        Fragment fragment;
        View view;
        View view2;
        int iIndexOfChild = -1;
        Fragment fragment2 = this.f1320c;
        View view3 = fragment2.mContainer;
        while (true) {
            fragment = null;
            if (view3 == null) {
                break;
            }
            Object tag = view3.getTag(R.id.fragment_container_view_tag);
            Fragment fragment3 = tag instanceof Fragment ? (Fragment) tag : null;
            if (fragment3 != null) {
                fragment = fragment3;
                break;
            } else {
                Object parent = view3.getParent();
                view3 = parent instanceof View ? (View) parent : null;
            }
        }
        Fragment parentFragment = fragment2.getParentFragment();
        if (fragment != null && !fragment.equals(parentFragment)) {
            int i10 = fragment2.mContainerId;
            l1.c cVar = l1.d.f10386a;
            l1.d.b(new l1.a(fragment2, fragment, i10));
            l1.d.a(fragment2).getClass();
        }
        l1 l1Var = this.f1319b;
        l1Var.getClass();
        ViewGroup viewGroup = fragment2.mContainer;
        if (viewGroup != null) {
            ArrayList arrayList = l1Var.f1333a;
            int iIndexOf = arrayList.indexOf(fragment2);
            int i11 = iIndexOf - 1;
            while (true) {
                if (i11 < 0) {
                    while (true) {
                        iIndexOf++;
                        if (iIndexOf >= arrayList.size()) {
                            break;
                        }
                        Fragment fragment4 = (Fragment) arrayList.get(iIndexOf);
                        if (fragment4.mContainer == viewGroup && (view = fragment4.mView) != null) {
                            iIndexOfChild = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    Fragment fragment5 = (Fragment) arrayList.get(i11);
                    if (fragment5.mContainer == viewGroup && (view2 = fragment5.mView) != null) {
                        iIndexOfChild = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i11--;
                }
            }
        }
        fragment2.mContainer.addView(fragment2.mView, iIndexOfChild);
    }

    public final void b() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        Fragment fragment = this.f1320c;
        if (zIsLoggable && fragment != null) {
            fragment.toString();
        }
        Fragment fragment2 = fragment.mTarget;
        k1 k1Var = null;
        l1 l1Var = this.f1319b;
        if (fragment2 != null) {
            k1 k1Var2 = (k1) l1Var.f1334b.get(fragment2.mWho);
            if (k1Var2 == null) {
                throw new IllegalStateException("Fragment " + fragment + " declared target fragment " + fragment.mTarget + " that does not belong to this FragmentManager!");
            }
            fragment.mTargetWho = fragment.mTarget.mWho;
            fragment.mTarget = null;
            k1Var = k1Var2;
        } else {
            String str = fragment.mTargetWho;
            if (str != null && (k1Var = (k1) l1Var.f1334b.get(str)) == null) {
                StringBuilder sb2 = new StringBuilder("Fragment ");
                sb2.append(fragment);
                sb2.append(" declared target fragment ");
                throw new IllegalStateException(g.b.l(fragment.mTargetWho, " that does not belong to this FragmentManager!", sb2));
            }
        }
        if (k1Var != null) {
            k1Var.i();
        }
        d1 d1Var = fragment.mFragmentManager;
        fragment.mHost = d1Var.f1246t;
        fragment.mParentFragment = d1Var.f1248v;
        k0 k0Var = this.f1318a;
        k0Var.g(fragment, false);
        fragment.performAttach();
        k0Var.b(fragment, false);
    }

    public final int c() {
        Object next;
        Fragment fragment = this.f1320c;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int iMin = this.f1322e;
        int iOrdinal = fragment.mMaxState.ordinal();
        if (iOrdinal == 1) {
            iMin = Math.min(iMin, 0);
        } else if (iOrdinal == 2) {
            iMin = Math.min(iMin, 1);
        } else if (iOrdinal == 3) {
            iMin = Math.min(iMin, 5);
        } else if (iOrdinal != 4) {
            iMin = Math.min(iMin, -1);
        }
        if (fragment.mFromLayout) {
            if (fragment.mInLayout) {
                iMin = Math.max(this.f1322e, 2);
                View view = fragment.mView;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.f1322e < 4 ? Math.min(iMin, fragment.mState) : Math.min(iMin, 1);
            }
        }
        if (!fragment.mAdded) {
            iMin = Math.min(iMin, 1);
        }
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            n nVarH = n.h(viewGroup, fragment.getParentFragmentManager());
            nVarH.getClass();
            z1 z1VarF = nVarH.f(fragment);
            b2 b2Var = z1VarF != null ? z1VarF.f1437b : null;
            Iterator it = nVarH.f1352c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                z1 z1Var = (z1) next;
                if (ue.d.a(z1Var.f1438c, fragment) && !z1Var.f1441f) {
                    break;
                }
            }
            z1 z1Var2 = (z1) next;
            b2Var = z1Var2 != null ? z1Var2.f1437b : null;
            int i10 = b2Var == null ? -1 : d2.f1252a[b2Var.ordinal()];
            if (i10 != -1 && i10 != 1) {
                b2Var = b2Var;
            }
        }
        if (b2Var == b2.ADDING) {
            iMin = Math.min(iMin, 6);
        } else if (b2Var == b2.REMOVING) {
            iMin = Math.max(iMin, 3);
        } else if (fragment.mRemoving) {
            iMin = fragment.isInBackStack() ? Math.min(iMin, 1) : Math.min(iMin, -1);
        }
        if (fragment.mDeferStart && fragment.mState < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            fragment.toString();
        }
        return iMin;
    }

    public final void d() throws Resources.NotFoundException {
        String resourceName;
        Fragment fragment = this.f1320c;
        if (fragment.mFromLayout) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            fragment.toString();
        }
        Bundle bundle = fragment.mSavedFragmentState;
        ViewGroup viewGroup = null;
        Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
        LayoutInflater layoutInflaterPerformGetLayoutInflater = fragment.performGetLayoutInflater(bundle2);
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i10 = fragment.mContainerId;
            if (i10 != 0) {
                if (i10 == -1) {
                    throw new IllegalArgumentException(android.support.v4.media.session.a.q("Cannot create fragment ", fragment, " for a container view with no id"));
                }
                viewGroup = (ViewGroup) fragment.mFragmentManager.f1247u.n(i10);
                if (viewGroup == null) {
                    if (!fragment.mRestored) {
                        try {
                            resourceName = fragment.getResources().getResourceName(fragment.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.mContainerId) + " (" + resourceName + ") for fragment " + fragment);
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    l1.c cVar = l1.d.f10386a;
                    l1.d.b(new l1.a(fragment, viewGroup, 3));
                    l1.d.a(fragment).getClass();
                }
            }
        }
        fragment.mContainer = viewGroup;
        fragment.performCreateView(layoutInflaterPerformGetLayoutInflater, viewGroup, bundle2);
        if (fragment.mView != null) {
            if (Log.isLoggable("FragmentManager", 3)) {
                fragment.toString();
            }
            fragment.mView.setSaveFromParentEnabled(false);
            fragment.mView.setTag(R.id.fragment_container_view_tag, fragment);
            if (viewGroup != null) {
                a();
            }
            if (fragment.mHidden) {
                fragment.mView.setVisibility(8);
            }
            if (x0.b1.l(fragment.mView)) {
                x0.b1.v(fragment.mView);
            } else {
                View view = fragment.mView;
                view.addOnAttachStateChangeListener(new j1(view));
            }
            fragment.performViewCreated();
            this.f1318a.m(fragment, fragment.mView, bundle2, false);
            int visibility = fragment.mView.getVisibility();
            fragment.setPostOnViewCreatedAlpha(fragment.mView.getAlpha());
            if (fragment.mContainer != null && visibility == 0) {
                View viewFindFocus = fragment.mView.findFocus();
                if (viewFindFocus != null) {
                    fragment.setFocusedView(viewFindFocus);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        viewFindFocus.toString();
                        fragment.toString();
                    }
                }
                fragment.mView.setAlpha(0.0f);
            }
        }
        fragment.mState = 2;
    }

    public final void e() {
        Fragment fragmentB;
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        Fragment fragment = this.f1320c;
        if (zIsLoggable && fragment != null) {
            fragment.toString();
        }
        boolean zIsChangingConfigurations = true;
        boolean z = fragment.mRemoving && !fragment.isInBackStack();
        l1 l1Var = this.f1319b;
        if (z && !fragment.mBeingSaved) {
            l1Var.i(fragment.mWho, null);
        }
        if (!z) {
            g1 g1Var = l1Var.f1336d;
            if (!((g1Var.f1278d.containsKey(fragment.mWho) && g1Var.f1281g) ? g1Var.f1282h : true)) {
                String str = fragment.mTargetWho;
                if (str != null && (fragmentB = l1Var.b(str)) != null && fragmentB.mRetainInstance) {
                    fragment.mTarget = fragmentB;
                }
                fragment.mState = 0;
                return;
            }
        }
        o0 o0Var = fragment.mHost;
        if (o0Var instanceof androidx.lifecycle.w0) {
            zIsChangingConfigurations = l1Var.f1336d.f1282h;
        } else {
            j0 j0Var = o0Var.f1360b;
            if (j0Var instanceof Activity) {
                zIsChangingConfigurations = true ^ j0Var.isChangingConfigurations();
            }
        }
        if ((z && !fragment.mBeingSaved) || zIsChangingConfigurations) {
            g1 g1Var2 = l1Var.f1336d;
            g1Var2.getClass();
            if (Log.isLoggable("FragmentManager", 3)) {
                fragment.toString();
            }
            g1Var2.d(fragment.mWho, false);
        }
        fragment.performDestroy();
        this.f1318a.d(fragment, false);
        Iterator it = l1Var.d().iterator();
        while (it.hasNext()) {
            k1 k1Var = (k1) it.next();
            if (k1Var != null) {
                String str2 = fragment.mWho;
                Fragment fragment2 = k1Var.f1320c;
                if (str2.equals(fragment2.mTargetWho)) {
                    fragment2.mTarget = fragment;
                    fragment2.mTargetWho = null;
                }
            }
        }
        String str3 = fragment.mTargetWho;
        if (str3 != null) {
            fragment.mTarget = l1Var.b(str3);
        }
        l1Var.h(this);
    }

    public final void f() {
        View view;
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        Fragment fragment = this.f1320c;
        if (zIsLoggable) {
            android.support.v4.media.session.a.A(fragment);
        }
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        fragment.performDestroyView();
        this.f1318a.n(fragment, false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.e(null);
        fragment.mInLayout = false;
    }

    public final void g() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        Fragment fragment = this.f1320c;
        if (zIsLoggable && fragment != null) {
            fragment.toString();
        }
        fragment.performDetach();
        this.f1318a.e(fragment, false);
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        if (!fragment.mRemoving || fragment.isInBackStack()) {
            g1 g1Var = this.f1319b.f1336d;
            boolean z = true;
            if (g1Var.f1278d.containsKey(fragment.mWho) && g1Var.f1281g) {
                z = g1Var.f1282h;
            }
            if (!z) {
                return;
            }
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            fragment.toString();
        }
        fragment.initState();
    }

    public final void h() {
        Fragment fragment = this.f1320c;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (Log.isLoggable("FragmentManager", 3)) {
                android.support.v4.media.session.a.A(fragment);
            }
            Bundle bundle = fragment.mSavedFragmentState;
            Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
            fragment.performCreateView(fragment.performGetLayoutInflater(bundle2), null, bundle2);
            View view = fragment.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                fragment.mView.setTag(R.id.fragment_container_view_tag, fragment);
                if (fragment.mHidden) {
                    fragment.mView.setVisibility(8);
                }
                fragment.performViewCreated();
                this.f1318a.m(fragment, fragment.mView, bundle2, false);
                fragment.mState = 2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:176:0x018f, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        Bundle bundle;
        ViewGroup viewGroup3;
        boolean z = this.f1321d;
        Fragment fragment = this.f1320c;
        if (z) {
            if (!Log.isLoggable("FragmentManager", 2) || fragment == null) {
                return;
            }
            fragment.toString();
            return;
        }
        try {
            this.f1321d = true;
            boolean z4 = false;
            while (true) {
                int iC = c();
                int i10 = fragment.mState;
                c2 c2Var = c2.VISIBLE;
                c2 c2Var2 = c2.GONE;
                l1 l1Var = this.f1319b;
                if (iC == i10) {
                    if (!z4 && i10 == -1 && fragment.mRemoving && !fragment.isInBackStack() && !fragment.mBeingSaved) {
                        if (Log.isLoggable("FragmentManager", 3)) {
                            fragment.toString();
                        }
                        g1 g1Var = l1Var.f1336d;
                        g1Var.getClass();
                        if (Log.isLoggable("FragmentManager", 3)) {
                            fragment.toString();
                        }
                        g1Var.d(fragment.mWho, true);
                        l1Var.h(this);
                        if (Log.isLoggable("FragmentManager", 3)) {
                            fragment.toString();
                        }
                        fragment.initState();
                    }
                    if (fragment.mHiddenChanged) {
                        if (fragment.mView != null && (viewGroup = fragment.mContainer) != null) {
                            n nVarH = n.h(viewGroup, fragment.getParentFragmentManager());
                            boolean z10 = fragment.mHidden;
                            b2 b2Var = b2.NONE;
                            if (z10) {
                                nVarH.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    fragment.toString();
                                }
                                nVarH.b(c2Var2, b2Var, this);
                            } else {
                                nVarH.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    fragment.toString();
                                }
                                nVarH.b(c2Var, b2Var, this);
                            }
                        }
                        d1 d1Var = fragment.mFragmentManager;
                        if (d1Var != null && fragment.mAdded && d1.H(fragment)) {
                            d1Var.D = true;
                        }
                        fragment.mHiddenChanged = false;
                        fragment.onHiddenChanged(fragment.mHidden);
                        fragment.mChildFragmentManager.n();
                    }
                    this.f1321d = false;
                    return;
                }
                k0 k0Var = this.f1318a;
                if (iC <= i10) {
                    switch (i10 - 1) {
                        case -1:
                            g();
                            break;
                        case 0:
                            if (fragment.mBeingSaved) {
                                if (((Bundle) l1Var.f1335c.get(fragment.mWho)) == null) {
                                    l1Var.i(fragment.mWho, l());
                                }
                            }
                            e();
                            break;
                        case 1:
                            f();
                            fragment.mState = 1;
                            break;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            break;
                        case 3:
                            if (Log.isLoggable("FragmentManager", 3)) {
                                fragment.toString();
                            }
                            if (fragment.mBeingSaved) {
                                l1Var.i(fragment.mWho, l());
                            } else if (fragment.mView != null && fragment.mSavedViewState == null) {
                                m();
                            }
                            if (fragment.mView != null && (viewGroup2 = fragment.mContainer) != null) {
                                n nVarH2 = n.h(viewGroup2, fragment.getParentFragmentManager());
                                nVarH2.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    fragment.toString();
                                }
                                nVarH2.b(c2.REMOVED, b2.REMOVING, this);
                            }
                            fragment.mState = 3;
                            break;
                        case 4:
                            if (Log.isLoggable("FragmentManager", 3)) {
                                fragment.toString();
                            }
                            fragment.performStop();
                            k0Var.l(fragment, false);
                            break;
                        case 5:
                            fragment.mState = 5;
                            break;
                        case 6:
                            if (Log.isLoggable("FragmentManager", 3)) {
                                fragment.toString();
                            }
                            fragment.performPause();
                            k0Var.f(fragment, false);
                            break;
                    }
                } else {
                    switch (i10 + 1) {
                        case 0:
                            b();
                            break;
                        case 1:
                            if (Log.isLoggable("FragmentManager", 3)) {
                                fragment.toString();
                            }
                            Bundle bundle2 = fragment.mSavedFragmentState;
                            bundle = bundle2 != null ? bundle2.getBundle("savedInstanceState") : null;
                            if (!fragment.mIsCreated) {
                                k0Var.h(fragment, bundle, false);
                                fragment.performCreate(bundle);
                                k0Var.c(fragment, bundle, false);
                                break;
                            } else {
                                fragment.mState = 1;
                                fragment.restoreChildFragmentState();
                                break;
                            }
                        case 2:
                            h();
                            d();
                            break;
                        case 3:
                            if (Log.isLoggable("FragmentManager", 3)) {
                                fragment.toString();
                            }
                            Bundle bundle3 = fragment.mSavedFragmentState;
                            bundle = bundle3 != null ? bundle3.getBundle("savedInstanceState") : null;
                            fragment.performActivityCreated(bundle);
                            k0Var.a(fragment, bundle, false);
                            break;
                        case 4:
                            if (fragment.mView != null && (viewGroup3 = fragment.mContainer) != null) {
                                n nVarH3 = n.h(viewGroup3, fragment.getParentFragmentManager());
                                int visibility = fragment.mView.getVisibility();
                                if (visibility != 0) {
                                    if (visibility == 4) {
                                        c2Var = c2.INVISIBLE;
                                    } else {
                                        if (visibility != 8) {
                                            throw new IllegalArgumentException("Unknown visibility " + visibility);
                                        }
                                        c2Var = c2Var2;
                                    }
                                }
                                nVarH3.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    fragment.toString();
                                }
                                nVarH3.b(c2Var, b2.ADDING, this);
                            }
                            fragment.mState = 4;
                            break;
                        case 5:
                            if (Log.isLoggable("FragmentManager", 3)) {
                                fragment.toString();
                            }
                            fragment.performStart();
                            k0Var.k(fragment, false);
                            break;
                        case 6:
                            fragment.mState = 6;
                            break;
                        case 7:
                            k();
                            break;
                    }
                }
                z4 = true;
            }
        } catch (Throwable th2) {
            this.f1321d = false;
            throw th2;
        }
    }

    public final void j(ClassLoader classLoader) {
        Fragment fragment = this.f1320c;
        Bundle bundle = fragment.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        if (fragment.mSavedFragmentState.getBundle("savedInstanceState") == null) {
            fragment.mSavedFragmentState.putBundle("savedInstanceState", new Bundle());
        }
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("viewState");
        fragment.mSavedViewRegistryState = fragment.mSavedFragmentState.getBundle("viewRegistryState");
        i1 i1Var = (i1) fragment.mSavedFragmentState.getParcelable("state");
        if (i1Var != null) {
            fragment.mTargetWho = i1Var.l;
            fragment.mTargetRequestCode = i1Var.f1303m;
            Boolean bool = fragment.mSavedUserVisibleHint;
            if (bool != null) {
                fragment.mUserVisibleHint = bool.booleanValue();
                fragment.mSavedUserVisibleHint = null;
            } else {
                fragment.mUserVisibleHint = i1Var.f1304n;
            }
        }
        if (fragment.mUserVisibleHint) {
            return;
        }
        fragment.mDeferStart = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        Fragment fragment = this.f1320c;
        if (zIsLoggable && fragment != null) {
            fragment.toString();
        }
        View focusedView = fragment.getFocusedView();
        if (focusedView != null) {
            if (focusedView == fragment.mView) {
                focusedView.requestFocus();
                if (Log.isLoggable("FragmentManager", 2)) {
                    focusedView.toString();
                    fragment.toString();
                    View viewFindFocus = fragment.mView.findFocus();
                    if (viewFindFocus != null) {
                        viewFindFocus.toString();
                    }
                }
            } else {
                for (ViewParent parent = focusedView.getParent(); parent != null; parent = parent.getParent()) {
                    if (parent == fragment.mView) {
                        focusedView.requestFocus();
                        if (Log.isLoggable("FragmentManager", 2)) {
                        }
                    }
                }
            }
        }
        fragment.setFocusedView(null);
        fragment.performResume();
        this.f1318a.i(fragment, false);
        this.f1319b.i(fragment.mWho, null);
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    public final Bundle l() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        Fragment fragment = this.f1320c;
        if (fragment.mState == -1 && (bundle = fragment.mSavedFragmentState) != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putParcelable("state", new i1(fragment));
        if (fragment.mState > -1) {
            Bundle bundle3 = new Bundle();
            fragment.performSaveInstanceState(bundle3);
            if (!bundle3.isEmpty()) {
                bundle2.putBundle("savedInstanceState", bundle3);
            }
            this.f1318a.j(fragment, bundle3, false);
            Bundle bundle4 = new Bundle();
            fragment.mSavedStateRegistryController.c(bundle4);
            if (!bundle4.isEmpty()) {
                bundle2.putBundle("registryState", bundle4);
            }
            Bundle bundleU = fragment.mChildFragmentManager.U();
            if (!bundleU.isEmpty()) {
                bundle2.putBundle("childFragmentManager", bundleU);
            }
            if (fragment.mView != null) {
                m();
            }
            SparseArray<Parcelable> sparseArray = fragment.mSavedViewState;
            if (sparseArray != null) {
                bundle2.putSparseParcelableArray("viewState", sparseArray);
            }
            Bundle bundle5 = fragment.mSavedViewRegistryState;
            if (bundle5 != null) {
                bundle2.putBundle("viewRegistryState", bundle5);
            }
        }
        Bundle bundle6 = fragment.mArguments;
        if (bundle6 != null) {
            bundle2.putBundle("arguments", bundle6);
        }
        return bundle2;
    }

    public final void m() {
        Fragment fragment = this.f1320c;
        if (fragment.mView == null) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            fragment.toString();
            View view = fragment.mView;
            if (view != null) {
                view.toString();
            }
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        fragment.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            fragment.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        fragment.mViewLifecycleOwner.f1421e.c(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        fragment.mSavedViewRegistryState = bundle;
    }

    public k1(k0 k0Var, l1 l1Var, ClassLoader classLoader, w0 w0Var, Bundle bundle) {
        this.f1318a = k0Var;
        this.f1319b = l1Var;
        i1 i1Var = (i1) bundle.getParcelable("state");
        Fragment fragmentInstantiate = Fragment.instantiate(w0Var.f1416a.f1246t.f1360b, i1Var.f1292a, null);
        fragmentInstantiate.mWho = i1Var.f1293b;
        fragmentInstantiate.mFromLayout = i1Var.f1294c;
        fragmentInstantiate.mRestored = true;
        fragmentInstantiate.mFragmentId = i1Var.f1295d;
        fragmentInstantiate.mContainerId = i1Var.f1296e;
        fragmentInstantiate.mTag = i1Var.f1297f;
        fragmentInstantiate.mRetainInstance = i1Var.f1298g;
        fragmentInstantiate.mRemoving = i1Var.f1299h;
        fragmentInstantiate.mDetached = i1Var.f1300i;
        fragmentInstantiate.mHidden = i1Var.f1301j;
        fragmentInstantiate.mMaxState = androidx.lifecycle.n.values()[i1Var.f1302k];
        fragmentInstantiate.mTargetWho = i1Var.l;
        fragmentInstantiate.mTargetRequestCode = i1Var.f1303m;
        fragmentInstantiate.mUserVisibleHint = i1Var.f1304n;
        this.f1320c = fragmentInstantiate;
        fragmentInstantiate.mSavedFragmentState = bundle;
        Bundle bundle2 = bundle.getBundle("arguments");
        if (bundle2 != null) {
            bundle2.setClassLoader(classLoader);
        }
        fragmentInstantiate.setArguments(bundle2);
        if (Log.isLoggable("FragmentManager", 2)) {
            fragmentInstantiate.toString();
        }
    }

    public k1(k0 k0Var, l1 l1Var, Fragment fragment, Bundle bundle) {
        this.f1318a = k0Var;
        this.f1319b = l1Var;
        this.f1320c = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        fragment.mSavedFragmentState = bundle;
        fragment.mArguments = bundle.getBundle("arguments");
    }
}
