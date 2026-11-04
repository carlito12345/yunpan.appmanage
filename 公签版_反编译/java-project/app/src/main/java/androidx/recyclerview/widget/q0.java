package androidx.recyclerview.widget;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class q0 extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2232a = true;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u0 f2233b;

    public q0(u0 u0Var) {
        this.f2233b = u0Var;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent motionEvent) {
        u0 u0Var;
        View viewI;
        RecyclerView.ViewHolder childViewHolder;
        int i10;
        if (!this.f2232a || (viewI = (u0Var = this.f2233b).i(motionEvent)) == null || (childViewHolder = u0Var.r.getChildViewHolder(viewI)) == null) {
            return;
        }
        d6.a aVar = u0Var.f2303m;
        RecyclerView recyclerView = u0Var.r;
        aVar.getClass();
        ue.d.e(recyclerView, "recyclerView");
        if (childViewHolder instanceof h6.b) {
            i10 = 0;
        } else {
            int i11 = aVar.f4496h;
            i10 = i11 | (i11 << 16);
        }
        WeakHashMap weakHashMap = x0.b1.f17953a;
        if ((p0.a(i10, x0.k0.d(recyclerView)) & 16711680) != 0) {
            int pointerId = motionEvent.getPointerId(0);
            int i12 = u0Var.l;
            if (pointerId == i12) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i12);
                float x10 = motionEvent.getX(iFindPointerIndex);
                float y6 = motionEvent.getY(iFindPointerIndex);
                u0Var.f2295d = x10;
                u0Var.f2296e = y6;
                u0Var.f2300i = 0.0f;
                u0Var.f2299h = 0.0f;
                if (u0Var.f2303m.f4494f) {
                    u0Var.n(childViewHolder, 2);
                }
            }
        }
    }
}
