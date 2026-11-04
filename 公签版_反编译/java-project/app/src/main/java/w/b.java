package w;

import androidx.appcompat.widget.ActionBarOverlayLayout;

/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17017a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f17018b;

    public /* synthetic */ b(ActionBarOverlayLayout actionBarOverlayLayout, int i10) {
        this.f17017a = i10;
        this.f17018b = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f17017a) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = this.f17018b;
                actionBarOverlayLayout.h();
                actionBarOverlayLayout.C = actionBarOverlayLayout.f933d.animate().translationY(0.0f).setListener(actionBarOverlayLayout.D);
                break;
            default:
                ActionBarOverlayLayout actionBarOverlayLayout2 = this.f17018b;
                actionBarOverlayLayout2.h();
                actionBarOverlayLayout2.C = actionBarOverlayLayout2.f933d.animate().translationY(-actionBarOverlayLayout2.f933d.getHeight()).setListener(actionBarOverlayLayout2.D);
                break;
        }
    }
}
