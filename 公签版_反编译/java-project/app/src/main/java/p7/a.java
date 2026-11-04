package p7;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.tabs.TabLayout;
import ha.l2;

/* loaded from: classes.dex */
public final class a extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12575b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(int i10) {
        super(27);
        this.f12575b = i10;
    }

    @Override // ha.l2
    public final void X(TabLayout tabLayout, View view, View view2, float f10, Drawable drawable) {
        float fSin;
        float fCos;
        switch (this.f12575b) {
            case 0:
                RectF rectFG = l2.G(tabLayout, view);
                RectF rectFG2 = l2.G(tabLayout, view2);
                if (rectFG.left < rectFG2.left) {
                    double d10 = f10;
                    Double.isNaN(d10);
                    double d11 = (d10 * 3.141592653589793d) / 2.0d;
                    fSin = (float) (1.0d - Math.cos(d11));
                    fCos = (float) Math.sin(d11);
                } else {
                    double d12 = f10;
                    Double.isNaN(d12);
                    double d13 = (d12 * 3.141592653589793d) / 2.0d;
                    fSin = (float) Math.sin(d13);
                    fCos = (float) (1.0d - Math.cos(d13));
                }
                drawable.setBounds(r6.a.c((int) rectFG.left, fSin, (int) rectFG2.left), drawable.getBounds().top, r6.a.c((int) rectFG.right, fCos, (int) rectFG2.right), drawable.getBounds().bottom);
                break;
            default:
                if (f10 >= 0.5f) {
                    view = view2;
                }
                RectF rectFG3 = l2.G(tabLayout, view);
                float fB = f10 < 0.5f ? r6.a.b(1.0f, 0.0f, 0.0f, 0.5f, f10) : r6.a.b(0.0f, 1.0f, 0.5f, 1.0f, f10);
                drawable.setBounds((int) rectFG3.left, drawable.getBounds().top, (int) rectFG3.right, drawable.getBounds().bottom);
                drawable.setAlpha((int) (fB * 255.0f));
                break;
        }
    }
}
