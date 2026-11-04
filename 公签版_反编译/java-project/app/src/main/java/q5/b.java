package q5;

import a2.k1;
import a6.h;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.p;
import e5.d;
import h5.w;
import h5.z;
import s5.e;
import s5.g;

/* loaded from: classes.dex */
public final class b implements z, w {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f13026a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13027b;

    public b(Drawable drawable, int i10) {
        this.f13027b = i10;
        h.c(drawable, "Argument must not be null");
        this.f13026a = drawable;
    }

    @Override // h5.z
    public final Class a() {
        switch (this.f13027b) {
            case 0:
                return this.f13026a.getClass();
            default:
                return s5.b.class;
        }
    }

    @Override // h5.z
    public final Object get() {
        Drawable drawable = this.f13026a;
        Drawable.ConstantState constantState = drawable.getConstantState();
        return constantState == null ? drawable : constantState.newDrawable();
    }

    @Override // h5.z
    public final int getSize() {
        switch (this.f13027b) {
            case 0:
                Drawable drawable = this.f13026a;
                return Math.max(1, drawable.getIntrinsicHeight() * drawable.getIntrinsicWidth() * 4);
            default:
                g gVar = (g) ((s5.b) this.f13026a).f14417a.f8530b;
                d dVar = gVar.f14436a;
                return (dVar.f4806j.length * 4) + dVar.f4800d.limit() + dVar.f4805i.length + gVar.f14448n;
        }
    }

    @Override // h5.w
    public void initialize() {
        switch (this.f13027b) {
            case 1:
                ((g) ((s5.b) this.f13026a).f14417a.f8530b).l.prepareToDraw();
                break;
            default:
                Drawable drawable = this.f13026a;
                if (!(drawable instanceof BitmapDrawable)) {
                    if (drawable instanceof s5.b) {
                        ((g) ((s5.b) drawable).f14417a.f8530b).l.prepareToDraw();
                        break;
                    }
                } else {
                    ((BitmapDrawable) drawable).getBitmap().prepareToDraw();
                    break;
                }
                break;
        }
    }

    @Override // h5.z
    public final void recycle() {
        k1 k1Var;
        k1 k1Var2;
        k1 k1Var3;
        switch (this.f13027b) {
            case 0:
                break;
            default:
                s5.b bVar = (s5.b) this.f13026a;
                bVar.stop();
                bVar.f14420d = true;
                g gVar = (g) bVar.f14417a.f8530b;
                gVar.f14438c.clear();
                Bitmap bitmap = gVar.l;
                if (bitmap != null) {
                    gVar.f14440e.c(bitmap);
                    gVar.l = null;
                }
                gVar.f14441f = false;
                e eVar = gVar.f14444i;
                p pVar = gVar.f14439d;
                if (eVar != null) {
                    pVar.o(eVar);
                    gVar.f14444i = null;
                }
                e eVar2 = gVar.f14446k;
                if (eVar2 != null) {
                    pVar.o(eVar2);
                    gVar.f14446k = null;
                }
                e eVar3 = gVar.f14447m;
                if (eVar3 != null) {
                    pVar.o(eVar3);
                    gVar.f14447m = null;
                }
                d dVar = gVar.f14436a;
                dVar.l = null;
                byte[] bArr = dVar.f4805i;
                kf.d dVar2 = dVar.f4799c;
                if (bArr != null && (k1Var3 = (k1) dVar2.f10287c) != null) {
                    k1Var3.i(bArr);
                }
                int[] iArr = dVar.f4806j;
                if (iArr != null && (k1Var2 = (k1) dVar2.f10287c) != null) {
                    k1Var2.i(iArr);
                }
                Bitmap bitmap2 = dVar.f4808m;
                if (bitmap2 != null) {
                    ((i5.c) dVar2.f10286b).c(bitmap2);
                }
                dVar.f4808m = null;
                dVar.f4800d = null;
                dVar.f4813s = null;
                byte[] bArr2 = dVar.f4801e;
                if (bArr2 != null && (k1Var = (k1) dVar2.f10287c) != null) {
                    k1Var.i(bArr2);
                }
                gVar.f14445j = true;
                break;
        }
    }

    private final void b() {
    }
}
