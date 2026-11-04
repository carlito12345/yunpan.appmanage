package h4;

import a2.w0;
import android.animation.Animator;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class w implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final t f6505a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewGroup f6506b;

    public w(ViewGroup viewGroup, t tVar) {
        this.f6505a = tVar;
        this.f6506b = viewGroup;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01df A[EDGE_INSN: B:140:0x01df->B:90:0x01df BREAK  A[LOOP:1: B:19:0x0087->B:89:0x01d7], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01e4  */
    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onPreDraw() {
        ArrayList arrayList;
        t tVar;
        w0 w0Var;
        a0.e eVar;
        a0.e eVar2;
        int i10;
        int[] iArr;
        int i11;
        int i12;
        int i13;
        r rVar;
        View view;
        w0 w0Var2;
        a0 a0Var;
        View view2;
        View view3;
        w0 w0Var3;
        int i14 = 1;
        ViewGroup viewGroup = this.f6506b;
        viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
        viewGroup.removeOnAttachStateChangeListener(this);
        ArrayList arrayList2 = x.f6509c;
        ViewGroup viewGroup2 = this.f6506b;
        if (!arrayList2.remove(viewGroup2)) {
            return true;
        }
        a0.e eVarB = x.b();
        ArrayList arrayList3 = (ArrayList) eVarB.get(viewGroup2);
        if (arrayList3 != null) {
            arrayList = arrayList3.size() > 0 ? new ArrayList(arrayList3) : null;
            tVar = this.f6505a;
            arrayList3.add(tVar);
            tVar.a(new v(this, eVarB));
            tVar.h(viewGroup2, false);
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((t) it.next()).x(viewGroup2);
                }
            }
            tVar.f6495k = new ArrayList();
            tVar.l = new ArrayList();
            w0Var = tVar.f6491g;
            w0 w0Var4 = tVar.f6492h;
            eVar = new a0.e((a0.e) w0Var.f346b);
            eVar2 = new a0.e((a0.e) w0Var4.f346b);
            i10 = 0;
            while (true) {
                iArr = tVar.f6494j;
                if (i10 < iArr.length) {
                    break;
                }
                int i15 = iArr[i10];
                if (i15 == i14) {
                    w0Var2 = w0Var;
                    for (int i16 = eVar.f65c - 1; i16 >= 0; i16--) {
                        View view4 = (View) eVar.f(i16);
                        if (view4 != null && tVar.s(view4) && (a0Var = (a0) eVar2.remove(view4)) != null && tVar.s(a0Var.f6414b)) {
                            tVar.f6495k.add((a0) eVar.h(i16));
                            tVar.l.add(a0Var);
                        }
                    }
                } else if (i15 == 2) {
                    w0Var2 = w0Var;
                    a0.e eVar3 = (a0.e) w0Var2.f349e;
                    a0.e eVar4 = (a0.e) w0Var4.f349e;
                    int i17 = eVar3.f65c;
                    for (int i18 = 0; i18 < i17; i18++) {
                        View view5 = (View) eVar3.j(i18);
                        if (view5 != null && tVar.s(view5) && (view2 = (View) eVar4.get(eVar3.f(i18))) != null && tVar.s(view2)) {
                            a0 a0Var2 = (a0) eVar.get(view5);
                            a0 a0Var3 = (a0) eVar2.get(view2);
                            if (a0Var2 != null && a0Var3 != null) {
                                tVar.f6495k.add(a0Var2);
                                tVar.l.add(a0Var3);
                                eVar.remove(view5);
                                eVar2.remove(view2);
                            }
                        }
                    }
                } else if (i15 != 3) {
                    if (i15 == 4) {
                        a0.k kVar = (a0.k) w0Var.f348d;
                        int iJ = kVar.j();
                        int i19 = 0;
                        while (i19 < iJ) {
                            View view6 = (View) kVar.k(i19);
                            if (view6 == null || !tVar.s(view6)) {
                                w0Var3 = w0Var;
                            } else {
                                w0Var3 = w0Var;
                                View view7 = (View) ((a0.k) w0Var4.f348d).d(kVar.g(i19));
                                if (view7 != null && tVar.s(view7)) {
                                    a0 a0Var4 = (a0) eVar.get(view6);
                                    a0 a0Var5 = (a0) eVar2.get(view7);
                                    if (a0Var4 != null && a0Var5 != null) {
                                        tVar.f6495k.add(a0Var4);
                                        tVar.l.add(a0Var5);
                                        eVar.remove(view6);
                                        eVar2.remove(view7);
                                    }
                                }
                            }
                            i19 += i14;
                            w0Var = w0Var3;
                        }
                    }
                    w0Var2 = w0Var;
                } else {
                    w0Var2 = w0Var;
                    SparseArray sparseArray = (SparseArray) w0Var2.f347c;
                    SparseArray sparseArray2 = (SparseArray) w0Var4.f347c;
                    int size = sparseArray.size();
                    for (int i20 = 0; i20 < size; i20++) {
                        View view8 = (View) sparseArray.valueAt(i20);
                        if (view8 != null && tVar.s(view8) && (view3 = (View) sparseArray2.get(sparseArray.keyAt(i20))) != null && tVar.s(view3)) {
                            a0 a0Var6 = (a0) eVar.get(view8);
                            a0 a0Var7 = (a0) eVar2.get(view3);
                            if (a0Var6 != null && a0Var7 != null) {
                                tVar.f6495k.add(a0Var6);
                                tVar.l.add(a0Var7);
                                eVar.remove(view8);
                                eVar2.remove(view3);
                            }
                        }
                    }
                }
                i10++;
                w0Var = w0Var2;
                i14 = 1;
            }
            for (i11 = 0; i11 < eVar.f65c; i11++) {
                a0 a0Var8 = (a0) eVar.j(i11);
                if (tVar.s(a0Var8.f6414b)) {
                    tVar.f6495k.add(a0Var8);
                    tVar.l.add(null);
                }
            }
            for (i12 = 0; i12 < eVar2.f65c; i12++) {
                a0 a0Var9 = (a0) eVar2.j(i12);
                if (tVar.s(a0Var9.f6414b)) {
                    tVar.l.add(a0Var9);
                    tVar.f6495k.add(null);
                }
            }
            a0.e eVarO = t.o();
            int i21 = eVarO.f65c;
            gf.g gVar = d0.f6422a;
            Object o0Var = Build.VERSION.SDK_INT < 18 ? new o0(viewGroup2) : new n0(viewGroup2.getWindowToken());
            for (i13 = i21 - 1; i13 >= 0; i13--) {
                Animator animator = (Animator) eVarO.f(i13);
                if (animator != null && (rVar = (r) eVarO.get(animator)) != null && (view = rVar.f6477a) != null && o0Var.equals(rVar.f6480d)) {
                    a0 a0VarQ = tVar.q(view, true);
                    a0 a0VarN = tVar.n(view, true);
                    if (a0VarQ == null && a0VarN == null) {
                        a0VarN = (a0) ((a0.e) tVar.f6492h.f346b).get(view);
                    }
                    if ((a0VarQ != null || a0VarN != null) && rVar.f6481e.r(rVar.f6479c, a0VarN)) {
                        if (animator.isRunning() || animator.isStarted()) {
                            animator.cancel();
                        } else {
                            eVarO.remove(animator);
                        }
                    }
                }
            }
            tVar.l(viewGroup2, tVar.f6491g, tVar.f6492h, tVar.f6495k, tVar.l);
            tVar.y();
            return true;
        }
        arrayList3 = new ArrayList();
        eVarB.put(viewGroup2, arrayList3);
        tVar = this.f6505a;
        arrayList3.add(tVar);
        tVar.a(new v(this, eVarB));
        tVar.h(viewGroup2, false);
        if (arrayList != null) {
        }
        tVar.f6495k = new ArrayList();
        tVar.l = new ArrayList();
        w0Var = tVar.f6491g;
        w0 w0Var42 = tVar.f6492h;
        eVar = new a0.e((a0.e) w0Var.f346b);
        eVar2 = new a0.e((a0.e) w0Var42.f346b);
        i10 = 0;
        while (true) {
            iArr = tVar.f6494j;
            if (i10 < iArr.length) {
            }
            i10++;
            w0Var = w0Var2;
            i14 = 1;
        }
        while (i11 < eVar.f65c) {
        }
        while (i12 < eVar2.f65c) {
        }
        a0.e eVarO2 = t.o();
        int i212 = eVarO2.f65c;
        gf.g gVar2 = d0.f6422a;
        if (Build.VERSION.SDK_INT < 18) {
        }
        while (i13 >= 0) {
        }
        tVar.l(viewGroup2, tVar.f6491g, tVar.f6492h, tVar.f6495k, tVar.l);
        tVar.y();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ViewGroup viewGroup = this.f6506b;
        viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
        viewGroup.removeOnAttachStateChangeListener(this);
        ArrayList arrayList = x.f6509c;
        ViewGroup viewGroup2 = this.f6506b;
        arrayList.remove(viewGroup2);
        ArrayList arrayList2 = (ArrayList) x.b().get(viewGroup2);
        if (arrayList2 != null && arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ((t) it.next()).x(viewGroup2);
            }
        }
        this.f6505a.i(true);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
