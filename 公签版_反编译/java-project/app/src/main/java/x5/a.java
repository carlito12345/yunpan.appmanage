package x5;

import a6.h;
import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.yunpan.appmanage.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class a implements e {

    /* renamed from: a, reason: collision with root package name */
    public final ImageView f18144a;

    /* renamed from: b, reason: collision with root package name */
    public final f f18145b;

    /* renamed from: c, reason: collision with root package name */
    public Animatable f18146c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f18147d;

    public a(ImageView imageView, int i10) {
        this.f18147d = i10;
        h.c(imageView, "Argument must not be null");
        this.f18144a = imageView;
        this.f18145b = new f(imageView);
    }

    @Override // x5.e
    public final void a(w5.f fVar) {
        this.f18145b.f18156b.remove(fVar);
    }

    @Override // x5.e
    public final void b(Object obj) {
        l(obj);
        if (!(obj instanceof Animatable)) {
            this.f18146c = null;
            return;
        }
        Animatable animatable = (Animatable) obj;
        this.f18146c = animatable;
        animatable.start();
    }

    @Override // x5.e
    public final void d(Drawable drawable) {
        l(null);
        this.f18146c = null;
        this.f18144a.setImageDrawable(drawable);
    }

    @Override // com.bumptech.glide.manager.h
    public final void e() {
        Animatable animatable = this.f18146c;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override // x5.e
    public final void f(Drawable drawable) {
        l(null);
        this.f18146c = null;
        this.f18144a.setImageDrawable(drawable);
    }

    @Override // x5.e
    public final w5.c g() {
        Object tag = this.f18144a.getTag(R.id.glide_custom_view_target_tag);
        if (tag == null) {
            return null;
        }
        if (tag instanceof w5.c) {
            return (w5.c) tag;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    @Override // x5.e
    public final void h(w5.f fVar) throws Throwable {
        f fVar2 = this.f18145b;
        ImageView imageView = fVar2.f18155a;
        int paddingRight = imageView.getPaddingRight() + imageView.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int iA = fVar2.a(imageView.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        ImageView imageView2 = fVar2.f18155a;
        int paddingBottom = imageView2.getPaddingBottom() + imageView2.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = imageView2.getLayoutParams();
        int iA2 = fVar2.a(imageView2.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iA > 0 || iA == Integer.MIN_VALUE) && (iA2 > 0 || iA2 == Integer.MIN_VALUE)) {
            fVar.k(iA, iA2);
            return;
        }
        ArrayList arrayList = fVar2.f18156b;
        if (!arrayList.contains(fVar)) {
            arrayList.add(fVar);
        }
        if (fVar2.f18157c == null) {
            ViewTreeObserver viewTreeObserver = imageView2.getViewTreeObserver();
            b bVar = new b(fVar2);
            fVar2.f18157c = bVar;
            viewTreeObserver.addOnPreDrawListener(bVar);
        }
    }

    @Override // x5.e
    public final void i(Drawable drawable) {
        f fVar = this.f18145b;
        ViewTreeObserver viewTreeObserver = fVar.f18155a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(fVar.f18157c);
        }
        fVar.f18157c = null;
        fVar.f18156b.clear();
        Animatable animatable = this.f18146c;
        if (animatable != null) {
            animatable.stop();
        }
        l(null);
        this.f18146c = null;
        this.f18144a.setImageDrawable(drawable);
    }

    @Override // x5.e
    public final void j(w5.c cVar) {
        this.f18144a.setTag(R.id.glide_custom_view_target_tag, cVar);
    }

    @Override // com.bumptech.glide.manager.h
    public final void k() {
        Animatable animatable = this.f18146c;
        if (animatable != null) {
            animatable.start();
        }
    }

    public final void l(Object obj) {
        switch (this.f18147d) {
            case 0:
                this.f18144a.setImageBitmap((Bitmap) obj);
                break;
            default:
                this.f18144a.setImageDrawable((Drawable) obj);
                break;
        }
    }

    public final String toString() {
        return "Target for: " + this.f18144a;
    }

    @Override // com.bumptech.glide.manager.h
    public final void c() {
    }
}
