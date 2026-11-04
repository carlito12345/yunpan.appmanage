package j7;

import a1.i;
import android.graphics.Typeface;

/* loaded from: classes.dex */
public final class a extends com.bumptech.glide.d {

    /* renamed from: e, reason: collision with root package name */
    public final Typeface f9770e;

    /* renamed from: f, reason: collision with root package name */
    public final i f9771f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9772g;

    public a(i iVar, Typeface typeface) {
        this.f9770e = typeface;
        this.f9771f = iVar;
    }

    @Override // com.bumptech.glide.d
    public final void O(int i10) {
        if (this.f9772g) {
            return;
        }
        g7.b bVar = (g7.b) this.f9771f.f76b;
        if (bVar.k(this.f9770e)) {
            bVar.i(false);
        }
    }

    @Override // com.bumptech.glide.d
    public final void P(Typeface typeface, boolean z) {
        if (this.f9772g) {
            return;
        }
        g7.b bVar = (g7.b) this.f9771f.f76b;
        if (bVar.k(typeface)) {
            bVar.i(false);
        }
    }
}
