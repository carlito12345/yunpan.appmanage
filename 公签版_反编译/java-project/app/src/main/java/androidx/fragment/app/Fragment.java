package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.yunpan.appmanage.R;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, androidx.lifecycle.t, androidx.lifecycle.w0, androidx.lifecycle.i, b4.g {
    static final int ACTIVITY_CREATED = 4;
    static final int ATTACHED = 0;
    static final int AWAITING_ENTER_EFFECTS = 6;
    static final int AWAITING_EXIT_EFFECTS = 3;
    static final int CREATED = 1;
    static final int INITIALIZING = -1;
    static final int RESUMED = 7;
    static final int STARTED = 5;
    static final Object USE_DEFAULT_TRANSITION = new Object();
    static final int VIEW_CREATED = 2;
    boolean mAdded;
    a0 mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    boolean mBeingSaved;
    private boolean mCalled;
    ViewGroup mContainer;
    int mContainerId;
    private int mContentLayoutId;
    androidx.lifecycle.u0 mDefaultFactory;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    d1 mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    o0 mHost;
    boolean mInLayout;
    boolean mIsCreated;
    LayoutInflater mLayoutInflater;
    androidx.lifecycle.v mLifecycleRegistry;
    Fragment mParentFragment;
    boolean mPerformedCreateView;
    Handler mPostponedHandler;
    public String mPreviousWho;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetainInstanceChangedWhileDetached;
    Bundle mSavedFragmentState;
    b4.f mSavedStateRegistryController;
    Boolean mSavedUserVisibleHint;
    Bundle mSavedViewRegistryState;
    SparseArray<Parcelable> mSavedViewState;
    String mTag;
    Fragment mTarget;
    int mTargetRequestCode;
    View mView;
    w1 mViewLifecycleOwner;
    int mState = -1;
    String mWho = UUID.randomUUID().toString();
    String mTargetWho = null;
    private Boolean mIsPrimaryNavigationFragment = null;
    d1 mChildFragmentManager = new e1();
    boolean mMenuVisible = true;
    boolean mUserVisibleHint = true;
    Runnable mPostponedDurationRunnable = new v(this, 0);
    androidx.lifecycle.n mMaxState = androidx.lifecycle.n.RESUMED;
    androidx.lifecycle.a0 mViewLifecycleOwnerLiveData = new androidx.lifecycle.a0();
    private final AtomicInteger mNextLocalRequestCode = new AtomicInteger();
    private final ArrayList<c0> mOnPreAttachedListeners = new ArrayList<>();
    private final c0 mSavedStateAttachListener = new w(this);

    public Fragment() {
        e();
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    public final a0 b() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new a0();
        }
        return this.mAnimationInfo;
    }

    public final int c() {
        androidx.lifecycle.n nVar = this.mMaxState;
        return (nVar == androidx.lifecycle.n.INITIALIZED || this.mParentFragment == null) ? nVar.ordinal() : Math.min(nVar.ordinal(), this.mParentFragment.c());
    }

    public void callStartTransitionListener(boolean z) {
        ViewGroup viewGroup;
        d1 d1Var;
        a0 a0Var = this.mAnimationInfo;
        if (a0Var != null) {
            a0Var.f1193s = false;
        }
        if (this.mView == null || (viewGroup = this.mContainer) == null || (d1Var = this.mFragmentManager) == null) {
            return;
        }
        n nVarH = n.h(viewGroup, d1Var);
        nVarH.i();
        if (z) {
            this.mHost.f1361c.post(new o(1, nVarH));
        } else {
            nVarH.d();
        }
        Handler handler = this.mPostponedHandler;
        if (handler != null) {
            handler.removeCallbacks(this.mPostponedDurationRunnable);
            this.mPostponedHandler = null;
        }
    }

    public m0 createFragmentContainer() {
        return new x(this);
    }

    public final Fragment d(boolean z) {
        String str;
        if (z) {
            l1.c cVar = l1.d.f10386a;
            l1.d.b(new l1.f(this, 1));
            l1.d.a(this).getClass();
        }
        Fragment fragment = this.mTarget;
        if (fragment != null) {
            return fragment;
        }
        d1 d1Var = this.mFragmentManager;
        if (d1Var == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return d1Var.f1231c.b(str);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        if (this.mSavedViewRegistryState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.mSavedViewRegistryState);
        }
        Fragment fragmentD = d(false);
        if (fragmentD != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(fragmentD);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        printWriter.println(getPopDirection());
        if (getEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            printWriter.println(getEnterAnim());
        }
        if (getExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            printWriter.println(getExitAnim());
        }
        if (getPopEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            printWriter.println(getPopEnterAnim());
        }
        if (getPopExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            printWriter.println(getPopExitAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
        }
        if (getContext() != null) {
            v3.f fVar = new v3.f(getViewModelStore(), q1.b.f12929e);
            String canonicalName = q1.b.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            a0.u uVar = ((q1.b) fVar.w(q1.b.class, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName))).f12930d;
            if (uVar.f68c > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                if (uVar.f68c > 0) {
                    if (uVar.e(0) != null) {
                        throw new ClassCastException();
                    }
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(uVar.f66a[0]);
                    printWriter.print(": ");
                    throw null;
                }
            }
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        this.mChildFragmentManager.v(g.b.j(str, "  "), fileDescriptor, printWriter, strArr);
    }

    public final void e() {
        this.mLifecycleRegistry = new androidx.lifecycle.v(this);
        this.mSavedStateRegistryController = new b4.f(this);
        this.mDefaultFactory = null;
        if (this.mOnPreAttachedListeners.contains(this.mSavedStateAttachListener)) {
            return;
        }
        c0 c0Var = this.mSavedStateAttachListener;
        if (this.mState >= 0) {
            c0Var.a();
        } else {
            this.mOnPreAttachedListeners.add(c0Var);
        }
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final u f(n.a aVar, y yVar, androidx.activity.result.b bVar) {
        if (this.mState > 1) {
            throw new IllegalStateException(android.support.v4.media.session.a.q("Fragment ", this, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."));
        }
        AtomicReference atomicReference = new AtomicReference();
        z zVar = new z(this, yVar, atomicReference, aVar, bVar);
        if (this.mState >= 0) {
            zVar.a();
        } else {
            this.mOnPreAttachedListeners.add(zVar);
        }
        return new u(atomicReference);
    }

    public Fragment findFragmentByWho(String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.f1231c.c(str);
    }

    public String generateActivityResultKey() {
        return "fragment_" + this.mWho + "_rq#" + this.mNextLocalRequestCode.getAndIncrement();
    }

    public final j0 getActivity() {
        o0 o0Var = this.mHost;
        if (o0Var == null) {
            return null;
        }
        return o0Var.f1359a;
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null || (bool = a0Var.f1191p) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null || (bool = a0Var.f1190o) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public View getAnimatingAway() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return null;
        }
        a0Var.getClass();
        return null;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final d1 getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException(android.support.v4.media.session.a.q("Fragment ", this, " has not been attached yet."));
    }

    public Context getContext() {
        o0 o0Var = this.mHost;
        if (o0Var == null) {
            return null;
        }
        return o0Var.f1360b;
    }

    @Override // androidx.lifecycle.i
    public p1.b getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext;
        Context applicationContext2 = requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext2 instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext2 instanceof Application) {
                application = (Application) applicationContext2;
                break;
            }
            applicationContext2 = ((ContextWrapper) applicationContext2).getBaseContext();
        }
        if (application == null && Log.isLoggable("FragmentManager", 3) && (applicationContext = requireContext().getApplicationContext()) != null) {
            applicationContext.toString();
        }
        p1.c cVar = new p1.c();
        LinkedHashMap linkedHashMap = cVar.f12565a;
        if (application != null) {
            linkedHashMap.put(androidx.lifecycle.s0.f1809a, application);
        }
        linkedHashMap.put(androidx.lifecycle.l0.f1782a, this);
        linkedHashMap.put(androidx.lifecycle.l0.f1783b, this);
        if (getArguments() != null) {
            linkedHashMap.put(androidx.lifecycle.l0.f1784c, getArguments());
        }
        return cVar;
    }

    public androidx.lifecycle.u0 getDefaultViewModelProviderFactory() {
        Application application;
        Context applicationContext;
        if (this.mFragmentManager == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (this.mDefaultFactory == null) {
            Context applicationContext2 = requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext2 instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext2 instanceof Application) {
                    application = (Application) applicationContext2;
                    break;
                }
                applicationContext2 = ((ContextWrapper) applicationContext2).getBaseContext();
            }
            if (application == null && Log.isLoggable("FragmentManager", 3) && (applicationContext = requireContext().getApplicationContext()) != null) {
                applicationContext.toString();
            }
            this.mDefaultFactory = new androidx.lifecycle.p0(application, this, getArguments());
        }
        return this.mDefaultFactory;
    }

    public int getEnterAnim() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return 0;
        }
        return a0Var.f1178b;
    }

    public Object getEnterTransition() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return null;
        }
        return a0Var.f1185i;
    }

    public m0.r0 getEnterTransitionCallback() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return null;
        }
        a0Var.getClass();
        return null;
    }

    public int getExitAnim() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return 0;
        }
        return a0Var.f1179c;
    }

    public Object getExitTransition() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return null;
        }
        return a0Var.f1187k;
    }

    public m0.r0 getExitTransitionCallback() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return null;
        }
        a0Var.getClass();
        return null;
    }

    public View getFocusedView() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return null;
        }
        return a0Var.r;
    }

    @Deprecated
    public final d1 getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        o0 o0Var = this.mHost;
        if (o0Var == null) {
            return null;
        }
        return ((i0) o0Var).f1291e;
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @Override // androidx.lifecycle.t
    public androidx.lifecycle.o getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public q1.a getLoaderManager() {
        return new q1.c(this, getViewModelStore());
    }

    public int getNextTransition() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return 0;
        }
        return a0Var.f1182f;
    }

    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    public final d1 getParentFragmentManager() {
        d1 d1Var = this.mFragmentManager;
        if (d1Var != null) {
            return d1Var;
        }
        throw new IllegalStateException(android.support.v4.media.session.a.q("Fragment ", this, " not associated with a fragment manager."));
    }

    public boolean getPopDirection() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return false;
        }
        return a0Var.f1177a;
    }

    public int getPopEnterAnim() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return 0;
        }
        return a0Var.f1180d;
    }

    public int getPopExitAnim() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return 0;
        }
        return a0Var.f1181e;
    }

    public float getPostOnViewCreatedAlpha() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return 1.0f;
        }
        return a0Var.f1192q;
    }

    public Object getReenterTransition() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return null;
        }
        Object obj = a0Var.l;
        return obj == USE_DEFAULT_TRANSITION ? getExitTransition() : obj;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Deprecated
    public final boolean getRetainInstance() {
        l1.c cVar = l1.d.f10386a;
        l1.d.b(new l1.e(this, 0));
        l1.d.a(this).getClass();
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return null;
        }
        Object obj = a0Var.f1186j;
        return obj == USE_DEFAULT_TRANSITION ? getEnterTransition() : obj;
    }

    @Override // b4.g
    public final b4.e getSavedStateRegistry() {
        return this.mSavedStateRegistryController.f2550b;
    }

    public Object getSharedElementEnterTransition() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return null;
        }
        return a0Var.f1188m;
    }

    public Object getSharedElementReturnTransition() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return null;
        }
        Object obj = a0Var.f1189n;
        return obj == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : obj;
    }

    public ArrayList<String> getSharedElementSourceNames() {
        ArrayList<String> arrayList;
        a0 a0Var = this.mAnimationInfo;
        return (a0Var == null || (arrayList = a0Var.f1183g) == null) ? new ArrayList<>() : arrayList;
    }

    public ArrayList<String> getSharedElementTargetNames() {
        ArrayList<String> arrayList;
        a0 a0Var = this.mAnimationInfo;
        return (a0Var == null || (arrayList = a0Var.f1184h) == null) ? new ArrayList<>() : arrayList;
    }

    public final String getString(int i10) {
        return getResources().getString(i10);
    }

    public final String getTag() {
        return this.mTag;
    }

    @Deprecated
    public final Fragment getTargetFragment() {
        return d(true);
    }

    @Deprecated
    public final int getTargetRequestCode() {
        l1.c cVar = l1.d.f10386a;
        l1.d.b(new l1.f(this, 0));
        l1.d.a(this).getClass();
        return this.mTargetRequestCode;
    }

    public final CharSequence getText(int i10) {
        return getResources().getText(i10);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public View getView() {
        return this.mView;
    }

    public androidx.lifecycle.t getViewLifecycleOwner() {
        w1 w1Var = this.mViewLifecycleOwner;
        if (w1Var != null) {
            return w1Var;
        }
        throw new IllegalStateException(android.support.v4.media.session.a.q("Can't access the Fragment View's LifecycleOwner for ", this, " when getView() is null i.e., before onCreateView() or after onDestroyView()"));
    }

    public androidx.lifecycle.z getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // androidx.lifecycle.w0
    public androidx.lifecycle.v0 getViewModelStore() {
        if (this.mFragmentManager == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (c() == 1) {
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        HashMap map = this.mFragmentManager.L.f1280f;
        androidx.lifecycle.v0 v0Var = (androidx.lifecycle.v0) map.get(this.mWho);
        if (v0Var != null) {
            return v0Var;
        }
        androidx.lifecycle.v0 v0Var2 = new androidx.lifecycle.v0();
        map.put(this.mWho, v0Var2);
        return v0Var2;
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public void initState() {
        e();
        this.mPreviousWho = this.mWho;
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new e1();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        if (!this.mHidden) {
            d1 d1Var = this.mFragmentManager;
            if (d1Var == null) {
                return false;
            }
            Fragment fragment = this.mParentFragment;
            d1Var.getClass();
            if (!(fragment == null ? false : fragment.isHidden())) {
                return false;
            }
        }
        return true;
    }

    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        if (this.mMenuVisible) {
            if (this.mFragmentManager == null) {
                return true;
            }
            Fragment fragment = this.mParentFragment;
            if (fragment == null ? true : fragment.isMenuVisible()) {
                return true;
            }
        }
        return false;
    }

    public boolean isPostponed() {
        a0 a0Var = this.mAnimationInfo;
        if (a0Var == null) {
            return false;
        }
        return a0Var.f1193s;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isResumed() {
        return this.mState >= 7;
    }

    public final boolean isStateSaved() {
        d1 d1Var = this.mFragmentManager;
        if (d1Var == null) {
            return false;
        }
        return d1Var.K();
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    public void noteStateNotSaved() {
        this.mChildFragmentManager.M();
    }

    @Deprecated
    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    public void onActivityResult(int i10, int i11, Intent intent) {
        if (Log.isLoggable("FragmentManager", 2)) {
            toString();
            if (intent != null) {
                intent.toString();
            }
        }
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        o0 o0Var = this.mHost;
        j0 j0Var = o0Var == null ? null : o0Var.f1359a;
        if (j0Var != null) {
            this.mCalled = false;
            onAttach((Activity) j0Var);
        }
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState();
        d1 d1Var = this.mChildFragmentManager;
        if (d1Var.f1245s >= 1) {
            return;
        }
        d1Var.E = false;
        d1Var.F = false;
        d1Var.L.f1283i = false;
        d1Var.t(1);
    }

    public Animation onCreateAnimation(int i10, boolean z, int i11) {
        return null;
    }

    public Animator onCreateAnimator(int i10, boolean z, int i11) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Deprecated
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i10 = this.mContentLayoutId;
        if (i10 != 0) {
            return layoutInflater.inflate(i10, viewGroup, false);
        }
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    @Deprecated
    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z) {
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        o0 o0Var = this.mHost;
        j0 j0Var = o0Var == null ? null : o0Var.f1359a;
        if (j0Var != null) {
            this.mCalled = false;
            onInflate((Activity) j0Var, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    @Deprecated
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    @Deprecated
    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    @Deprecated
    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z) {
    }

    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    public void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.M();
        this.mState = 3;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (!this.mCalled) {
            throw new e2(android.support.v4.media.session.a.q("Fragment ", this, " did not call through to super.onActivityCreated()"));
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            toString();
        }
        if (this.mView != null) {
            Bundle bundle2 = this.mSavedFragmentState;
            restoreViewState(bundle2 != null ? bundle2.getBundle("savedInstanceState") : null);
        }
        this.mSavedFragmentState = null;
        d1 d1Var = this.mChildFragmentManager;
        d1Var.E = false;
        d1Var.F = false;
        d1Var.L.f1283i = false;
        d1Var.t(4);
    }

    public void performAttach() {
        Iterator<c0> it = this.mOnPreAttachedListeners.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.mOnPreAttachedListeners.clear();
        this.mChildFragmentManager.b(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach((Context) this.mHost.f1360b);
        if (!this.mCalled) {
            throw new e2(android.support.v4.media.session.a.q("Fragment ", this, " did not call through to super.onAttach()"));
        }
        Iterator it2 = this.mFragmentManager.f1240m.iterator();
        while (it2.hasNext()) {
            ((h1) it2.next()).j(this);
        }
        d1 d1Var = this.mChildFragmentManager;
        d1Var.E = false;
        d1Var.F = false;
        d1Var.L.f1283i = false;
        d1Var.t(0);
    }

    public void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
    }

    public boolean performContextItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (onContextItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.i(menuItem);
    }

    public void performCreate(Bundle bundle) {
        this.mChildFragmentManager.M();
        this.mState = 1;
        this.mCalled = false;
        if (Build.VERSION.SDK_INT >= 19) {
            this.mLifecycleRegistry.a(new androidx.lifecycle.r() { // from class: androidx.fragment.app.Fragment.6
                @Override // androidx.lifecycle.r
                public final void a(androidx.lifecycle.t tVar, androidx.lifecycle.m mVar) {
                    View view;
                    if (mVar != androidx.lifecycle.m.ON_STOP || (view = Fragment.this.mView) == null) {
                        return;
                    }
                    androidx.activity.i.b(view);
                }
            });
        }
        onCreate(bundle);
        this.mIsCreated = true;
        if (!this.mCalled) {
            throw new e2(android.support.v4.media.session.a.q("Fragment ", this, " did not call through to super.onCreate()"));
        }
        this.mLifecycleRegistry.e(androidx.lifecycle.m.ON_CREATE);
    }

    public boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onCreateOptionsMenu(menu, menuInflater);
            z = true;
        }
        return z | this.mChildFragmentManager.j(menu, menuInflater);
    }

    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.M();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new w1(this, getViewModelStore(), new t(0, this));
        View viewOnCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = viewOnCreateView;
        if (viewOnCreateView == null) {
            if (this.mViewLifecycleOwner.f1420d != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.mViewLifecycleOwner = null;
            return;
        }
        this.mViewLifecycleOwner.c();
        if (Log.isLoggable("FragmentManager", 3)) {
            View view = this.mView;
            if (view != null) {
                view.toString();
            }
            toString();
        }
        androidx.lifecycle.l0.h(this.mView, this.mViewLifecycleOwner);
        View view2 = this.mView;
        w1 w1Var = this.mViewLifecycleOwner;
        ue.d.e(view2, "<this>");
        view2.setTag(R.id.view_tree_view_model_store_owner, w1Var);
        nh.b.j0(this.mView, this.mViewLifecycleOwner);
        this.mViewLifecycleOwnerLiveData.e(this.mViewLifecycleOwner);
    }

    public void performDestroy() {
        this.mChildFragmentManager.k();
        this.mLifecycleRegistry.e(androidx.lifecycle.m.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (!this.mCalled) {
            throw new e2(android.support.v4.media.session.a.q("Fragment ", this, " did not call through to super.onDestroy()"));
        }
    }

    public void performDestroyView() {
        this.mChildFragmentManager.t(1);
        if (this.mView != null) {
            w1 w1Var = this.mViewLifecycleOwner;
            w1Var.c();
            if (w1Var.f1420d.f1818c.compareTo(androidx.lifecycle.n.CREATED) >= 0) {
                this.mViewLifecycleOwner.b(androidx.lifecycle.m.ON_DESTROY);
            }
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (!this.mCalled) {
            throw new e2(android.support.v4.media.session.a.q("Fragment ", this, " did not call through to super.onDestroyView()"));
        }
        v3.f fVar = new v3.f(getViewModelStore(), q1.b.f12929e);
        String canonicalName = q1.b.class.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        a0.u uVar = ((q1.b) fVar.w(q1.b.class, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName))).f12930d;
        if (uVar.f68c <= 0) {
            this.mPerformedCreateView = false;
        } else {
            uVar.e(0).getClass();
            throw new ClassCastException();
        }
    }

    public void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (!this.mCalled) {
            throw new e2(android.support.v4.media.session.a.q("Fragment ", this, " did not call through to super.onDetach()"));
        }
        d1 d1Var = this.mChildFragmentManager;
        if (d1Var.G) {
            return;
        }
        d1Var.k();
        this.mChildFragmentManager = new e1();
    }

    public LayoutInflater performGetLayoutInflater(Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = layoutInflaterOnGetLayoutInflater;
        return layoutInflaterOnGetLayoutInflater;
    }

    public void performLowMemory() {
        onLowMemory();
    }

    public void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
    }

    public boolean performOptionsItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.o(menuItem);
    }

    public void performOptionsMenuClosed(Menu menu) {
        if (this.mHidden) {
            return;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onOptionsMenuClosed(menu);
        }
        this.mChildFragmentManager.p(menu);
    }

    public void performPause() {
        this.mChildFragmentManager.t(5);
        if (this.mView != null) {
            this.mViewLifecycleOwner.b(androidx.lifecycle.m.ON_PAUSE);
        }
        this.mLifecycleRegistry.e(androidx.lifecycle.m.ON_PAUSE);
        this.mState = 6;
        this.mCalled = false;
        onPause();
        if (!this.mCalled) {
            throw new e2(android.support.v4.media.session.a.q("Fragment ", this, " did not call through to super.onPause()"));
        }
    }

    public void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
    }

    public boolean performPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onPrepareOptionsMenu(menu);
            z = true;
        }
        return z | this.mChildFragmentManager.s(menu);
    }

    public void performPrimaryNavigationFragmentChanged() {
        this.mFragmentManager.getClass();
        boolean zJ = d1.J(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != zJ) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(zJ);
            onPrimaryNavigationFragmentChanged(zJ);
            d1 d1Var = this.mChildFragmentManager;
            d1Var.d0();
            d1Var.q(d1Var.f1249w);
        }
    }

    public void performResume() {
        this.mChildFragmentManager.M();
        this.mChildFragmentManager.y(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new e2(android.support.v4.media.session.a.q("Fragment ", this, " did not call through to super.onResume()"));
        }
        androidx.lifecycle.v vVar = this.mLifecycleRegistry;
        androidx.lifecycle.m mVar = androidx.lifecycle.m.ON_RESUME;
        vVar.e(mVar);
        if (this.mView != null) {
            this.mViewLifecycleOwner.f1420d.e(mVar);
        }
        d1 d1Var = this.mChildFragmentManager;
        d1Var.E = false;
        d1Var.F = false;
        d1Var.L.f1283i = false;
        d1Var.t(7);
    }

    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
    }

    public void performStart() {
        this.mChildFragmentManager.M();
        this.mChildFragmentManager.y(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new e2(android.support.v4.media.session.a.q("Fragment ", this, " did not call through to super.onStart()"));
        }
        androidx.lifecycle.v vVar = this.mLifecycleRegistry;
        androidx.lifecycle.m mVar = androidx.lifecycle.m.ON_START;
        vVar.e(mVar);
        if (this.mView != null) {
            this.mViewLifecycleOwner.f1420d.e(mVar);
        }
        d1 d1Var = this.mChildFragmentManager;
        d1Var.E = false;
        d1Var.F = false;
        d1Var.L.f1283i = false;
        d1Var.t(5);
    }

    public void performStop() {
        d1 d1Var = this.mChildFragmentManager;
        d1Var.F = true;
        d1Var.L.f1283i = true;
        d1Var.t(4);
        if (this.mView != null) {
            this.mViewLifecycleOwner.b(androidx.lifecycle.m.ON_STOP);
        }
        this.mLifecycleRegistry.e(androidx.lifecycle.m.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (!this.mCalled) {
            throw new e2(android.support.v4.media.session.a.q("Fragment ", this, " did not call through to super.onStop()"));
        }
    }

    public void performViewCreated() {
        Bundle bundle = this.mSavedFragmentState;
        onViewCreated(this.mView, bundle != null ? bundle.getBundle("savedInstanceState") : null);
        this.mChildFragmentManager.t(2);
    }

    public void postponeEnterTransition() {
        b().f1193s = true;
    }

    public final <I, O> androidx.activity.result.c registerForActivityResult(n.a aVar, androidx.activity.result.b bVar) {
        return f(aVar, new y(0, this), bVar);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @Deprecated
    public final void requestPermissions(String[] strArr, int i10) {
        if (this.mHost == null) {
            throw new IllegalStateException(android.support.v4.media.session.a.q("Fragment ", this, " not attached to Activity"));
        }
        d1 parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.B == null) {
            parentFragmentManager.f1246t.getClass();
            return;
        }
        parentFragmentManager.C.addLast(new a1(this.mWho, i10));
        parentFragmentManager.B.a(strArr);
    }

    public final j0 requireActivity() {
        j0 activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException(android.support.v4.media.session.a.q("Fragment ", this, " not attached to an activity."));
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException(android.support.v4.media.session.a.q("Fragment ", this, " does not have any arguments."));
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException(android.support.v4.media.session.a.q("Fragment ", this, " not attached to a context."));
    }

    @Deprecated
    public final d1 requireFragmentManager() {
        return getParentFragmentManager();
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException(android.support.v4.media.session.a.q("Fragment ", this, " not attached to a host."));
    }

    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new IllegalStateException(android.support.v4.media.session.a.q("Fragment ", this, " is not attached to any Fragment or host"));
        }
        throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException(android.support.v4.media.session.a.q("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    public void restoreChildFragmentState() {
        Bundle bundle;
        Bundle bundle2 = this.mSavedFragmentState;
        if (bundle2 == null || (bundle = bundle2.getBundle("childFragmentManager")) == null) {
            return;
        }
        this.mChildFragmentManager.T(bundle);
        d1 d1Var = this.mChildFragmentManager;
        d1Var.E = false;
        d1Var.F = false;
        d1Var.L.f1283i = false;
        d1Var.t(1);
    }

    public final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (!this.mCalled) {
            throw new e2(android.support.v4.media.session.a.q("Fragment ", this, " did not call through to super.onViewStateRestored()"));
        }
        if (this.mView != null) {
            this.mViewLifecycleOwner.b(androidx.lifecycle.m.ON_CREATE);
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        b().f1191p = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        b().f1190o = Boolean.valueOf(z);
    }

    public void setAnimations(int i10, int i11, int i12, int i13) {
        if (this.mAnimationInfo == null && i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) {
            return;
        }
        b().f1178b = i10;
        b().f1179c = i11;
        b().f1180d = i12;
        b().f1181e = i13;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager != null && isStateSaved()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(m0.r0 r0Var) {
        b().getClass();
    }

    public void setEnterTransition(Object obj) {
        b().f1185i = obj;
    }

    public void setExitSharedElementCallback(m0.r0 r0Var) {
        b().getClass();
    }

    public void setExitTransition(Object obj) {
        b().f1187k = obj;
    }

    public void setFocusedView(View view) {
        b().r = view;
    }

    @Deprecated
    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            ((i0) this.mHost).f1291e.invalidateOptionsMenu();
        }
    }

    public void setInitialSavedState(e0 e0Var) {
        Bundle bundle;
        if (this.mFragmentManager != null) {
            throw new IllegalStateException("Fragment already added");
        }
        if (e0Var == null || (bundle = e0Var.f1255a) == null) {
            bundle = null;
        }
        this.mSavedFragmentState = bundle;
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                ((i0) this.mHost).f1291e.invalidateOptionsMenu();
            }
        }
    }

    public void setNextTransition(int i10) {
        if (this.mAnimationInfo == null && i10 == 0) {
            return;
        }
        b();
        this.mAnimationInfo.f1182f = i10;
    }

    public void setPopDirection(boolean z) {
        if (this.mAnimationInfo == null) {
            return;
        }
        b().f1177a = z;
    }

    public void setPostOnViewCreatedAlpha(float f10) {
        b().f1192q = f10;
    }

    public void setReenterTransition(Object obj) {
        b().l = obj;
    }

    @Deprecated
    public void setRetainInstance(boolean z) {
        l1.c cVar = l1.d.f10386a;
        l1.d.b(new l1.e(this, 1));
        l1.d.a(this).getClass();
        this.mRetainInstance = z;
        d1 d1Var = this.mFragmentManager;
        if (d1Var == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z) {
            d1Var.L.c(this);
        } else {
            d1Var.L.e(this);
        }
    }

    public void setReturnTransition(Object obj) {
        b().f1186j = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        b().f1188m = obj;
    }

    public void setSharedElementNames(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        b();
        a0 a0Var = this.mAnimationInfo;
        a0Var.f1183g = arrayList;
        a0Var.f1184h = arrayList2;
    }

    public void setSharedElementReturnTransition(Object obj) {
        b().f1189n = obj;
    }

    @Deprecated
    public void setTargetFragment(Fragment fragment, int i10) {
        if (fragment != null) {
            l1.c cVar = l1.d.f10386a;
            l1.d.b(new l1.f(this, fragment, i10));
            l1.d.a(this).getClass();
        }
        d1 d1Var = this.mFragmentManager;
        d1 d1Var2 = fragment != null ? fragment.mFragmentManager : null;
        if (d1Var != null && d1Var2 != null && d1Var != d1Var2) {
            throw new IllegalArgumentException(android.support.v4.media.session.a.q("Fragment ", fragment, " must share the same FragmentManager to be set as a target fragment"));
        }
        for (Fragment fragmentD = fragment; fragmentD != null; fragmentD = fragmentD.d(false)) {
            if (fragmentD.equals(this)) {
                throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
            }
        }
        if (fragment == null) {
            this.mTargetWho = null;
            this.mTarget = null;
        } else if (this.mFragmentManager == null || fragment.mFragmentManager == null) {
            this.mTargetWho = null;
            this.mTarget = fragment;
        } else {
            this.mTargetWho = fragment.mWho;
            this.mTarget = null;
        }
        this.mTargetRequestCode = i10;
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        l1.c cVar = l1.d.f10386a;
        l1.d.b(new l1.a(this, z));
        l1.d.a(this).getClass();
        boolean z4 = false;
        if (!this.mUserVisibleHint && z && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            d1 d1Var = this.mFragmentManager;
            k1 k1VarF = d1Var.f(this);
            Fragment fragment = k1VarF.f1320c;
            if (fragment.mDeferStart) {
                if (d1Var.f1230b) {
                    d1Var.H = true;
                } else {
                    fragment.mDeferStart = false;
                    k1VarF.i();
                }
            }
        }
        this.mUserVisibleHint = z;
        if (this.mState < 5 && !z) {
            z4 = true;
        }
        this.mDeferStart = z4;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        o0 o0Var = this.mHost;
        if (o0Var == null) {
            return false;
        }
        i0 i0Var = (i0) o0Var;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 33 && TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return false;
        }
        q.i iVar = i0Var.f1291e;
        if (i10 >= 32) {
            return m0.d.a(iVar, str);
        }
        if (i10 == 31) {
            return m0.c.b(iVar, str);
        }
        if (i10 >= 23) {
            return m0.b.c(iVar, str);
        }
        return false;
    }

    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    @Deprecated
    public void startActivityForResult(Intent intent, int i10) {
        startActivityForResult(intent, i10, null);
    }

    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) throws IntentSender.SendIntentException {
        Intent intent2;
        if (this.mHost == null) {
            throw new IllegalStateException(android.support.v4.media.session.a.q("Fragment ", this, " not attached to Activity"));
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            toString();
            if (intentSender != null) {
                intentSender.toString();
            }
            if (intent != null) {
                intent.toString();
            }
            if (bundle != null) {
                bundle.toString();
            }
        }
        d1 parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.A == null) {
            o0 o0Var = parentFragmentManager.f1246t;
            if (i10 == -1) {
                m0.a.c(o0Var.f1359a, intentSender, i10, intent, i11, i12, i13, bundle);
                return;
            } else {
                o0Var.getClass();
                throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
            }
        }
        if (bundle != null) {
            if (intent == null) {
                intent2 = new Intent();
                intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            } else {
                intent2 = intent;
            }
            if (Log.isLoggable("FragmentManager", 2)) {
                bundle.toString();
                intent2.toString();
                toString();
            }
            intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        } else {
            intent2 = intent;
        }
        ue.d.e(intentSender, "intentSender");
        androidx.activity.result.i iVar = new androidx.activity.result.i(intentSender, intent2, i11, i12);
        parentFragmentManager.C.addLast(new a1(this.mWho, i10));
        if (Log.isLoggable("FragmentManager", 2)) {
            toString();
        }
        parentFragmentManager.A.a(iVar);
    }

    public void startPostponedEnterTransition() {
        if (this.mAnimationInfo == null || !b().f1193s) {
            return;
        }
        if (this.mHost == null) {
            b().f1193s = false;
        } else if (Looper.myLooper() != this.mHost.f1361c.getLooper()) {
            this.mHost.f1361c.postAtFrontOfQueue(new v(this, 1));
        } else {
            callStartTransitionListener(true);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append(getClass().getSimpleName());
        sb2.append("{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("} (");
        sb2.append(this.mWho);
        if (this.mFragmentId != 0) {
            sb2.append(" id=0x");
            sb2.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb2.append(" tag=");
            sb2.append(this.mTag);
        }
        sb2.append(")");
        return sb2.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str, Bundle bundle) {
        try {
            Fragment fragment = (Fragment) w0.b(context.getClassLoader(), str).getConstructor(null).newInstance(null);
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.setArguments(bundle);
            }
            return fragment;
        } catch (IllegalAccessException e7) {
            throw new b0(0, g.b.A("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e7);
        } catch (InstantiationException e10) {
            throw new b0(0, g.b.A("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e10);
        } catch (NoSuchMethodException e11) {
            throw new b0(0, g.b.A("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e11);
        } catch (InvocationTargetException e12) {
            throw new b0(0, g.b.A("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e12);
        }
    }

    public final String getString(int i10, Object... objArr) {
        return getResources().getString(i10, objArr);
    }

    public final void postponeEnterTransition(long j10, TimeUnit timeUnit) {
        b().f1193s = true;
        Handler handler = this.mPostponedHandler;
        if (handler != null) {
            handler.removeCallbacks(this.mPostponedDurationRunnable);
        }
        d1 d1Var = this.mFragmentManager;
        if (d1Var != null) {
            this.mPostponedHandler = d1Var.f1246t.f1361c;
        } else {
            this.mPostponedHandler = new Handler(Looper.getMainLooper());
        }
        this.mPostponedHandler.removeCallbacks(this.mPostponedDurationRunnable);
        this.mPostponedHandler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j10));
    }

    public final <I, O> androidx.activity.result.c registerForActivityResult(n.a aVar, androidx.activity.result.g gVar, androidx.activity.result.b bVar) {
        return f(aVar, new y(2, gVar), bVar);
    }

    public void startActivity(Intent intent, Bundle bundle) {
        o0 o0Var = this.mHost;
        if (o0Var == null) {
            throw new IllegalStateException(android.support.v4.media.session.a.q("Fragment ", this, " not attached to Activity"));
        }
        n0.a.b(o0Var.f1360b, intent, bundle);
    }

    @Deprecated
    public void startActivityForResult(Intent intent, int i10, Bundle bundle) {
        if (this.mHost == null) {
            throw new IllegalStateException(android.support.v4.media.session.a.q("Fragment ", this, " not attached to Activity"));
        }
        d1 parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.z != null) {
            parentFragmentManager.C.addLast(new a1(this.mWho, i10));
            if (bundle != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
            }
            parentFragmentManager.z.a(intent);
            return;
        }
        o0 o0Var = parentFragmentManager.f1246t;
        if (i10 == -1) {
            n0.a.b(o0Var.f1360b, intent, bundle);
        } else {
            o0Var.getClass();
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        o0 o0Var = this.mHost;
        if (o0Var != null) {
            q.i iVar = ((i0) o0Var).f1291e;
            LayoutInflater layoutInflaterCloneInContext = iVar.getLayoutInflater().cloneInContext(iVar);
            q0 q0Var = this.mChildFragmentManager.f1234f;
            layoutInflaterCloneInContext.setFactory2(q0Var);
            if (Build.VERSION.SDK_INT < 21) {
                LayoutInflater.Factory factory = layoutInflaterCloneInContext.getFactory();
                if (factory instanceof LayoutInflater.Factory2) {
                    com.bumptech.glide.c.v(layoutInflaterCloneInContext, (LayoutInflater.Factory2) factory);
                } else {
                    com.bumptech.glide.c.v(layoutInflaterCloneInContext, q0Var);
                }
            }
            return layoutInflaterCloneInContext;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }
}
