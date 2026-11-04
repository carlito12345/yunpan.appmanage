package x0;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import ua.i8;

/* loaded from: classes.dex */
public final class s1 extends WindowInsetsAnimation.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final g f18046a;

    /* renamed from: b, reason: collision with root package name */
    public List f18047b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f18048c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f18049d;

    public s1(g gVar) {
        super(0);
        this.f18049d = new HashMap();
        this.f18046a = gVar;
    }

    public final v1 a(WindowInsetsAnimation windowInsetsAnimation) {
        v1 v1Var = (v1) this.f18049d.get(windowInsetsAnimation);
        if (v1Var == null) {
            v1Var = new v1(0, null, 0L);
            if (Build.VERSION.SDK_INT >= 30) {
                v1Var.f18060a = new t1(windowInsetsAnimation);
            }
            this.f18049d.put(windowInsetsAnimation, v1Var);
        }
        return v1Var;
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
        g gVar = this.f18046a;
        a(windowInsetsAnimation);
        ((View) gVar.f17986e).setTranslationY(0.0f);
        this.f18049d.remove(windowInsetsAnimation);
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
        g gVar = this.f18046a;
        a(windowInsetsAnimation);
        View view = (View) gVar.f17986e;
        int[] iArr = (int[]) gVar.f17987f;
        view.getLocationOnScreen(iArr);
        gVar.f17984c = iArr[1];
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
        ArrayList arrayList = this.f18048c;
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList(list.size());
            this.f18048c = arrayList2;
            this.f18047b = Collections.unmodifiableList(arrayList2);
        } else {
            arrayList.clear();
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            WindowInsetsAnimation windowInsetsAnimationL = androidx.media3.exoplayer.video.b0.l(list.get(size));
            v1 v1VarA = a(windowInsetsAnimationL);
            v1VarA.f18060a.d(windowInsetsAnimationL.getFraction());
            this.f18048c.add(v1VarA);
        }
        g gVar = this.f18046a;
        j2 j2VarH = j2.h(null, windowInsets);
        gVar.e(j2VarH, this.f18047b);
        return j2VarH.g();
    }

    @Override // android.view.WindowInsetsAnimation.Callback
    public final WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
        g gVar = this.f18046a;
        a(windowInsetsAnimation);
        i8 i8Var = new i8(bounds);
        View view = (View) gVar.f17986e;
        int[] iArr = (int[]) gVar.f17987f;
        view.getLocationOnScreen(iArr);
        int i10 = gVar.f17984c - iArr[1];
        gVar.f17985d = i10;
        view.setTranslationY(i10);
        return t1.e(i8Var);
    }
}
