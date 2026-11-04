package q7;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import com.google.android.material.textfield.TextInputLayout;
import com.yunpan.appmanage.R;
import ha.db;
import ha.g9;
import x0.b1;

/* loaded from: classes.dex */
public final class l extends q {

    /* renamed from: s, reason: collision with root package name */
    public static final boolean f13074s;

    /* renamed from: e, reason: collision with root package name */
    public final int f13075e;

    /* renamed from: f, reason: collision with root package name */
    public final int f13076f;

    /* renamed from: g, reason: collision with root package name */
    public final TimeInterpolator f13077g;

    /* renamed from: h, reason: collision with root package name */
    public AutoCompleteTextView f13078h;

    /* renamed from: i, reason: collision with root package name */
    public final g9 f13079i;

    /* renamed from: j, reason: collision with root package name */
    public final ha.n f13080j;

    /* renamed from: k, reason: collision with root package name */
    public final ph.j f13081k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f13082m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f13083n;

    /* renamed from: o, reason: collision with root package name */
    public long f13084o;

    /* renamed from: p, reason: collision with root package name */
    public AccessibilityManager f13085p;

    /* renamed from: q, reason: collision with root package name */
    public ValueAnimator f13086q;
    public ValueAnimator r;

    static {
        f13074s = Build.VERSION.SDK_INT >= 21;
    }

    public l(p pVar) {
        super(pVar);
        this.f13079i = new g9(22, this);
        this.f13080j = new ha.n(3, this);
        this.f13081k = new ph.j(2, this);
        this.f13084o = Long.MAX_VALUE;
        this.f13076f = com.bumptech.glide.d.b0(pVar.getContext(), R.attr.motionDurationShort3, 67);
        this.f13075e = com.bumptech.glide.d.b0(pVar.getContext(), R.attr.motionDurationShort3, 50);
        this.f13077g = com.bumptech.glide.d.c0(pVar.getContext(), R.attr.motionEasingLinearInterpolator, r6.a.f13710a);
    }

    @Override // q7.q
    public final void a() {
        if (this.f13085p.isTouchExplorationEnabled() && p000if.a.Z(this.f13078h) && !this.f13114d.hasFocus()) {
            this.f13078h.dismissDropDown();
        }
        this.f13078h.post(new db(11, this));
    }

    @Override // q7.q
    public final int c() {
        return R.string.exposed_dropdown_menu_content_description;
    }

    @Override // q7.q
    public final int d() {
        return f13074s ? R.drawable.mtrl_dropdown_arrow : R.drawable.mtrl_ic_arrow_drop_down;
    }

    @Override // q7.q
    public final View.OnFocusChangeListener e() {
        return this.f13080j;
    }

    @Override // q7.q
    public final View.OnClickListener f() {
        return this.f13079i;
    }

    @Override // q7.q
    public final y0.d h() {
        return this.f13081k;
    }

    @Override // q7.q
    public final boolean i(int i10) {
        return i10 != 0;
    }

    @Override // q7.q
    public final boolean j() {
        return this.l;
    }

    @Override // q7.q
    public final boolean l() {
        return this.f13083n;
    }

    @Override // q7.q
    public final void m(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
        }
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
        this.f13078h = autoCompleteTextView;
        autoCompleteTextView.setOnTouchListener(new j(0, this));
        if (f13074s) {
            this.f13078h.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: q7.k
                @Override // android.widget.AutoCompleteTextView.OnDismissListener
                public final void onDismiss() {
                    l lVar = this.f13073a;
                    lVar.f13082m = true;
                    lVar.f13084o = System.currentTimeMillis();
                    lVar.t(false);
                }
            });
        }
        this.f13078h.setThreshold(0);
        TextInputLayout textInputLayout = this.f13111a;
        textInputLayout.setErrorIconDrawable((Drawable) null);
        if (!p000if.a.Z(editText) && this.f13085p.isTouchExplorationEnabled()) {
            b1.B(this.f13114d, 2);
        }
        textInputLayout.setEndIconVisible(true);
    }

    @Override // q7.q
    public final void n(y0.n nVar) {
        if (!p000if.a.Z(this.f13078h)) {
            nVar.j(Spinner.class.getName());
        }
        if (Build.VERSION.SDK_INT >= 26 ? nVar.f18549a.isShowingHintText() : nVar.e(4)) {
            nVar.m(null);
        }
    }

    @Override // q7.q
    public final void o(AccessibilityEvent accessibilityEvent) {
        if (!this.f13085p.isEnabled() || p000if.a.Z(this.f13078h)) {
            return;
        }
        boolean z = accessibilityEvent.getEventType() == 32768 && this.f13083n && !this.f13078h.isPopupShowing();
        if (accessibilityEvent.getEventType() == 1 || z) {
            u();
            this.f13082m = true;
            this.f13084o = System.currentTimeMillis();
        }
    }

    @Override // q7.q
    public final void r() {
        int i10 = 0;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.f13077g;
        valueAnimatorOfFloat.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat.setDuration(this.f13076f);
        valueAnimatorOfFloat.addUpdateListener(new i(i10, this));
        this.r = valueAnimatorOfFloat;
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat2.setInterpolator(timeInterpolator);
        valueAnimatorOfFloat2.setDuration(this.f13075e);
        valueAnimatorOfFloat2.addUpdateListener(new i(i10, this));
        this.f13086q = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.addListener(new h4.q(2, this));
        this.f13085p = (AccessibilityManager) this.f13113c.getSystemService("accessibility");
    }

    @Override // q7.q
    public final void s() {
        AutoCompleteTextView autoCompleteTextView = this.f13078h;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            if (f13074s) {
                this.f13078h.setOnDismissListener(null);
            }
        }
    }

    public final void t(boolean z) {
        if (this.f13083n != z) {
            this.f13083n = z;
            this.r.cancel();
            this.f13086q.start();
        }
    }

    public final void u() {
        if (this.f13078h == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f13084o;
        if (jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300) {
            this.f13082m = false;
        }
        if (this.f13082m) {
            this.f13082m = false;
            return;
        }
        if (f13074s) {
            t(!this.f13083n);
        } else {
            this.f13083n = !this.f13083n;
            q();
        }
        if (!this.f13083n) {
            this.f13078h.dismissDropDown();
        } else {
            this.f13078h.requestFocus();
            this.f13078h.showDropDown();
        }
    }
}
