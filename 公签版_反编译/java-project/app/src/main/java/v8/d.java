package v8;

import android.content.ComponentCallbacks;
import android.content.res.Configuration;
import android.view.Gravity;
import android.view.WindowManager;
import ha.Cif;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class d implements ComponentCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public int f16670a;

    /* renamed from: b, reason: collision with root package name */
    public WeakReference f16671b;

    public d(int i10) {
        this.f16670a = i10;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        a aVar;
        h hVar;
        a aVar2;
        h hVar2;
        h hVar3;
        int i10 = this.f16670a;
        int i11 = configuration.orientation;
        if (i10 == i11) {
            return;
        }
        this.f16670a = i11;
        WeakReference weakReference = this.f16671b;
        if (weakReference == null || (aVar = (a) weakReference.get()) == null) {
            return;
        }
        int i12 = this.f16670a;
        if (aVar.f16659f) {
            final w8.b bVar = aVar.f16663j;
            if (bVar != null && (hVar = bVar.f17633b) != null && (aVar2 = bVar.f17632a) != null) {
                WindowManager.LayoutParams layoutParams = aVar2.f16658e;
                int i13 = bVar.f17636e;
                int i14 = bVar.f17637f;
                int i15 = bVar.f17638g;
                int i16 = bVar.f17639h;
                int width = (aVar2 == null || (hVar2 = aVar2.f16656c) == null) ? 0 : hVar2.getWidth();
                a aVar3 = bVar.f17632a;
                int height = (aVar3 == null || (hVar3 = aVar3.f16656c) == null) ? 0 : hVar3.getHeight();
                int absoluteGravity = Gravity.getAbsoluteGravity(layoutParams.gravity, hVar.getLayoutDirection());
                int i17 = layoutParams.x;
                int i18 = layoutParams.y;
                int i19 = absoluteGravity & 7;
                if (i19 != 3) {
                    i17 = i19 == 5 ? (i13 - i15) - i17 : i17 + (((i13 - i15) - width) / 2);
                }
                int i20 = absoluteGravity & 112;
                if (i20 != 48) {
                    i18 = i20 == 80 ? (i14 - i16) - i18 : i18 + (((i14 - i16) - height) / 2);
                }
                final float fA = bVar.a(i17, Math.max(i13 - width, 0));
                final float fA2 = bVar.a(i18, Math.max(i14 - height, 0));
                final int i21 = width;
                final int i22 = height;
                aVar2.i(new Runnable() { // from class: w8.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        b bVar2 = bVar;
                        bVar2.g();
                        bVar2.f();
                        int i23 = bVar2.f17636e;
                        int i24 = bVar2.f17637f;
                        bVar2.h(Math.max(0, Math.min(i23 - i21 <= 0 ? 0 : (int) (r1 * fA), r1)), Math.max(0, Math.min(i24 - i22 <= 0 ? 0 : (int) (r2 * fA2), r2)));
                    }
                }, 100L);
            }
            aVar.i(new Cif(aVar, i12), 110L);
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }
}
