package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.d1;
import androidx.fragment.app.k0;
import androidx.fragment.app.r0;
import androidx.fragment.app.z0;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class a extends z0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Fragment f2448a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FrameLayout f2449b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f2450c;

    public a(f fVar, Fragment fragment, FrameLayout frameLayout) {
        this.f2450c = fVar;
        this.f2448a = fragment;
        this.f2449b = frameLayout;
    }

    @Override // androidx.fragment.app.z0
    public final void onFragmentViewCreated(d1 d1Var, Fragment fragment, View view, Bundle bundle) {
        if (fragment == this.f2448a) {
            k0 k0Var = d1Var.l;
            synchronized (((CopyOnWriteArrayList) k0Var.f1316a)) {
                try {
                    int size = ((CopyOnWriteArrayList) k0Var.f1316a).size();
                    int i10 = 0;
                    while (true) {
                        if (i10 >= size) {
                            break;
                        }
                        if (((r0) ((CopyOnWriteArrayList) k0Var.f1316a).get(i10)).f1374a == this) {
                            ((CopyOnWriteArrayList) k0Var.f1316a).remove(i10);
                            break;
                        }
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            f fVar = this.f2450c;
            FrameLayout frameLayout = this.f2449b;
            fVar.getClass();
            f.p(view, frameLayout);
        }
    }
}
