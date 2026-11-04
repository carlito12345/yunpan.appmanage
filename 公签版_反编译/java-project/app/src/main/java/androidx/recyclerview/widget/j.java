package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f2159a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f2160b;

    public j(s sVar, ArrayList arrayList) {
        this.f2160b = sVar;
        this.f2159a = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.f2159a;
        Iterator it = arrayList.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            s sVar = this.f2160b;
            if (!zHasNext) {
                arrayList.clear();
                sVar.f2254m.remove(arrayList);
                return;
            }
            r rVar = (r) it.next();
            RecyclerView.ViewHolder viewHolder = rVar.f2241a;
            sVar.getClass();
            View view = viewHolder.itemView;
            int i10 = rVar.f2244d - rVar.f2242b;
            int i11 = rVar.f2245e - rVar.f2243c;
            if (i10 != 0) {
                view.animate().translationX(0.0f);
            }
            if (i11 != 0) {
                view.animate().translationY(0.0f);
            }
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
            sVar.f2257p.add(viewHolder);
            viewPropertyAnimatorAnimate.setDuration(sVar.f2282e).setListener(new n(sVar, viewHolder, i10, view, i11, viewPropertyAnimatorAnimate)).start();
        }
    }
}
