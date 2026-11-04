package w;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public final class f2 implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g2 f17061a;

    public f2(g2 g2Var) {
        this.f17061a = g2Var;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        z zVar;
        int action = motionEvent.getAction();
        int x10 = (int) motionEvent.getX();
        int y6 = (int) motionEvent.getY();
        g2 g2Var = this.f17061a;
        if (action == 0 && (zVar = g2Var.B) != null && zVar.isShowing() && x10 >= 0 && x10 < g2Var.B.getWidth() && y6 >= 0 && y6 < g2Var.B.getHeight()) {
            g2Var.f17087x.postDelayed(g2Var.f17083s, 250L);
            return false;
        }
        if (action != 1) {
            return false;
        }
        g2Var.f17087x.removeCallbacks(g2Var.f17083s);
        return false;
    }
}
