package androidx.fragment.app;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f1350a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1351b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1352c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1353d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1354e;

    public n(ViewGroup viewGroup) {
        ue.d.e(viewGroup, "container");
        ue.d.e(viewGroup, "container");
        this.f1350a = viewGroup;
        this.f1351b = new ArrayList();
        this.f1352c = new ArrayList();
    }

    public static void a(View view, ArrayList arrayList) {
        boolean zB;
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (Build.VERSION.SDK_INT >= 21) {
            zB = x0.f1.b(viewGroup);
        } else {
            Boolean bool = (Boolean) viewGroup.getTag(R.id.tag_transition_group);
            zB = ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && x0.b1.k(viewGroup) == null) ? false : true;
        }
        if (zB) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
        } else {
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt.getVisibility() == 0) {
                    a(childAt, arrayList);
                }
            }
        }
    }

    public static void e(a0.e eVar, View view) {
        String strK = x0.b1.k(view);
        if (strK != null) {
            eVar.put(strK, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = viewGroup.getChildAt(i10);
                if (childAt.getVisibility() == 0) {
                    e(eVar, childAt);
                }
            }
        }
    }

    public static final n h(ViewGroup viewGroup, d1 d1Var) {
        ue.d.e(viewGroup, "container");
        ue.d.e(d1Var, "fragmentManager");
        ue.d.d(d1Var.F(), "fragmentManager.specialEffectsControllerFactory");
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof n) {
            return (n) tag;
        }
        n nVar = new n(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, nVar);
        return nVar;
    }

    public static void j(a0.e eVar, Collection collection) {
        Iterator it = ((b8.l) eVar.entrySet()).iterator();
        while (it.hasNext()) {
            it.next();
            if (!collection.contains(x0.b1.k((View) ((Map.Entry) it).getValue()))) {
                it.remove();
            }
        }
    }

    public final void b(c2 c2Var, b2 b2Var, k1 k1Var) {
        synchronized (this.f1351b) {
            t0.g gVar = new t0.g();
            Fragment fragment = k1Var.f1320c;
            ue.d.d(fragment, "fragmentStateManager.fragment");
            z1 z1VarF = f(fragment);
            if (z1VarF != null) {
                z1VarF.c(c2Var, b2Var);
                return;
            }
            final z1 z1Var = new z1(c2Var, b2Var, k1Var, gVar);
            this.f1351b.add(z1Var);
            final int i10 = 0;
            z1Var.f1439d.add(new Runnable(this) { // from class: androidx.fragment.app.y1

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ n f1429b;

                {
                    this.f1429b = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i10) {
                        case 0:
                            n nVar = this.f1429b;
                            ue.d.e(nVar, "this$0");
                            z1 z1Var2 = z1Var;
                            if (nVar.f1351b.contains(z1Var2)) {
                                c2 c2Var2 = z1Var2.f1436a;
                                View view = z1Var2.f1438c.mView;
                                ue.d.d(view, "operation.fragment.mView");
                                c2Var2.a(view);
                                break;
                            }
                            break;
                        default:
                            n nVar2 = this.f1429b;
                            ue.d.e(nVar2, "this$0");
                            z1 z1Var3 = z1Var;
                            nVar2.f1351b.remove(z1Var3);
                            nVar2.f1352c.remove(z1Var3);
                            break;
                    }
                }
            });
            final int i11 = 1;
            z1Var.f1439d.add(new Runnable(this) { // from class: androidx.fragment.app.y1

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ n f1429b;

                {
                    this.f1429b = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i11) {
                        case 0:
                            n nVar = this.f1429b;
                            ue.d.e(nVar, "this$0");
                            z1 z1Var2 = z1Var;
                            if (nVar.f1351b.contains(z1Var2)) {
                                c2 c2Var2 = z1Var2.f1436a;
                                View view = z1Var2.f1438c.mView;
                                ue.d.d(view, "operation.fragment.mView");
                                c2Var2.a(view);
                                break;
                            }
                            break;
                        default:
                            n nVar2 = this.f1429b;
                            ue.d.e(nVar2, "this$0");
                            z1 z1Var3 = z1Var;
                            nVar2.f1351b.remove(z1Var3);
                            nVar2.f1352c.remove(z1Var3);
                            break;
                    }
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:240:0x06b7  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0768  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x080a A[LOOP:10: B:299:0x0804->B:301:0x080a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0829  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x075c A[EDGE_INSN: B:344:0x075c->B:267:0x075c BREAK  A[LOOP:8: B:238:0x06af->B:352:0x06af], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:412:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v9, types: [a0.t] */
    /* JADX WARN: Type inference failed for: r4v28, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(ArrayList arrayList, boolean z) {
        c2 c2Var;
        String str;
        Object next;
        z1 z1VarPrevious;
        ArrayList arrayList2;
        ArrayList arrayList3;
        LinkedHashMap linkedHashMap;
        z1 z1Var;
        String str2;
        c2 c2Var2;
        z1 z1Var2;
        z1 z1Var3;
        c2 c2Var3;
        String str3;
        a0.e eVar;
        c2 c2Var4;
        View view;
        View view2;
        ArrayList arrayList4;
        v1 v1Var;
        String str4;
        String str5;
        LinkedHashMap linkedHashMap2;
        Rect rect;
        ie.b bVar;
        View view3;
        Iterator it;
        String str6;
        Iterator it2;
        Iterator it3;
        Iterator it4 = arrayList.iterator();
        while (true) {
            boolean zHasNext = it4.hasNext();
            c2Var = c2.VISIBLE;
            str = "operation.fragment.mView";
            if (!zHasNext) {
                next = null;
                break;
            }
            next = it4.next();
            z1 z1Var4 = (z1) next;
            View view4 = z1Var4.f1438c.mView;
            ue.d.d(view4, "operation.fragment.mView");
            if (com.bumptech.glide.d.f(view4) == c2Var && z1Var4.f1436a != c2Var) {
                break;
            }
        }
        z1 z1Var5 = (z1) next;
        ListIterator listIterator = arrayList.listIterator(arrayList.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                z1VarPrevious = 0;
                break;
            }
            z1VarPrevious = listIterator.previous();
            z1 z1Var6 = (z1) z1VarPrevious;
            View view5 = z1Var6.f1438c.mView;
            ue.d.d(view5, "operation.fragment.mView");
            if (com.bumptech.glide.d.f(view5) != c2Var && z1Var6.f1436a == c2Var) {
                break;
            }
        }
        z1 z1Var7 = z1VarPrevious;
        String str7 = "FragmentManager";
        if (Log.isLoggable("FragmentManager", 2)) {
            if (z1Var5 != null) {
                z1Var5.toString();
            }
            if (z1Var7 != null) {
                z1Var7.toString();
            }
        }
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayListN0 = je.j.n0(arrayList);
        if (arrayList.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        Fragment fragment = ((z1) arrayList.get(je.k.k0(arrayList))).f1438c;
        Iterator it5 = arrayList.iterator();
        while (it5.hasNext()) {
            a0 a0Var = ((z1) it5.next()).f1438c.mAnimationInfo;
            a0 a0Var2 = fragment.mAnimationInfo;
            a0Var.f1178b = a0Var2.f1178b;
            a0Var.f1179c = a0Var2.f1179c;
            a0Var.f1180d = a0Var2.f1180d;
            a0Var.f1181e = a0Var2.f1181e;
        }
        Iterator it6 = arrayList.iterator();
        while (it6.hasNext()) {
            z1 z1Var8 = (z1) it6.next();
            t0.g gVar = new t0.g();
            z1Var8.d();
            LinkedHashSet linkedHashSet = z1Var8.f1440e;
            linkedHashSet.add(gVar);
            arrayList5.add(new i(z1Var8, gVar, z));
            t0.g gVar2 = new t0.g();
            z1Var8.d();
            linkedHashSet.add(gVar2);
            arrayList6.add(new k(z1Var8, gVar2, z, !z ? z1Var8 != z1Var7 : z1Var8 != z1Var5));
            z1Var8.f1439d.add(new d(arrayListN0, z1Var8, this));
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        ArrayList arrayList7 = new ArrayList();
        Iterator it7 = arrayList6.iterator();
        while (it7.hasNext()) {
            Object next2 = it7.next();
            if (!((k) next2).b()) {
                arrayList7.add(next2);
            }
        }
        ArrayList arrayList8 = new ArrayList();
        Iterator it8 = arrayList7.iterator();
        while (it8.hasNext()) {
            Object next3 = it8.next();
            if (((k) next3).c() != null) {
                arrayList8.add(next3);
            }
        }
        Iterator it9 = arrayList8.iterator();
        v1 v1Var2 = null;
        while (it9.hasNext()) {
            k kVar = (k) it9.next();
            v1 v1VarC = kVar.c();
            if (v1Var2 != null && v1VarC != v1Var2) {
                throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + kVar.f1305a.f1438c + " returned Transition " + kVar.f1313c + " which uses a different Transition type than other Fragments.").toString());
            }
            v1Var2 = v1VarC;
        }
        c2 c2Var5 = c2.GONE;
        ViewGroup viewGroup = this.f1350a;
        if (v1Var2 == null) {
            Iterator it10 = arrayList6.iterator();
            while (it10.hasNext()) {
                k kVar2 = (k) it10.next();
                linkedHashMap3.put(kVar2.f1305a, Boolean.FALSE);
                kVar2.a();
            }
            arrayList2 = arrayList5;
            linkedHashMap = linkedHashMap3;
            z1Var2 = z1Var5;
            z1Var = z1Var7;
            str2 = "FragmentManager";
            c2Var2 = c2Var5;
            arrayList3 = arrayListN0;
        } else {
            View view6 = new View(viewGroup.getContext());
            Rect rect2 = new Rect();
            ArrayList arrayList9 = new ArrayList();
            arrayList2 = arrayList5;
            ArrayList arrayList10 = new ArrayList();
            c2 c2Var6 = c2Var;
            a0.e eVar2 = new a0.e();
            Iterator it11 = arrayList6.iterator();
            arrayList3 = arrayListN0;
            Object objR = null;
            View view7 = null;
            boolean z4 = false;
            while (it11.hasNext()) {
                c2 c2Var7 = c2Var5;
                Object obj = ((k) it11.next()).f1315e;
                if (obj == null || z1Var5 == null || z1Var7 == null) {
                    arrayList4 = arrayList6;
                    v1Var = v1Var2;
                    str4 = str;
                    str5 = str7;
                    linkedHashMap2 = linkedHashMap3;
                    rect = rect2;
                    rect2 = rect;
                    linkedHashMap3 = linkedHashMap2;
                    c2Var5 = c2Var7;
                    str = str4;
                    str7 = str5;
                    v1Var2 = v1Var;
                    arrayList6 = arrayList4;
                } else {
                    objR = v1Var2.r(v1Var2.f(obj));
                    Fragment fragment2 = z1Var7.f1438c;
                    str4 = str;
                    ArrayList<String> sharedElementSourceNames = fragment2.getSharedElementSourceNames();
                    arrayList4 = arrayList6;
                    ue.d.d(sharedElementSourceNames, "lastIn.fragment.sharedElementSourceNames");
                    Fragment fragment3 = z1Var5.f1438c;
                    LinkedHashMap linkedHashMap4 = linkedHashMap3;
                    ArrayList<String> sharedElementSourceNames2 = fragment3.getSharedElementSourceNames();
                    View view8 = view6;
                    ue.d.d(sharedElementSourceNames2, "firstOut.fragment.sharedElementSourceNames");
                    ArrayList<String> sharedElementTargetNames = fragment3.getSharedElementTargetNames();
                    Rect rect3 = rect2;
                    ue.d.d(sharedElementTargetNames, "firstOut.fragment.sharedElementTargetNames");
                    int size = sharedElementTargetNames.size();
                    v1 v1Var3 = v1Var2;
                    int i10 = 0;
                    while (i10 < size) {
                        int i11 = size;
                        int iIndexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i10));
                        ArrayList<String> arrayList11 = sharedElementTargetNames;
                        if (iIndexOf != -1) {
                            sharedElementSourceNames.set(iIndexOf, sharedElementSourceNames2.get(i10));
                        }
                        i10++;
                        size = i11;
                        sharedElementTargetNames = arrayList11;
                    }
                    ArrayList<String> sharedElementTargetNames2 = fragment2.getSharedElementTargetNames();
                    ue.d.d(sharedElementTargetNames2, "lastIn.fragment.sharedElementTargetNames");
                    if (z) {
                        fragment3.getEnterTransitionCallback();
                        fragment2.getExitTransitionCallback();
                        bVar = new ie.b(null, null);
                    } else {
                        fragment3.getExitTransitionCallback();
                        fragment2.getEnterTransitionCallback();
                        bVar = new ie.b(null, null);
                    }
                    if (bVar.f8683a != null) {
                        throw new ClassCastException();
                    }
                    if (bVar.f8684b != null) {
                        throw new ClassCastException();
                    }
                    int i12 = 0;
                    for (int size2 = sharedElementSourceNames.size(); i12 < size2; size2 = size2) {
                        eVar2.put(sharedElementSourceNames.get(i12), sharedElementTargetNames2.get(i12));
                        i12++;
                    }
                    if (Log.isLoggable(str7, 2)) {
                        Iterator<String> it12 = sharedElementTargetNames2.iterator();
                        while (it12.hasNext()) {
                            it12.next();
                        }
                        Iterator<String> it13 = sharedElementSourceNames.iterator();
                        while (it13.hasNext()) {
                            it13.next();
                        }
                    }
                    a0.e eVar3 = new a0.e();
                    View view9 = fragment3.mView;
                    ue.d.d(view9, "firstOut.fragment.mView");
                    e(eVar3, view9);
                    eVar3.m(sharedElementSourceNames);
                    eVar2.m(eVar3.keySet());
                    a0.e eVar4 = new a0.e();
                    View view10 = fragment2.mView;
                    str5 = str7;
                    ue.d.d(view10, "lastIn.fragment.mView");
                    e(eVar4, view10);
                    eVar4.m(sharedElementTargetNames2);
                    eVar4.m(eVar2.values());
                    t1 t1Var = n1.f1355a;
                    int i13 = -1;
                    for (int i14 = eVar2.f65c - 1; i13 < i14; i14--) {
                        if (!eVar4.containsKey((String) eVar2.j(i14))) {
                            eVar2.h(i14);
                        }
                        i13 = -1;
                    }
                    j(eVar3, eVar2.keySet());
                    j(eVar4, eVar2.values());
                    if (eVar2.isEmpty()) {
                        arrayList9.clear();
                        arrayList10.clear();
                        c2Var5 = c2Var7;
                        str = str4;
                        arrayList6 = arrayList4;
                        linkedHashMap3 = linkedHashMap4;
                        view6 = view8;
                        rect2 = rect3;
                        v1Var2 = v1Var3;
                        str7 = str5;
                        objR = null;
                    } else {
                        if (z) {
                            fragment3.getEnterTransitionCallback();
                        } else {
                            fragment2.getEnterTransitionCallback();
                        }
                        x0.a0.a(viewGroup, new g(z1Var7, z1Var5, z, eVar4));
                        arrayList9.addAll(eVar3.values());
                        if (sharedElementSourceNames.isEmpty()) {
                            v1Var = v1Var3;
                        } else {
                            View view11 = (View) eVar3.get(sharedElementSourceNames.get(0));
                            v1Var = v1Var3;
                            v1Var.m(view11, objR);
                            view7 = view11;
                        }
                        arrayList10.addAll(eVar4.values());
                        if (sharedElementTargetNames2.isEmpty() || (view3 = (View) eVar4.get(sharedElementTargetNames2.get(0))) == null) {
                            rect = rect3;
                            view6 = view8;
                        } else {
                            rect = rect3;
                            x0.a0.a(viewGroup, new h(v1Var, view3, rect));
                            view6 = view8;
                            z4 = true;
                        }
                        v1Var.p(objR, view6, arrayList9);
                        v1Var.l(objR, null, null, objR, arrayList10);
                        Boolean bool = Boolean.TRUE;
                        linkedHashMap2 = linkedHashMap4;
                        linkedHashMap2.put(z1Var5, bool);
                        linkedHashMap2.put(z1Var7, bool);
                        rect2 = rect;
                        linkedHashMap3 = linkedHashMap2;
                        c2Var5 = c2Var7;
                        str = str4;
                        str7 = str5;
                        v1Var2 = v1Var;
                        arrayList6 = arrayList4;
                    }
                }
            }
            ArrayList arrayList12 = arrayList6;
            v1 v1Var4 = v1Var2;
            String str8 = str;
            String str9 = str7;
            c2 c2Var8 = c2Var5;
            linkedHashMap = linkedHashMap3;
            Rect rect4 = rect2;
            ArrayList arrayList13 = new ArrayList();
            Iterator it14 = arrayList12.iterator();
            Object obj2 = null;
            Object objJ = null;
            while (it14.hasNext()) {
                k kVar3 = (k) it14.next();
                boolean zB = kVar3.b();
                Iterator it15 = it14;
                z1 z1Var9 = kVar3.f1305a;
                if (zB) {
                    eVar = eVar2;
                    linkedHashMap.put(z1Var9, Boolean.FALSE);
                    kVar3.a();
                } else {
                    eVar = eVar2;
                    Object objF = v1Var4.f(kVar3.f1313c);
                    boolean z10 = objR != null && (z1Var9 == z1Var5 || z1Var9 == z1Var7);
                    if (objF != null) {
                        z1 z1Var10 = z1Var7;
                        ArrayList arrayList14 = new ArrayList();
                        Object obj3 = objR;
                        Fragment fragment4 = z1Var9.f1438c;
                        Object obj4 = objJ;
                        View view12 = fragment4.mView;
                        Object obj5 = obj2;
                        String str10 = str8;
                        ue.d.d(view12, str10);
                        a(view12, arrayList14);
                        if (z10) {
                            if (z1Var9 == z1Var5) {
                                arrayList14.removeAll(je.j.o0(arrayList9));
                            } else {
                                arrayList14.removeAll(je.j.o0(arrayList10));
                            }
                        }
                        if (arrayList14.isEmpty()) {
                            v1Var4.a(view6, objF);
                            view = view6;
                            str8 = str10;
                            c2Var4 = c2Var8;
                        } else {
                            v1Var4.b(objF, arrayList14);
                            v1Var4.l(objF, objF, arrayList14, null, null);
                            str8 = str10;
                            c2Var4 = c2Var8;
                            if (z1Var9.f1436a == c2Var4) {
                                arrayList3.remove(z1Var9);
                                view = view6;
                                ArrayList arrayList15 = new ArrayList(arrayList14);
                                arrayList15.remove(fragment4.mView);
                                v1Var4.k(objF, fragment4.mView, arrayList15);
                                x0.a0.a(viewGroup, new t(1, arrayList14));
                            } else {
                                view = view6;
                            }
                        }
                        c2 c2Var9 = c2Var6;
                        if (z1Var9.f1436a == c2Var9) {
                            arrayList13.addAll(arrayList14);
                            if (z4) {
                                v1Var4.n(objF, rect4);
                            }
                            view2 = view7;
                        } else {
                            view2 = view7;
                            v1Var4.m(view2, objF);
                        }
                        linkedHashMap.put(z1Var9, Boolean.TRUE);
                        if (kVar3.f1314d) {
                            Object objJ2 = v1Var4.j(obj5, objF);
                            view7 = view2;
                            c2Var8 = c2Var4;
                            c2Var6 = c2Var9;
                            eVar2 = eVar;
                            view6 = view;
                            z1Var7 = z1Var10;
                            objR = obj3;
                            objJ = obj4;
                            obj2 = objJ2;
                        } else {
                            view7 = view2;
                            c2Var8 = c2Var4;
                            c2Var6 = c2Var9;
                            view6 = view;
                            z1Var7 = z1Var10;
                            objR = obj3;
                            obj2 = obj5;
                            objJ = v1Var4.j(obj4, objF);
                            eVar2 = eVar;
                        }
                        it14 = it15;
                    } else if (!z10) {
                        linkedHashMap.put(z1Var9, Boolean.FALSE);
                        kVar3.a();
                    }
                }
                it14 = it15;
                eVar2 = eVar;
            }
            a0.e eVar5 = eVar2;
            z1Var = z1Var7;
            c2 c2Var10 = c2Var8;
            Object objI = v1Var4.i(obj2, objJ, objR);
            if (objI == null) {
                c2Var2 = c2Var10;
                z1Var2 = z1Var5;
                str2 = str9;
            } else {
                ArrayList arrayList16 = new ArrayList();
                Iterator it16 = arrayList12.iterator();
                while (it16.hasNext()) {
                    Object next4 = it16.next();
                    if (!((k) next4).b()) {
                        arrayList16.add(next4);
                    }
                }
                Iterator it17 = arrayList16.iterator();
                while (it17.hasNext()) {
                    k kVar4 = (k) it17.next();
                    Object obj6 = kVar4.f1313c;
                    z1 z1Var11 = kVar4.f1305a;
                    z1 z1Var12 = z1Var;
                    boolean z11 = objR != null && (z1Var11 == z1Var5 || z1Var11 == z1Var12);
                    if (obj6 == null && !z11) {
                        str3 = str9;
                    } else if (x0.b1.m(viewGroup)) {
                        str3 = str9;
                        v1Var4.o(objI, kVar4.f1306b, new h(kVar4, z1Var11));
                    } else {
                        str3 = str9;
                        if (Log.isLoggable(str3, 2)) {
                            viewGroup.toString();
                            z1Var11.toString();
                        }
                        kVar4.a();
                    }
                    str9 = str3;
                    z1Var = z1Var12;
                }
                z1 z1Var13 = z1Var;
                str2 = str9;
                if (x0.b1.m(viewGroup)) {
                    n1.a(4, arrayList13);
                    ArrayList arrayList17 = new ArrayList();
                    int i15 = 0;
                    for (int size3 = arrayList10.size(); i15 < size3; size3 = size3) {
                        View view13 = (View) arrayList10.get(i15);
                        arrayList17.add(x0.b1.k(view13));
                        x0.b1.D(view13, null);
                        i15++;
                    }
                    if (Log.isLoggable(str2, 2)) {
                        Iterator it18 = arrayList9.iterator();
                        while (it18.hasNext()) {
                            Object next5 = it18.next();
                            ue.d.d(next5, "sharedElementFirstOutViews");
                            View view14 = (View) next5;
                            view14.toString();
                            x0.b1.k(view14);
                        }
                        Iterator it19 = arrayList10.iterator();
                        while (it19.hasNext()) {
                            Object next6 = it19.next();
                            ue.d.d(next6, "sharedElementLastInViews");
                            View view15 = (View) next6;
                            view15.toString();
                            x0.b1.k(view15);
                        }
                    }
                    v1Var4.c(viewGroup, objI);
                    int size4 = arrayList10.size();
                    ArrayList arrayList18 = new ArrayList();
                    int i16 = 0;
                    while (i16 < size4) {
                        View view16 = (View) arrayList9.get(i16);
                        z1 z1Var14 = z1Var13;
                        String strK = x0.b1.k(view16);
                        arrayList18.add(strK);
                        if (strK == null) {
                            c2Var3 = c2Var10;
                            z1Var3 = z1Var5;
                        } else {
                            z1Var3 = z1Var5;
                            x0.b1.D(view16, null);
                            ?? r13 = eVar5;
                            String str11 = (String) r13.get(strK);
                            eVar5 = r13;
                            int i17 = 0;
                            while (true) {
                                c2Var3 = c2Var10;
                                if (i17 >= size4) {
                                    break;
                                }
                                if (str11.equals(arrayList17.get(i17))) {
                                    x0.b1.D((View) arrayList10.get(i17), strK);
                                    break;
                                } else {
                                    i17++;
                                    c2Var10 = c2Var3;
                                }
                            }
                        }
                        i16++;
                        z1Var5 = z1Var3;
                        z1Var13 = z1Var14;
                        c2Var10 = c2Var3;
                    }
                    c2Var2 = c2Var10;
                    z1Var2 = z1Var5;
                    z1Var = z1Var13;
                    x0.a0.a(viewGroup, new u1(size4, arrayList10, arrayList17, arrayList9, arrayList18));
                    n1.a(0, arrayList13);
                    v1Var4.q(objR, arrayList9, arrayList10);
                    boolean zContainsValue = linkedHashMap.containsValue(Boolean.TRUE);
                    Context context = viewGroup.getContext();
                    ArrayList arrayList19 = new ArrayList();
                    it = arrayList2.iterator();
                    boolean z12 = false;
                    while (true) {
                        str6 = "context";
                        if (it.hasNext()) {
                            break;
                        }
                        i iVar = (i) it.next();
                        if (iVar.b()) {
                            iVar.a();
                        } else {
                            ue.d.d(context, "context");
                            k0 k0VarC = iVar.c(context);
                            if (k0VarC == null) {
                                iVar.a();
                            } else {
                                final Animator animator = (Animator) k0VarC.f1317b;
                                if (animator == null) {
                                    arrayList19.add(iVar);
                                } else {
                                    final z1 z1Var15 = iVar.f1305a;
                                    boolean zA = ue.d.a(linkedHashMap.get(z1Var15), Boolean.TRUE);
                                    Fragment fragment5 = z1Var15.f1438c;
                                    if (zA) {
                                        if (Log.isLoggable(str2, 2) && fragment5 != null) {
                                            fragment5.toString();
                                        }
                                        iVar.a();
                                    } else {
                                        c2 c2Var11 = c2Var2;
                                        boolean z13 = z1Var15.f1436a == c2Var11;
                                        ArrayList arrayList20 = arrayList3;
                                        if (z13) {
                                            arrayList20.remove(z1Var15);
                                        }
                                        View view17 = fragment5.mView;
                                        viewGroup.startViewTransition(view17);
                                        animator.addListener(new l(this, view17, z13, z1Var15, iVar));
                                        animator.setTarget(view17);
                                        animator.start();
                                        if (Log.isLoggable(str2, 2)) {
                                            z1Var15.toString();
                                        }
                                        iVar.f1306b.a(new t0.f() { // from class: androidx.fragment.app.e
                                            @Override // t0.f
                                            public final void c() {
                                                z1 z1Var16 = z1Var15;
                                                ue.d.e(z1Var16, "$operation");
                                                animator.end();
                                                if (Log.isLoggable("FragmentManager", 2)) {
                                                    z1Var16.toString();
                                                }
                                            }
                                        });
                                        c2Var2 = c2Var11;
                                        arrayList3 = arrayList20;
                                        z12 = true;
                                    }
                                }
                            }
                        }
                    }
                    ArrayList arrayList21 = arrayList3;
                    it2 = arrayList19.iterator();
                    while (it2.hasNext()) {
                        i iVar2 = (i) it2.next();
                        z1 z1Var16 = iVar2.f1305a;
                        Fragment fragment6 = z1Var16.f1438c;
                        if (zContainsValue) {
                            if (Log.isLoggable(str2, 2) && fragment6 != null) {
                                fragment6.toString();
                            }
                            iVar2.a();
                        } else if (z12) {
                            if (Log.isLoggable(str2, 2) && fragment6 != null) {
                                fragment6.toString();
                            }
                            iVar2.a();
                        } else {
                            View view18 = fragment6.mView;
                            ue.d.d(context, str6);
                            k0 k0VarC2 = iVar2.c(context);
                            if (k0VarC2 == null) {
                                throw new IllegalStateException("Required value was null.");
                            }
                            Animation animation = (Animation) k0VarC2.f1316a;
                            if (animation == null) {
                                throw new IllegalStateException("Required value was null.");
                            }
                            if (z1Var16.f1436a != c2.REMOVED) {
                                view18.startAnimation(animation);
                                iVar2.a();
                            } else {
                                viewGroup.startViewTransition(view18);
                                l0 l0Var = new l0(animation, viewGroup, view18);
                                l0Var.setAnimationListener(new m(z1Var16, this, view18, iVar2));
                                view18.startAnimation(l0Var);
                                if (Log.isLoggable(str2, 2)) {
                                    z1Var16.toString();
                                }
                            }
                            iVar2.f1306b.a(new f(view18, this, iVar2, z1Var16, 0));
                            str6 = str6;
                        }
                    }
                    it3 = arrayList21.iterator();
                    while (it3.hasNext()) {
                        z1 z1Var17 = (z1) it3.next();
                        View view19 = z1Var17.f1438c.mView;
                        c2 c2Var12 = z1Var17.f1436a;
                        ue.d.d(view19, "view");
                        c2Var12.a(view19);
                    }
                    arrayList21.clear();
                    if (Log.isLoggable(str2, 2)) {
                        return;
                    }
                    if (z1Var2 != null) {
                        z1Var2.toString();
                    }
                    if (z1Var != null) {
                        z1Var.toString();
                        return;
                    }
                    return;
                }
                c2Var2 = c2Var10;
                z1Var2 = z1Var5;
                z1Var = z1Var13;
            }
        }
        boolean zContainsValue2 = linkedHashMap.containsValue(Boolean.TRUE);
        Context context2 = viewGroup.getContext();
        ArrayList arrayList192 = new ArrayList();
        it = arrayList2.iterator();
        boolean z122 = false;
        while (true) {
            str6 = "context";
            if (it.hasNext()) {
            }
        }
        ArrayList arrayList212 = arrayList3;
        it2 = arrayList192.iterator();
        while (it2.hasNext()) {
        }
        it3 = arrayList212.iterator();
        while (it3.hasNext()) {
        }
        arrayList212.clear();
        if (Log.isLoggable(str2, 2)) {
        }
    }

    public final void d() {
        if (this.f1354e) {
            return;
        }
        if (!x0.b1.l(this.f1350a)) {
            g();
            this.f1353d = false;
            return;
        }
        synchronized (this.f1351b) {
            try {
                if (!this.f1351b.isEmpty()) {
                    ArrayList arrayListN0 = je.j.n0(this.f1352c);
                    this.f1352c.clear();
                    Iterator it = arrayListN0.iterator();
                    while (it.hasNext()) {
                        z1 z1Var = (z1) it.next();
                        if (Log.isLoggable("FragmentManager", 2) && z1Var != null) {
                            z1Var.toString();
                        }
                        z1Var.a();
                        if (!z1Var.f1442g) {
                            this.f1352c.add(z1Var);
                        }
                    }
                    k();
                    ArrayList arrayListN02 = je.j.n0(this.f1351b);
                    this.f1351b.clear();
                    this.f1352c.addAll(arrayListN02);
                    Iterator it2 = arrayListN02.iterator();
                    while (it2.hasNext()) {
                        ((z1) it2.next()).d();
                    }
                    c(arrayListN02, this.f1353d);
                    this.f1353d = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final z1 f(Fragment fragment) {
        Object next;
        Iterator it = this.f1351b.iterator();
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
        return (z1) next;
    }

    public final void g() {
        boolean zL = x0.b1.l(this.f1350a);
        synchronized (this.f1351b) {
            try {
                k();
                Iterator it = this.f1351b.iterator();
                while (it.hasNext()) {
                    ((z1) it.next()).d();
                }
                Iterator it2 = je.j.n0(this.f1352c).iterator();
                while (it2.hasNext()) {
                    z1 z1Var = (z1) it2.next();
                    if (Log.isLoggable("FragmentManager", 2)) {
                        if (!zL) {
                            android.support.v4.media.session.a.A(this.f1350a);
                        }
                        if (z1Var != null) {
                            z1Var.toString();
                        }
                    }
                    z1Var.a();
                }
                Iterator it3 = je.j.n0(this.f1351b).iterator();
                while (it3.hasNext()) {
                    z1 z1Var2 = (z1) it3.next();
                    if (Log.isLoggable("FragmentManager", 2)) {
                        if (!zL) {
                            android.support.v4.media.session.a.A(this.f1350a);
                        }
                        if (z1Var2 != null) {
                            z1Var2.toString();
                        }
                    }
                    z1Var2.a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void i() {
        Object objPrevious;
        synchronized (this.f1351b) {
            try {
                k();
                ArrayList arrayList = this.f1351b;
                ListIterator listIterator = arrayList.listIterator(arrayList.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        objPrevious = null;
                        break;
                    }
                    objPrevious = listIterator.previous();
                    z1 z1Var = (z1) objPrevious;
                    View view = z1Var.f1438c.mView;
                    ue.d.d(view, "operation.fragment.mView");
                    c2 c2VarF = com.bumptech.glide.d.f(view);
                    c2 c2Var = z1Var.f1436a;
                    c2 c2Var2 = c2.VISIBLE;
                    if (c2Var == c2Var2 && c2VarF != c2Var2) {
                        break;
                    }
                }
                z1 z1Var2 = (z1) objPrevious;
                Fragment fragment = z1Var2 != null ? z1Var2.f1438c : null;
                this.f1354e = fragment != null ? fragment.isPostponed() : false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void k() {
        c2 c2Var;
        Iterator it = this.f1351b.iterator();
        while (it.hasNext()) {
            z1 z1Var = (z1) it.next();
            if (z1Var.f1437b == b2.ADDING) {
                View viewRequireView = z1Var.f1438c.requireView();
                ue.d.d(viewRequireView, "fragment.requireView()");
                int visibility = viewRequireView.getVisibility();
                if (visibility == 0) {
                    c2Var = c2.VISIBLE;
                } else if (visibility == 4) {
                    c2Var = c2.INVISIBLE;
                } else {
                    if (visibility != 8) {
                        throw new IllegalArgumentException(da.b.a(visibility, "Unknown visibility "));
                    }
                    c2Var = c2.GONE;
                }
                z1Var.c(c2Var, b2.NONE);
            }
        }
    }
}
