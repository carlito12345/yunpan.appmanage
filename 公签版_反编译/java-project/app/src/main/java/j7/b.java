package j7;

import android.graphics.Typeface;

/* loaded from: classes.dex */
public final class b extends o0.b {

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ com.bumptech.glide.d f9773h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ d f9774i;

    public b(d dVar, com.bumptech.glide.d dVar2) {
        this.f9774i = dVar;
        this.f9773h = dVar2;
    }

    @Override // o0.b
    public final void h(int i10) {
        this.f9774i.f9790m = true;
        this.f9773h.O(i10);
    }

    @Override // o0.b
    public final void i(Typeface typeface) {
        d dVar = this.f9774i;
        dVar.f9791n = Typeface.create(typeface, dVar.f9781c);
        dVar.f9790m = true;
        this.f9773h.P(dVar.f9791n, false);
    }
}
