package com.bumptech.glide.manager;

import android.view.View;
import androidx.fragment.app.j0;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class e implements f {

    /* renamed from: a, reason: collision with root package name */
    public final Set f3386a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f3387b;

    @Override // com.bumptech.glide.manager.f
    public final void k(j0 j0Var) {
        if (!this.f3387b && this.f3386a.add(j0Var)) {
            View decorView = j0Var.getWindow().getDecorView();
            decorView.getViewTreeObserver().addOnDrawListener(new d(this, decorView));
        }
    }
}
