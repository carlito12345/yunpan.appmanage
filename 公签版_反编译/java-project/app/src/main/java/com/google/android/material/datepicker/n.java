package com.google.android.material.datepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.google.android.material.internal.CheckableImageButton;
import com.yunpan.appmanage.R;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashSet;
import x0.b1;
import x0.k2;
import x0.l2;
import x0.m2;
import x0.n1;
import x0.n2;
import x0.o1;

/* loaded from: classes.dex */
public final class n<S> extends androidx.fragment.app.s {
    public CharSequence A;
    public int B;
    public CharSequence C;
    public int D;
    public CharSequence E;
    public int F;
    public CharSequence G;
    public TextView H;
    public CheckableImageButton I;
    public m7.g K;
    public boolean L;
    public CharSequence M;
    public CharSequence N;

    /* renamed from: n, reason: collision with root package name */
    public final LinkedHashSet f3580n;

    /* renamed from: p, reason: collision with root package name */
    public final LinkedHashSet f3581p;

    /* renamed from: q, reason: collision with root package name */
    public int f3582q;
    public u r;

    /* renamed from: s, reason: collision with root package name */
    public b f3583s;

    /* renamed from: t, reason: collision with root package name */
    public k f3584t;

    /* renamed from: v, reason: collision with root package name */
    public int f3585v;

    /* renamed from: w, reason: collision with root package name */
    public CharSequence f3586w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f3587x;

    /* renamed from: y, reason: collision with root package name */
    public int f3588y;
    public int z;

    public n() {
        new LinkedHashSet();
        new LinkedHashSet();
        this.f3580n = new LinkedHashSet();
        this.f3581p = new LinkedHashSet();
    }

