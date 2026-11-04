package ub;

import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import com.google.android.material.carousel.CarouselLayoutManager;
import ua.g8;
import v3.t;
import v3.u;
import v3.y;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16089a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16090b;

    public /* synthetic */ a(int i10, Object obj) {
        this.f16089a = i10;
        this.f16090b = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        int height;
        int height2;
        switch (this.f16089a) {
            case 0:
                b bVar = (b) this.f16090b;
                if (bVar.f16091a.isShowing()) {
                    bVar.a(false);
                    break;
                }
                break;
            case 1:
                t tVar = (t) this.f16090b;
                tVar.getClass();
                int i18 = i13 - i11;
                int i19 = i17 - i15;
                if (i12 - i10 != i16 - i14 || i18 != i19) {
                    PopupWindow popupWindow = tVar.f16577s;
                    if (popupWindow.isShowing()) {
                        tVar.u();
                        int width = tVar.getWidth() - popupWindow.getWidth();
                        int i20 = tVar.f16579t;
                        popupWindow.update(view, width - i20, (-popupWindow.getHeight()) - i20, -1, -1);
                        break;
                    }
                }
                break;
            case 2:
                y yVar = (y) this.f16090b;
                t tVar2 = yVar.f16599a;
                int width2 = (tVar2.getWidth() - tVar2.getPaddingLeft()) - tVar2.getPaddingRight();
                int height3 = (tVar2.getHeight() - tVar2.getPaddingBottom()) - tVar2.getPaddingTop();
                ViewGroup viewGroup = yVar.f16602d;
                int iC = y.c(viewGroup) - (viewGroup != null ? viewGroup.getPaddingRight() + viewGroup.getPaddingLeft() : 0);
                if (viewGroup == null) {
                    height = 0;
                } else {
                    height = viewGroup.getHeight();
                    ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        height += marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                    }
                }
                int paddingBottom = height - (viewGroup != null ? viewGroup.getPaddingBottom() + viewGroup.getPaddingTop() : 0);
                int iMax = Math.max(iC, y.c(yVar.l) + y.c(yVar.f16608j));
                ViewGroup viewGroup2 = yVar.f16603e;
                if (viewGroup2 == null) {
                    height2 = 0;
                } else {
                    height2 = viewGroup2.getHeight();
                    ViewGroup.LayoutParams layoutParams2 = viewGroup2.getLayoutParams();
                    if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                        height2 += marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
                    }
                }
                boolean z = width2 <= iMax || height3 <= (height2 * 2) + paddingBottom;
                if (yVar.B != z) {
                    yVar.B = z;
                    view.post(new u(yVar, 1));
                }
                boolean z4 = i12 - i10 != i16 - i14;
                if (!yVar.B && z4) {
                    view.post(new u(yVar, 2));
                    break;
                }
                break;
            default:
                CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) this.f16090b;
                carouselLayoutManager.getClass();
                if (i10 != i14 || i11 != i15 || i12 != i16 || i13 != i17) {
                    view.post(new g8(17, carouselLayoutManager));
                    break;
                }
        }
    }
}
