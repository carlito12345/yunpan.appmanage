package v8;

import android.view.View;

/* loaded from: classes.dex */
public final class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final a f16672a;

    /* renamed from: b, reason: collision with root package name */
    public final c f16673b;

    public e(a aVar, c cVar) {
        this.f16672a = aVar;
        this.f16673b = cVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f16673b.e(this.f16672a, view);
    }
}