    public static int j(Context context) throws Resources.NotFoundException {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        Calendar calendarB = x.b();
        calendarB.set(5, 1);
        Calendar calendarA = x.a(calendarB);
        calendarA.get(2);
        calendarA.get(1);
        int maximum = calendarA.getMaximum(7);
        calendarA.getActualMaximum(5);
        calendarA.getTimeInMillis();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width) * maximum;
        return ((maximum - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding)) + dimensionPixelSize + (dimensionPixelOffset * 2);
    }

    public static boolean k(Context context, int i10) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(android.support.v4.media.session.b.F(context, k.class.getCanonicalName(), R.attr.materialCalendarStyle).data, new int[]{i10});
        boolean z = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z;
    }

    @Override // androidx.fragment.app.s
    public final Dialog g() {
        Context contextRequireContext = requireContext();
        requireContext();
        int i10 = this.f3582q;
        if (i10 == 0) {
            i();
            throw null;
        }
        Dialog dialog = new Dialog(contextRequireContext, i10);
        Context context = dialog.getContext();
        this.f3587x = k(context, android.R.attr.windowFullscreen);
        this.K = new m7.g(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, q6.a.f13041m, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        int color = typedArrayObtainStyledAttributes.getColor(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.K.i(context);
        this.K.k(ColorStateList.valueOf(color));
        this.K.j(b1.g(dialog.getWindow().getDecorView()));
        return dialog;
    }

    public final void i() {
        if (getArguments().getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
    }

    @Override // androidx.fragment.app.s, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.f3580n.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.s, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) throws Resources.NotFoundException {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f3582q = bundle.getInt("OVERRIDE_THEME_RES_ID");
        if (bundle.getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f3583s = (b) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f3585v = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f3586w = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.f3588y = bundle.getInt("INPUT_MODE_KEY");
        this.z = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.A = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.B = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.C = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        this.D = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.E = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        this.F = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.G = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        CharSequence text = this.f3586w;
        if (text == null) {
            text = requireContext().getResources().getText(this.f3585v);
        }
        this.M = text;
        if (text != null) {
            CharSequence[] charSequenceArrSplit = TextUtils.split(String.valueOf(text), SignParameters.NEW_LINE);
            if (charSequenceArrSplit.length > 1) {
                text = charSequenceArrSplit[0];
            }
        } else {
            text = null;
        }
        this.N = text;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.f3587x ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        if (this.f3587x) {
            viewInflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(j(context), -2));
        } else {
            viewInflate.findViewById(R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(j(context), -1));
        }
        b1.y((TextView) viewInflate.findViewById(R.id.mtrl_picker_header_selection_text), 1);
        this.I = (CheckableImageButton) viewInflate.findViewById(R.id.mtrl_picker_header_toggle);
        this.H = (TextView) viewInflate.findViewById(R.id.mtrl_picker_title_text);
        this.I.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.I;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, com.bumptech.glide.d.x(context, R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], com.bumptech.glide.d.x(context, R.drawable.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.I.setChecked(this.f3588y != 0);
        b1.x(this.I, null);
        CheckableImageButton checkableImageButton2 = this.I;
        this.I.setContentDescription(this.f3588y == 1 ? checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
        this.I.setOnClickListener(new l(this, 0));
        i();
        throw null;
    }

    @Override // androidx.fragment.app.s, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f3581p.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.s, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f3582q);
        bundle.putParcelable("DATE_SELECTOR_KEY", null);
        a aVar = new a(this.f3583s);
        k kVar = this.f3584t;
        p pVar = kVar == null ? null : kVar.f3567d;
        if (pVar != null) {
            aVar.f3537c = Long.valueOf(pVar.f3596f);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", aVar.f3539e);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new b(p.b(aVar.f3535a), p.b(aVar.f3536b), (d) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY"), p.b(aVar.f3537c.longValue()), aVar.f3538d));
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f3585v);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f3586w);
        bundle.putInt("INPUT_MODE_KEY", this.f3588y);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.z);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.A);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.B);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.C);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.D);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.E);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.F);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.G);
    }

    @Override // androidx.fragment.app.s, androidx.fragment.app.Fragment
    public final void onStart() throws Resources.NotFoundException {
        s5.c m2Var;
        s5.c m2Var2;
        super.onStart();
        Window window = h().getWindow();
        if (this.f3587x) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.K);
            if (!this.L) {
                View viewFindViewById = requireView().findViewById(R.id.fullscreen_header);
                ColorStateList colorStateListX = d.b.x(viewFindViewById.getBackground());
                Integer numValueOf = colorStateListX != null ? Integer.valueOf(colorStateListX.getDefaultColor()) : null;
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 21) {
                    boolean z = false;
                    boolean z4 = numValueOf == null || numValueOf.intValue() == 0;
                    int iT = com.bumptech.glide.d.t(window.getContext(), android.R.attr.colorBackground, -16777216);
                    if (z4) {
                        numValueOf = Integer.valueOf(iT);
                    }
                    if (i10 >= 30) {
                        o1.a(window, false);
                    } else {
                        n1.a(window, false);
                    }
                    int iD = i10 < 23 ? p0.a.d(com.bumptech.glide.d.t(window.getContext(), android.R.attr.statusBarColor, -16777216), 128) : 0;
                    int iD2 = i10 < 27 ? p0.a.d(com.bumptech.glide.d.t(window.getContext(), android.R.attr.navigationBarColor, -16777216), 128) : 0;
                    window.setStatusBarColor(iD);
                    window.setNavigationBarColor(iD2);
                    boolean z10 = com.bumptech.glide.d.H(iD) || (iD == 0 && com.bumptech.glide.d.H(numValueOf.intValue()));
                    s9.a aVar = new s9.a(window.getDecorView());
                    int i11 = Build.VERSION.SDK_INT;
                    if (i11 >= 30) {
                        n2 n2Var = new n2(window.getInsetsController(), aVar);
                        n2Var.f18032c = window;
                        m2Var = n2Var;
                    } else {
                        m2Var = i11 >= 26 ? new m2(window, aVar) : i11 >= 23 ? new l2(window, aVar) : i11 >= 20 ? new k2(window, aVar) : new s5.c(23);
                    }
                    m2Var.G(z10);
                    boolean zH = com.bumptech.glide.d.H(iT);
                    if (com.bumptech.glide.d.H(iD2) || (iD2 == 0 && zH)) {
                        z = true;
                    }
                    s9.a aVar2 = new s9.a(window.getDecorView());
                    int i12 = Build.VERSION.SDK_INT;
                    if (i12 >= 30) {
                        n2 n2Var2 = new n2(window.getInsetsController(), aVar2);
                        n2Var2.f18032c = window;
                        m2Var2 = n2Var2;
                    } else {
                        m2Var2 = i12 >= 26 ? new m2(window, aVar2) : i12 >= 23 ? new l2(window, aVar2) : i12 >= 20 ? new k2(window, aVar2) : new s5.c(23);
                    }
                    m2Var2.F(z);
                }
                b1.C(viewFindViewById, new m(viewFindViewById, viewFindViewById.getLayoutParams().height, viewFindViewById.getPaddingTop()));
                this.L = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.K, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new d7.a(h(), rect));
        }
        requireContext();
        int i13 = this.f3582q;
        if (i13 == 0) {
            i();
            throw null;
        }
        i();
        b bVar = this.f3583s;
        k kVar = new k();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i13);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", bVar.f3543d);
        kVar.setArguments(bundle);
        this.f3584t = kVar;
        u uVar = kVar;
        if (this.f3588y == 1) {
            i();
            b bVar2 = this.f3583s;
            u oVar = new o();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("THEME_RES_ID_KEY", i13);
            bundle2.putParcelable("DATE_SELECTOR_KEY", null);
            bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar2);
            oVar.setArguments(bundle2);
            uVar = oVar;
        }
        this.r = uVar;
        this.H.setText((this.f3588y == 1 && getResources().getConfiguration().orientation == 2) ? this.N : this.M);
        i();
        getContext();
        throw null;
    }

    @Override // androidx.fragment.app.s, androidx.fragment.app.Fragment
    public final void onStop() {
        this.r.f3610a.clear();
        super.onStop();
    }
}
