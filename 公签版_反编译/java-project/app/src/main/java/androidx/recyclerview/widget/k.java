package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f2165a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f2166b;

    public k(s sVar, ArrayList arrayList) {
        this.f2166b = sVar;
        this.f2165a = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.f2165a;
        Iterator it = arrayList.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            s sVar = this.f2166b;
            if (!zHasNext) {
                arrayList.clear();
                sVar.l.remove(arrayList);
                return;
            }
            RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) it.next();
            sVar.getClass();
            View view = viewHolder.itemView;
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
            sVar.f2256o.add(viewHolder);
            viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(sVar.f2280c).setListener(new m(view, viewPropertyAnimatorAnimate, sVar, viewHolder)).start();
        }
    }
}
