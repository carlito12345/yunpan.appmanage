package s5;

import android.graphics.Bitmap;
import f5.m;
import h5.z;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class d implements m {

    /* renamed from: b, reason: collision with root package name */
    public final m f14428b;

    public d(m mVar) {
        a6.h.c(mVar, "Argument must not be null");
        this.f14428b = mVar;
    }

    @Override // f5.m
    public final z a(com.bumptech.glide.f fVar, z zVar, int i10, int i11) {
        b bVar = (b) zVar.get();
        z dVar = new o5.d(((g) bVar.f14417a.f8530b).l, com.bumptech.glide.b.b(fVar).f3280a);
        m mVar = this.f14428b;
        z zVarA = mVar.a(fVar, dVar, i10, i11);
        if (!dVar.equals(zVarA)) {
            dVar.recycle();
        }
        ((g) bVar.f14417a.f8530b).c(mVar, (Bitmap) zVarA.get());
        return zVar;
    }

    @Override // f5.f
    public final void b(MessageDigest messageDigest) {
        this.f14428b.b(messageDigest);
    }

    @Override // f5.f
    public final boolean equals(Object obj) {
        if (obj instanceof d) {
            return this.f14428b.equals(((d) obj).f14428b);
        }
        return false;
    }

    @Override // f5.f
    public final int hashCode() {
        return this.f14428b.hashCode();
    }
}
