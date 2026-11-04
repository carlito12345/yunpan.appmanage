package ya;

import android.graphics.Point;
import android.view.WindowManager;
import android.widget.ImageView;

/* loaded from: classes.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19022a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f19023b;

    public /* synthetic */ d(e eVar, int i10) {
        this.f19022a = i10;
        this.f19023b = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19022a) {
            case 0:
                e eVar = this.f19023b;
                if (!eVar.f19027d.o("auto_hide").b()) {
                    ImageView imageView = eVar.f19032i;
                    if (imageView != null) {
                        imageView.setImageAlpha(50);
                        break;
                    }
                } else {
                    ImageView imageView2 = eVar.f19032i;
                    if (imageView2 != null) {
                        imageView2.setVisibility(8);
                        break;
                    }
                }
                break;
            case 1:
                try {
                    e eVar2 = this.f19023b;
                    eVar2.f19029f = 0L;
                    eVar2.f19024a.b(eVar2.f19027d.p("0"));
                    break;
                } catch (Exception unused) {
                    return;
                }
            case 2:
                e eVar3 = this.f19023b;
                eVar3.f(eVar3.f19043v);
                eVar3.l = true;
                eVar3.f19024a.b(eVar3.f19027d.p("2"));
                break;
            case 3:
                e eVar4 = this.f19023b;
                if (!eVar4.f19036n) {
                    eVar4.f19037o = true;
                    break;
                }
                break;
            default:
                e eVar5 = this.f19023b;
                try {
                    Point pointR = p000if.a.R(eVar5.f19024a);
                    WindowManager.LayoutParams layoutParams = eVar5.f19033j;
                    int i10 = layoutParams.y;
                    if (i10 <= pointR.y / 2 || eVar5.G != 0) {
                        layoutParams.y = i10 + 5;
                        int i11 = eVar5.G + 1;
                        eVar5.G = i11;
                        if (i11 > 10) {
                            eVar5.G = 0;
                        }
                    } else {
                        layoutParams.y = i10 - 5;
                    }
                    eVar5.f19030g.updateViewLayout(eVar5.f19032i, layoutParams);
                    eVar5.f19024a.G.postDelayed(eVar5.H, 60000);
                    break;
                } catch (Exception unused2) {
                    return;
                }
                break;
        }
    }
}
