package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.NavigationMenuItemView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class i extends x0.c {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f3560d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3561e;

    public /* synthetic */ i(int i10, Object obj) {
        this.f3560d = i10;
        this.f3561e = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    @Override // x0.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void c(View view, AccessibilityEvent accessibilityEvent) {
        boolean z;
        k4.a aVar;
        switch (this.f3560d) {
            case 1:
                super.c(view, accessibilityEvent);
                accessibilityEvent.setChecked(((CheckableImageButton) this.f3561e).f3616d);
                break;
            case 2:
            default:
                super.c(view, accessibilityEvent);
                break;
            case 3:
                super.c(view, accessibilityEvent);
                accessibilityEvent.setClassName(k4.g.class.getName());
                k4.g gVar = (k4.g) this.f3561e;
                k4.a aVar2 = gVar.f10149d;
                if (aVar2 != null) {
                    z = aVar2.c() > 1;
                }
                accessibilityEvent.setScrollable(z);
                if (accessibilityEvent.getEventType() == 4096 && (aVar = gVar.f10149d) != null) {
                    accessibilityEvent.setItemCount(aVar.c());
                    accessibilityEvent.setFromIndex(gVar.f10150e);
                    accessibilityEvent.setToIndex(gVar.f10150e);
                    break;
                }
                break;
        }
    }

    @Override // x0.c
    public final void d(View view, y0.n nVar) {
        int i10 = -1;
        boolean z = false;
        Object obj = this.f3561e;
        View.AccessibilityDelegate accessibilityDelegate = this.f17971a;
        switch (this.f3560d) {
            case 0:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, nVar.f18549a);
                k kVar = (k) obj;
                nVar.m(kVar.l.getVisibility() == 0 ? kVar.getString(R.string.mtrl_picker_toggle_to_year_selection) : kVar.getString(R.string.mtrl_picker_toggle_to_day_selection));
                break;
            case 1:
                AccessibilityNodeInfo accessibilityNodeInfo = nVar.f18549a;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                CheckableImageButton checkableImageButton = (CheckableImageButton) obj;
                accessibilityNodeInfo.setCheckable(checkableImageButton.f3617e);
                accessibilityNodeInfo.setChecked(checkableImageButton.f3616d);
                break;
            case 2:
                AccessibilityNodeInfo accessibilityNodeInfo2 = nVar.f18549a;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo2);
                accessibilityNodeInfo2.setCheckable(((NavigationMenuItemView) obj).z);
                break;
            case 3:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, nVar.f18549a);
                nVar.j(k4.g.class.getName());
                k4.g gVar = (k4.g) obj;
                k4.a aVar = gVar.f10149d;
                if (aVar != null && aVar.c() > 1) {
                    z = true;
                }
                nVar.n(z);
                if (gVar.canScrollHorizontally(1)) {
                    nVar.a(4096);
                }
                if (gVar.canScrollHorizontally(-1)) {
                    nVar.a(8192);
                    break;
                }
                break;
            default:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, nVar.f18549a);
                int i11 = MaterialButtonToggleGroup.f3502k;
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) obj;
                materialButtonToggleGroup.getClass();
                if (view instanceof MaterialButton) {
                    int i12 = 0;
                    int i13 = 0;
                    while (true) {
                        if (i12 < materialButtonToggleGroup.getChildCount()) {
                            if (materialButtonToggleGroup.getChildAt(i12) == view) {
                                i10 = i13;
                            } else {
                                if ((materialButtonToggleGroup.getChildAt(i12) instanceof MaterialButton) && materialButtonToggleGroup.c(i12)) {
                                    i13++;
                                }
                                i12++;
                            }
                        }
                    }
                }
                nVar.l(y0.m.a(0, 1, i10, 1, ((MaterialButton) view).f3500p));
                break;
        }
    }

    @Override // x0.c
    public boolean g(View view, int i10, Bundle bundle) {
        switch (this.f3560d) {
            case 3:
                if (super.g(view, i10, bundle)) {
                    return true;
                }
                k4.g gVar = (k4.g) this.f3561e;
                if (i10 != 4096) {
                    if (i10 == 8192 && gVar.canScrollHorizontally(-1)) {
                        gVar.setCurrentItem(gVar.f10150e - 1);
                        return true;
                    }
                } else if (gVar.canScrollHorizontally(1)) {
                    gVar.setCurrentItem(gVar.f10150e + 1);
                    return true;
                }
                return false;
            default:
                return super.g(view, i10, bundle);
        }
    }
}
