package la;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.m;
import com.bumptech.glide.manager.g;
import com.bumptech.glide.manager.l;
import com.bumptech.glide.p;
import java.io.File;
import w5.e;

/* loaded from: classes.dex */
public final class d extends p {
    public d(com.bumptech.glide.b bVar, g gVar, l lVar, Context context) {
        super(bVar, gVar, lVar, context);
    }

    @Override // com.bumptech.glide.p
    public final m l(Class cls) {
        return new c(this.f3420a, this, cls, this.f3421b);
    }

    @Override // com.bumptech.glide.p
    public final m m() {
        return (c) super.m();
    }

    @Override // com.bumptech.glide.p
    public final m n() {
        return (c) l(Drawable.class);
    }

    @Override // com.bumptech.glide.p
    public final m q() {
        return (c) super.q();
    }

    @Override // com.bumptech.glide.p
    public final m r(Drawable drawable) {
        return (c) super.r(drawable);
    }

    @Override // com.bumptech.glide.p
    public final m s(File file) {
        return (c) super.s(file);
    }

    @Override // com.bumptech.glide.p
    public final m t(Object obj) {
        return (c) super.t(obj);
    }

    @Override // com.bumptech.glide.p
    public final m u(String str) {
        return (c) super.u(str);
    }

    @Override // com.bumptech.glide.p
    public final void x(e eVar) {
        if (eVar instanceof b) {
            super.x(eVar);
        } else {
            super.x(new b().A(eVar));
        }
    }
}
