package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import s4.a;
import v.j;
import v.k;
import v.m;
import v.z;

/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements j, z, AdapterView.OnItemClickListener {

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f886b = {R.attr.background, R.attr.divider};

    /* renamed from: a, reason: collision with root package name */
    public k f887a;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        a aVarJ = a.j(context, attributeSet, f886b, R.attr.listViewStyle);
        TypedArray typedArray = (TypedArray) aVarJ.f14294c;
        if (typedArray.hasValue(0)) {
            setBackgroundDrawable(aVarJ.e(0));
        }
        if (typedArray.hasValue(1)) {
            setDivider(aVarJ.e(1));
        }
        aVarJ.r();
    }

    @Override // v.z
    public final void a(k kVar) {
        this.f887a = kVar;
    }

    @Override // v.j
    public final boolean b(m mVar) {
        return this.f887a.q(mVar, null, 0);
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
        b((m) getAdapter().getItem(i10));
    }
}
