package androidx.fragment.app;

import android.transition.Transition;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class r1 implements Transition.TransitionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f1376a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1377b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1378c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1379d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ t1 f1380e;

    public r1(t1 t1Var, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2) {
        this.f1380e = t1Var;
        this.f1376a = obj;
        this.f1377b = arrayList;
        this.f1378c = obj2;
        this.f1379d = arrayList2;
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
        Object obj = this.f1376a;
        if (obj != null) {
            this.f1380e.t(obj, this.f1377b, null);
        }
        Object obj2 = this.f1378c;
        if (obj2 != null) {
            this.f1380e.t(obj2, this.f1379d, null);
        }
    }
}
