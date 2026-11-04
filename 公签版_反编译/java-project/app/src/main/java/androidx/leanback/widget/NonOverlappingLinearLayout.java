package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class NonOverlappingLinearLayout extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1512a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1513b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1514c;

    public NonOverlappingLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1512a = false;
        this.f1514c = new ArrayList();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void focusableViewAvailable(View view) {
        int iIndexOfChild;
        if (!this.f1513b) {
            super.focusableViewAvailable(view);
            return;
        }
        for (View view2 = view; view2 != this && view2 != null; view2 = (View) view2.getParent()) {
            if (view2.getParent() == this) {
                iIndexOfChild = indexOfChild(view2);
                break;
            }
        }
        iIndexOfChild = -1;
        if (iIndexOfChild != -1) {
            ((ArrayList) this.f1514c.get(iIndexOfChild)).add(view);
        }
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        ArrayList arrayList = this.f1514c;
        int i14 = 0;
        try {
            boolean z4 = this.f1512a && getOrientation() == 0 && getLayoutDirection() == 1;
            this.f1513b = z4;
            if (z4) {
                while (arrayList.size() > getChildCount()) {
                    arrayList.remove(arrayList.size() - 1);
                }
                while (arrayList.size() < getChildCount()) {
                    arrayList.add(new ArrayList());
                }
            }
            super.onLayout(z, i10, i11, i12, i13);
            if (this.f1513b) {
                for (int i15 = 0; i15 < arrayList.size(); i15++) {
                    for (int i16 = 0; i16 < ((ArrayList) arrayList.get(i15)).size(); i16++) {
                        super.focusableViewAvailable((View) ((ArrayList) arrayList.get(i15)).get(i16));
                    }
                }
            }
            if (this.f1513b) {
                this.f1513b = false;
                while (i14 < arrayList.size()) {
                    ((ArrayList) arrayList.get(i14)).clear();
                    i14++;
                }
            }
        } catch (Throwable th2) {
            if (this.f1513b) {
                this.f1513b = false;
                while (i14 < arrayList.size()) {
                    ((ArrayList) arrayList.get(i14)).clear();
                    i14++;
                }
            }
            throw th2;
        }
    }

    public void setFocusableViewAvailableFixEnabled(boolean z) {
        this.f1512a = z;
    }
}
