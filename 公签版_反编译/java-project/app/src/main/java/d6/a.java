package d6;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Build;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.l0;
import androidx.recyclerview.widget.p0;
import androidx.recyclerview.widget.q0;
import androidx.recyclerview.widget.s0;
import androidx.recyclerview.widget.u0;
import com.yunpan.appmanage.R;
import e6.b;
import java.util.ArrayList;
import java.util.WeakHashMap;
import ue.d;
import w.i;
import x0.b1;

/* loaded from: classes.dex */
public final class a extends p0 {

    /* renamed from: d, reason: collision with root package name */
    public RecyclerView f4492d;

    /* renamed from: e, reason: collision with root package name */
    public final u0 f4493e = new u0(this);

    /* renamed from: f, reason: collision with root package name */
    public final boolean f4494f = true;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4495g = true;

    /* renamed from: h, reason: collision with root package name */
    public int f4496h;

    /* renamed from: i, reason: collision with root package name */
    public b f4497i;

    /* renamed from: j, reason: collision with root package name */
    public e6.a f4498j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f4499k;
    public boolean l;

    public final void d(RecyclerView recyclerView) {
        d.e(recyclerView, "recyclerView");
        if (d.a(this.f4492d, recyclerView)) {
            return;
        }
        this.f4492d = recyclerView;
        u0 u0Var = this.f4493e;
        RecyclerView recyclerView2 = u0Var.r;
        if (recyclerView2 == recyclerView) {
            return;
        }
        l0 l0Var = u0Var.B;
        if (recyclerView2 != null) {
            recyclerView2.removeItemDecoration(u0Var);
            u0Var.r.removeOnItemTouchListener(l0Var);
            u0Var.r.removeOnChildAttachStateChangeListener(u0Var);
            ArrayList arrayList = u0Var.f2306p;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                s0 s0Var = (s0) arrayList.get(0);
                s0Var.f2265g.cancel();
                u0Var.f2303m.e(u0Var.r, s0Var.f2263e);
            }
            arrayList.clear();
            u0Var.f2313x = null;
            u0Var.f2314y = -1;
            VelocityTracker velocityTracker = u0Var.f2309t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                u0Var.f2309t = null;
            }
            q0 q0Var = u0Var.A;
            if (q0Var != null) {
                q0Var.f2232a = false;
                u0Var.A = null;
            }
            if (u0Var.z != null) {
                u0Var.z = null;
            }
        }
        u0Var.r = recyclerView;
        Resources resources = recyclerView.getResources();
        u0Var.f2297f = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_velocity);
        u0Var.f2298g = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_max_velocity);
        u0Var.f2307q = ViewConfiguration.get(u0Var.r.getContext()).getScaledTouchSlop();
        u0Var.r.addItemDecoration(u0Var);
        u0Var.r.addOnItemTouchListener(l0Var);
        u0Var.r.addOnChildAttachStateChangeListener(u0Var);
        u0Var.A = new q0(u0Var);
        u0Var.z = new i(u0Var.r.getContext(), u0Var.A, 5);
    }

    public final void e(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        d.e(recyclerView, "recyclerView");
        d.e(viewHolder, "viewHolder");
        View view = viewHolder.itemView;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            Object tag = view.getTag(R.id.item_touch_helper_previous_elevation);
            if (tag instanceof Float) {
                float fFloatValue = ((Float) tag).floatValue();
                WeakHashMap weakHashMap = b1.f17953a;
                if (i10 >= 21) {
                    x0.p0.s(view, fFloatValue);
                }
            }
            view.setTag(R.id.item_touch_helper_previous_elevation, null);
        }
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        if (this.l) {
            this.l = false;
        }
        if (this.f4499k) {
            this.f4499k = false;
            int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
            b bVar = this.f4497i;
            if (bVar != null) {
                bVar.a(bindingAdapterPosition);
            }
        }
    }

    public final void f(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f10, float f11, boolean z) {
        d.e(canvas, "c");
        d.e(recyclerView, "recyclerView");
        d.e(viewHolder, "viewHolder");
        View view = viewHolder.itemView;
        if (Build.VERSION.SDK_INT >= 21 && z && view.getTag(R.id.item_touch_helper_previous_elevation) == null) {
            Float fValueOf = Float.valueOf(b1.g(view));
            int childCount = recyclerView.getChildCount();
            float f12 = 0.0f;
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = recyclerView.getChildAt(i10);
                if (childAt != view) {
                    float fG = b1.g(childAt);
                    if (fG > f12) {
                        f12 = fG;
                    }
                }
            }
            float f13 = f12 + 1.0f;
            if (Build.VERSION.SDK_INT >= 21) {
                x0.p0.s(view, f13);
            }
            view.setTag(R.id.item_touch_helper_previous_elevation, fValueOf);
        }
        view.setTranslationX(f10);
        view.setTranslationY(f11);
    }

    public final void g(e6.a aVar) {
        d.e(aVar, "callback");
        this.f4498j = aVar;
    }
}
