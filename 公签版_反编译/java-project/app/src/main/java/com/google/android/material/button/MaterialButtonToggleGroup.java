package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import com.google.android.material.timepicker.f;
import com.yunpan.appmanage.R;
import ff.b;
import g7.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;
import kh.h;
import m7.j;
import s7.a;
import ua.k0;
import w.i;
import x0.b1;
import x0.p;
import x6.d;

/* loaded from: classes.dex */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ int f3502k = 0;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3503a;

    /* renamed from: b, reason: collision with root package name */
    public final i f3504b;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f3505c;

    /* renamed from: d, reason: collision with root package name */
    public final k0 f3506d;

    /* renamed from: e, reason: collision with root package name */
    public Integer[] f3507e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f3508f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3509g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f3510h;

    /* renamed from: i, reason: collision with root package name */
    public final int f3511i;

    /* renamed from: j, reason: collision with root package name */
    public HashSet f3512j;

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        super(a.a(context, attributeSet, R.attr.materialButtonToggleGroupStyle, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup), attributeSet, R.attr.materialButtonToggleGroupStyle);
        this.f3503a = new ArrayList();
        this.f3504b = new i(7, this);
        this.f3505c = new LinkedHashSet();
        this.f3506d = new k0(2, this);
        this.f3508f = false;
        this.f3512j = new HashSet();
        TypedArray typedArrayG = l.g(getContext(), attributeSet, q6.a.l, R.attr.materialButtonToggleGroupStyle, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup, new int[0]);
        setSingleSelection(typedArrayG.getBoolean(3, false));
        this.f3511i = typedArrayG.getResourceId(1, -1);
        this.f3510h = typedArrayG.getBoolean(2, false);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(typedArrayG.getBoolean(0, true));
        typedArrayG.recycle();
        b1.B(this, 1);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (c(i10)) {
                return i10;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (c(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i10 = 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            if ((getChildAt(i11) instanceof MaterialButton) && c(i11)) {
                i10++;
            }
        }
        return i10;
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            WeakHashMap weakHashMap = b1.f17953a;
            materialButton.setId(x0.k0.a());
        }
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setOnPressedChangeListenerInternal(this.f3504b);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    public final void a() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i10 = firstVisibleChildIndex + 1; i10 < getChildCount(); i10++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i10);
            int iMin = Math.min(materialButton.getStrokeWidth(), ((MaterialButton) getChildAt(i10 - 1)).getStrokeWidth());
            ViewGroup.LayoutParams layoutParams = materialButton.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
            if (getOrientation() == 0) {
                p.g(layoutParams2, 0);
                p.h(layoutParams2, -iMin);
                layoutParams2.topMargin = 0;
            } else {
                layoutParams2.bottomMargin = 0;
                layoutParams2.topMargin = -iMin;
                p.h(layoutParams2, 0);
            }
            materialButton.setLayoutParams(layoutParams2);
        }
        if (getChildCount() == 0 || firstVisibleChildIndex == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) ((MaterialButton) getChildAt(firstVisibleChildIndex)).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams3.topMargin = 0;
            layoutParams3.bottomMargin = 0;
        } else {
            p.g(layoutParams3, 0);
            p.h(layoutParams3, 0);
            layoutParams3.leftMargin = 0;
            layoutParams3.rightMargin = 0;
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof MaterialButton) {
            super.addView(view, i10, layoutParams);
            MaterialButton materialButton = (MaterialButton) view;
            setGeneratedIdIfNeeded(materialButton);
            setupButtonChild(materialButton);
            b(materialButton.getId(), materialButton.f3500p);
            j shapeAppearanceModel = materialButton.getShapeAppearanceModel();
            this.f3503a.add(new d(shapeAppearanceModel.f10945e, shapeAppearanceModel.f10948h, shapeAppearanceModel.f10946f, shapeAppearanceModel.f10947g));
            materialButton.setEnabled(isEnabled());
            b1.x(materialButton, new com.google.android.material.datepicker.i(4, this));
        }
    }

    public final void b(int i10, boolean z) {
        if (i10 == -1) {
            return;
        }
        HashSet hashSet = new HashSet(this.f3512j);
        if (z && !hashSet.contains(Integer.valueOf(i10))) {
            if (this.f3509g && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i10));
        } else {
            if (z || !hashSet.contains(Integer.valueOf(i10))) {
                return;
            }
            if (!this.f3510h || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i10));
            }
        }
        d(hashSet);
    }

    public final boolean c(int i10) {
        return getChildAt(i10).getVisibility() != 8;
    }

    public final void d(Set set) {
        HashSet hashSet = this.f3512j;
        this.f3512j = new HashSet(set);
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            int id2 = ((MaterialButton) getChildAt(i10)).getId();
            boolean zContains = set.contains(Integer.valueOf(id2));
            View viewFindViewById = findViewById(id2);
            if (viewFindViewById instanceof MaterialButton) {
                this.f3508f = true;
                ((MaterialButton) viewFindViewById).setChecked(zContains);
                this.f3508f = false;
            }
            if (hashSet.contains(Integer.valueOf(id2)) != set.contains(Integer.valueOf(id2))) {
                set.contains(Integer.valueOf(id2));
                Iterator it = this.f3505c.iterator();
                while (it.hasNext()) {
                    ((f) it.next()).a();
                }
            }
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.f3506d);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            treeMap.put((MaterialButton) getChildAt(i10), Integer.valueOf(i10));
        }
        this.f3507e = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    public final void e() {
        d dVar;
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i10 = 0; i10 < childCount; i10++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i10);
            if (materialButton.getVisibility() != 8) {
                j shapeAppearanceModel = materialButton.getShapeAppearanceModel();
                shapeAppearanceModel.getClass();
                b bVar = new b(shapeAppearanceModel);
                d dVar2 = (d) this.f3503a.get(i10);
                if (firstVisibleChildIndex != lastVisibleChildIndex) {
                    boolean z = getOrientation() == 0;
                    m7.a aVar = d.f18179e;
                    if (i10 == firstVisibleChildIndex) {
                        dVar = z ? l.f(this) ? new d(aVar, aVar, dVar2.f18181b, dVar2.f18182c) : new d(dVar2.f18180a, dVar2.f18183d, aVar, aVar) : new d(dVar2.f18180a, aVar, dVar2.f18181b, aVar);
                    } else if (i10 == lastVisibleChildIndex) {
                        dVar = z ? l.f(this) ? new d(dVar2.f18180a, dVar2.f18183d, aVar, aVar) : new d(aVar, aVar, dVar2.f18181b, dVar2.f18182c) : new d(aVar, dVar2.f18183d, aVar, dVar2.f18182c);
                    } else {
                        dVar2 = null;
                    }
                    dVar2 = dVar;
                }
                if (dVar2 == null) {
                    bVar.f5806e = new m7.a(0.0f);
                    bVar.f5807f = new m7.a(0.0f);
                    bVar.f5808g = new m7.a(0.0f);
                    bVar.f5809h = new m7.a(0.0f);
                } else {
                    bVar.f5806e = dVar2.f18180a;
                    bVar.f5809h = dVar2.f18183d;
                    bVar.f5807f = dVar2.f18181b;
                    bVar.f5808g = dVar2.f18182c;
                }
                materialButton.setShapeAppearanceModel(new j(bVar));
            }
        }
    }

    public int getCheckedButtonId() {
        if (!this.f3509g || this.f3512j.isEmpty()) {
            return -1;
        }
        return ((Integer) this.f3512j.iterator().next()).intValue();
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            int id2 = ((MaterialButton) getChildAt(i10)).getId();
            if (this.f3512j.contains(Integer.valueOf(id2))) {
                arrayList.add(Integer.valueOf(id2));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i10, int i11) {
        Integer[] numArr = this.f3507e;
        return (numArr == null || i11 >= numArr.length) ? i11 : numArr[i11].intValue();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i10 = this.f3511i;
        if (i10 != -1) {
            d(Collections.singleton(Integer.valueOf(i10)));
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        h hVarB = h.b(1, getVisibleButtonCount(), this.f3509g ? 1 : 2, false);
        if (Build.VERSION.SDK_INT >= 19) {
            accessibilityNodeInfo.setCollectionInfo(vb.b.c(hVarB.f10353a));
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        e();
        a();
        super.onMeasure(i10, i11);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f3503a.remove(iIndexOfChild);
        }
        e();
        a();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            ((MaterialButton) getChildAt(i10)).setEnabled(z);
        }
    }

    public void setSelectionRequired(boolean z) {
        this.f3510h = z;
    }

    public void setSingleSelection(boolean z) {
        if (this.f3509g != z) {
            this.f3509g = z;
            d(new HashSet());
        }
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            ((MaterialButton) getChildAt(i10)).setA11yClassName((this.f3509g ? RadioButton.class : ToggleButton.class).getName());
        }
    }

    public void setSingleSelection(int i10) {
        setSingleSelection(getResources().getBoolean(i10));
    }
}
