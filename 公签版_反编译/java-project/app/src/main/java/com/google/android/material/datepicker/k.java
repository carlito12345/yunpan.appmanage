package com.google.android.material.datepicker;

import android.R;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.leanback.widget.h0;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.h1;
import com.google.android.material.button.MaterialButton;
import x0.b1;

/* loaded from: classes.dex */
public final class k<S> extends u {

    /* renamed from: b, reason: collision with root package name */
    public int f3565b;

    /* renamed from: c, reason: collision with root package name */
    public b f3566c;

    /* renamed from: d, reason: collision with root package name */
    public p f3567d;

    /* renamed from: e, reason: collision with root package name */
    public int f3568e;

    /* renamed from: f, reason: collision with root package name */
    public c f3569f;

    /* renamed from: g, reason: collision with root package name */
    public RecyclerView f3570g;

    /* renamed from: h, reason: collision with root package name */
    public RecyclerView f3571h;

    /* renamed from: i, reason: collision with root package name */
    public View f3572i;

    /* renamed from: j, reason: collision with root package name */
    public View f3573j;

    /* renamed from: k, reason: collision with root package name */
    public View f3574k;
    public View l;

    public final void g(p pVar) {
        t tVar = (t) this.f3571h.getAdapter();
        int iD = tVar.f3607d.f3540a.d(pVar);
        int iD2 = iD - tVar.f3607d.f3540a.d(this.f3567d);
        boolean z = Math.abs(iD2) > 3;
        boolean z4 = iD2 > 0;
        this.f3567d = pVar;
        if (z && z4) {
            this.f3571h.scrollToPosition(iD - 3);
            this.f3571h.post(new androidx.emoji2.text.j(iD, 2, this));
        } else if (!z) {
            this.f3571h.post(new androidx.emoji2.text.j(iD, 2, this));
        } else {
            this.f3571h.scrollToPosition(iD + 3);
            this.f3571h.post(new androidx.emoji2.text.j(iD, 2, this));
        }
    }

    public final void h(int i10) {
        this.f3568e = i10;
        if (i10 == 2) {
            this.f3570g.getLayoutManager().scrollToPosition(this.f3567d.f3593c - ((z) this.f3570g.getAdapter()).f3613d.f3566c.f3540a.f3593c);
            this.f3574k.setVisibility(0);
            this.l.setVisibility(8);
            this.f3572i.setVisibility(8);
            this.f3573j.setVisibility(8);
            return;
        }
        if (i10 == 1) {
            this.f3574k.setVisibility(8);
            this.l.setVisibility(0);
            this.f3572i.setVisibility(0);
            this.f3573j.setVisibility(0);
            g(this.f3567d);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f3565b = bundle.getInt("THEME_RES_ID_KEY");
        if (bundle.getParcelable("GRID_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f3566c = (b) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f3567d = (p) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws Resources.NotFoundException {
        int i10;
        int i11;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f3565b);
        this.f3569f = new c(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        p pVar = this.f3566c.f3540a;
        if (n.k(contextThemeWrapper, R.attr.windowFullscreen)) {
            i10 = com.yunpan.appmanage.R.layout.mtrl_calendar_vertical;
            i11 = 1;
        } else {
            i10 = com.yunpan.appmanage.R.layout.mtrl_calendar_horizontal;
            i11 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i10, viewGroup, false);
        Resources resources = requireContext().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(com.yunpan.appmanage.R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(com.yunpan.appmanage.R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(com.yunpan.appmanage.R.dimen.mtrl_calendar_navigation_height);
        int dimensionPixelSize = resources.getDimensionPixelSize(com.yunpan.appmanage.R.dimen.mtrl_calendar_days_of_week_height);
        int i12 = q.f3598d;
        viewInflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(com.yunpan.appmanage.R.dimen.mtrl_calendar_month_vertical_padding) * (i12 - 1)) + (resources.getDimensionPixelSize(com.yunpan.appmanage.R.dimen.mtrl_calendar_day_height) * i12) + resources.getDimensionPixelOffset(com.yunpan.appmanage.R.dimen.mtrl_calendar_bottom_padding));
        GridView gridView = (GridView) viewInflate.findViewById(com.yunpan.appmanage.R.id.mtrl_calendar_days_of_week);
        b1.x(gridView, new b1.i(1));
        int i13 = this.f3566c.f3544e;
        gridView.setAdapter((ListAdapter) (i13 > 0 ? new e(i13) : new e()));
        gridView.setNumColumns(pVar.f3594d);
        gridView.setEnabled(false);
        this.f3571h = (RecyclerView) viewInflate.findViewById(com.yunpan.appmanage.R.id.mtrl_calendar_months);
        getContext();
        this.f3571h.setLayoutManager(new g(this, i11, i11));
        this.f3571h.setTag("MONTHS_VIEW_GROUP_TAG");
        t tVar = new t(contextThemeWrapper, this.f3566c, new a1.i(10, this));
        this.f3571h.setAdapter(tVar);
        int integer = contextThemeWrapper.getResources().getInteger(com.yunpan.appmanage.R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(com.yunpan.appmanage.R.id.mtrl_calendar_year_selector_frame);
        this.f3570g = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f3570g.setLayoutManager(new GridLayoutManager(integer, 1, false));
            this.f3570g.setAdapter(new z(this));
            this.f3570g.addItemDecoration(new h(this));
        }
        if (viewInflate.findViewById(com.yunpan.appmanage.R.id.month_navigation_fragment_toggle) != null) {
            MaterialButton materialButton = (MaterialButton) viewInflate.findViewById(com.yunpan.appmanage.R.id.month_navigation_fragment_toggle);
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            b1.x(materialButton, new i(0, this));
            View viewFindViewById = viewInflate.findViewById(com.yunpan.appmanage.R.id.month_navigation_previous);
            this.f3572i = viewFindViewById;
            viewFindViewById.setTag("NAVIGATION_PREV_TAG");
            View viewFindViewById2 = viewInflate.findViewById(com.yunpan.appmanage.R.id.month_navigation_next);
            this.f3573j = viewFindViewById2;
            viewFindViewById2.setTag("NAVIGATION_NEXT_TAG");
            this.f3574k = viewInflate.findViewById(com.yunpan.appmanage.R.id.mtrl_calendar_year_selector_frame);
            this.l = viewInflate.findViewById(com.yunpan.appmanage.R.id.mtrl_calendar_day_selector_frame);
            h(1);
            materialButton.setText(this.f3567d.c());
            this.f3571h.addOnScrollListener(new j(this, tVar, materialButton));
            int i14 = 1;
            materialButton.setOnClickListener(new h0(i14, this));
            this.f3573j.setOnClickListener(new f(this, tVar, i14));
            this.f3572i.setOnClickListener(new f(this, tVar, 0));
        }
        if (!n.k(contextThemeWrapper, R.attr.windowFullscreen)) {
            new h1().a(this.f3571h);
        }
        this.f3571h.scrollToPosition(tVar.f3607d.f3540a.d(this.f3567d));
        b1.x(this.f3571h, new b1.i(2));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f3565b);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f3566c);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f3567d);
    }
}
