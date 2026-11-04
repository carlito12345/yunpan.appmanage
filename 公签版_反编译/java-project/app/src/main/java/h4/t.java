package h4;

import a2.w0;
import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.os.Build;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
import x0.b1;

/* loaded from: classes.dex */
public abstract class t implements Cloneable {

    /* renamed from: w, reason: collision with root package name */
    public static final int[] f6482w = {2, 1, 3, 4};

    /* renamed from: x, reason: collision with root package name */
    public static final m7.e f6483x = new m7.e(26);

    /* renamed from: y, reason: collision with root package name */
    public static final ThreadLocal f6484y = new ThreadLocal();

    /* renamed from: k, reason: collision with root package name */
    public ArrayList f6495k;
    public ArrayList l;

    /* renamed from: t, reason: collision with root package name */
    public a9.o f6501t;

    /* renamed from: a, reason: collision with root package name */
    public final String f6485a = getClass().getName();

    /* renamed from: b, reason: collision with root package name */
    public long f6486b = -1;

    /* renamed from: c, reason: collision with root package name */
    public long f6487c = -1;

    /* renamed from: d, reason: collision with root package name */
    public TimeInterpolator f6488d = null;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f6489e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f6490f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public w0 f6491g = new w0(6);

    /* renamed from: h, reason: collision with root package name */
    public w0 f6492h = new w0(6);

    /* renamed from: i, reason: collision with root package name */
    public y f6493i = null;

    /* renamed from: j, reason: collision with root package name */
    public final int[] f6494j = f6482w;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f6496m = new ArrayList();

    /* renamed from: n, reason: collision with root package name */
    public int f6497n = 0;

    /* renamed from: p, reason: collision with root package name */
    public boolean f6498p = false;

    /* renamed from: q, reason: collision with root package name */
    public boolean f6499q = false;
    public ArrayList r = null;

    /* renamed from: s, reason: collision with root package name */
    public ArrayList f6500s = new ArrayList();

    /* renamed from: v, reason: collision with root package name */
    public m7.e f6502v = f6483x;

    public static void c(w0 w0Var, View view, a0 a0Var) {
        ((a0.e) w0Var.f346b).put(view, a0Var);
        int id2 = view.getId();
        if (id2 >= 0) {
            SparseArray sparseArray = (SparseArray) w0Var.f347c;
            if (sparseArray.indexOfKey(id2) >= 0) {
                sparseArray.put(id2, null);
            } else {
                sparseArray.put(id2, view);
            }
        }
        String strK = b1.k(view);
        if (strK != null) {
            a0.e eVar = (a0.e) w0Var.f349e;
            if (eVar.containsKey(strK)) {
                eVar.put(strK, null);
            } else {
                eVar.put(strK, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                a0.k kVar = (a0.k) w0Var.f348d;
                if (kVar.f(itemIdAtPosition) < 0) {
                    x0.j0.r(view, true);
                    kVar.h(view, itemIdAtPosition);
                    return;
                }
                View view2 = (View) kVar.d(itemIdAtPosition);
                if (view2 != null) {
                    x0.j0.r(view2, false);
                    kVar.h(null, itemIdAtPosition);
                }
            }
        }
    }

    public static a0.e o() {
        ThreadLocal threadLocal = f6484y;
        a0.e eVar = (a0.e) threadLocal.get();
        if (eVar != null) {
            return eVar;
        }
        a0.e eVar2 = new a0.e();
        threadLocal.set(eVar2);
        return eVar2;
    }

    public static boolean t(a0 a0Var, a0 a0Var2, String str) {
        Object obj = a0Var.f6413a.get(str);
        Object obj2 = a0Var2.f6413a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    public void A(a9.o oVar) {
        this.f6501t = oVar;
    }

    public void B(TimeInterpolator timeInterpolator) {
        this.f6488d = timeInterpolator;
    }

    public void C(m7.e eVar) {
        if (eVar == null) {
            this.f6502v = f6483x;
        } else {
            this.f6502v = eVar;
        }
    }

    public void E(long j10) {
        this.f6486b = j10;
    }

    public final void F() {
        if (this.f6497n == 0) {
            ArrayList arrayList = this.r;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.r.clone();
                int size = arrayList2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((s) arrayList2.get(i10)).d(this);
                }
            }
            this.f6499q = false;
        }
        this.f6497n++;
    }

