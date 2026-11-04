package ha;

import android.view.View;
import androidx.core.widget.NestedScrollView;
import com.yunpan.appmanage.ui.ActivityImage;
import com.yunpan.appmanage.ui.ActivityImage2;

/* loaded from: classes.dex */
public final /* synthetic */ class n implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7453a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7454b;

    public /* synthetic */ n(int i10, Object obj) {
        this.f7453a = i10;
        this.f7454b = obj;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        Object obj = this.f7454b;
        switch (this.f7453a) {
            case 0:
                p pVar = (p) obj;
                pVar.f7556t.setVisibility((z && pVar.f7549j.F() == 0) ? 0 : 8);
                break;
            case 1:
                e6 e6Var = (e6) obj;
                e6Var.getClass();
                if (z) {
                    int[] iArr = new int[2];
                    view.getLocationOnScreen(iArr);
                    int height = e6Var.f6947j.getHeight();
                    int height2 = iArr[1] - ((height / 2) - (view.getHeight() / 2));
                    int height3 = e6Var.f6947j.getChildAt(0).getHeight();
                    if (height2 < 0) {
                        height2 = 0;
                    } else {
                        int i10 = height3 - height;
                        if (height2 > i10) {
                            height2 = i10;
                        }
                    }
                    NestedScrollView nestedScrollView = e6Var.f6947j;
                    nestedScrollView.v(0 - nestedScrollView.getScrollX(), height2 - nestedScrollView.getScrollY(), 500, false);
                    break;
                }
                break;
            case 2:
                q7.c cVar = (q7.c) obj;
                cVar.t(cVar.u());
                break;
            case 3:
                q7.l lVar = (q7.l) obj;
                lVar.l = z;
                lVar.q();
                if (!z) {
                    lVar.t(false);
                    lVar.f13082m = false;
                    break;
                }
                break;
            case 4:
                ActivityImage activityImage = (ActivityImage) obj;
                if (!z) {
                    int i11 = ActivityImage.f3974t0;
                    activityImage.getClass();
                    break;
                } else {
                    activityImage.O.setVisibility(0);
                    break;
                }
            default:
                ActivityImage2 activityImage2 = (ActivityImage2) obj;
                if (!z) {
                    int i12 = ActivityImage2.M0;
                    activityImage2.getClass();
                    break;
                } else {
                    activityImage2.O.setVisibility(0);
                    break;
                }
        }
    }
}
