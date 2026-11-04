package j7;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;

/* loaded from: classes.dex */
public final class c extends com.bumptech.glide.d {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f9775e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TextPaint f9776f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ com.bumptech.glide.d f9777g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ d f9778h;

    public c(d dVar, Context context, TextPaint textPaint, com.bumptech.glide.d dVar2) {
        this.f9778h = dVar;
        this.f9775e = context;
        this.f9776f = textPaint;
        this.f9777g = dVar2;
    }

    @Override // com.bumptech.glide.d
    public final void O(int i10) {
        this.f9777g.O(i10);
    }

    @Override // com.bumptech.glide.d
    public final void P(Typeface typeface, boolean z) {
        this.f9778h.g(this.f9775e, this.f9776f, typeface);
        this.f9777g.P(typeface, z);
    }
}
