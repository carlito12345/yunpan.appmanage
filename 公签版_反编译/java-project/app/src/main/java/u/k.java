package u;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;
import x0.l1;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: c, reason: collision with root package name */
    public Interpolator f15157c;

    /* renamed from: d, reason: collision with root package name */
    public com.bumptech.glide.d f15158d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f15159e;

    /* renamed from: b, reason: collision with root package name */
    public long f15156b = -1;

    /* renamed from: f, reason: collision with root package name */
    public final j f15160f = new j(this);

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f15155a = new ArrayList();

    public final void a() {
        if (this.f15159e) {
            Iterator it = this.f15155a.iterator();
            while (it.hasNext()) {
                ((l1) it.next()).b();
            }
            this.f15159e = false;
        }
    }

    public final void b() {
        View view;
        if (this.f15159e) {
            return;
        }
        Iterator it = this.f15155a.iterator();
        while (it.hasNext()) {
            l1 l1Var = (l1) it.next();
            long j10 = this.f15156b;
            if (j10 >= 0) {
                l1Var.c(j10);
            }
            Interpolator interpolator = this.f15157c;
            if (interpolator != null && (view = (View) l1Var.f18009a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.f15158d != null) {
                l1Var.d(this.f15160f);
            }
            View view2 = (View) l1Var.f18009a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f15159e = true;
    }
}
