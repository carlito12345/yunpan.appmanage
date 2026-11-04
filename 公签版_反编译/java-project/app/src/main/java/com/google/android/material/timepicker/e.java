package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yunpan.appmanage.R;
import java.util.WeakHashMap;
import m7.j;
import x0.b1;
import x0.j0;
import x0.k0;

/* loaded from: classes.dex */
public abstract class e extends ConstraintLayout {

    /* renamed from: t, reason: collision with root package name */
    public final a2.h f3732t;

    /* renamed from: v, reason: collision with root package name */
    public int f3733v;

    /* renamed from: w, reason: collision with root package name */
    public final m7.g f3734w;

    public e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.materialClockStyle);
        LayoutInflater.from(context).inflate(R.layout.material_radial_view_group, this);
        m7.g gVar = new m7.g();
        this.f3734w = gVar;
        m7.h hVar = new m7.h(0.5f);
        j jVar = gVar.f10920a.f10904a;
        jVar.getClass();
        ff.b bVar = new ff.b(jVar);
        bVar.f5806e = hVar;
        bVar.f5807f = hVar;
        bVar.f5808g = hVar;
        bVar.f5809h = hVar;
        gVar.setShapeAppearanceModel(new j(bVar));
        this.f3734w.k(ColorStateList.valueOf(-1));
        m7.g gVar2 = this.f3734w;
        WeakHashMap weakHashMap = b1.f17953a;
        j0.q(this, gVar2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q6.a.f13048u, R.attr.materialClockStyle, 0);
        this.f3733v = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f3732t = new a2.h(10, this);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        if (view.getId() == -1) {
            WeakHashMap weakHashMap = b1.f17953a;
            view.setId(k0.a());
        }
        Handler handler = getHandler();
        if (handler != null) {
            a2.h hVar = this.f3732t;
            handler.removeCallbacks(hVar);
            handler.post(hVar);
        }
    }

    public abstract void k();

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        k();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            a2.h hVar = this.f3732t;
            handler.removeCallbacks(hVar);
            handler.post(hVar);
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i10) {
        this.f3734w.k(ColorStateList.valueOf(i10));
    }
}
