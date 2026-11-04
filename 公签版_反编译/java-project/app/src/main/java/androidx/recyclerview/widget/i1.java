package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class i1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2154a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f2155b;

    public /* synthetic */ i1(RecyclerView recyclerView, int i10) {
        this.f2154a = i10;
        this.f2155b = recyclerView;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        RecyclerView recyclerView = this.f2155b;
        switch (this.f2154a) {
            case 0:
                if (recyclerView.mFirstLayoutComplete && !recyclerView.isLayoutRequested()) {
                    if (!recyclerView.mIsAttached) {
                        recyclerView.requestLayout();
                        break;
                    } else if (!recyclerView.mLayoutSuppressed) {
                        recyclerView.consumePendingUpdateOperations();
                        break;
                    } else {
                        recyclerView.mLayoutWasDefered = true;
                        break;
                    }
                }
                break;
            default:
                t1 t1Var = recyclerView.mItemAnimator;
                if (t1Var != null) {
                    s sVar = (s) t1Var;
                    ArrayList arrayList = sVar.f2250h;
                    boolean zIsEmpty = arrayList.isEmpty();
                    ArrayList arrayList2 = sVar.f2252j;
                    boolean zIsEmpty2 = arrayList2.isEmpty();
                    ArrayList arrayList3 = sVar.f2253k;
                    boolean zIsEmpty3 = arrayList3.isEmpty();
                    ArrayList arrayList4 = sVar.f2251i;
                    boolean zIsEmpty4 = arrayList4.isEmpty();
                    if (!zIsEmpty || !zIsEmpty2 || !zIsEmpty4 || !zIsEmpty3) {
                        Iterator it = arrayList.iterator();
                        while (true) {
                            boolean zHasNext = it.hasNext();
                            long j10 = sVar.f2281d;
                            if (zHasNext) {
                                RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) it.next();
                                View view = viewHolder.itemView;
                                ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                                sVar.f2258q.add(viewHolder);
                                viewPropertyAnimatorAnimate.setDuration(j10).alpha(0.0f).setListener(new l(view, viewPropertyAnimatorAnimate, sVar, viewHolder)).start();
                                it = it;
                            } else {
                                arrayList.clear();
                                if (!zIsEmpty2) {
                                    ArrayList arrayList5 = new ArrayList();
                                    arrayList5.addAll(arrayList2);
                                    sVar.f2254m.add(arrayList5);
                                    arrayList2.clear();
                                    j jVar = new j(sVar, arrayList5);
                                    if (zIsEmpty) {
                                        jVar.run();
                                    } else {
                                        View view2 = ((r) arrayList5.get(0)).f2241a.itemView;
                                        WeakHashMap weakHashMap = x0.b1.f17953a;
                                        x0.j0.n(view2, jVar, j10);
                                    }
                                }
                                if (!zIsEmpty3) {
                                    ArrayList arrayList6 = new ArrayList();
                                    arrayList6.addAll(arrayList3);
                                    sVar.f2255n.add(arrayList6);
                                    arrayList3.clear();
                                    y7.b bVar = new y7.b(2, sVar, arrayList6, false);
                                    if (zIsEmpty) {
                                        bVar.run();
                                    } else {
                                        View view3 = ((q) arrayList6.get(0)).f2226a.itemView;
                                        WeakHashMap weakHashMap2 = x0.b1.f17953a;
                                        x0.j0.n(view3, bVar, j10);
                                    }
                                }
                                if (!zIsEmpty4) {
                                    ArrayList arrayList7 = new ArrayList();
                                    arrayList7.addAll(arrayList4);
                                    sVar.l.add(arrayList7);
                                    arrayList4.clear();
                                    k kVar = new k(sVar, arrayList7);
                                    if (zIsEmpty && zIsEmpty2 && zIsEmpty3) {
                                        kVar.run();
                                    } else {
                                        if (zIsEmpty) {
                                            j10 = 0;
                                        }
                                        long jMax = Math.max(!zIsEmpty2 ? sVar.f2282e : 0L, zIsEmpty3 ? 0L : sVar.f2283f) + j10;
                                        View view4 = ((RecyclerView.ViewHolder) arrayList7.get(0)).itemView;
                                        WeakHashMap weakHashMap3 = x0.b1.f17953a;
                                        x0.j0.n(view4, kVar, jMax);
                                    }
                                }
                            }
                        }
                    }
                }
                recyclerView.mPostedAnimatorRunner = false;
                break;
        }
    }
}
