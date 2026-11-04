package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class t1 extends v1 {
    public static boolean s(Transition transition) {
        return (v1.h(transition.getTargetIds()) && v1.h(transition.getTargetNames()) && v1.h(transition.getTargetTypes())) ? false : true;
    }

    @Override // androidx.fragment.app.v1
    public final void a(View view, Object obj) {
        a2.p0.e(obj).addTarget(view);
    }

    @Override // androidx.fragment.app.v1
    public final void b(Object obj, ArrayList arrayList) {
        Transition transitionE = a2.p0.e(obj);
        if (transitionE == null) {
            return;
        }
        int i10 = 0;
        if (a2.p0.D(transitionE)) {
            TransitionSet transitionSetF = a2.p0.f(transitionE);
            int transitionCount = transitionSetF.getTransitionCount();
            while (i10 < transitionCount) {
                b(transitionSetF.getTransitionAt(i10), arrayList);
                i10++;
            }
            return;
        }
        if (s(transitionE) || !v1.h(transitionE.getTargets())) {
            return;
        }
        int size = arrayList.size();
        while (i10 < size) {
            transitionE.addTarget((View) arrayList.get(i10));
            i10++;
        }
    }

    @Override // androidx.fragment.app.v1
    public final void c(ViewGroup viewGroup, Object obj) {
        TransitionManager.beginDelayedTransition(viewGroup, a2.p0.e(obj));
    }

    @Override // androidx.fragment.app.v1
    public final boolean e(Object obj) {
        return a2.p0.w(obj);
    }

    @Override // androidx.fragment.app.v1
    public final Object f(Object obj) {
        if (obj != null) {
            return a2.p0.e(obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.v1
    public final Object i(Object obj, Object obj2, Object obj3) {
        Transition ordering = (Transition) obj;
        Transition transition = (Transition) obj2;
        Transition transition2 = (Transition) obj3;
        if (ordering != null && transition != null) {
            ordering = new TransitionSet().addTransition(ordering).addTransition(transition).setOrdering(1);
        } else if (ordering == null) {
            ordering = transition != null ? transition : null;
        }
        if (transition2 == null) {
            return ordering;
        }
        TransitionSet transitionSet = new TransitionSet();
        if (ordering != null) {
            transitionSet.addTransition(ordering);
        }
        transitionSet.addTransition(transition2);
        return transitionSet;
    }

    @Override // androidx.fragment.app.v1
    public final Object j(Object obj, Object obj2) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.addTransition((Transition) obj);
        }
        transitionSet.addTransition((Transition) obj2);
        return transitionSet;
    }

    @Override // androidx.fragment.app.v1
    public final void k(Object obj, View view, ArrayList arrayList) {
        a2.p0.e(obj).addListener(new q1(view, arrayList));
    }

    @Override // androidx.fragment.app.v1
    public final void l(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2) {
        a2.p0.e(obj).addListener(new r1(this, obj2, arrayList, obj3, arrayList2));
    }

    @Override // androidx.fragment.app.v1
    public final void m(View view, Object obj) {
        if (view != null) {
            Transition transitionE = a2.p0.e(obj);
            Rect rect = new Rect();
            v1.g(view, rect);
            transitionE.setEpicenterCallback(new p1(0, rect));
        }
    }

    @Override // androidx.fragment.app.v1
    public final void n(Object obj, Rect rect) {
        a2.p0.e(obj).setEpicenterCallback(new p1(1, rect));
    }

    @Override // androidx.fragment.app.v1
    public final void o(Object obj, t0.g gVar, h hVar) {
        a2.p0.e(obj).addListener(new s1(hVar));
    }

    @Override // androidx.fragment.app.v1
    public final void p(Object obj, View view, ArrayList arrayList) {
        TransitionSet transitionSetF = a2.p0.f(obj);
        List targets = transitionSetF.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            v1.d((View) arrayList.get(i10), targets);
        }
        targets.add(view);
        arrayList.add(view);
        b(transitionSetF, arrayList);
    }

    @Override // androidx.fragment.app.v1
    public final void q(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        TransitionSet transitionSetF = a2.p0.f(obj);
        if (transitionSetF != null) {
            transitionSetF.getTargets().clear();
            transitionSetF.getTargets().addAll(arrayList2);
            t(transitionSetF, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.v1
    public final Object r(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition((Transition) obj);
        return transitionSet;
    }

    public final void t(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        List targets;
        Transition transitionE = a2.p0.e(obj);
        int i10 = 0;
        if (a2.p0.D(transitionE)) {
            TransitionSet transitionSetF = a2.p0.f(transitionE);
            int transitionCount = transitionSetF.getTransitionCount();
            while (i10 < transitionCount) {
                t(transitionSetF.getTransitionAt(i10), arrayList, arrayList2);
                i10++;
            }
            return;
        }
        if (s(transitionE) || (targets = transitionE.getTargets()) == null || targets.size() != arrayList.size() || !targets.containsAll(arrayList)) {
            return;
        }
        int size = arrayList2 == null ? 0 : arrayList2.size();
        while (i10 < size) {
            transitionE.addTarget((View) arrayList2.get(i10));
            i10++;
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            transitionE.removeTarget((View) arrayList.get(size2));
        }
    }
}
