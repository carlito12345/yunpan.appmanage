package v3;

import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class u implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16590a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y f16591b;

    public /* synthetic */ u(y yVar, int i10) {
        this.f16590a = i10;
        this.f16591b = yVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00af  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() throws Resources.NotFoundException {
        ViewGroup viewGroup;
        switch (this.f16590a) {
            case 0:
                this.f16591b.k();
                break;
            case 1:
                y yVar = this.f16591b;
                ViewGroup viewGroup2 = yVar.f16604f;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(yVar.B ? 0 : 4);
                }
                View view = yVar.f16609k;
                if (view != null) {
                    int dimensionPixelSize = yVar.f16599a.getResources().getDimensionPixelSize(R.dimen.exo_styled_progress_margin_bottom);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    if (marginLayoutParams != null) {
                        if (yVar.B) {
                            dimensionPixelSize = 0;
                        }
                        marginLayoutParams.bottomMargin = dimensionPixelSize;
                        view.setLayoutParams(marginLayoutParams);
                    }
                    if (view instanceof e) {
                        e eVar = (e) view;
                        boolean z = yVar.B;
                        Rect rect = eVar.f16430a;
                        if (z) {
                            ValueAnimator valueAnimator = eVar.G;
                            if (valueAnimator.isStarted()) {
                                valueAnimator.cancel();
                            }
                            eVar.I = true;
                            eVar.H = 0.0f;
                            eVar.invalidate(rect);
                        } else {
                            int i10 = yVar.A;
                            if (i10 == 1) {
                                ValueAnimator valueAnimator2 = eVar.G;
                                if (valueAnimator2.isStarted()) {
                                    valueAnimator2.cancel();
                                }
                                eVar.I = false;
                                eVar.H = 0.0f;
                                eVar.invalidate(rect);
                            } else if (i10 != 3) {
                                ValueAnimator valueAnimator3 = eVar.G;
                                if (valueAnimator3.isStarted()) {
                                    valueAnimator3.cancel();
                                }
                                eVar.I = false;
                                eVar.H = 1.0f;
                                eVar.invalidate(rect);
                            }
                        }
                    }
                }
                Iterator it = yVar.z.iterator();
                while (it.hasNext()) {
                    View view2 = (View) it.next();
                    view2.setVisibility((yVar.B && y.j(view2)) ? 4 : 0);
                }
                break;
            case 2:
                y yVar2 = this.f16591b;
                ViewGroup viewGroup3 = yVar2.f16605g;
                if (viewGroup3 != null && (viewGroup = yVar2.f16606h) != null) {
                    t tVar = yVar2.f16599a;
                    int width = (tVar.getWidth() - tVar.getPaddingLeft()) - tVar.getPaddingRight();
                    while (true) {
                        if (viewGroup.getChildCount() <= 1) {
                            View view3 = yVar2.l;
                            if (view3 != null) {
                                view3.setVisibility(8);
                            }
                            int iC = y.c(yVar2.f16608j);
                            int childCount = viewGroup3.getChildCount() - 1;
                            for (int i11 = 0; i11 < childCount; i11++) {
                                iC += y.c(viewGroup3.getChildAt(i11));
                            }
                            if (iC <= width) {
                                ViewGroup viewGroup4 = yVar2.f16607i;
                                if (viewGroup4 != null && viewGroup4.getVisibility() == 0) {
                                    ValueAnimator valueAnimator4 = yVar2.f16615s;
                                    if (!valueAnimator4.isStarted()) {
                                        yVar2.r.cancel();
                                        valueAnimator4.start();
                                        break;
                                    }
                                }
                            } else {
                                if (view3 != null) {
                                    view3.setVisibility(0);
                                    iC += y.c(view3);
                                }
                                ArrayList arrayList = new ArrayList();
                                for (int i12 = 0; i12 < childCount; i12++) {
                                    View childAt = viewGroup3.getChildAt(i12);
                                    iC -= y.c(childAt);
                                    arrayList.add(childAt);
                                    if (iC <= width) {
                                        if (arrayList.isEmpty()) {
                                            viewGroup3.removeViews(0, arrayList.size());
                                            for (int i13 = 0; i13 < arrayList.size(); i13++) {
                                                viewGroup.addView((View) arrayList.get(i13), viewGroup.getChildCount() - 1);
                                            }
                                            break;
                                        }
                                    }
                                }
                                if (arrayList.isEmpty()) {
                                }
                            }
                        } else {
                            int childCount2 = viewGroup.getChildCount() - 2;
                            View childAt2 = viewGroup.getChildAt(childCount2);
                            viewGroup.removeViewAt(childCount2);
                            viewGroup3.addView(childAt2, 0);
                        }
                    }
                }
                break;
            case 3:
                this.f16591b.f16612o.start();
                break;
            case 4:
                this.f16591b.f16611n.start();
                break;
            case 5:
                y yVar3 = this.f16591b;
                yVar3.f16610m.start();
                yVar3.e(yVar3.f16618v, 2000L);
                break;
            default:
                this.f16591b.i(2);
                break;
        }
    }
}
