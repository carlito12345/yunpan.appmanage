package y0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* renamed from: a, reason: collision with root package name */
    public final int f18530a;

    /* renamed from: b, reason: collision with root package name */
    public final n f18531b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18532c;

    public a(int i10, n nVar, int i11) {
        this.f18530a = i10;
        this.f18531b = nVar;
        this.f18532c = i11;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f18530a);
        this.f18531b.f18549a.performAction(this.f18532c, bundle);
    }
}
