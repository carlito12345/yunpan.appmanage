package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;

/* loaded from: classes.dex */
public final class l0 extends AnimationSet implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f1328a;

    /* renamed from: b, reason: collision with root package name */
    public final View f1329b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1330c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1331d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1332e;

    public l0(Animation animation, ViewGroup viewGroup, View view) {
        super(false);
        this.f1332e = true;
        this.f1328a = viewGroup;
        this.f1329b = view;
        addAnimation(animation);
        viewGroup.post(this);
    }

    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public final boolean getTransformation(long j10, Transformation transformation) {
        this.f1332e = true;
        if (this.f1330c) {
            return !this.f1331d;
        }
        if (!super.getTransformation(j10, transformation)) {
            this.f1330c = true;
            x0.a0.a(this.f1328a, this);
        }
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = this.f1330c;
        ViewGroup viewGroup = this.f1328a;
        if (z || !this.f1332e) {
            viewGroup.endViewTransition(this.f1329b);
            this.f1331d = true;
        } else {
            this.f1332e = false;
            viewGroup.post(this);
        }
    }

    @Override // android.view.animation.Animation
    public final boolean getTransformation(long j10, Transformation transformation, float f10) {
        this.f1332e = true;
        if (this.f1330c) {
            return !this.f1331d;
        }
        if (!super.getTransformation(j10, transformation, f10)) {
            this.f1330c = true;
            x0.a0.a(this.f1328a, this);
        }
        return true;
    }
}