    public String G(String str) {
        StringBuilder sbM = g.b.m(str);
        sbM.append(getClass().getSimpleName());
        sbM.append("@");
        sbM.append(Integer.toHexString(hashCode()));
        sbM.append(": ");
        String string = sbM.toString();
        if (this.f6487c != -1) {
            string = android.support.v4.media.session.a.t(d0.f.b(string, "dur("), this.f6487c, ") ");
        }
        if (this.f6486b != -1) {
            string = android.support.v4.media.session.a.t(d0.f.b(string, "dly("), this.f6486b, ") ");
        }
        if (this.f6488d != null) {
            StringBuilder sbB = d0.f.b(string, "interp(");
            sbB.append(this.f6488d);
            sbB.append(") ");
            string = sbB.toString();
        }
        ArrayList arrayList = this.f6489e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f6490f;
        if (size <= 0 && arrayList2.size() <= 0) {
            return string;
        }
        String strJ = g.b.j(string, "tgts(");
        if (arrayList.size() > 0) {
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                if (i10 > 0) {
                    strJ = g.b.j(strJ, ", ");
                }
                StringBuilder sbM2 = g.b.m(strJ);
                sbM2.append(arrayList.get(i10));
                strJ = sbM2.toString();
            }
        }
        if (arrayList2.size() > 0) {
            for (int i11 = 0; i11 < arrayList2.size(); i11++) {
                if (i11 > 0) {
                    strJ = g.b.j(strJ, ", ");
                }
                StringBuilder sbM3 = g.b.m(strJ);
                sbM3.append(arrayList2.get(i11));
                strJ = sbM3.toString();
            }
        }
        return g.b.j(strJ, ")");
    }

    public void a(s sVar) {
        if (this.r == null) {
            this.r = new ArrayList();
        }
        this.r.add(sVar);
    }

    public void b(View view) {
        this.f6490f.add(view);
    }

    public void cancel() {
        ArrayList arrayList = this.f6496m;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((Animator) arrayList.get(size)).cancel();
        }
        ArrayList arrayList2 = this.r;
        if (arrayList2 == null || arrayList2.size() <= 0) {
            return;
        }
        ArrayList arrayList3 = (ArrayList) this.r.clone();
        int size2 = arrayList3.size();
        for (int i10 = 0; i10 < size2; i10++) {
            ((s) arrayList3.get(i10)).b();
        }
    }

    public abstract void d(a0 a0Var);

    public final void e(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            a0 a0Var = new a0(view);
            if (z) {
                g(a0Var);
            } else {
                d(a0Var);
            }
            a0Var.f6415c.add(this);
            f(a0Var);
            if (z) {
                c(this.f6491g, view, a0Var);
            } else {
                c(this.f6492h, view, a0Var);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                e(viewGroup.getChildAt(i10), z);
            }
        }
    }

    public abstract void g(a0 a0Var);

    public final void h(ViewGroup viewGroup, boolean z) {
        i(z);
        ArrayList arrayList = this.f6489e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f6490f;
        if (size <= 0 && arrayList2.size() <= 0) {
            e(viewGroup, z);
            return;
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            View viewFindViewById = viewGroup.findViewById(((Integer) arrayList.get(i10)).intValue());
            if (viewFindViewById != null) {
                a0 a0Var = new a0(viewFindViewById);
                if (z) {
                    g(a0Var);
                } else {
                    d(a0Var);
                }
                a0Var.f6415c.add(this);
                f(a0Var);
                if (z) {
                    c(this.f6491g, viewFindViewById, a0Var);
                } else {
                    c(this.f6492h, viewFindViewById, a0Var);
                }
            }
        }
        for (int i11 = 0; i11 < arrayList2.size(); i11++) {
            View view = (View) arrayList2.get(i11);
            a0 a0Var2 = new a0(view);
            if (z) {
                g(a0Var2);
            } else {
                d(a0Var2);
            }
            a0Var2.f6415c.add(this);
            f(a0Var2);
            if (z) {
                c(this.f6491g, view, a0Var2);
            } else {
                c(this.f6492h, view, a0Var2);
            }
        }
    }

    public final void i(boolean z) {
        if (z) {
            ((a0.e) this.f6491g.f346b).clear();
            ((SparseArray) this.f6491g.f347c).clear();
            ((a0.k) this.f6491g.f348d).b();
        } else {
            ((a0.e) this.f6492h.f346b).clear();
            ((SparseArray) this.f6492h.f347c).clear();
            ((a0.k) this.f6492h.f348d).b();
        }
    }

    @Override // 
    /* renamed from: j */
    public t clone() {
        try {
            t tVar = (t) super.clone();
            tVar.f6500s = new ArrayList();
            tVar.f6491g = new w0(6);
            tVar.f6492h = new w0(6);
            tVar.f6495k = null;
            tVar.l = null;
            return tVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public Animator k(ViewGroup viewGroup, a0 a0Var, a0 a0Var2) {
        return null;
    }

    public void l(ViewGroup viewGroup, w0 w0Var, w0 w0Var2, ArrayList arrayList, ArrayList arrayList2) {
        Animator animatorK;
        View view;
        Animator animator;
        a0 a0Var;
        Animator animator2;
        a0 a0Var2;
        ViewGroup viewGroup2 = viewGroup;
        a0.e eVarO = o();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            a0 a0Var3 = (a0) arrayList.get(i10);
            a0 a0Var4 = (a0) arrayList2.get(i10);
            if (a0Var3 != null && !a0Var3.f6415c.contains(this)) {
                a0Var3 = null;
            }
            if (a0Var4 != null && !a0Var4.f6415c.contains(this)) {
                a0Var4 = null;
            }
            if ((a0Var3 != null || a0Var4 != null) && ((a0Var3 == null || a0Var4 == null || r(a0Var3, a0Var4)) && (animatorK = k(viewGroup2, a0Var3, a0Var4)) != null)) {
                if (a0Var4 != null) {
                    String[] strArrP = p();
                    view = a0Var4.f6414b;
                    if (strArrP != null && strArrP.length > 0) {
                        a0Var2 = new a0(view);
                        a0 a0Var5 = (a0) ((a0.e) w0Var2.f346b).get(view);
                        if (a0Var5 != null) {
                            int i11 = 0;
                            while (i11 < strArrP.length) {
                                HashMap map = a0Var2.f6413a;
                                Animator animator3 = animatorK;
                                String str = strArrP[i11];
                                map.put(str, a0Var5.f6413a.get(str));
                                i11++;
                                animatorK = animator3;
                                strArrP = strArrP;
                            }
                        }
                        Animator animator4 = animatorK;
                        int i12 = eVarO.f65c;
                        int i13 = 0;
                        while (true) {
                            if (i13 >= i12) {
                                animator2 = animator4;
                                break;
                            }
                            r rVar = (r) eVarO.get((Animator) eVarO.f(i13));
                            if (rVar.f6479c != null && rVar.f6477a == view && rVar.f6478b.equals(this.f6485a) && rVar.f6479c.equals(a0Var2)) {
                                animator2 = null;
                                break;
                            }
                            i13++;
                        }
                    } else {
                        animator2 = animatorK;
                        a0Var2 = null;
                    }
                    animator = animator2;
                    a0Var = a0Var2;
                } else {
                    view = a0Var3.f6414b;
                    animator = animatorK;
                    a0Var = null;
                }
                if (animator != null) {
                    gf.g gVar = d0.f6422a;
                    eVarO.put(animator, new r(view, this.f6485a, this, Build.VERSION.SDK_INT >= 18 ? new o0(viewGroup2) : new n0(viewGroup.getWindowToken()), a0Var));
                    this.f6500s.add(animator);
                }
            }
            i10++;
            viewGroup2 = viewGroup;
        }
        if (sparseIntArray.size() != 0) {
            for (int i14 = 0; i14 < sparseIntArray.size(); i14++) {
                Animator animator5 = (Animator) this.f6500s.get(sparseIntArray.keyAt(i14));
                animator5.setStartDelay(animator5.getStartDelay() + (sparseIntArray.valueAt(i14) - Long.MAX_VALUE));
            }
        }
    }

    public final void m() {
        int i10 = this.f6497n - 1;
        this.f6497n = i10;
        if (i10 == 0) {
            ArrayList arrayList = this.r;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.r.clone();
                int size = arrayList2.size();
                for (int i11 = 0; i11 < size; i11++) {
                    ((s) arrayList2.get(i11)).c(this);
                }
            }
            for (int i12 = 0; i12 < ((a0.k) this.f6491g.f348d).j(); i12++) {
                View view = (View) ((a0.k) this.f6491g.f348d).k(i12);
                if (view != null) {
                    WeakHashMap weakHashMap = b1.f17953a;
                    x0.j0.r(view, false);
                }
            }
            for (int i13 = 0; i13 < ((a0.k) this.f6492h.f348d).j(); i13++) {
                View view2 = (View) ((a0.k) this.f6492h.f348d).k(i13);
                if (view2 != null) {
                    WeakHashMap weakHashMap2 = b1.f17953a;
                    x0.j0.r(view2, false);
                }
            }
            this.f6499q = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x002d, code lost:
    
        if (r3 < 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002f, code lost:
    
        if (r7 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0031, code lost:
    
        r6 = r5.l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0034, code lost:
    
        r6 = r5.f6495k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003d, code lost:
    
        return (h4.a0) r6.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final a0 n(View view, boolean z) {
        y yVar = this.f6493i;
        if (yVar != null) {
            return yVar.n(view, z);
        }
        ArrayList arrayList = z ? this.f6495k : this.l;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                i10 = -1;
                break;
            }
            a0 a0Var = (a0) arrayList.get(i10);
            if (a0Var == null) {
                return null;
            }
            if (a0Var.f6414b == view) {
                break;
            }
            i10++;
        }
    }

    public String[] p() {
        return null;
    }

    public final a0 q(View view, boolean z) {
        y yVar = this.f6493i;
        if (yVar != null) {
            return yVar.q(view, z);
        }
        return (a0) ((a0.e) (z ? this.f6491g : this.f6492h).f346b).get(view);
    }

    public boolean r(a0 a0Var, a0 a0Var2) {
        if (a0Var == null || a0Var2 == null) {
            return false;
        }
        String[] strArrP = p();
        if (strArrP == null) {
            Iterator it = a0Var.f6413a.keySet().iterator();
            while (it.hasNext()) {
                if (t(a0Var, a0Var2, (String) it.next())) {
                }
            }
            return false;
        }
        for (String str : strArrP) {
            if (!t(a0Var, a0Var2, str)) {
            }
        }
        return false;
        return true;
    }

    public final boolean s(View view) {
        int id2 = view.getId();
        ArrayList arrayList = this.f6489e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f6490f;
        return (size == 0 && arrayList2.size() == 0) || arrayList.contains(Integer.valueOf(id2)) || arrayList2.contains(view);
    }

    public final String toString() {
        return G("");
    }

    public void u(ViewGroup viewGroup) {
        int i10;
        if (this.f6499q) {
            return;
        }
        ArrayList arrayList = this.f6496m;
        int size = arrayList.size() - 1;
        while (true) {
            i10 = 0;
            if (size < 0) {
                break;
            }
            Animator animator = (Animator) arrayList.get(size);
            if (Build.VERSION.SDK_INT >= 19) {
                animator.pause();
            } else {
                ArrayList<Animator.AnimatorListener> listeners = animator.getListeners();
                if (listeners != null) {
                    int size2 = listeners.size();
                    while (i10 < size2) {
                        Animator.AnimatorListener animatorListener = listeners.get(i10);
                        if (animatorListener instanceof a) {
                            ((l0) ((a) animatorListener)).onAnimationPause(animator);
                        }
                        i10++;
                    }
                }
            }
            size--;
        }
        ArrayList arrayList2 = this.r;
        if (arrayList2 != null && arrayList2.size() > 0) {
            ArrayList arrayList3 = (ArrayList) this.r.clone();
            int size3 = arrayList3.size();
            while (i10 < size3) {
                ((s) arrayList3.get(i10)).a();
                i10++;
            }
        }
        this.f6498p = true;
    }

    public void v(s sVar) {
        ArrayList arrayList = this.r;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(sVar);
        if (this.r.size() == 0) {
            this.r = null;
        }
    }

    public void w(View view) {
        this.f6490f.remove(view);
    }

    public void x(View view) {
        if (this.f6498p) {
            if (!this.f6499q) {
                ArrayList arrayList = this.f6496m;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    Animator animator = (Animator) arrayList.get(size);
                    if (Build.VERSION.SDK_INT >= 19) {
                        animator.resume();
                    } else {
                        ArrayList<Animator.AnimatorListener> listeners = animator.getListeners();
                        if (listeners != null) {
                            int size2 = listeners.size();
                            for (int i10 = 0; i10 < size2; i10++) {
                                Animator.AnimatorListener animatorListener = listeners.get(i10);
                                if (animatorListener instanceof a) {
                                    ((l0) ((a) animatorListener)).onAnimationResume(animator);
                                }
                            }
                        }
                    }
                }
                ArrayList arrayList2 = this.r;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    ArrayList arrayList3 = (ArrayList) this.r.clone();
                    int size3 = arrayList3.size();
                    for (int i11 = 0; i11 < size3; i11++) {
                        ((s) arrayList3.get(i11)).e();
                    }
                }
            }
            this.f6498p = false;
        }
    }

    public void y() {
        F();
        a0.e eVarO = o();
        Iterator it = this.f6500s.iterator();
        while (it.hasNext()) {
            Animator animator = (Animator) it.next();
            if (eVarO.containsKey(animator)) {
                F();
                if (animator != null) {
                    animator.addListener(new p(this, eVarO));
                    long j10 = this.f6487c;
                    if (j10 >= 0) {
                        animator.setDuration(j10);
                    }
                    long j11 = this.f6486b;
                    if (j11 >= 0) {
                        animator.setStartDelay(animator.getStartDelay() + j11);
                    }
                    TimeInterpolator timeInterpolator = this.f6488d;
                    if (timeInterpolator != null) {
                        animator.setInterpolator(timeInterpolator);
                    }
                    animator.addListener(new q(0, this));
                    animator.start();
                }
            }
        }
        this.f6500s.clear();
        m();
    }

    public void z(long j10) {
        this.f6487c = j10;
    }

    public void D() {
    }

    public void f(a0 a0Var) {
    }
}
