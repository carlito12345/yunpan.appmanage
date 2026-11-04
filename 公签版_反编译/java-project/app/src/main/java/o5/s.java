package o5;

import android.graphics.drawable.Drawable;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class s implements f5.m {

    /* renamed from: b, reason: collision with root package name */
    public final f5.m f11625b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f11626c;

    public s(f5.m mVar, boolean z) {
        this.f11625b = mVar;
        this.f11626c = z;
    }

    @Override // f5.m
    public final h5.z a(com.bumptech.glide.f fVar, h5.z zVar, int i10, int i11) {
        i5.c cVar = com.bumptech.glide.b.b(fVar).f3280a;
        Drawable drawable = (Drawable) zVar.get();
        d dVarA = r.a(cVar, drawable, i10, i11);
        if (dVarA != null) {
            h5.z zVarA = this.f11625b.a(fVar, dVarA, i10, i11);
            if (!zVarA.equals(dVarA)) {
                return new d(fVar.getResources(), zVarA);
            }
            zVarA.recycle();
            return zVar;
        }
        if (!this.f11626c) {
            return zVar;
        }
        throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
    }

    @Override // f5.f
    public final void b(MessageDigest messageDigest) {
        this.f11625b.b(messageDigest);
    }

    @Override // f5.f
    public final boolean equals(Object obj) {
        if (obj instanceof s) {
            return this.f11625b.equals(((s) obj).f11625b);
        }
        return false;
    }

    @Override // f5.f
    public final int hashCode() {
        return this.f11625b.hashCode();
    }
}
