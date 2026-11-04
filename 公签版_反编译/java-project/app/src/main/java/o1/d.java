package o1;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.leanback.widget.VerticalGridView;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public abstract class d extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f11493a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f11494b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f11495c;

    /* renamed from: d, reason: collision with root package name */
    public final float f11496d;

    /* renamed from: e, reason: collision with root package name */
    public final float f11497e;

    /* renamed from: f, reason: collision with root package name */
    public final float f11498f;

    /* renamed from: g, reason: collision with root package name */
    public final int f11499g;

    /* renamed from: h, reason: collision with root package name */
    public final DecelerateInterpolator f11500h;

    /* renamed from: i, reason: collision with root package name */
    public float f11501i;

    /* renamed from: j, reason: collision with root package name */
    public float f11502j;

    /* renamed from: k, reason: collision with root package name */
    public int f11503k;
    public final ArrayList l;

    /* renamed from: m, reason: collision with root package name */
    public final int f11504m;

    /* renamed from: n, reason: collision with root package name */
    public int f11505n;

    /* renamed from: p, reason: collision with root package name */
    public final a f11506p;

    public d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f11494b = new ArrayList();
        this.f11501i = 3.0f;
        this.f11502j = 1.0f;
        this.f11503k = 0;
        this.l = new ArrayList();
        this.f11504m = R.layout.lb_picker_item;
        this.f11505n = 0;
        this.f11506p = new a(this);
        setEnabled(true);
        setDescendantFocusability(262144);
        this.f11497e = 1.0f;
        this.f11496d = 1.0f;
        this.f11498f = 0.5f;
        this.f11499g = 200;
        this.f11500h = new DecelerateInterpolator(2.5f);
        new AccelerateInterpolator(2.5f);
        this.f11493a = (ViewGroup) ((ViewGroup) LayoutInflater.from(getContext()).inflate(R.layout.lb_picker, (ViewGroup) this, true)).findViewById(R.id.picker);
    }

    public final void a(int i10, e eVar) {
        this.f11495c.set(i10, eVar);
        VerticalGridView verticalGridView = (VerticalGridView) this.f11494b.get(i10);
        b bVar = (b) verticalGridView.getAdapter();
        if (bVar != null) {
            bVar.f2188a.b();
        }
        verticalGridView.setSelectedPosition(eVar.f11507a - eVar.f11508b);
    }

    public final void b(View view, boolean z, float f10, DecelerateInterpolator decelerateInterpolator) {
        view.animate().cancel();
        if (z) {
            view.animate().alpha(f10).setDuration(this.f11499g).setInterpolator(decelerateInterpolator).start();
        } else {
            view.setAlpha(f10);
        }
    }

    public final void c(View view, boolean z, int i10, boolean z4) {
        boolean z10 = i10 == this.f11503k || !hasFocus();
        DecelerateInterpolator decelerateInterpolator = this.f11500h;
        if (z) {
            if (z10) {
                b(view, z4, this.f11497e, decelerateInterpolator);
                return;
            } else {
                b(view, z4, this.f11496d, decelerateInterpolator);
                return;
            }
        }
        if (z10) {
            b(view, z4, this.f11498f, decelerateInterpolator);
        } else {
            b(view, z4, 0.0f, decelerateInterpolator);
        }
    }

    public final void d(int i10) {
        VerticalGridView verticalGridView = (VerticalGridView) this.f11494b.get(i10);
        int selectedPosition = verticalGridView.getSelectedPosition();
        int i11 = 0;
        while (i11 < verticalGridView.getAdapter().b()) {
            View viewFindViewByPosition = verticalGridView.getLayoutManager().findViewByPosition(i11);
            if (viewFindViewByPosition != null) {
                c(viewFindViewByPosition, selectedPosition == i11, i10, true);
            }
            i11++;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!isActivated()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 23 && keyCode != 66) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyEvent.getAction() == 1) {
            performClick();
        }
        return true;
    }

    public final void e() {
        for (int i10 = 0; i10 < getColumnsCount(); i10++) {
            f((VerticalGridView) this.f11494b.get(i10));
        }
    }

    public final void f(VerticalGridView verticalGridView) {
        ViewGroup.LayoutParams layoutParams = verticalGridView.getLayoutParams();
        float activatedVisibleItemCount = isActivated() ? getActivatedVisibleItemCount() : getVisibleItemCount();
        layoutParams.height = (int) g.b.b(activatedVisibleItemCount, 1.0f, verticalGridView.getVerticalSpacing(), getPickerItemHeightPixels() * activatedVisibleItemCount);
        verticalGridView.setLayoutParams(layoutParams);
    }

    public float getActivatedVisibleItemCount() {
        return this.f11501i;
    }

    public int getColumnsCount() {
        ArrayList arrayList = this.f11495c;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public int getPickerItemHeightPixels() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.picker_item_height);
    }

    public final int getPickerItemLayoutId() {
        return this.f11504m;
    }

    public final int getPickerItemTextViewId() {
        return this.f11505n;
    }

    public int getSelectedColumn() {
        return this.f11503k;
    }

    public final CharSequence getSeparator() {
        return (CharSequence) this.l.get(0);
    }

    public final List<CharSequence> getSeparators() {
        return this.l;
    }

    public float getVisibleItemCount() {
        return 1.0f;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i10, Rect rect) {
        int selectedColumn = getSelectedColumn();
        ArrayList arrayList = this.f11494b;
        if (selectedColumn < arrayList.size()) {
            return ((VerticalGridView) arrayList.get(selectedColumn)).requestFocus(i10, rect);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f11494b;
            if (i10 >= arrayList.size()) {
                return;
            }
            if (((VerticalGridView) arrayList.get(i10)).hasFocus()) {
                setSelectedColumn(i10);
            }
            i10++;
        }
    }

    @Override // android.view.View
    public void setActivated(boolean z) {
        ArrayList arrayList;
        if (z == isActivated()) {
            super.setActivated(z);
            return;
        }
        super.setActivated(z);
        boolean zHasFocus = hasFocus();
        int selectedColumn = getSelectedColumn();
        setDescendantFocusability(131072);
        if (!z && zHasFocus && isFocusable()) {
            requestFocus();
        }
        int i10 = 0;
        while (true) {
            int columnsCount = getColumnsCount();
            arrayList = this.f11494b;
            if (i10 >= columnsCount) {
                break;
            }
            ((VerticalGridView) arrayList.get(i10)).setFocusable(z);
            i10++;
        }
        e();
        boolean zIsActivated = isActivated();
        for (int i11 = 0; i11 < getColumnsCount(); i11++) {
            VerticalGridView verticalGridView = (VerticalGridView) arrayList.get(i11);
            for (int i12 = 0; i12 < verticalGridView.getChildCount(); i12++) {
                verticalGridView.getChildAt(i12).setFocusable(zIsActivated);
            }
        }
        if (z && zHasFocus && selectedColumn >= 0) {
            ((VerticalGridView) arrayList.get(selectedColumn)).requestFocus();
        }
        setDescendantFocusability(262144);
    }

    public void setActivatedVisibleItemCount(float f10) {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException();
        }
        if (this.f11501i != f10) {
            this.f11501i = f10;
            if (isActivated()) {
                e();
            }
        }
    }

    public void setColumns(List<e> list) {
        ArrayList arrayList = this.l;
        if (arrayList.size() == 0) {
            throw new IllegalStateException("Separators size is: " + arrayList.size() + ". At least one separator must be provided");
        }
        if (arrayList.size() == 1) {
            CharSequence charSequence = (CharSequence) arrayList.get(0);
            arrayList.clear();
            arrayList.add("");
            for (int i10 = 0; i10 < list.size() - 1; i10++) {
                arrayList.add(charSequence);
            }
            arrayList.add("");
        } else if (arrayList.size() != list.size() + 1) {
            throw new IllegalStateException("Separators size: " + arrayList.size() + " mustequal the size of columns: " + list.size() + " + 1");
        }
        ArrayList arrayList2 = this.f11494b;
        arrayList2.clear();
        ViewGroup viewGroup = this.f11493a;
        viewGroup.removeAllViews();
        ArrayList arrayList3 = new ArrayList(list);
        this.f11495c = arrayList3;
        if (this.f11503k > arrayList3.size() - 1) {
            this.f11503k = this.f11495c.size() - 1;
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int columnsCount = getColumnsCount();
        if (!TextUtils.isEmpty((CharSequence) arrayList.get(0))) {
            TextView textView = (TextView) layoutInflaterFrom.inflate(R.layout.lb_picker_separator, viewGroup, false);
            textView.setText((CharSequence) arrayList.get(0));
            viewGroup.addView(textView);
        }
        int i11 = 0;
        while (i11 < columnsCount) {
            VerticalGridView verticalGridView = (VerticalGridView) layoutInflaterFrom.inflate(R.layout.lb_picker_column, viewGroup, false);
            f(verticalGridView);
            verticalGridView.setWindowAlignment(0);
            verticalGridView.setHasFixedSize(false);
            verticalGridView.setFocusable(isActivated());
            verticalGridView.setItemViewCacheSize(0);
            arrayList2.add(verticalGridView);
            viewGroup.addView(verticalGridView);
            int i12 = i11 + 1;
            if (!TextUtils.isEmpty((CharSequence) arrayList.get(i12))) {
                TextView textView2 = (TextView) layoutInflaterFrom.inflate(R.layout.lb_picker_separator, viewGroup, false);
                textView2.setText((CharSequence) arrayList.get(i12));
                viewGroup.addView(textView2);
            }
            getContext();
            verticalGridView.setAdapter(new b(this, getPickerItemLayoutId(), getPickerItemTextViewId(), i11));
            verticalGridView.setOnChildViewHolderSelectedListener(this.f11506p);
            i11 = i12;
        }
    }

    public final void setPickerItemTextViewId(int i10) {
        this.f11505n = i10;
    }

    public void setSelectedColumn(int i10) {
        if (this.f11503k != i10) {
            this.f11503k = i10;
            for (int i11 = 0; i11 < this.f11494b.size(); i11++) {
                d(i11);
            }
        }
    }

    public final void setSeparator(CharSequence charSequence) {
        setSeparators(Arrays.asList(charSequence));
    }

    public final void setSeparators(List<CharSequence> list) {
        ArrayList arrayList = this.l;
        arrayList.clear();
        arrayList.addAll(list);
    }

    public void setVisibleItemCount(float f10) {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException();
        }
        if (this.f11502j != f10) {
            this.f11502j = f10;
            if (isActivated()) {
                return;
            }
            e();
        }
    }
}
