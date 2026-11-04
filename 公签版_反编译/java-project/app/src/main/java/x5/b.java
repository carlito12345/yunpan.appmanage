package x5;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class b implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18148a = 2;

    /* renamed from: b, reason: collision with root package name */
    public final Object f18149b;

    public b(c cVar) {
        this.f18149b = new WeakReference(cVar);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() throws Throwable {
        switch (this.f18148a) {
            case 0:
                c cVar = (c) ((WeakReference) this.f18149b).get();
                if (cVar != null) {
                    ArrayList arrayList = cVar.f18152b;
                    if (!arrayList.isEmpty()) {
                        View view = cVar.f18151a;
                        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        int iA = cVar.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
                        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
                        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                        int iA2 = cVar.a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
                        if (iA > 0 || iA == Integer.MIN_VALUE) {
                            if (iA2 > 0 || iA2 == Integer.MIN_VALUE) {
                                Iterator it = new ArrayList(arrayList).iterator();
                                while (it.hasNext()) {
                                    ((w5.f) ((d) it.next())).k(iA, iA2);
                                }
                                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                                if (viewTreeObserver.isAlive()) {
                                    viewTreeObserver.removeOnPreDrawListener(cVar.f18153c);
                                }
                                cVar.f18153c = null;
                                arrayList.clear();
                                break;
                            }
                        }
                    }
                }
                break;
            case 1:
                f fVar = (f) ((WeakReference) this.f18149b).get();
                if (fVar != null) {
                    ArrayList arrayList2 = fVar.f18156b;
                    if (!arrayList2.isEmpty()) {
                        ImageView imageView = fVar.f18155a;
                        int paddingRight2 = imageView.getPaddingRight() + imageView.getPaddingLeft();
                        ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
                        int iA3 = fVar.a(imageView.getWidth(), layoutParams3 != null ? layoutParams3.width : 0, paddingRight2);
                        int paddingBottom2 = imageView.getPaddingBottom() + imageView.getPaddingTop();
                        ViewGroup.LayoutParams layoutParams4 = imageView.getLayoutParams();
                        int iA4 = fVar.a(imageView.getHeight(), layoutParams4 != null ? layoutParams4.height : 0, paddingBottom2);
                        if (iA3 > 0 || iA3 == Integer.MIN_VALUE) {
                            if (iA4 > 0 || iA4 == Integer.MIN_VALUE) {
                                Iterator it2 = new ArrayList(arrayList2).iterator();
                                while (it2.hasNext()) {
                                    ((w5.f) ((d) it2.next())).k(iA3, iA4);
                                }
                                ViewTreeObserver viewTreeObserver2 = imageView.getViewTreeObserver();
                                if (viewTreeObserver2.isAlive()) {
                                    viewTreeObserver2.removeOnPreDrawListener(fVar.f18157c);
                                }
                                fVar.f18157c = null;
                                arrayList2.clear();
                                break;
                            }
                        }
                    }
                }
                break;
            default:
                ((CoordinatorLayout) this.f18149b).o(0);
                break;
        }
        return true;
    }

    public b(f fVar) {
        this.f18149b = new WeakReference(fVar);
    }

    public b(CoordinatorLayout coordinatorLayout) {
        this.f18149b = coordinatorLayout;
    }
}
