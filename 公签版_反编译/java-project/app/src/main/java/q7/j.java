package q7;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13071a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f13072b;

    public /* synthetic */ j(int i10, Object obj) {
        this.f13071a = i10;
        this.f13072b = obj;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (this.f13071a) {
            case 0:
                l lVar = (l) this.f13072b;
                lVar.getClass();
                if (motionEvent.getAction() == 1) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - lVar.f13084o;
                    if (jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300) {
                        lVar.f13082m = false;
                    }
                    lVar.u();
                    lVar.f13082m = true;
                    lVar.f13084o = System.currentTimeMillis();
                    break;
                }
                break;
            default:
                if (motionEvent.getAction() == 0) {
                    s1.g.Y((View) this.f13072b);
                    break;
                }
                break;
        }
        return false;
    }
}
